import 'package:flutter/material.dart';

class MultiSelectDropdown extends StatefulWidget {
  final String hint;
  final List<String> options;
  final List<String> selectedValues;
  final Function(List<String>) onSelectionChanged;

  const MultiSelectDropdown({
    super.key,
    required this.hint,
    required this.options,
    required this.selectedValues,
    required this.onSelectionChanged,
  });

  @override
  State<MultiSelectDropdown> createState() => _MultiSelectDropdownState();
}

class _MultiSelectDropdownState extends State<MultiSelectDropdown> {
  final LayerLink _layerLink = LayerLink();
  bool _isOpen = false;
  late List<String> _selectedItems;
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.selectedValues);
  }

  void _toggleDropdown() {
    if (_isOpen) {
      _removeOverlay();
    } else {
      _showOverlay();
    }
    setState(() {
      _isOpen = !_isOpen;
    });
  }

  void _showOverlay() {
    final overlay = Overlay.of(context);
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    try {
      _overlayEntry = OverlayEntry(
        builder: (context) => Stack(
          children: [
            GestureDetector(
              onTap: _removeOverlay,
              child: Container(
                color: Colors.transparent,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              width: size.width,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0, size.height + 5),
                child: Material(
                  elevation: 4,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        itemCount: widget.options.length,
                        itemBuilder: (context, index) {
                          final option = widget.options[index];
                          return StatefulBuilder(
                            builder: (context, setBuilderState) {
                              return CheckboxListTile(
                                key: ValueKey(option),
                                value: _selectedItems.contains(option),
                                onChanged: (selected) {
                                  if (mounted && selected != null) {
                                    setBuilderState(() {
                                      if (selected) {
                                        _selectedItems.add(option);
                                      } else {
                                        _selectedItems.remove(option);
                                      }
                                    });
                                    // Ensure widget is mounted before calling setState
                                    if (mounted) {
                                      setState(() {});
                                      widget.onSelectionChanged(_selectedItems);
                                    }
                                  }
                                },
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: Text(
                                  option,
                                  style: const TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      // Action buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              _selectedItems = List.from(widget.selectedValues);
                              _removeOverlay();
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              widget.onSelectionChanged(_selectedItems);
                              _removeOverlay();
                            },
                            child: const Text('Done'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );

      if (mounted) {
        overlay.insert(_overlayEntry!);
      }
    } catch (e) {
      debugPrint('Error showing overlay: $e');
    }
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    setState(() => _isOpen = false);
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: InkWell(
        onTap: _toggleDropdown,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  _selectedItems.isEmpty
                      ? widget.hint
                      : _selectedItems.join(', '),
                  style: TextStyle(
                    color: _selectedItems.isEmpty
                        ? Colors.black.withValues(alpha: 0.25)
                        : Colors.black,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              Icon(
                _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                color: const Color(0xFFBA68C8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
