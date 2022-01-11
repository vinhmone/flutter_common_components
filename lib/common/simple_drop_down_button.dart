import 'package:flutter/material.dart';

class SimpleDropDownButton<T> extends StatelessWidget {
  final List<T> list;
  final TextStyle textStyle;

  const SimpleDropDownButton({
    Key? key,
    this.list = const [],
    this.textStyle = const TextStyle(
      color: Colors.black,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      items: mapToDropDownItemList(list),
      onChanged: (value) {},
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (value) {
        return (value == null) ? 'Required**' : null;
      },
    );
  }

  List<DropdownMenuItem<T>> mapToDropDownItemList(List<T> list) {
    return list.map((item) {
      return DropdownMenuItem<T>(
          value: item,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (item == null)
                  ? Container()
                  : Text(
                      _getValue(item),
                      style: textStyle,
                    ),
              const Divider(
                color: Colors.black,
                height: 1,
                indent: 2,
                endIndent: 2,
              ),
            ],
          ));
    }).toList();
  }

  String _getValue(T value) {
    if (value is String) {
      return value;
    } else {
      return value.toString();
    }
  }
}
