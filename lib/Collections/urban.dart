import 'package:flutter/material.dart';

class UrbanScreen extends StatefulWidget {
  const UrbanScreen({Key? key}) : super(key: key);

  @override
  State<UrbanScreen> createState() => _UrbanScreenState();
}

class _UrbanScreenState extends State<UrbanScreen> {

  List<String> imgList = [
    'https://cdn.pixabay.com/photo/2019/03/14/21/52/skyline-4056004__340.jpg',
    'https://images.unsplash.com/photo-1506914477279-2a70d901e5d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTR8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://wallpaperaccess.com/full/1503977.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xff2f3238),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.greenAccent, // <-- SEE HERE
        ),
        title: const Text(
          "Urban Wallpapers",
          style: TextStyle(
            fontSize: 24,
            color: Colors.greenAccent,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff2f3238),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 300 / 500,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20
          ),
          itemCount: imgList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 800,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                child: Image.network(
                  imgList[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
