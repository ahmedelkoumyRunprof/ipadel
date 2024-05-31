import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/core/app_colors.dart';
import 'package:image_picker/image_picker.dart';
class VirtualCoachScreen extends StatefulWidget {
  const VirtualCoachScreen({super.key});

  @override
  State<VirtualCoachScreen> createState() => _VirtualCoachScreenState();
}

class _VirtualCoachScreenState extends State<VirtualCoachScreen> {
  File? _image;

  Future<void> _getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.50,
            decoration: const BoxDecoration(
                color: AppColors.thirdColor,
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(250))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.08),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Choose Movement",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: Colors.white,
                endIndent: 200,
              ),
              Expanded(
                child: GridView.builder(
                  padding:const EdgeInsets.all(25),
                  gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0, // Spacing between rows
                  ),
                  itemCount: 9, // Number of items in the grid
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        _getImage(ImageSource.camera);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/icons/smach.png",height: 50),
                           const SizedBox(height: 10),
                           const Text("Ready Position",style: TextStyle(fontWeight: FontWeight.bold),),
                          ],
                        )
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
