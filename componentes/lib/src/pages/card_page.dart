import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(
              height: 30.0,
            ),
            _cardTipo2(),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Title'),
            subtitle: Text(
                'Subtitle description text of the card that show the information.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 140.0,
            fit: BoxFit.cover,
          ),
          // Image(
          //   image: NetworkImage(
          //       'https://upload.wikimedia.org/wikipedia/commons/9/91/Oahu_Landscape.jpg'),
          // ),
          Container(
            child: Text('Description of image'),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}
