import 'package:flutter/material.dart';

class Tweet extends StatelessWidget {
 static String routeName = '/tweet';

  const Tweet({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back,
                color: Colors.white), 
            onPressed: () {
              Navigator.pop(context); 
            },
          ),
          title: const Text(
            "Twitter Clone",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: const Center( 
          child: Column(mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              
              child: TweetCard(),
            ),
          ]),
        ));
  }
}

class TweetCard extends StatelessWidget {
  const TweetCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 20, 
          backgroundColor: Colors.grey,
          child: Icon(
            Icons.account_circle,
            size: 30,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
             
            children: [
              Row(
                children: [
                  const Text(
                    "Ghana",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    "@iamfuturefan · 10h",
                    style: TextStyle(color: Colors.grey[600], fontSize: 14),
                  ),
                  // const SizedBox(width: 100),
                  const Spacer(),
               
                         const Icon(Icons.more_horiz, color: Colors.grey, size: 20),
                 
                  
                ],
              ),

              const SizedBox(height: 5),
              const Text(
                "Cheki ile story ya watu wa blood group 0- hawapati HIV ilikua ukweli ama JABA",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.chat_bubble_outline,
                          color: Colors.black, size: 18),
                      SizedBox(
                        width: 4,
                      ),
                      Text("97",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.repeat, color: Colors.black, size: 18),
                      SizedBox(
                        width: 4,
                      ),
                      Text("157",
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.favorite_border,
                          color: Colors.black, size: 18),
                      SizedBox(
                        width: 4,
                      ),
                      Text("558",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.bar_chart, color: Colors.black, size: 18),
                      SizedBox(
                        width: 4,
                      ),
                      Text("12K",
                          style: TextStyle(color: Colors.grey, fontSize: 14)),
                    ],
                  ),
                  Icon(Icons.bookmark_border, color: Colors.black, size: 18),
                  Icon(Icons.upload, color: Colors.black, size: 18),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
