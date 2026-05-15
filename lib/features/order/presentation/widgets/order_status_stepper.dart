import 'package:flutter/material.dart';

class OrderStatusStepper extends StatelessWidget {
  final String status;

  const OrderStatusStepper({super.key, required this.status});

  int get _currentStepIndex {
    switch (status.toLowerCase()) {
      case 'pending': return 0;
      case 'confirmed': return 1;
      case 'preparing': return 2;
      case 'ready': return 3;
      case 'served': return 4;
      default: return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final steps = ['Pending', 'Confirmed', 'Preparing', 'Ready', 'Served'];
    final currentIndex = _currentStepIndex;
    final theme = Theme.of(context);

    return Column(
      children: List.generate(steps.length, (index) {
        final isCompleted = index <= currentIndex;
        final isCurrent = index == currentIndex;

        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isCompleted ? theme.colorScheme.primary : theme.colorScheme.surface,
                    border: Border.all(
                      color: isCompleted ? theme.colorScheme.primary : theme.dividerColor,
                    ),
                  ),
                  child: isCompleted
                      ? const Icon(Icons.check, size: 16, color: Colors.white)
                      : null,
                ),
                if (index < steps.length - 1)
                  Container(
                    width: 2,
                    height: 40,
                    color: isCompleted ? theme.colorScheme.primary : theme.dividerColor,
                  ),
              ],
            ),
            const SizedBox(width: 16),
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                steps[index],
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: isCurrent ? FontWeight.bold : FontWeight.normal,
                  color: isCompleted ? theme.colorScheme.onSurface : theme.colorScheme.onSurface.withValues(alpha: 0.5),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
