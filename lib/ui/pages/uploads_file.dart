import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
class UploadsItems extends StatefulWidget {
  const UploadsItems({super.key});

  @override
  State<UploadsItems> createState() => _UploadsItemsState();
}

class _UploadsItemsState extends State<UploadsItems> {
  XFile? _image;

  Future<void> _pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _image = image;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.arrow_back_ios,
                  color: whiteColor,
                  size: 25,
              ),
            ),
          ),
        ),
        title: Text("My Shop",
          style: blackColorTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600
          ),
        ),
        actions: [
          Icon(Icons.notifications,
          color: blackColor,
          size: 50,
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Row(
              children: [
                CircleAvatar(
                  radius: 35,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/img_profile.png",
                     fit: BoxFit.contain,
                     ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Fawwaz Burjo",
                  style: blackColorTextStyle.copyWith(
                    fontSize: 24
                  ),
                )
              ],
            ),
            const SizedBox(height: 34),
             GestureDetector(
        onTap: _pickImage,
        child: ClipRRect(
          child: Container(
            width: 320.0, // Set width
            height: 200.0, // Set height
            color: Colors.grey[200],
            child: _image == null
                ? Icon(
                    Icons.image_outlined,
                    size: 50.0,
                    color: Colors.grey[800],
                  )
                : Image.file(
                    File(_image!.path),
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Name",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Price",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Discount",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Stock",
                            style: blackColorTextStyle.copyWith(
                              fontSize: 16,
                            ),
                            ),
                          ],
                        ),
                        TextField(
                          decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                            filled: true,
                            fillColor: whiteColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 15, 66, 17),
                  ), 
                  child: Text("Save",style: whiteColorTextStyle,)
                  )
            ],
          ),
        ),

        ],
      ),
    );
  }
}