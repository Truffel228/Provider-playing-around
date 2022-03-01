import 'package:flutter/material.dart';
import 'package:untitled1/components/gender_widget/gender_widget_item.dart';
import 'package:untitled1/consts.dart';

class GenderWidget extends StatefulWidget {
  const GenderWidget(
      {required this.gender, required this.onItemClick, Key? key})
      : super(key: key);
  final Function(Gender) onItemClick;
  final Gender gender;

  @override
  _GenderWidgetState createState() => _GenderWidgetState();
}

class _GenderWidgetState extends State<GenderWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () => widget.onItemClick(Gender.female),
            child: GenderWidgetItem(
              label: 'Female',
              value: widget.gender == Gender.female,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => widget.onItemClick(Gender.male),
            child: GenderWidgetItem(
              label: 'Male',
              value: widget.gender == Gender.male,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () => widget.onItemClick(Gender.noGender),
            child: GenderWidgetItem(
              label: 'No Gender',
              value: widget.gender == Gender.noGender,
            ),
          ),
        ),
      ],
    );
  }
}
