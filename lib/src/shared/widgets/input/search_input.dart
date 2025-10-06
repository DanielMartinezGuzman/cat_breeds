import 'dart:async';

import 'package:cat_breeds/src/shared/constants/layout.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({
    required this.onChanged,
    this.hintText,
    this.onTapClearButton,
    super.key,
  });

  final String? hintText;
  final ValueChanged<String> onChanged;
  final VoidCallback? onTapClearButton;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  final TextEditingController controller = TextEditingController();
  final FocusNode focusNode = FocusNode();
  final Duration debounceDuration = const Duration(milliseconds: 300);
  Timer? debounce;
  num minCharacters = 2;

  void onChanged(String text) {
    debounce?.cancel();
    debounce = Timer(debounceDuration, () {
      if (text.isEmpty || text.length < minCharacters) return;
      widget.onChanged(text);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
    controller: controller,
    focusNode: focusNode,
    onChanged: onChanged,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.search),
      suffixIcon: controller.text.isNotEmpty
          ? IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                controller.clear();
                widget.onTapClearButton?.call();
                focusNode.unfocus();
              },
            )
          : null,
      hintText: widget.hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(UILayout.instance.layout8),
      ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: UILayout.instance.layout8,
      ),
    ),
  );
}
