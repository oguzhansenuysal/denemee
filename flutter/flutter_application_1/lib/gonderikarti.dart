// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Gonderikarti extends StatelessWidget {
  const Gonderikarti({super.key});

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
          height: 380,
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
              Row(
                children: [
                  Container(
                    child: Row(
                      children: [Icon(Icons.favorite, color: Colors.grey)],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
