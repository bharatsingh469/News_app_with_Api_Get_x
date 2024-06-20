import 'package:flutter/material.dart';
import 'package:news_app_get_x/Pages/Homepage/Widgets/NewsTile.dart';
import 'package:news_app_get_x/Pages/Homepage/Widgets/TrandingCard.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NEWSEEKERS",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hottest News",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              // nexs image
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Trandingcard(imageUrl: "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                    tag: "Tranding no 1",
                    time: "2 day ago",
                    title: "भीषण गर्मी के बावजूद जून में बढ़ी राम मंदिर आने वाले श्रद्धालुओं की संख्या, देखें आंकड़े..",
                    author: "Bharat Singh",
                    ),
                    
                    Trandingcard(
                      imageUrl: "https://akm-img-a-in.tosshub.com/aajtak/images/story/202406/6673b64399f7f-phil-salt-and-jonny-bairstow-getty-images-205530358-16x9.jpg?size=948:533",
                    tag: "Tranding no 2",
                    time: "1 day ago",
                    title: " इंग्लैंड ने रोका वेस्टइंडीज का विजयरथ, साल्ट-बेयरस्टो के दम पर हासिल की तूफानी जीत..",
                    author: "Ravi Kumar",
                    ),
                  
                  ],
                ),
              ),
              //
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "News For you",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
              SizedBox(height: 20,),
             const Column(
                children: [
                  NewsTile(
                    imageUrl: "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                    time: "2 day ago",
                    title: "भीषण गर्मी के बावजूद जून में बढ़ी राम मंदिर आने वाले श्रद्धालुओं की संख्या, देखें आंकड़े..",
                    author: "Bharat Singh",
                  ),
                  NewsTile(
                    imageUrl: "https://akm-img-a-in.tosshub.com/aajtak/images/story/202406/6673b64399f7f-phil-salt-and-jonny-bairstow-getty-images-205530358-16x9.jpg?size=948:533",
                    time: "1 day ago",
                    title: " इंग्लैंड ने रोका वेस्टइंडीज का विजयरथ, साल्ट-बेयरस्टो के दम पर हासिल की तूफानी जीत..",
                    author: "Ravi Kumar",
                  ),
                  NewsTile(
                    imageUrl: "https://static.toiimg.com/thumb/msid-46918916,width=1200,height=900/46918916.jpg",
                    time: "2 day ago",
                    title: "भीषण गर्मी के बावजूद जून में बढ़ी राम मंदिर आने वाले श्रद्धालुओं की संख्या, देखें आंकड़े..",
                    author: "Bharat Singh",
                  ),
                  
                ],
              )
          
            ],
          ),
        ),
      ),
    );
  }
}
