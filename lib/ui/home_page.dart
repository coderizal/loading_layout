import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shimmer"),
      ),
      body: SingleChildScrollView(
        child: Container(
                color: Color(0xfffafafa),
                child: Shimmer.fromColors(
                  baseColor: Color(0xffd6d6d6),
                  highlightColor: Color(0xffeeeeee),
                  child: Column(
                      children: List<Widget>.generate(
                    5,
                    (i) => Container(
                      constraints: BoxConstraints(
                        minHeight: 62,
                      ),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.fromLTRB(20, 19, 20, 19),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Color(0xff563567), width: 0.3))),
                      child: Row(
                        children: [
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: Container(
                              height: 90,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 23,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 20,
                                    width: MediaQuery.of(context).size.width / 4,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
                ),
              ),
      )
    );
  }
}