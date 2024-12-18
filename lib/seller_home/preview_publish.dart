import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/data/product_data.dart';


class PreviewPublish extends StatelessWidget {
  PreviewPublish({super.key});
  final List<Map<String, String>> timeSlots = [
    {'day': 'Mo', 'time': '5PM - 10 PM'},
    {'day': 'Tu', 'time': '5PM - 10 PM'},
    {'day': 'We', 'time': '5PM - 10 PM'},
    {'day': 'Th', 'time': '5PM - 10 PM'},
  ];
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const FaIcon(
                FontAwesomeIcons.angleLeft,
                color: Colors.white,
                size: 30,
              ),
            ),
            const Text(
              'Na Ryneczku',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(
              width: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/bie-icon.png'),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(118, 151, 104, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Apple, Mangos & Orange Offer',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 8,
              left: 8,
            ),
            child: Text(
              'Description',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                'Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type Lorem Ipsum has been the industry standard dummy.'),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(118, 151, 104, 1),
                        borderRadius: BorderRadiusDirectional.circular(24)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Flexible(
                            child: Text(
                          timeSlots[index]['day']!,
                          style: const TextStyle(color: Colors.white),
                        )),
                        Text(
                          timeSlots[index]['time']!,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Product',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 150,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // mainAxisSpacing: 10,
                // crossAxisSpacing: 10,
              ),
              scrollDirection: Axis.vertical,
              itemCount: 4,
              itemBuilder: (context, index) {
                final product = productList[index];
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes the shadow position
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Colors.white,
                          Color.fromARGB(255, 255, 255, 255)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.green,
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(product.imagePath),
                               Text(
                                product.name,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Text(product.price.toStringAsFixed(2)),
                        ),
                        Positioned(
                          left: 8,
                          bottom: 8,
                          child: Text(product.unit),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text(product.quantity.toString()),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Address',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: const Center(child: Text('Map Container')),
          ),
          const Spacer(),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: CustomElevatedButton(
              label: 'Publish',
              onSelection: () {},
              backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
