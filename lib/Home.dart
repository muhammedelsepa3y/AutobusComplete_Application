import 'dart:ui';

import 'package:flutter/material.dart';




import 'Item.dart';
import 'SearchPage.dart';
import 'SecondPage.dart';
import 'constants.dart';

class Task_3 extends StatefulWidget {
  const Task_3({Key? key}) : super(key: key);

  @override
  State<Task_3> createState() => _Task_3State();
}

class _Task_3State extends State<Task_3> {
  letter? show;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
              children: [
                const UserAccountsDrawerHeader(
                  accountName: Text('modules.Task3'),
                  accountEmail: Text('MSP@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/245011815_3986098181490734_3888329413334808627_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=dSKzAJi9ZuAAX_snRkp&_nc_ht=scontent.fcai19-7.fna&oh=00_AfBDyjrTrGt7rjuKpsWAthgvLgZkvRP-T9GFAW2Q7c65ew&oe=63AB1CF4',
                    ),
                  ),
                  decoration: BoxDecoration(color: Color(0xff50c878)),
                ),


                ListTile(
                  leading: Icon(Icons.account_circle),
                  title: Text(
                    'My Profile',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.notifications_active),
                  title: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.chat),
                  title: Text(
                    'Contact',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.error),
                  title: Text(
                    'About us',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text(
                    'Log Out',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ]
          )
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff50c878),
        title: Text(
          'MSP',
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  CircleAvatar(child: IconButton(icon: Icon(Icons.notifications),onPressed: (){

                  },),radius:20,foregroundColor:Colors.white,backgroundColor: Color(0xff50c878)),
                  CircleAvatar(
                    child: Text('3',style: TextStyle(color: Colors.white,fontSize: 13),),
                    radius: 7.0,
                    backgroundColor: Colors.red,
                  ),
                ],
              )),
        ],
        centerTitle: true,),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            GestureDetector(
              onTap: (){showSearch(context: context, delegate: SearchBar());},
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[300],
                ),
                padding: EdgeInsets.all(5.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Choose a Char',style:
                  TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xff50c878)
                  ),),
                  const SizedBox(
                    height: 20,
                  ),
                  DropdownButton<letter>(
                    dropdownColor: Color(0xff50c878).withOpacity(0.7),
                    iconEnabledColor: Color(0xff50c878),
                    borderRadius: BorderRadius.circular(18),
                    itemHeight: 70,
                    items: autobus_complete
                        .map((e) => DropdownMenuItem<letter>(
                        value: e, child: Item(charr: e.user_letter,id: e.id)))
                        .toList(),
                    value: show,
                    style: TextStyle(
                        color:Color(0xff50c878)
                    ),
                    onChanged: (value) {
                      setState(() {
                        show = value;

                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Second(i: show)));
                      },
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          )),
                      child: const Text('Go to Next Page',style: TextStyle(color:Color(0xff50c878)),)),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

}
