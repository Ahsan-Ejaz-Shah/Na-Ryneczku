import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/data/product_data.dart';

class AddProduct extends StatefulWidget {
  AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  int selectedIndex = 0;
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
            child: const Center(
              child: Text(
                'Sales Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              leading: FaIcon(
                FontAwesomeIcons.search,
                color: Color.fromRGBO(118, 151, 104, 1),
              ),
            ),
          ),
          Flexible(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final product = productList[index];
                final isSelected = selectedIndex == index;
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                      // context.go(
                      //     '/HomeScreen/salesdetail/addproduct/productdetails');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected
                            ? const Color.fromRGBO(118, 151, 104, 1)
                            : Colors.white,
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              blurStyle: BlurStyle.outer),
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            product.imagePath,
                            fit: BoxFit.cover,
                          ),
                          Text(
                            product.name,
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: isSelected
                                  ? Colors.white
                                  : const Color.fromRGBO(118, 151, 104, 1),
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
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                SizedBox(
                  width: 195,
                  child: CustomElevatedButton(
                    label: 'Custom Product',
                    onSelection: () {
                      context.go(
                          '/HomeScreen/salesdetail/addproduct/customproduct');
                    },
                    backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                    foregroundColor: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 3,
                ),
                Flexible(
                  child: CustomElevatedButton(
                    label: 'Add To Offer',
                    onSelection: () {},
                    backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                    foregroundColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
