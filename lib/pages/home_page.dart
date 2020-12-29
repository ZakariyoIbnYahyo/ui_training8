import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Facebook", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blueAccent),),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey[500],),
            onPressed: (){},
          ),
          IconButton(
              icon: Icon(Icons.camera_alt, color: Colors.grey[500],),
              onPressed: (){}
              ),
        ],
      ),

      body: ListView(
        children: [
          //#post create
          Container(
            height: 120,
            padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            color: Colors.black,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/user_2.jpeg")
                            )
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                          height: 45,
                          padding: EdgeInsets.only(right: 15, left: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.5),
                            border:Border.all(width: 1, color: Colors.grey[500])
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              hintText: "What's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey[500],fontSize: 18),
                              border: InputBorder.none
                            ),

                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live", style: TextStyle(color: Colors.grey[500]),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12, bottom: 12),
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.photo, color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Image", style: TextStyle(color: Colors.grey[500]),)
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 12, bottom: 12),
                        width: 1,
                        color: Colors.grey[500],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on, color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in", style: TextStyle(color: Colors.grey[500]),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //post stories
          Container(
            height: 200,
            color: Colors.black,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "Second User",
                ),
                makeStory(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "Second User",
                ),
                makeStory(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "Second User",
                ),
                makeStory(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "Second User",
                ),
                makeStory(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "Second User",
                ),
              ],
            ),

          ),

          //post feed
          makeFeed(
            userName: "User First",
            userImage: "assets/images/user_1.jpeg",
            feedTime: "1 hr ago",
            feedText: "Bu yerda post haqida ma'lumotlar bo'lishi kerak edi. Post yaxshi chiqadi deb umid qilamiz",
            feedImg1: "assets/images/story_2.jpeg",
            feedImg2: "assets/images/story_1.jpeg",
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage, userName}){
    return AspectRatio(
      aspectRatio: 1.4/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border:Border.all(color: Colors.blue, width: 2),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImg1, feedImg2}){
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        children: [
          //#header
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 15,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(fontSize: 18, color: Colors.grey[500], fontWeight: FontWeight.bold),),
                            SizedBox(height: 5,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey[500]),)
                          ],
                        )
                      ],
                    ),
                    IconButton(
                        icon: Icon(Icons.more_horiz, size: 28, color: Colors.grey[500],),
                        onPressed: (){}
                        )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(color: Colors.grey[500],fontSize: 15, height: 1.5, letterSpacing: .8),),
                SizedBox(height: 20,),
              ],
            ),

          ),
          //Image
          Container(
            height: 240,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(feedImg1),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(feedImg2),
                            fit: BoxFit.cover
                        )
                    ),
                  ),
                ),
              ],
            ),
          ),
          //#like
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    makeLike(),
                    Transform.translate(
                      offset: Offset(-5,0),
                      child: makeLove(),
                    ),
                    SizedBox(width: 5,),
                    Text("3,3K", style: TextStyle(color: Colors.grey[500], fontSize: 15),)
                  ],
                ),
                Text("100 Comments", style: TextStyle(color: Colors.grey[500],fontSize: 13),)
              ],
            ),
          ),

          //#like comment share
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeBut(isAct: true),
              makeComBut(),
              makeShareBut(),
            ],
          )

        ],
      ),
    );
  }

  Widget makeLike(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLove(){
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white,),
      ),
    );
  }

  Widget makeLikeBut({isAct}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20, vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.thumb_up, color: isAct ? Colors.blue : Colors.grey[500], size: 20,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isAct ? Colors.blue : Colors.grey[500]),)
          ],
        ),
      ),
    );
  }

  Widget makeComBut(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20, vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.chat, color:Colors.grey[500], size: 20,),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey[500]),)
          ],
        ),
      ),
    );
  }

  Widget makeShareBut(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal:20, vertical: 5),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.share, color:Colors.grey[500], size: 20,),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey[500]),)
          ],
        ),
      ),
    );
  }
}
