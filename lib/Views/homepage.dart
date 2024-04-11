import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context) . primaryColor,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius. circular(50)
              ) // BorderRadius.only
            ), // BoxDecoration
            child: Column(
              children: [
                const SizedBox(height: 50),
                ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Text('Hi Ahad!', style: Theme.of(context). textTheme.headlineSmall ?. copyWith(
                    color: Colors.white
                  )), // Text
                  subtitle: Text('Good Morning', style: Theme.of(context). textTheme. titleMedium ?. copyWith(
                    color: Colors.white54
                  ),), // Text
                  trailing: const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/user.JPG')
                  ), // CircleAvatar
                ),
                const SizedBox(height: 30,),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius. circular(100)
                )
              ),
            
              child: GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard('Videos', CupertinoIcons.play_rectangle, Colors. deepOrange),
                  itemDashboard('Analytics', CupertinoIcons.graph_circle, Colors.green),
                  itemDashboard('Audience', CupertinoIcons.person_2, Colors.purple),
                  itemDashboard('Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
                  itemDashboard('Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
                  itemDashboard('Upload', CupertinoIcons.add_circled, Colors.teal),
                  itemDashboard('About', CupertinoIcons.question_circle, Colors.blue),
                  itemDashboard('Contact', CupertinoIcons.phone, Colors.pinkAccent),
                ]
              ),
            ),
          ),
        ],
      ),
    );
  }


  itemDashboard(String title, IconData iconData, Color background) => Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 5),
          color: Theme.of(context).primaryColor.withOpacity(.2),
          spreadRadius: 2,
          blurRadius: 5
        ),
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: background,
            shape: BoxShape.circle
          ),
          child: Icon(iconData, color: Colors.white),
        ),
        const SizedBox(height: 8),
        Text(title, style: Theme.of(context). textTheme. titleMedium, )
      ]
    ),
  ); // Container
}