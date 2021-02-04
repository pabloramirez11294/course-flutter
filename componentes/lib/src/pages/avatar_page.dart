import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
          actions: [
            Container(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://previews.123rf.com/images/dolgachov/dolgachov1611/dolgachov161106765/68094176-concepto-de-personas-emoci%C3%B3n-y-expresi%C3%B3n-facial-cara-de-feliz-sonriente-joven-al-aire-libre.jpg'),
                radius: 20.0,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Text('PR'),
                backgroundColor: Colors.brown,
              ),
            )
          ],
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage(
                'https://noverbal.es/uploads/blog/rostro-de-un-criminal.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ),
      ),
    );
  }
}
