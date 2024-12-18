import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 219, 213, 213),
        gradient: const LinearGradient(colors: [
          Colors.white,
          Colors.grey
        ],),
        borderRadius: BorderRadius.circular(20)
       ),
      
      
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/boy.png'),
        ),
        title: const Text('Alex Linderson'),
        subtitle: const Text('Good Services'),
        trailing: RatingBarIndicator(
          itemSize: 20,
          rating: 3.1,
          itemBuilder: (context, index) => const Icon(
            Icons.star,
            color: Colors.orange,
            
          ),
        ),
      ),
    );
  }
}
