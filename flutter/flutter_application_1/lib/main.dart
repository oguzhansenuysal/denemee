// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.green.shade700,
              size: 32.0,
            )),
        title: Text(
          "SocialWorld",
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.purple.shade700,
                size: 32.0,
              )),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.grey.shade200, boxShadow: [
              BoxShadow(color: Colors.grey, offset: Offset(0, 3), blurRadius: 5)
            ]),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilkarti("Şadol",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
                profilkarti("Furkan",
                    "https://media-exp1.licdn.com/dms/image/C4D03AQEDs2Z-662D7w/profile-displayphoto-shrink_200_200/0/1651955791783?e=1675900800&v=beta&t=CsfGJhEnoDjL3fbeQ3byq9nLFgRkLL4U5MAOB7zAmZ4"),
                profilkarti("Salih",
                    "https://cdn.pixabay.com/photo/2016/11/21/14/53/man-1845814_960_720.jpg"),
                profilkarti("Oğuzhan",
                    "https://media.licdn.com/dms/image/C4D03AQH18j3jX1CHQw/profile-displayphoto-shrink_200_200/0/1636666394118?e=1677110400&v=beta&t=-JEELUL6Pgl95vL3BQAMPHy0q0pYfToAdTYmpQ_y9SQ"),
                profilkarti("Ali",
                    "https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804__340.jpg"),
                profilkarti("Cem",
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Gonderikarti(),
          Gonderikarti()
        ],
      ),
    );
  }

  Padding Gonderikarti() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 388,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.indigo,
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "http://www.akhisarhaber.net/2010/08/dugunkurali/akhisarkuraliailesi(9).JPG"),
                                  fit: BoxFit.cover))),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "İsim Soyisim",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "1 saat önce",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_vert)
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Resim açıklaması",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Image.network(
                "http://www.akhisarhaber.net/2010/08/dugunkurali/akhisarkuraliailesi(9).JPG",
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconluButon(
                    ikonum: Icons.favorite,
                    yazi: 'Beğen',
                    fonksiyonum: (() {
                      print("Beğen");
                    }),
                  ),
                  IconluButon(
                    ikonum: Icons.comment,
                    yazi: 'Yorum Yap',
                    fonksiyonum: (() {
                      print("Yorum");
                    }),
                  ),
                  TextButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.share,
                        color: Colors.grey,
                      ),
                      label: Text(
                        "Paylaş",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget profilkarti(String kullaniciadi, String resimlinki) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 2.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(35.0),
                      image: DecorationImage(
                          image: NetworkImage(resimlinki), fit: BoxFit.cover))),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 2, color: Colors.white)),
              )
            ],
          ),
          SizedBox(height: 4),
          Text(
            kullaniciadi,
            style: TextStyle(fontSize: 15.0, color: Colors.black),
          )
        ],
      ),
    );
  }
}

class IconluButon extends StatelessWidget {
  final ikonum;
  final String yazi;
  final fonksiyonum;
  IconluButon({this.ikonum, required this.yazi, this.fonksiyonum});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: fonksiyonum,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Icon(
                ikonum,
                color: Colors.grey,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                yazi,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
