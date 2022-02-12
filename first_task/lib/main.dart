

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(

    home: Scaffold(
        backgroundColor: Colors.black26,
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
             Container(
              alignment: Alignment.centerLeft,
              child: const Center(
                child:Text(
                  'Child 1',
                   style: TextStyle(
                     color: Colors.white,
                ),
              ),
            ),
               color: Colors.red,
               width: 170,
               height: 408,
          ),


            Container(
              alignment: Alignment.centerRight,
              child: Column (
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Container(
                     alignment: Alignment.center,
                     child: const Center(
                        child:Text(
                         'Child 2',
                         style: TextStyle(
                           color: Colors.white,
                      ),
                    ),
                  ),
                    color: Colors.green,
                    width: 120,
                    height: 120,



                ),


                  Container(
                     child: const Center(
                       child:Text(
                         'Child 3',
                          style: TextStyle(
                            color: Colors.white,
                      ),
                    ),
                  ),
                    color: Colors.blue,
                    width: 120,
                    height: 120,
                )

              ],
            ),
          )
        ],

      )

      ),

  )
  );
}