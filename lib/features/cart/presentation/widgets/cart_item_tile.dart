import 'package:flutter/material.dart';
import 'package:qr_ordering/features/cart/domain/entities/cart_item_entity.dart';
import 'package:qr_ordering/features/cart/presentation/cubit/cart_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CartItemTile extends StatelessWidget {
  final CartItemEntity item;

  const CartItemTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: '${item.name}, quantity ${item.quantity}',
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
        color: theme.cardColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      item.name,
                      style: theme.textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.delete_outline,
                      color: theme.colorScheme.error,
                      semanticLabel: 'Remove ${item.name}',
                    ),
                    onPressed: () =>
                        context.read<CartCubit>().removeItem(item.cartItemId),
                    visualDensity: VisualDensity.compact,
                  ),
                ],
              ),
              if (item.customizations.isNotEmpty) ...[
                const SizedBox(height: 4),
                Text(
                  item.customizations.map((c) => c.optionName).join(', '),
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
              const SizedBox(height: 12),
              Row(
                children: [
                  Text(
                    '\$${item.subtotal.toStringAsFixed(2)}',
                    style: theme.textTheme.titleMedium?.copyWith(
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  _QuantityControl(item: item),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuantityControl extends StatelessWidget {
  final CartItemEntity item;

  const _QuantityControl({required this.item});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        _ControlButton(
          icon: Icons.remove,
          semanticLabel: 'Decrease quantity',
          onTap: () => context
              .read<CartCubit>()
              .updateQuantity(item.cartItemId, item.quantity - 1),
        ),
        const SizedBox(width: 12),
        Text(
          '${item.quantity}',
          style: theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 12),
        _ControlButton(
          icon: Icons.add,
          semanticLabel: 'Increase quantity',
          onTap: () => context
              .read<CartCubit>()
              .updateQuantity(item.cartItemId, item.quantity + 1),
        ),
      ],
    );
  }
}

class _ControlButton extends StatelessWidget {
  final IconData icon;
  final String semanticLabel;
  final VoidCallback onTap;

  const _ControlButton({
    required this.icon,
    required this.semanticLabel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Semantics(
      label: semanticLabel,
      button: true,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: theme.colorScheme.surface,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: theme.dividerColor),
          ),
          child: Icon(icon, size: 18),
        ),
      ),
    );
  }
}
