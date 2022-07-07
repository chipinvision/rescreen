import 'package:flutter/material.dart';

class NatureScreen extends StatefulWidget {
  const NatureScreen({Key? key}) : super(key: key);

  @override
  State<NatureScreen> createState() => _NatureScreenState();
}

class _NatureScreenState extends State<NatureScreen> {

  List<String> imgList = [
    'https://images.unsplash.com/photo-1506782081254-09bcfd996fd6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXwxMTQ3NjQ2fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1506946604214-968e32a47e84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1506820988294-583a549e74ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
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
          "Nature Wallpapers",
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
