import 'package:flutter/material.dart';

class TrendingPage extends StatefulWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  State<TrendingPage> createState() => _TrendingPageState();
}

class _TrendingPageState extends State<TrendingPage> {

  List<String> imgList = [
    'https://www.setaswall.com/wp-content/uploads/2017/12/2020-Black-Panther-King-Wallpaper-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/12/Batman-And-Iron-Man-4k-Minimalism-Wallpaper-340x550.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527377__340.jpg',
    'https://images.unsplash.com/photo-1506924365419-79a02a1132e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTN8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://images.unsplash.com/photo-1506914477279-2a70d901e5d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTR8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://cdn.pixabay.com/photo/2022/01/30/04/17/sunset-6979745__340.jpg',
    'https://cdn.pixabay.com/photo/2020/08/29/16/08/pikachu-5527379__340.jpg',
    'https://cdn.pixabay.com/photo/2019/03/14/21/52/skyline-4056004__340.jpg',
    'https://images.unsplash.com/photo-1506946604214-968e32a47e84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MjB8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://www.setaswall.com/wp-content/uploads/2017/12/2020-Black-Panther-Wallpaper-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/12/Black-And-Red-Spiderman-Wallpaper-340x550.jpg',
    'https://images.unsplash.com/photo-1506820988294-583a549e74ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTB8MTE0NzY0Nnx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=700&q=60',
    'https://www.setaswall.com/wp-content/uploads/2021/12/Anime-Phone-Wallpaper-10-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2018/11/PUBG-Phone-Wallpaper-04-1080x2340-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/12/Deadpool-2020-Art-Wallpaper-340x550.jpg',
    'https://www.setaswall.com/wp-content/uploads/2017/12/Iron-Man-Pophead-Minimal-Wallpaper-340x550.jpg',
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
