// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Gonderikarti extends StatelessWidget {
  final String ProfilResimLinki;
  final String IsimsoyIsim;
  final String GecenSure;
  final String GonderiResimLinki;
  final String Aciklama;

  const Gonderikarti(
      {super.key,
      required this.ProfilResimLinki,
      required this.IsimsoyIsim,
      required this.GecenSure,
      required this.GonderiResimLinki,
      required this.Aciklama});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: EdgeInsets.all(15.0),
          width: double.infinity,
          height: 391,
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
                                  image: NetworkImage(ProfilResimLinki),
                                  fit: BoxFit.cover))),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            IsimsoyIsim,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            GecenSure,
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
                Aciklama,
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
                GonderiResimLinki,
                width: double.infinity,
                height: 200,
                fit: BoxFit.fill,
              ),
              SizedBox(
                height: 4,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconluButon(
                    ikonum: Icons.favorite,
                    yazi: 'Beğen',
                    fonksiyonum: () {
                      print("Beğen");
                    },
                  ),
                  IconluButon(
                    yazi: 'Yorum Yap',
                    ikonum: Icons.comment,
                    fonksiyonum: () {
                      print("Yorum");
                    },
                  ),
                  TextButton.icon(
                      onPressed: (() {}),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconluButon extends StatelessWidget {
  final IconData ikonum;
  final String yazi;
  final fonksiyonum;
  IconluButon({required this.ikonum, required this.yazi, this.fonksiyonum});

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
