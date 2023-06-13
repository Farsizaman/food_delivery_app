import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            "Delivery To",
            textAlign: TextAlign.left,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Text(
            "Housing Estate",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              hintText: "Search For Restaurant",
              prefixIcon: const Icon(Icons.search),
            ),
          ),
          SizedBox(
              height: 120,
              width: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.circular(20), // Image border
                            child: SizedBox.fromSize(
                              size: const Size.fromRadius(35), // Image radius
                              child: Image.asset("assets/images/food.png",
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              )),
          const Text(
            "Popularr Rastaurant",
            style: TextStyle(fontSize: 25),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20), // Image border
                        child: SizedBox.fromSize(
                          size: const Size.fromRadius(35), // Image radius
                          child: Image.asset("assets/images/food.png",
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      const Column(
                        children: [
                          Text("GG"),
                          Text("GG"),
                          Text("GG"),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
