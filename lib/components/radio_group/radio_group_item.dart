import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioGroupItem extends StatefulWidget {
  const RadioGroupItem({required this.label, required this.picked, Key? key})
      : super(key: key);
  final String label;
  final bool picked;

  @override
  _RadioGroupItemState createState() => _RadioGroupItemState();
}

class _RadioGroupItemState extends State<RadioGroupItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        leading: Text(widget.label),
        trailing: IgnorePointer(
          ignoring: true,
          child: Radio(
            value: widget.picked,
            groupValue: true,
            onChanged: (picked) {},
          ),
        ),
      ),
    );
  }
}
