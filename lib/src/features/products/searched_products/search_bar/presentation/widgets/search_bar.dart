import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    this.showBackButton = false,
    this.autofocus = false,
    this.readOnly = false,
    this.onTap,
    this.onSubmitted,
  });

  final bool showBackButton;
  final bool autofocus;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late final FocusNode focusNode;
  late final TextEditingController controller;
  bool showCloseIcon = false;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode()
      ..addListener(() {
        if (focusNode.hasFocus) {
          setCursorPosition();
        }
      });
    controller = TextEditingController()
      ..addListener(() {
        safeSetSate(controller.text);
      });
  }

  void safeSetSate(String value) {
    if (value.isNotEmpty == showCloseIcon) return;
    if (context.mounted) {
      setState(() {
        showCloseIcon = !showCloseIcon;
      });
    }
  }

  void setCursorPosition() {
    if (context.mounted) {
      setState(() {
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.text.length),
        );
      });
    }
  }

  @override
  void dispose() {
    focusNode.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = Theme.of(context);
    final isDarkMode = appTheme.brightness == Brightness.dark;
    return Row(
      children: [
        if (widget.showBackButton)
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        Expanded(
          child: TextField(
            controller: controller,
            onTap: widget.onTap,
            onSubmitted: widget.onSubmitted,
            autocorrect: false,
            autofocus: widget.autofocus,
            focusNode: focusNode,
            readOnly: widget.readOnly,
            onTapOutside: (event) {
              focusNode.unfocus();
            },
            inputFormatters: [
              LengthLimitingTextInputFormatter(25),
            ],
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.1,
                  color: isDarkMode
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFF000000),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0.1,
                  color: isDarkMode
                      ? const Color(0xFFFFFFFF)
                      : const Color(0xFF000000),
                ),
              ),
              fillColor: const Color(0xfff9f9f9),
              prefixIcon: const Icon(Icons.search),
              suffixIcon: showCloseIcon
                  ? IconButton(
                      onPressed: () {
                        if (context.mounted) {
                          setState(controller.clear);
                        }
                      },
                      icon: const Icon(Icons.close),
                    )
                  : null,
              hintText: 'بحث',
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              hintStyle: appTheme.textTheme.bodySmall
                  ?.copyWith(color: const Color(0xff858080)),
            ),
          ),
        ),
      ],
    );
  }
}
