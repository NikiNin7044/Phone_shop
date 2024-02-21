import 'package:flutter/material.dart';

final List<String> cats = <String>['assets/images/cat1.jpeg', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png', 'assets/images/cat2.png'];
final List<String> uniqueText = <String>['angry', 'looking', 'staring', 'staring', 'staring', 'angry', 'looking', 'staring', 'staring', 'staring', 'angry', 'looking', 'staring', 'staring', 'staring'];
final List<String> text1 = <String>['angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring'];
final List<String> text2 = <String>['holding onto the table', 'very attentive', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring'];
final List<String> text3 = <String>['angry', 'holy macaroni', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring', 'angry', 'looking', 'staring'];

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catto Shop'),
      ),
      body: const PhoneList(),
    );
  }
}

class PhoneList extends StatelessWidget {
  const PhoneList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: cats.length,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(height: 300, width: 400,
          child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
                  child: Row(
                    children: [Image.asset(cats[index]),
                    Expanded(
                      child: Column(
                            children: [Text('Catto $index ${uniqueText[index]}', 
                            style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0)),
                              Text('This is angry catto $index ${uniqueText[index]}'),
                              Text('This catto is, as you can see, ${text1[index]}'),
                              Text('Catto $index ${uniqueText[index]}'),
                              Text('Catto $index ${text2[index]}'),
                              Text('dn ${text3[index]}', overflow: TextOverflow.ellipsis,),
                            ]
                          ),
                    ),
                    ],
                  ),
          ),
        );
      }
    );
  }
}