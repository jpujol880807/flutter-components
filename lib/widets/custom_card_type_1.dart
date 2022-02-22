import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column (
        children: [
          const ListTile(
            title: Text('Soy un título'),
            subtitle: Text('Dolor ipsum irure Lorem elit do. Dolor sit adipisicing do non incididunt reprehenderit aute. Occaecat quis incididunt reprehenderit do consequat dolore quis deserunt esse. Excepteur amet aliqua qui anim magna do excepteur sit qui irure labore.'),
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel')
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('OK')
                )
              ],
            ),
          )
        ]),
    );
  }
}