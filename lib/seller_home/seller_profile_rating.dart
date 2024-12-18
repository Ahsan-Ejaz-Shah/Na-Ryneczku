import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onboard/seller_home/review_data.dart';

class SellerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Seller Profile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/boy.png'),
                    radius: 40,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Seller Name',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        RatingBarIndicator(
                          rating: 3.6,
                          itemSize: 30,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.orange,
                            );
                          },
                        ),
                        const Text(
                          '3.6',
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SizedBox(
                 height: 600,
                child: ListView.builder(
                  itemCount: 20,
                  
                  itemBuilder: (context, index) =>  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ReviewData(),
                  )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
