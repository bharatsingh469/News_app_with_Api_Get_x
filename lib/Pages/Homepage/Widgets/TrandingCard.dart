import 'package:flutter/material.dart';

class Trandingcard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  const Trandingcard({super.key,
  required this.imageUrl,
      required this.tag,
      required this.time,
      required this.title,
      required this.author,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(5),
      // height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
        // image: DecorationImage(image: NetworkImage("", ), fit: BoxFit.cover,)
      ),
      child: Column(
        children: [
          Container(
            height: 200,
            // width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).colorScheme.background,
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    imageUrl, fit: BoxFit.cover,)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$tag",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text(
                "$time",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          // news title
          Row(
            children: [
              Flexible(
                  child: Text(
              
               title,
                maxLines: 2,
                style: Theme.of(context).textTheme.headlineSmall,
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),
          // Auther name
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 15,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(
                width: 10,
              ),
              Flexible(child: Text("$author", maxLines: 1,),),
            ],
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
