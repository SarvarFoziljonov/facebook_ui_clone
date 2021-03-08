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
      backgroundColor: Colors.grey,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.grey,),
          ),
          IconButton(
            icon: Icon(Icons.camera_alt, color: Colors.grey,),
          ),
        ],
      ),
      body: ListView(
      children: [
        // #Publication
        Container(
        padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          margin: EdgeInsets.only(top: 0),
          height: 120,
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
               child: Row(
                 children: [
                   Container(
                    height: 45,
                    width: 45,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       image: DecorationImage(
                         image: AssetImage("assets/images/user_5.jpg"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   SizedBox(width: 10,),
                   Expanded(
                    child: Container(
                      height: 46,
                      padding: EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What's on your mind?",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                   ),
                 ],
               ),
              ),
              Expanded(
               child: Row(
                 children: [
                   // #live
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.video_call, color: Colors.red,),
                         SizedBox(width: 5,),
                         Text("Live", style: TextStyle(color: Colors.white),),
                       ],
                     ),
                   ),
                   Container(
                     width: 1,
                     margin: EdgeInsets.only(top: 14,bottom: 14),
                     color: Colors.grey[300],
                   ),
                   // #photo
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.photo, color: Colors.green,),
                         SizedBox(width: 5,),
                         Text("Photo", style: TextStyle(color: Colors.white),),
                       ],
                     ),
                   ),
                   Container(
                     width: 1,
                     margin: EdgeInsets.only(top: 14,bottom: 14),
                     color: Colors.grey[300],
                   ),
                   // # check in
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.location_on, color: Colors.red,),
                         SizedBox(width: 5,),
                         Text("Check in", style: TextStyle(color: Colors.white),),
                       ],
                     ),
                   ),
                 ],
               )
              ),
            ],
          ),
        ),
        // #History
        Container(
          color: Colors.black,
          height: 200,
          padding: EdgeInsets.only(top: 10, bottom: 10),
          margin: EdgeInsets.only(top: 10),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 10,),
              makeStory(
                  storyImage: 'assets/images/story_5.jpg',
                  userImage: 'assets/images/user_5.jpg',
                  userName: 'User Five'
              ),
              makeStory(
                  storyImage: 'assets/images/story_4.jpg',
                  userImage: 'assets/images/user_4.jpg',
                  userName: 'User Five'
              ),
              makeStory(
                  storyImage: 'assets/images/story_3.jpg',
                  userImage: 'assets/images/user_3.jpg',
                  userName: 'User Five'
              ),
              makeStory(
                  storyImage: 'assets/images/story_2.jpg',
                  userImage: 'assets/images/user_2.jpg',
                  userName: 'User Five'
              ),

            ],
          ),
        ),
        makeFeed(
            userName: 'User Two',
            userImage: 'assets/images/user_2.jpg',
            feedTime: '1 hr ago',
            feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
            feedImage1: 'assets/images/feed_2.jpg',
            feedImage2: 'assets/images/feed_4.jpg',
        ),
        makeFeed(
          userName: 'User Two',
          userImage: 'assets/images/user_4.jpg',
          feedTime: '1 hr ago',
          feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
          feedImage1: 'assets/images/feed_1.jpg',
          feedImage2: 'assets/images/feed_5.jpg',
        ),

      ],
      ),

    );
  }
  Widget makeStory ({storyImage, userImage, userName}) {
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: Colors.blue),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  )
                ),
              ),
              Text(userName, style: TextStyle(color: Colors.white, ),),
            ],
          )
        ),
      ),
    );
  }
  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage1, feedImage2 }) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(userImage),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(userName, style: TextStyle(color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(fontSize: 15, color: Colors.grey),),
                          ],
                        )
                      ],
                    ),
                    IconButton(
                      icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey, height: 1.5, letterSpacing: .7),),
                SizedBox(height: 20,),
              ],
            ),
          ),
           Row(
             children: [
               Expanded(
                 child: Container(
                   height: 240,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage(feedImage1),
                           fit: BoxFit.cover
                       )
                   ),
                 ),
               ),
               Expanded(
                 child: Container(
                   height: 240,
                   decoration: BoxDecoration(
                       image: DecorationImage(
                           image: AssetImage(feedImage2),
                           fit: BoxFit.cover
                       )
                   ),
                 ),
               ),
             ],
           ),



          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    makeLike(),
                    Transform.translate(
                        offset: Offset(-5, 0),
                        child: makeLove()
                    ),
                    SizedBox(width: 5,),
                    Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey),)
                  ],
                ),
                Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey),)
              ],
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              makeLikeButton(isActive: true),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.favorite, size: 12, color: Colors.white),
      ),
    );
  }
  Widget makeLikeButton({isActive}) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeCommentButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.chat, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Comment", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
  Widget makeShareButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.share, color: Colors.grey, size: 18),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color: Colors.grey),)
          ],
        ),
      ),
    );
  }
}

