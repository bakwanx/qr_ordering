import 'package:flutter/material.dart';
import 'package:qr_ordering/features/cart/domain/entities/customization_selection_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/customization_group_entity.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';

class AddToCartSheet extends StatefulWidget {
  final MenuItemEntity item;
  final void Function(
    MenuItemEntity item,
    List<CustomizationSelectionEntity> selections,
  ) onConfirm;

  const AddToCartSheet({
    super.key,
    required this.item,
    required this.onConfirm,
  });

  static Future<void> show(
    BuildContext context, {
    required MenuItemEntity item,
    required void Function(
      MenuItemEntity item,
      List<CustomizationSelectionEntity> selections,
    ) onConfirm,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => AddToCartSheet(item: item, onConfirm: onConfirm),
    );
  }

  @override
  State<AddToCartSheet> createState() => _AddToCartSheetState();
}

class _AddToCartSheetState extends State<AddToCartSheet> {
  final Map<int, Set<int>> _selectedOptions = {};

  bool get _canConfirm {
    for (final group in widget.item.customizationGroups) {
      if (group.required && (_selectedOptions[group.id]?.isEmpty ?? true)) {
        return false;
      }
    }
    return true;
  }

  void _toggleOption(CustomizationGroupEntity group, int optionId) {
    setState(() {
      final current = _selectedOptions[group.id] ?? {};
      if (current.contains(optionId)) {
        current.remove(optionId);
      } else {
        if (group.maxSelections == 1) {
          _selectedOptions[group.id] = {optionId};
        } else {
          if (current.length < group.maxSelections) {
            current.add(optionId);
            _selectedOptions[group.id] = current;
          }
        }
      }
    });
  }

  List<CustomizationSelectionEntity> _buildSelections() {
    final result = <CustomizationSelectionEntity>[];
    for (final group in widget.item.customizationGroups) {
      final selected = _selectedOptions[group.id] ?? {};
      for (final id in selected) {
        final option = group.options.firstWhere((o) => o.id == id);
        result.add(
          CustomizationSelectionEntity(
            optionId: option.id,
            optionName: option.name,
            priceModifier: option.priceModifier,
            quantity: 1,
          ),
        );
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(bottom: mediaQuery.viewInsets.bottom),
      child: DraggableScrollableSheet(
        initialChildSize: 0.6,
        minChildSize: 0.4,
        maxChildSize: 0.9,
        expand: false,
        builder: (_, controller) => Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: theme.dividerColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            Expanded(
              child: ListView(
                controller: controller,
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 16),
                children: [
                  Text(
                    widget.item.name,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$${widget.item.price.toStringAsFixed(2)}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (widget.item.description.isNotEmpty) ...[
                    const SizedBox(height: 8),
                    Text(
                      widget.item.description,
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onSurface.withValues(
                          alpha: 0.7,
                        ),
                      ),
                    ),
                  ],
                  ...widget.item.customizationGroups.map(
                    (group) => _GroupSection(
                      group: group,
                      selected: _selectedOptions[group.id] ?? {},
                      onToggle: (id) => _toggleOption(group, id),
                    ),
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _canConfirm
                        ? () {
                            Navigator.pop(context);
                            widget.onConfirm(widget.item, _buildSelections());
                          }
                        : null,
                    child: const Text('Add to Cart'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupSection extends StatelessWidget {
  final CustomizationGroupEntity group;
  final Set<int> selected;
  final ValueChanged<int> onToggle;

  const _GroupSection({
    required this.group,
    required this.selected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              group.name,
              style: theme.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            if (group.required)
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: theme.colorScheme.error.withValues(alpha: 0.15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  'Required',
                  style: theme.textTheme.labelSmall?.copyWith(
                    color: theme.colorScheme.error,
                  ),
                ),
              ),
            if (!group.required && group.maxSelections > 1)
              Text(
                ' (up to ${group.maxSelections})',
                style: theme.textTheme.labelSmall?.copyWith(
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        ...group.options.map(
          (option) => _OptionTile(
            name: option.name,
            priceModifier: option.priceModifier,
            isSelected: selected.contains(option.id),
            onTap: () => onToggle(option.id),
          ),
        ),
      ],
    );
  }
}

class _OptionTile extends StatelessWidget {
  final String name;
  final double priceModifier;
  final bool isSelected;
  final VoidCallback onTap;

  const _OptionTile({
    required this.name,
    required this.priceModifier,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
        child: Row(
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 150),
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected ? theme.colorScheme.primary : Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? theme.colorScheme.primary
                      : theme.dividerColor,
                  width: 2,
                ),
              ),
              child: isSelected
                  ? const Icon(Icons.check, size: 14, color: Colors.white)
                  : null,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(name, style: theme.textTheme.bodyMedium),
            ),
            if (priceModifier > 0)
              Text(
                '+\$${priceModifier.toStringAsFixed(2)}',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
