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
                ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.network(
                    height: 250,
                    width: 320,
                    'https://eavf3cou74b.exactdn.com/wp-content/uploads/2023/06/28103020/Best-Cameras-for-Professional-Photography-6.jpg?strip=all&lossy=1&resize=1000%2C542&ssl=1'),
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
                    fontSize: 18.0,
                    color: Colors.yellow,
                    fontFamily: 'Cinzel-Medium',
                    fontWeight: FontWeight.bold,


                  ),
                ),
                Text(
                  '     '
                  '  →4K UHD3840 x 2160   ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.yellow,

                     fontFamily: 'Cinzel-Medium',






                  ),
                ),
                Text(
                  ' →7 FPS Continuous Shooting'
                  '             ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.yellow,
                    fontFamily: 'Cinzel-Medium',
                    fontWeight: FontWeight.bold,


                  ),
                ),
                Text(
                  '     '
                  '  → 64-25,600 ISO (Expandable to 102,400) ',
                  style: TextStyle(
                    fontSize: 19.0,
                    color: Colors.yellow,
                    fontFamily: 'Cinzel-Medium',






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

class BuyNowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buy The Product Now'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Choose Payment Method',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.0,
                color: Colors.red,
                fontFamily: 'RobotoSlab-Medium',
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PaymentButton(
                            imagePath:
                                'data:image/png;base64,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'),
                        PaymentButton(
                            imagePath:
                                'data:image/png;base64,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'),
                        PaymentButton(
                            imagePath:
                                'data:image/png;base64,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'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        PaymentButton(
                            imagePath:
                                'data:image/png;base64,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'),
                        PaymentButton(
                            imagePath:
                                'data:image/jpeg;base64,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'),
                        PaymentButton(
                            imagePath:
                                'data:image/png;base64,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'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                DropdownButton<String>(
                  items:
                      ['Option 1', 'Option 2', 'Option 3'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    // Do something with the selected value
                  },
                  hint: Text('Select an option'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String imagePath;

  const PaymentButton({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.network(
        imagePath,
        height: 70,
        width: 110,
      ),
    );
  }
}
