import 'package:flutter/material.dart';
import 'package:untitled1/components/radio_group/radio_group_item.dart';
import 'package:untitled1/consts.dart';

class RadioGroup extends StatefulWidget {
  const RadioGroup(
      {required this.onItemTap, required this.pickedPreferences, Key? key})
      : super(key: key);
  final List<Preferences> pickedPreferences;
  final Function(Preferences) onItemTap;

  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: Preferences.values.length,
      itemBuilder: (context, index) {
        return InkWell(
            onTap: () {
              widget.onItemTap(Preferences.values[index]);
            },
            child: RadioGroupItem(
              label: Preferences.values[index].name,
              picked:
                  widget.pickedPreferences.contains(Preferences.values[index]),
            ));
      },
    );
  }
}
