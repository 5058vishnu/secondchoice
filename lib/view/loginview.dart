import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/logincontroller.dart';
import '../model/loginmodel.dart';


class Caritems extends StatefulWidget {
  const Caritems({super.key});

  @override
  State<Caritems> createState() => _CaritemsState();
}

class _CaritemsState extends State<Caritems> {
  final Logincontrol _logincontrol = Get.put(Logincontrol());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<QueryDocumentSnapshot<Object?>>>(
              future: _logincontrol.getCarinformationData(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  // Return a loading indicator or placeholder widget
                  return SizedBox(
                      width: 20,
                      height: 20,
                      child: const Center(child: CircularProgressIndicator()));
                } else if (snapshot.hasError) {
                  // Handle error
                  return Text('Error: ${snapshot.error}');
                } else {
                  // Data has been loaded successfully
                  List<QueryDocumentSnapshot<Object?>> data = snapshot.data!;
                  int dataLength = data.length;
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount:dataLength,
                    itemBuilder: (context, index) {
                      Loginmodel productModel = Loginmodel(
                          carimage: data[index]['carimage'],
                          carname: data[index]['carname'],
                          modelyear: data[index]['modelyear'],
                          kms: data[index]['kms'],
                          fuel: data[index]['fuel'],
                          prize: data[index]['prize'],);
                      return GestureDetector(
                        onTap: () {
                          // Navigator.push(context,  MaterialPageRoute(builder: (context) {
                          //   return Details();
                          // },));
                        },
                        child: Card(
                          color: Colors.lightBlue[50],
                          elevation: 8,
                          margin:
                          const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                                child: SizedBox(
                                  height: 200,

                                  child: Image.network(
                                    "${productModel.carimage}",                                fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "${productModel.carname}",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                               Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today_rounded,
                                            color: Colors.white70),
                                        Text(
                                          "${productModel.modelyear}",
                                          style: TextStyle(fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.speed_rounded,
                                            color: Color.fromARGB(1768, 255, 204, 0)),
                                        Text(
                                          "${productModel.kms}",
                                          style: TextStyle(fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.info_outline_rounded,
                                            color: Colors.teal),
                                        Text(
                                          "${productModel.fuel}",
                                          style: TextStyle(fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.currency_rupee),
                                        Text(
                                          "${productModel.prize}",
                                          style: TextStyle(fontWeight: FontWeight.w900),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                              // Other car details here
                            ],
                          ),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}