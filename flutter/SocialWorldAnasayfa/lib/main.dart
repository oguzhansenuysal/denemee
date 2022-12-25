// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'gonderikarti.dart';

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
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
                profilkarti("Furkan",
                    "https://media-exp1.licdn.com/dms/image/C4D03AQEDs2Z-662D7w/profile-displayphoto-shrink_200_200/0/1651955791783?e=1675900800&v=beta&t=CsfGJhEnoDjL3fbeQ3byq9nLFgRkLL4U5MAOB7zAmZ4"),
                profilkarti("Oğuzhan",
                    "https://media.licdn.com/dms/image/C4D03AQH18j3jX1CHQw/profile-displayphoto-shrink_200_200/0/1636666394118?e=1677110400&v=beta&t=-JEELUL6Pgl95vL3BQAMPHy0q0pYfToAdTYmpQ_y9SQ"),
                profilkarti("Fahriye",
                    "https://i3.posta.com.tr/i/posta/75/750x0/623c2559e4bfdc079cf52f1f"),
                profilkarti("Cem",
                    "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg"),
                profilkarti("Ali",
                    "https://cdn.pixabay.com/photo/2014/11/29/19/33/bald-eagle-550804__340.jpg"),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Gonderikarti(
            IsimsoyIsim: "Şadol Kuralı",
            GecenSure: "10 sene önce",
            Aciklama: "Ailemin mutlu günü",
            ProfilResimLinki:
                "https://cdn.pixabay.com/photo/2014/04/12/14/59/portrait-322470_960_720.jpg",
            GonderiResimLinki:
                "http://www.akhisarhaber.net/2010/08/dugunkurali/akhisarkuraliailesi(9).JPG",
          ),
          Gonderikarti(
            IsimsoyIsim: "Fahriye",
            GecenSure: "4 yıl önce",
            Aciklama: "Eskilerden",
            ProfilResimLinki:
                "https://i3.posta.com.tr/i/posta/75/750x0/623c2559e4bfdc079cf52f1f",
            GonderiResimLinki:
                "https://www.kimnereli.net/wp-content/uploads/2022/01/Fahriye-Evcen.jpg",
          ),
        ],
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
