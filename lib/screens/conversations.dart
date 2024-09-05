import 'package:flutter/material.dart';

class Conversations extends StatefulWidget{

  @override
  State<Conversations> createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {

  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 15),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://randomuser.me/api/portraits/men/1.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                  const Text("Chats",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.edit)
                ],
              ),
              const SizedBox(height: 15,),
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(232, 214, 209, 207),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  cursorColor: const Color.fromARGB(255, 0, 0, 0),
                  controller: _searchController,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    border: InputBorder.none
                  ),
                ),
              ),
              const SizedBox(height: 15,),
              _stories(),
              SizedBox(height: 20,),
              _conversations(),
            ],
          ),
        ),
      ),
    );
  }

  List storyList = [
    {
      "name": "Novac",
      "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Derick",
      "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Mevis",
      "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
      "isOnline": true,
      "hasStory": false,
    },
    {
      "name": "Emannual",
      "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
      "isOnline": true,
      "hasStory": true,
    },
    {
      "name": "Gracy",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
    },
    {
      "name": "Robert",
      "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
      "isOnline": false,
      "hasStory": true,
    }
  ];

  List conversationList = [
    {
      "name": "Novac",
      "imageUrl": "https://randomuser.me/api/portraits/men/31.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Where are you?",
      "time": "5:00 pm"
    },
    {
      "name": "Derick",
      "imageUrl": "https://randomuser.me/api/portraits/men/81.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "It's good!!",
      "time": "7:00 am"
    },
    {
      "name": "Mevis",
      "imageUrl": "https://randomuser.me/api/portraits/women/49.jpg",
      "isOnline": true,
      "hasStory": false,
      "message": "I love You too!",
      "time": "6:50 am"
    },
    {
      "name": "Emannual",
      "imageUrl": "https://randomuser.me/api/portraits/men/35.jpg",
      "isOnline": true,
      "hasStory": true,
      "message": "Got to go!! Bye!!",
      "time": "yesterday"
    },
    {
      "name": "Gracy",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Sorry, I forgot!",
      "time": "2nd Feb"
    },
    {
      "name": "Robert",
      "imageUrl": "https://randomuser.me/api/portraits/men/36.jpg",
      "isOnline": false,
      "hasStory": true,
      "message": "No, I won't go!",
      "time": "28th Jan"
    },
    {
      "name": "Lucy",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Hahahahahaha",
      "time": "25th Jan"
    },
    {
      "name": "Emma",
      "imageUrl": "https://randomuser.me/api/portraits/women/56.jpg",
      "isOnline": false,
      "hasStory": false,
      "message": "Been a while!",
      "time": "15th Jan"
    }
  ];

  dynamic _stories(){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color:  Color.fromARGB(255, 216, 209, 209),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(Icons.add, size: 33,),
                  ),
                ),
                const SizedBox(height: 10,),
                const Text('Your Story'),
              ],
            ),
          ),
          Row(
            children: List.generate(storyList.length, (index) {
              return Padding(
                padding: EdgeInsets.only(right: 15),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 60, width: 60,
                      child: Stack(
                        children: <Widget>[
                          storyList[index]['hasStory'] ? Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.blue, width: 3)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(3),
                              child: Container(
                                width: 75,
                                height: 75,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: NetworkImage(storyList[index]['imageUrl']),
                                    fit: BoxFit.cover
                                  )
                                ),
                              ),
                            ),
                          ) : Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image : NetworkImage(storyList[index]['imageUrl']), 
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                          storyList[index]['isOnline'] ? Positioned(
                            top: 38,
                            left: 42,
                            child: Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(color: Color(0xFF66BB6A),
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xFFFFFFFF), 
                                          width: 3
                                        )
                                      ),
                            ),
                          ): Container()
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: 75,
                      child: Align(
                        child: Text(storyList[index]['name']),
                      ),
                    )
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  dynamic _conversations(){
    return Column(
      children: List.generate(conversationList.length, (index) {
        return InkWell(
          child: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  child: Stack(
                    children: <Widget>[
                      conversationList[index]['hasStory'] ? 
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: Colors.blueAccent, width: 3)
                              ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: NetworkImage(
                                    conversationList[index]['imageUrl']),
                                fit: BoxFit.cover
                              )
                            ),
                          ),
                        ),
                      )
                      : Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: NetworkImage(conversationList[index]['imageUrl']),
                                  fit: BoxFit.cover
                                )
                              ),
                      ),
                      conversationList[index]['isOnline']
                          ? Positioned(
                              top: 38,
                              left: 42,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                    color: Color(0xFF66BB6A),
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Color(0xFFFFFFFF), width: 3)),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      conversationList[index]['name'],
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 140,
                      child: Text(
                        conversationList[index]['message'] + " - " + conversationList[index]['time'],
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF000000).withOpacity(0.7)
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}