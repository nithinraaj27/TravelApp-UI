import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network("https://images.unsplash.com/photo-1506929562872-bb421503ef21?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjJ8fGJlYWNofGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                height: 320,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                ),
                Container(
                  height: 300,
                  color: Colors.black12,
                  padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.arrow_back,color: Colors.white,size: 30.0,),
                          Spacer(),
                          Icon(Icons.share,color: Colors.white,size: 27.0,),
                          SizedBox(width: 25,),
                          Icon(Icons.favorite_border,color: Colors.white,size: 29.0,),
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.only(
                          left: 24,
                          right: 24
                        ),
                      ),
                      Text("Sea Tower Resort",
                      style: TextStyle(color: Colors.white,fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                      ),
                      SizedBox(height:8,),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 22,
                          ),
                          SizedBox(width: 4,),
                          Text("Mong Chon Hoi, Maladives",
                          style: TextStyle(
                            color: Colors.white70,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                            fontSize: 18
                          ),),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Rating(4.0.round()),
                    ],
                  ),
                ),
                SizedBox(height: 310,),
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 50,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(25),
                //       topRight: Radius.circular(25)
                //     )
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Rating extends StatelessWidget {

  final int rating;
  Rating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(Icons.star,color: Colors.white,),
          SizedBox(width: 3,),
          Icon(Icons.star,color: Colors.white,),
          SizedBox(width: 3,),
          Icon(Icons.star,color: Colors.white,),
          SizedBox(width: 3,),
          Icon(Icons.star,color: Colors.white54,),
          SizedBox(width: 3,),
          Icon(Icons.star,color: Colors.white54,),
          SizedBox(width: 10,),
          Text("2.1",style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.w600),)
        ],
      ),
    );
  }
}
