import 'package:flutter/material.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage1> {
  String selectedSize = ''; // To keep track of the selected size

  // Function to change the selected size and show a Snackbar
  void changeSizeAndShowSnackbar(String newSize) {
    setState(() {
      selectedSize = newSize;
    });

    // Show a Snackbar with the selected size
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $newSize'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Size Selector'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.start,
          spacing: 10,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('Small'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == 'Small') {
                      return Colors.deepOrangeAccent; // Change color when selected
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('S'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('Medium'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == 'Medium') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('M'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == 'Large') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('L'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('X-Large'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == 'X-Large') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('XL'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('2XL'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == '2XL') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('XXL'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('3XL'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == '3XL') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('XXXL'),
            ),
            ElevatedButton(
              onPressed: () => changeSizeAndShowSnackbar('4XL'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                    if (selectedSize == '4XL') {
                      return Colors.deepOrangeAccent;
                    }
                    return Colors.white10;
                  },
                ),
              ),
              child: Text('XXXXL'),
            ),
          ],
        ),
      ),
    );
  }
}
