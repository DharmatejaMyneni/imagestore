import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:imagestore/HistoryPage.dart';
import 'package:imagestore/UploadPage.dart';
import 'package:imagestore/bloc/authentication_bloc.dart';
import 'package:imagestore/profilepage.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  HomeScreen({Key key, @required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              BlocProvider.of<AuthenticationBloc>(context).add(
                LoggedOut(),
              );
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: Text('Welcome $name!')),
          SizedBox(
            height: 30.0,
          ),
          Center(child: RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => UploadPage()));
            },
          ))
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Profile", style: TextStyle(fontSize: 18.0)),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            ),
            new ListTile(
              leading: Icon(Icons.history),
              title: Text("Upload History", style: TextStyle(fontSize: 18.0)),
               onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HistoryPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
