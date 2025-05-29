import 'package:flutter/material.dart';

class BoxShadowed extends StatefulWidget {
  final String label;
  final ValueChanged<String>? onChanged;
  final bool editable;
  final VoidCallback? onTap;

  const BoxShadowed({
    super.key,
    this.label = '',
    this.onChanged,
    this.editable = false,
    this.onTap,
  });

  @override
  State<BoxShadowed> createState() => _BoxShadowedState();
}

class _BoxShadowedState extends State<BoxShadowed> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.label);
  }

  @override
  void didUpdateWidget(covariant BoxShadowed oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.label != widget.label) {
      _controller.text = widget.label;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: widget.editable
            ? TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter room name',
                ),
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
                onChanged: widget.onChanged,
              )
            : Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
      ),
    );
  }
}