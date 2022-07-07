import 'package:flutter/material.dart';
import 'package:rescreen/Collections/anime.dart';
import 'package:rescreen/Collections/urban.dart';
import 'package:rescreen/Collections/nature.dart';
import 'package:rescreen/Collections/anime.dart';

class CollectionsPage extends StatefulWidget {
  const CollectionsPage({Key? key}) : super(key: key);

  @override
  State<CollectionsPage> createState() => _CollectionsPageState();
}

class _CollectionsPageState extends State<CollectionsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const UrbanScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1542442828-287217bfb87f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top:90),
                              child: Center(
                                child: Text(
                                  "URBAN",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const NatureScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1542395975-d6d3ddf91d6e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=700&q=60",
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top:90),
                              child: Center(
                                child: Text(
                                  "NATURE",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){},
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1542995470-870e12e7e14f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=60",
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top:90),
                              child: Center(
                                child: Text(
                                  "ABSTRACT",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => const AnimeScreen()));
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Stack(
                    children: [
                      Image.network(
                        "https://images.unsplash.com/photo-1519638399535-1b036603ac77?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YW5pbWUlMjB3YWxscGFwZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                        fit: BoxFit.cover,
                      ),
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: const [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(top:90),
                              child: Center(
                                child: Text(
                                  "ANIME",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  children: [
                    Image.network(
                      "https://images.unsplash.com/photo-1579546929518-9e396f3cc809?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z3JhZGllbnR8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
                      fit: BoxFit.cover,
                    ),
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: const [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(top:90),
                            child: Center(
                              child: Text(
                                "GRADIENT",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}