import 'package:flutter/material.dart';

class GenderWidgetItem extends StatefulWidget {
  const GenderWidgetItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);
  final String label;
  final bool value;

  @override
  _GenderWidgetItemState createState() => _GenderWidgetItemState();
}

class _GenderWidgetItemState extends State<GenderWidgetItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(right: 32),
        child: Text(widget.label),
      ),
      trailing: IgnorePointer(
        ignoring: true,
        child: Radio(
          onChanged: (value) {},
          groupValue: true,
          value: widget.value,
        ),
      ),
    );
  }
}
