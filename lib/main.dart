import 'package:cartoons_flutter/model/main.dart';
import 'package:cartoons_flutter/widgets/content_widget.dart';
import 'package:flutter/material.dart';
import 'package:cartoons_flutter/model/Back.dart';
import 'package:flutter/services.dart';

//import 'package:cartoons_flutter/model';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gmail'),
        ),
        body: ListView.builder(
            itemCount: Backend().getMails().length,
            itemBuilder: (context, index) {
              Mail mail = Backend().getMails()[index];
              return Dismissible(
                key: ObjectKey(mail),
                child: ListTile(
                  subtitle: Text(mail.subject),
                  title: Text(mail.from),
                  leading: Icon(Icons.brightness_1, color: Colors.red),
                  trailing: Text(mail.dateTime),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ContentWidget(mail)));
                  },
                  
                ),
                onDismissed: (direction) {
                  Backend().getMails().remove(index);
                },
              );
            }));
  }
}
