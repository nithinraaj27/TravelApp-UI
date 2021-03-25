import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/data/data.dart';
import 'package:travel_ui/model/popular_tours_model.dart';

import 'details.dart';
import 'model/country_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // ignore: deprecated_member_use
  List<populartourmodels> populartourmodel = new List();
  // ignore: deprecated_member_use
  List<CountryModel> country = new List();
  @override
  void initState() {
    country = getCountries();
    populartourmodel = getPopularTours();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu_open,color: Colors.black,),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/logo.png",height: 26.0,),
            Text("Discount TourApp",
            style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w600),)
          ],
        ),
        actions: [
          Icon(Icons.more_vert,
          color: Colors.black87,)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24,vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Find the best tour",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black54,
                fontSize: 28.0
              ),),
              SizedBox(
                height: 8,
              ),
              Text("Country",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 22
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 240,
                child: ListView.builder(
                    itemCount: country.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return CountryListTile(
                        label: country[index].label,
                        countryname: country[index].countryName,
                        nooftours: country[index].nooftours,
                        rating: country[index].rating,
                        imgUrl: country[index].imgUrl,
                        );
                    }),
              ),
              SizedBox(
                height: 8,
              ),
              Text("Popular Tours",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                    fontSize: 22
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: populartourmodel.length,
                  itemBuilder: (context,index){
                    return Popular(
                       desc: populartourmodel[index].desc,
                       imgurl: populartourmodel[index].imgurl,
                       title: populartourmodel[index].title,
                       price: populartourmodel[index].price,
                       rating: populartourmodel[index].rating,
                    );
                  })
            ],),
        ),
      ),
    );
  }
}

class Popular extends StatelessWidget {

  final String imgurl;
  final String title;
  final String desc;
  final String price;
  final double rating;

  Popular({@required this.imgurl,@required this.title,@required this.desc,@required this.price,@required this.rating});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
        },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: Color(0xffE9F4F9),
            borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)),
            child: CachedNetworkImage(imageUrl: imgurl,
            width: 110,
            height: 90,
            fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic
                ),),
                SizedBox(height: 3,),
                Text(desc,style: TextStyle(color: Colors.black54,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),),
                SizedBox(height: 3),
                Text(price,style: TextStyle(fontSize: 16,color: Colors.black54,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 8,right: 8),
            padding: EdgeInsets.symmetric(horizontal: 4,vertical: 12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff139157),
            ),
            child: Column(
              children: [
                Text("$rating",style: TextStyle(color: Colors.white),),
                SizedBox(height: 12,),
                Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 20,
                )
              ],
            ),
          )
        ],),
      ),
    );
  }
}



class CountryListTile extends StatelessWidget {

  final String label;
  final String countryname;
  final int nooftours;
  final double rating;
  final String imgUrl;

  const CountryListTile({@required this.label, @required this.countryname, @required this.nooftours, @required this.rating, @required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: CachedNetworkImage(imageUrl: imgUrl,
          height: 200,
          width: 150,
            fit: BoxFit.cover ,
      ),
        ),
        Container(
          height: 200,
          width: 150,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 8,top: 8,),
                    padding: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent
                    ),
                    child: Text(label,style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      fontSize: 16.0
                    ),),
                  )
                ],
              ),
              Spacer(),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10 ,left: 8,right: 8),
                    child: Column(
                      children: [
                        Container(
                          child: Text(countryname,style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                            fontSize: 16.0
                          ),),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "$nooftours",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                              fontSize: 13.0
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 10,right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 3,vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white38
                    ),
                    child: Column(
                      children: [
                        Text("$rating",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 2,),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],),
    );
  }
}

