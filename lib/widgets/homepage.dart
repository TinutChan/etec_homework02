import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff8f00ff),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text('Cleveland'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Stack(children: [
        ListView.builder(
            itemCount: 2,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 1,
                            color: Colors.grey,
                            offset: Offset(0.1, 0.4),
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: double.infinity,
                        color: Colors.grey,
                        child: Image.asset(
                          'assets/cheap1.jpg',
                          fit: BoxFit.cover,
                          height: 200,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'TRAVEL',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '5 cheap eats',
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ]),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(25.0),
                              child: Image.asset(
                                'assets/profile.jpeg',
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                            'So you have 1 day to spare in Cleveland, these are the 5 spots you need to hit before you leave.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15.0, vertical: 20.0),
                        child: Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Color(0xff8f00ff)),
                                onPressed: () {},
                                child: const Text('VIEW ENTRY')),
                            const SizedBox(
                              width: 10,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'LEARN MORE',
                                style: TextStyle(color: Color(0xff8f00ff)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
        Positioned(
          bottom: 20.0,
          left: 120,
          right: 120,
          child: Container(
            width: 150,
            height: 50,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xff8f00ff)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.add),
                  SizedBox(
                    width: 10,
                  ),
                  Text('ADD ENTRY')
                ],
              ),
              onPressed: () {},
            ),
          ),
        ),
      ]),
    );
  }
}
