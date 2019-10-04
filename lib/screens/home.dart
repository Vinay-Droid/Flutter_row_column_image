import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
      // Container take height and width from parent widget
      // It is simillar to div element
      alignment: Alignment.center,
      color: Colors.lightBlueAccent,
      //width: 200.0,
      //height: 100.0,
      padding: EdgeInsets.all(10.0),
      //margin: EdgeInsets.all(10.0),
      //margin: EdgeInsets.only(right: 20.0, left: 20.0),
      //child: RowWidget()),// only row widget
      child: RowAndColumnWidget(),
    ));
  }
}

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Expanded(
          child: Text(
            "Air India",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 20.0,
                decoration: TextDecoration.none,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                //fontStyle: FontStyle.italic
                color: Colors.white),
          ),
        ),
        Expanded(
            child: Text(
          "From Dehli to Munbai",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.none,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w700,
              //fontStyle: FontStyle.italic
              color: Colors.white),
        ))
      ],
    );
  }
}

class RowAndColumnWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Vistara",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic
                      color: Colors.white),
                ),
              ),
              Expanded(
                  child: Text(
                "From Goa to Munbai",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic
                    color: Colors.white),
              ))
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(10.0),
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  "Air India",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 20.0,
                      decoration: TextDecoration.none,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      //fontStyle: FontStyle.italic
                      color: Colors.white),
                ),
              ),
              Expanded(
                  child: Text(
                "From Delhi to Munbai",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 20.0,
                    decoration: TextDecoration.none,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic
                    color: Colors.white),
              ))
            ],
          ),
        ),

        MyImage(),
      ],
    );
  }
}

class MyImage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/airplane-take-off.png');
    Image image = Image(image: assetImage);

    return Container(child: image,);
  }

}
