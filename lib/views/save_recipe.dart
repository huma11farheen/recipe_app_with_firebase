import 'package:flutter/material.dart';

class SaveRecipe extends StatelessWidget {
  const SaveRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          child: Image.asset(
            'images/food3.jpeg',
            fit:BoxFit.fill ,
          ),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Save recipe'),
          ),
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.camera_alt,
                  color: Colors.white,
                ),
                TextField(
                  label: 'Recipe name',
                  maxLine: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  label: 'Time required',
                  maxLine: 1,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  label: 'Description',
                  maxLine: 10,
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        primary: Colors.orangeAccent,
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                        textStyle: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    onPressed: () {},
                    child: Text(
                      'Save my recipe',
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TextField extends StatelessWidget {
  final String label;
  final int maxLine;

  const TextField({
    Key? key,
    required this.label,
    required this.maxLine,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: maxLine,
        decoration: InputDecoration(
          labelText: label, filled: true,
          fillColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(),
          ),
          //fillColor: Colors.green
        ),
        style: TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
  }
}
class FavPageList extends StatelessWidget {
  const FavPageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
