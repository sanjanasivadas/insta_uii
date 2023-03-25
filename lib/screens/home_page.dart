import 'package:flutter/material.dart';
import 'package:insta_uii/util/story_bar.dart';
import 'package:insta_uii/util/user_post.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Instagram',style: TextStyle(fontFamily: 'Insta',fontSize: 30),),
        actionsIconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle_outline),),
          IconButton(onPressed: (){}, icon: Icon(Icons.messenger_outline_sharp)),
        ],
      ),
      body:  ListView(
        shrinkWrap: true,
          children: [
            storry(),
            UserPost(),

          ],
        ),

    );
  }
}

class storry extends StatelessWidget {
  const storry({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 110,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [


             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 30,
                       backgroundImage: NetworkImage("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                      ),
                      CircleAvatar(
                        radius: 10,
                        child: Icon(Icons.add,size: 20,),
                      )
                    ]
                  ),
                  SizedBox(height: 15,),
                  Text('Your story',style: TextStyle(color: Colors.grey,fontSize: 11),)
                ],

          ),
             ),
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context,int index){
            return Storry(index: index);
          })

        ],
      )
    );
  }
}
