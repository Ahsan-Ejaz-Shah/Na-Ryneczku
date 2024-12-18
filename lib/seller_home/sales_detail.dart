import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';

import 'package:onboard/customizablewidgets/custom_textfield.dart';
import 'package:onboard/data/product_data.dart';

// ignore: must_be_immutable
class SalesDetailScreen extends StatefulWidget {
  SalesDetailScreen({super.key});

  @override
  State<SalesDetailScreen> createState() => _SalesDetailScreenState();
}

class _SalesDetailScreenState extends State<SalesDetailScreen> {
  List<String> days = ["Mo", "Tu", "We", "Th", "Fr", "Sa", "Su"];
  TimeOfDay _startPickedTime = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay _endPickedTime = const TimeOfDay(hour: 0, minute: 0);
  int selectedIndex = 0;
  int productSelectedIndex = 0;

  void _startTimePicker(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _startPickedTime,
    );
    if (pickedTime != null) {
      setState(() {
        _startPickedTime = pickedTime;
      });
    }
  }

  void _endTimePicker(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _endPickedTime,
    );
    if (pickedTime != null) {
      setState(() {
        _endPickedTime = pickedTime;
      });
    }
  }

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
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
              child: const Center(
                child: Text(
                  'Sales Detail',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                Flexible(
                  child: CustomTextField(
                    label: 'Address',
                    onTapDropDown: () {},
                    icon: FontAwesomeIcons.mapMarkerAlt,
                    obsecureText: false,
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 65, // Adjust height for the vertical layout
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(118, 151, 104, 1),
                          size: 20, // Adjust icon size if needed
                        ),
                        Text(
                          'Select From Map',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14, // Adjust font size if needed
                          ),
                          textAlign: TextAlign.center, // Center the text
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
                label: 'Offer Name',
                onTapDropDown: () {},
                icon: FontAwesomeIcons.userAlt,
                obsecureText: false),
            const SizedBox(
              height: 20,
            ),
            CustomTextField(
              maxLine: 3,
              label: 'Details',
              onTapDropDown: () {},
              obsecureText: false,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Available Days',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: days.length,
                itemBuilder: (context, index) {
                  final bool isSelected = selectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update the selected index
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: isSelected
                            ? const Color.fromRGBO(118, 151, 104, 1)
                            : Colors.white, // Default background
                        child: Text(
                          days[index],
                          style: TextStyle(
                            color: isSelected
                                ? Colors.white
                                : const Color.fromRGBO(118, 151, 104, 1),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  //height: 50,
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CustomElevatedButton(
                          onSelection: () {
                            _startTimePicker(context);
                          },
                          label: _startPickedTime.hour == 0 &&
                                  _startPickedTime.minute == 0
                              ? 'Start Timer' // Default label if no time is picked
                              : _startPickedTime.format(context),
                          backgroundColor:
                              const Color.fromRGBO(118, 151, 114, 1),
                          foregroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: SizedBox(
                    //height: 50,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomElevatedButton(
                        onSelection: () {
                          _endTimePicker(context);
                        },
                        label: _endPickedTime.hour == 0 &&
                                _endPickedTime.minute == 0
                            ? 'End Timer' // Default label if no time is picked
                            : _endPickedTime.format(context),
                        backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Products',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),

            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  final product = productList[index];
                  final isProductSelected = productSelectedIndex == index;
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          productSelectedIndex = index;
                        });
                      },
                      child: Container(
                        width: 120,
                        height: 120,
                        decoration: BoxDecoration(
                          color: isProductSelected
                              ? const Color.fromRGBO(118, 151, 104, 1)
                              : Colors.white,
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                blurStyle: BlurStyle.outer),
                          ],
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 0,
                              left: 80,
                              right: 0,
                              child: IconButton(
                                onPressed: () {},
                                icon: const FaIcon(
                                  FontAwesomeIcons.close,
                                  size: 15,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 10,
                              left: 10,
                              right: 10,
                              bottom: 10,
                              child: Image.asset(
                                product.imagePath,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 190,
                    child: CustomElevatedButton(
                      label: 'Add Product',
                      onSelection: () {
                        context.go('/HomeScreen/salesdetail/addproduct');
                      },
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 200,
                      child: CustomElevatedButton(
                        label: 'Preview Offer',
                        onSelection: () {},
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
