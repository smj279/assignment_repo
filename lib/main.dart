import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product App',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ProductDetailsPage(),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('Product Details'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Nikon D850',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontFamily: 'BlackOpsOne-Regular',
                    ),
                  ),
                  Text(
                    'Extreme resolution meets extreme speed.',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
            ]
            ),


            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                Image.network(height:250,width: 320,'https://eavf3cou74b.exactdn.com/wp-content/uploads/2023/06/28103020/Best-Cameras-for-Professional-Photography-6.jpg?strip=all&lossy=1&resize=1000%2C542&ssl=1'),
        Text(
            'price - ৳ 208,000',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
             ),
            ),
          ],
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' →45.7 Megapixels      FX Format    ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.red,

                  ),
                ),
                Text('     '
                    '  →4K UHD3840 x 2160   ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.red,

                  ),
                ),
                Text(
                  ' →7 FPS Continuous Shooting'
                    '             ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.red,

                  ),
                ),
                Text('     '
                    '  → 64-25,600 ISO (Expandable to 102,400) ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.red,

                  ),
                ),
          ],
        ),


            SizedBox(height: 35),

            ElevatedButton(

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BuyNowPage()),
                );
              },
              child: Text('Buy Now'),



            ),
          ],
        ),
      ),
    );
  }
}


