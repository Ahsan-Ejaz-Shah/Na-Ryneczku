import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:onboard/customizablewidgets/custom_elevated_button.dart';

import 'package:onboard/customizablewidgets/custom_textfield.dart';

class SellerSettings extends StatefulWidget {
  @override
  State<SellerSettings> createState() => _SellerSettingsState();
}

class _SellerSettingsState extends State<SellerSettings> {
  String selectedAddress = "Default Address";

  final List<String> addresses = [
    "Default Address",
    "Home",
    "Office",
    "Other",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Seller Settings'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/boy.png'),
                    radius: 60,
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(118, 151, 104, 1)),
                      icon: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                obsecureText: false,
                onTapDropDown: () {},
                label: 'Company Name',
                icon: FontAwesomeIcons.userCog,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Address 1',
                      icon: FontAwesomeIcons.mapMarkerAlt,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(118, 151, 104, 1),
                        ),
                        Text(
                          'Select \nFrom Map',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextField(
                      obsecureText: false,
                      onTapDropDown: () {},
                      label: 'Address 2',
                      icon: FontAwesomeIcons.mapMarkerAlt,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(118, 151, 104, 1),
                        ),
                        Text(
                          'Select \nFrom Map',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextField(
                      obsecureText: false,
                      label: 'Address 3',
                      onTapDropDown: () {},
                      icon: FontAwesomeIcons.mapMarkerAlt,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: const Column(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.mapMarkerAlt,
                          color: Color.fromRGBO(118, 151, 104, 1),
                        ),
                        Text(
                          'Select \nFrom Map',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                readOnly: true,
                icon: FontAwesomeIcons.mapMarkerAlt,
                obsecureText: false,
                suffixIcon: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedAddress,
                    icon: const Icon(Icons.keyboard_arrow_down,
                        color: Colors.grey),
                    items: addresses.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAddress = newValue!;
                      });
                    },
                  ),
                ),
                onTapDropDown: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                obsecureText: false,
                onTapDropDown: () {},
                label: 'Description',
                maxLine: 3,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomElevatedButton(
                label: 'Save',
                onSelection: () {},
                backgroundColor: const Color.fromRGBO(118, 151, 114, 1),
                foregroundColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
