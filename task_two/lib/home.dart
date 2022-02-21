import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black38,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(20.0, 70.0, 0, 0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(270.0, 70.0, 20.0, 0),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/profile.png'),
                  maxRadius: 50.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Center(
                child: Center(
                    child: Text(
                  'Habiba Tarek',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                )),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                bottom: 25.0,
              ),
              child: Center(
                child: Center(
                    child: Text(
                  'HabibaTarek@gmail.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                  ),
                )),
              ),
            ),
            Column(children: [
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,

                ),

                // margin: EdgeInsets.only(top: 20.0,bottom: 10.0),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 170.0),
                      child: Text(
                      'Privacy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),

                  ],

                ),

              ),
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.history,
                        color: Colors.white,
                        size: 20,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:100.0),
                      child:  Text(
                        'Purchase History',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),


                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),


                  ],
                ),
              ),
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.help_outline,
                        color: Colors.white,
                        size: 20,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:110.0),
                      child:  Text(
                        'Help & Support',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),


                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),


                  ],
                ),
              ),
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 20,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:160.0),
                      child:  Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),


                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),


                  ],
                ),
              ),
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                        size: 20,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:120.0),
                      child:  Text(
                        'Invite a Friend',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),


                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),


                  ],
                ),
              ),
              Container(
                width: 300,
                height: 35,
                margin: EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(17.0),
                  color: Colors.white38,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:  const [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Icon(
                        Icons.logout_rounded,
                        color: Colors.white,
                        size: 20,

                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right:170.0),
                      child:  Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                        ),
                      ),
                    ),


                    Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),


                  ],
                ),
              )
            ]),
          ],
        ));
  }
}
