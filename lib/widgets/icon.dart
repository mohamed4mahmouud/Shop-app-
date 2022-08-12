import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  final Function() myIcon;
  final String label;
  final Color colour;
  final Function() mark;
  final Function() add;
  final Function() minus;
  var data;
  card(this.myIcon, this.label, this.colour, this.mark, this.add, this.minus,
      this.data,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: colour,
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  RawMaterialButton(
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    onPressed: myIcon,
                    fillColor: Color(0xFF4C4F5E),
                    shape: CircleBorder(side: BorderSide.none),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    label,
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RawMaterialButton(
                    child: Icon(
                      Icons.shopping_basket,
                      color: Colors.white,
                    ),
                    onPressed: myIcon,
                    fillColor: Color(0xFF4C4F5E),
                    shape: CircleBorder(side: BorderSide.none),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Center(
                  child: SizedBox(child: Image.asset("assets/download.jpg"))),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${data}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                RawMaterialButton(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  onPressed: add,
                  fillColor: Color(0xFF4C4F5E),
                  shape: CircleBorder(side: BorderSide.none),
                ),
                RawMaterialButton(
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                  onPressed: minus,
                  fillColor: Color(0xFF4C4F5E),
                  shape: CircleBorder(side: BorderSide.none),
                )
              ],
            )
          ],
        ));
  }
}
