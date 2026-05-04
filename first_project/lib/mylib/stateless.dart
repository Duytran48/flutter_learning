import "package:flutter/material.dart";
class Mystateless extends StatelessWidget {
  const Mystateless({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateless widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 32, 8, 32),
        child: Center(
          child: Column(children: <Widget>[
            SizedBox(
              width: 360,
              height: 260,
              child: Image.network(
                'https://m.yodycdn.com/products/hinhanhdoremon2_m2li5fg6g1b0cmp4zr5.jpg',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              'Build project by my hand!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Nhatduy',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )
          ])),
        ),
      );
  }
}
