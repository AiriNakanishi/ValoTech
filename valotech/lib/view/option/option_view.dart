import 'package:flutter/material.dart';

class OptionView extends StatefulWidget {
  final String optionTitle;
  final Map<String, bool> optionPress;
  final Color optionColors;

  const OptionView({
    super.key,
    required this.optionTitle,
    required this.optionPress,
    required this.optionColors,
  });

  @override
  State<OptionView> createState() => _OptionViewState();
}

class _OptionViewState extends State<OptionView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.optionTitle),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min, //Rowが子供たちに必要なだけの幅を取るように指示する
            children: <Widget>[
              for (String key in widget.optionPress.keys)
                GestureDetector(
                  onTap: () {
                    setState(() {
                      for (var entry in widget.optionPress.entries) {
                        if (key != entry.key)
                          widget.optionPress[entry.key] = false;
                      }
                      widget.optionPress[key] = !widget.optionPress[key]!;
                    });
                  },
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: widget.optionColors
                          .withAlpha(widget.optionPress[key]! ? 255 : 100),
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      key,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
