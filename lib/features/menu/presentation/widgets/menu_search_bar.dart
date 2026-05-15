import 'package:flutter/material.dart';

class MenuSearchBar extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final VoidCallback onClear;
  final String initialValue;

  const MenuSearchBar({
    super.key,
    required this.onChanged,
    required this.onClear,
    this.initialValue = '',
  });

  @override
  State<MenuSearchBar> createState() => _MenuSearchBarState();
}

class _MenuSearchBarState extends State<MenuSearchBar> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialValue);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
      child: Semantics(
        label: 'Search menu items',
        child: TextField(
          controller: _controller,
          onChanged: widget.onChanged,
          decoration: InputDecoration(
            hintText: 'Search menu…',
            prefixIcon: const Icon(Icons.search, semanticLabel: 'Search icon'),
            suffixIcon: _controller.text.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, semanticLabel: 'Clear search'),
                    onPressed: () {
                      _controller.clear();
                      widget.onClear();
                    },
                  )
                : null,
          ),
        ),
      ),
    );
  }
}
