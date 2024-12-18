import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';
import 'package:onboard/customizablewidgets/custom_textfield.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({super.key});
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
                  'Product Details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Image.asset(
                  'assets/images/product.png',
                  width: 250,
                  height: 250,
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const FaIcon(FontAwesomeIcons.edit),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              obsecureText: false,
              onTapDropDown: () {},
              icon: FontAwesomeIcons.dolly,
              hintText: 'Lemon',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              obsecureText: false,
              onTapDropDown: () {},
              icon: FontAwesomeIcons.dollarSign,
              label: 'Price',
              inputType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              obsecureText: false,
              onTapDropDown: () {},
              icon: FontAwesomeIcons.windows,
              label: 'Unit',
              inputType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              obsecureText: false,
              label: 'Desription',
              onTapDropDown: () {},
              maxLine: 3,
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevatedButton(
              label: 'Save',
              onSelection: () {
                context.go(
                    '/HomeScreen/salesdetail/addproduct/productdetails/previewpublish');
              },
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromRGBO(118, 151, 104, 1),
            ),
          ],
        ),
      ),
    );
  }
}
