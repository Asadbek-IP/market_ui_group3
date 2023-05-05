import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined, color: Colors.black),
          ),
        ],
        title: Text(
          "Cars",
          style: TextStyle(color: Colors.black, fontSize: 23),
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.all(8),
            height: 30,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                _categoriyaItem(true, "All"),
                _categoriyaItem(false, "Red"),
                _categoriyaItem(false, "Blue"),
                _categoriyaItem(false, "Green"),
                _categoriyaItem(false, "Yellow"),
                _categoriyaItem(false, "Black"),
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: ListView(
              children: [
                _postItem(
                    "assets/images/car1.jpg", "Astan", "V8", "100 000 \$"),
                _postItem(
                    "assets/images/car2.jpg", "Cadilak", "V8", "200 000 \$"),
                _postItem(
                    "assets/images/car3.jpg", "Mustang", "V8", "100 000 \$"),
                _postItem("assets/images/car4.jpg", "Spark", "V8", "100 \$"),
                _postItem(
                    "assets/images/car1.jpg", "Astan", "V8", "100 000 \$"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _categoriyaItem(bool isActive, String title) {
  return AspectRatio(
    aspectRatio: 5 / 2,
    child: Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isActive ? Colors.grey.shade300 : Colors.white,
      ),
      child: Center(
        child: Text(title),
      ),
    ),
  );
}

Widget _postItem(String image, String model, String brend, String price) {
  return Container(
    margin: EdgeInsets.all(8),
    width: double.infinity,
    height: 200,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(0.8),
            Colors.black.withOpacity(0.3),
            Colors.black.withOpacity(0.1),
            Colors.black.withOpacity(0.4),
            Colors.black.withOpacity(0.6),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  model,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              brend,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    ),
  );
}
