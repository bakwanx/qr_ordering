import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:qr_ordering/core/cubit/qr_ordering_status.dart';
import 'package:qr_ordering/core/dependency_injection/dependency_injection.dart';
import 'package:qr_ordering/features/menu/domain/entities/menu_item_entity.dart';
import 'package:qr_ordering/features/menu/domain/repositories/menu_navigation_repository.dart';
import 'package:qr_ordering/features/menu/presentation/cubit/menu_cubit.dart';
import 'package:qr_ordering/features/menu/presentation/widgets/menu_category_tab.dart';
import 'package:qr_ordering/features/menu/presentation/widgets/menu_item_card.dart';
import 'package:qr_ordering/features/menu/presentation/widgets/menu_search_bar.dart';

class MenuPage extends StatelessWidget {
  final String tableId;

  const MenuPage({super.key, required this.tableId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MenuCubit>(
      create: (_) => di<MenuCubit>()..fetchMenu(tableId),
      child: _MenuPageView(tableId: tableId),
    );
  }
}

class _MenuPageView extends StatelessWidget {
  final String tableId;

  const _MenuPageView({required this.tableId});

  void _openAddToCartSheet(BuildContext context, MenuItemEntity item) {
    di<MenuNavigationRepository>().goToCartPage(context, tableId: tableId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuCubit, MenuState>(
      builder: (context, state) {
        final screenWidth = MediaQuery.sizeOf(context).width;
        final isTablet = screenWidth >= 600;
        final crossAxisCount = screenWidth >= 900 ? 3 : (isTablet ? 2 : 1);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              state.restaurant?.name ?? 'Menu',
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Chip(
                  avatar: const Icon(Icons.table_restaurant, size: 16),
                  label: Text('Table ${state.tableId}'),
                ),
              ),
            ],
          ),
          body: RefreshIndicator(
            onRefresh: () => context.read<MenuCubit>().fetchMenu(tableId),
            child: _buildBody(context, state, crossAxisCount),
          ),
        );
      },
    );
  }

  Widget _buildBody(
    BuildContext context,
    MenuState state,
    int crossAxisCount,
  ) {
    if (state.menuStatus == QrOrderingStatus.submissionInProgress) {
      return _ShimmerList();
    }

    if (state.menuStatus == QrOrderingStatus.submissionFailure) {
      return _ErrorView(
        message: state.failure?.message ?? 'Failed to load menu.',
        onRetry: () => context.read<MenuCubit>().fetchMenu(tableId),
      );
    }

    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: MenuSearchBar(
            initialValue: state.searchQuery,
            onChanged: (q) => context.read<MenuCubit>().search(q),
            onClear: () => context.read<MenuCubit>().clearSearch(),
          ),
        ),
        SliverToBoxAdapter(
          child: MenuCategoryTab(
            categories: state.categories,
            selectedCategoryId: state.selectedCategoryId,
            onCategorySelected: (id) =>
                context.read<MenuCubit>().selectCategory(id),
          ),
        ),
        if (state.filteredItems.isEmpty)
          const SliverFillRemaining(child: _EmptyView())
        else if (crossAxisCount == 1)
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (_, i) => MenuItemCard(
                item: state.filteredItems[i],
                onAddToCart: () =>
                    _openAddToCartSheet(context, state.filteredItems[i]),
              ),
              childCount: state.filteredItems.length,
            ),
          )
        else
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (_, i) => MenuItemCard(
                  item: state.filteredItems[i],
                  onAddToCart: () =>
                      _openAddToCartSheet(context, state.filteredItems[i]),
                ),
                childCount: state.filteredItems.length,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 2.5,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
              ),
            ),
          ),
        const SliverPadding(padding: EdgeInsets.only(bottom: 100)),
      ],
    );
  }
}

class _ShimmerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).colorScheme.surface,
      highlightColor: Theme.of(context).colorScheme.surface.withValues(alpha: 0.5),
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: 6,
        itemBuilder: (_, __) => Container(
          margin: const EdgeInsets.only(bottom: 16),
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}

class _ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _ErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.wifi_off_rounded,
              size: 64,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 16),
            Text(
              message,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }
}

class _EmptyView extends StatelessWidget {
  const _EmptyView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.search_off,
            size: 64,
            color: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.3),
          ),
          const SizedBox(height: 16),
          Text(
            'No items found',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
