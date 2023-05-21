import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List contacts = ["Sayman Rifat", "Contact 2", "Contact 3", "Kamal Hossain"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: SafeArea(
          child: Container(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(contacts[index]),
              leading: CircleAvatar(
                child: Text(contacts[index]
                    .toString()
                    .characters
                    .first), //(Seceound Way {contacts[index].toString().split(" ")[0][0])}
              ),
            );
          },
          separatorBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              child: const Divider(
                color: Colors.green,
              ),
            );
          },
          itemCount: contacts.length,
        ),
      )),
    );
  }

  ListView listViewBuilder() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(contacts[index]),
          leading: CircleAvatar(
            child: Text(contacts[index]
                .toString()
                .characters
                .first), //(Seceound Way {contacts[index].toString().split(" ")[0][0])}
          ),
        );
      },
      itemCount: contacts.length,
    );
  }

  ListView normalListView() {
    return ListView(
      children: [
        ListTile(
          title: Text('Contact 1'),
          subtitle: Text("Contact 2"),
          leading: CircleAvatar(
            child: Text('C'),
          ),
        ),
        ListTile(
          title: Text('Contact 1'),
          subtitle: Text("Contact 2"),
          leading: CircleAvatar(
            child: Text('C'),
          ),
        ),
        ListTile(
          title: Text('Contact 1'),
          subtitle: Text("Contact 2"),
          leading: CircleAvatar(
            child: Text('C'),
          ),
        ),
      ],
    );
  }
}
