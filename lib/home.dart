import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> imgList = [
    'https://cdn.pixabay.com/photo/2017/08/01/20/20/nebula-2567749__340.jpg',
    'https://cdn.pixabay.com/photo/2016/10/09/06/21/anonymous-1725254__340.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527377__340.jpg',
    'https://cdn.pixabay.com/photo/2020/07/01/23/21/mountains-5361239__340.jpg',
    'https://cdn.pixabay.com/photo/2017/08/01/20/20/sky-2567748__340.jpg',
    'https://cdn.pixabay.com/photo/2022/01/30/04/17/sunset-6979745__340.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527379__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/14/21/52/skyline-4056004__340.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-24-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/12/Iron-Man-Pophead-Minimal-Wallpaper-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/05/Dont-touch-My-Phone-Wallpaper-04-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-21-340x550.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}