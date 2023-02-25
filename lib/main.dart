import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home:app(),
    );
  }
}
class app extends StatefulWidget {
  const app({Key? key}) : super(key: key);

  @override
  State<app> createState() => _appState();
}

class _appState extends State<app> {
  final List title = const["Vaishnavi","person2","person3",'person4',
    "person5","person6","person7",'person8',
    "person5","person6","person7",'person8',];
  final icons = const[Icons.person,Icons.person,Icons.person,
    Icons.person,
    Icons.person,
    Icons.person,Icons.person,Icons.person,
    Icons.person,
    Icons.person,Icons.person,Icons.person,];

  @override
  Widget build(BuildContext context) {
    // var _tabController;
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        title: Text(
          "WhatsApp",


        ),
        bottom: TabBar(tabs: [
          Tab(icon: Icon(Icons.people_alt_rounded),),
          Tab(icon:  Text("Chats"),),
          Tab(icon: Text("Status"),),

          Tab(icon: Text("Calls"),)
        ],

        ),

        actions:<Widget>[
          IconButton(
            icon: Icon(Icons.camera_alt),
            tooltip: 'camera icon', onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'search icon', onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.arrow_drop_down),
            tooltip: 'camera icon', onPressed: () {  },
          ),
        ],
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder
        ( itemCount: title.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.person),
                ),
                title: Text(title[index]),
                subtitle: Text('This is a subtitile'),
                trailing: Text('4:30PM'),
              ),
            );
          }
      ),



    ));
  }
}


