import 'package:flutter/material.dart';

class AnimeScreen extends StatefulWidget {
  const AnimeScreen({Key? key}) : super(key: key);

  @override
  State<AnimeScreen> createState() => _AnimeScreenState();
}

class _AnimeScreenState extends State<AnimeScreen> {

  List<String> imgList = [
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-11-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-25-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-27-340x550.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527377__340.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527379__340.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-10-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-21-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-24-340x550.jpg',
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
