import 'package:travel_ui/model/country_model.dart';
import 'package:travel_ui/model/popular_tours_model.dart';

List<CountryModel> getCountries()
{
  // ignore: deprecated_member_use
  List<CountryModel> country = new List();
  CountryModel countryModel = new CountryModel();

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.nooftours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl ="https://images.pexels.com/photos/3225531/pexels-photo-3225531.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
  country.add(countryModel);
  countryModel = new CountryModel();


  //2
  countryModel.countryName = "Columbia";
  countryModel.label = "new";
  countryModel.nooftours = 12;
  countryModel.rating = 4.3;
  countryModel.imgUrl ="https://images.pexels.com/photos/3889843/pexels-photo-3889843.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  country.add(countryModel);
  countryModel = new CountryModel();

  //3
  countryModel.countryName = "Taiwan";
  countryModel.label = "Brand new";
  countryModel.nooftours = 16;
  countryModel.rating = 3.5;
  countryModel.imgUrl = "https://images.pexels.com/photos/1058957/pexels-photo-1058957.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  country.add(countryModel);
  countryModel = new CountryModel();

  //4
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.nooftours = 10;
  countryModel.rating = 2.5;
  countryModel.imgUrl ="https://images.pexels.com/photos/1576937/pexels-photo-1576937.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  country.add(countryModel);
  countryModel = new CountryModel();

  //5
  countryModel.countryName = "Alapey";
  countryModel.label = "Water Area";
  countryModel.nooftours = 7;
  countryModel.rating = 3.5;
  countryModel.imgUrl ="https://images.pexels.com/photos/2178175/pexels-photo-2178175.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  country.add(countryModel);
  countryModel = new CountryModel();

  //6
  countryModel.countryName = "Africa";
  countryModel.label = "hot New";
  countryModel.nooftours = 20;
  countryModel.rating = 4.5;
  countryModel.imgUrl = "https://images.pexels.com/photos/2253821/pexels-photo-2253821.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940";
  country.add(countryModel);
  countryModel = new CountryModel();

  return country;
}

List<populartourmodels> getPopularTours()
{
  // ignore: deprecated_member_use
  List<populartourmodels> populartourmodel = new List();
  populartourmodels popularTourModel = new populartourmodels();

  //1
  popularTourModel.imgurl = "https://images.unsplash.com/photo-1494500764479-0c8f2919a3d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFuZHNjYXBlfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 245.50";
  popularTourModel.rating = 4.0;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  //2
  popularTourModel.imgurl = "https://images.unsplash.com/photo-1559827291-72ee739d0d9a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fGxhbmRzY2FwZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Cuba";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 150.50";
  popularTourModel.rating = 3.0;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  //3
  popularTourModel.imgurl = "https://images.unsplash.com/photo-1491555103944-7c647fd857e6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bW91bnRhaW58ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Dominician";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 500.50";
  popularTourModel.rating = 4.9;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  //4
  popularTourModel.imgurl =  "https://images.unsplash.com/photo-1498855926480-d98e83099315?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTd8fG1vdW50YWlufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Africa";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 245.50";
  popularTourModel.rating = 4.0;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  //5
  popularTourModel.imgurl = "https://images.unsplash.com/photo-1506106487742-2baf007edcfb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjV8fG1vdW50YWlufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "zimbabe";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 245.50";
  popularTourModel.rating = 4.0;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  //6
  popularTourModel.imgurl =  "https://images.unsplash.com/photo-1579691099788-42394ae932d8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjJ8fG1vdW50YWlufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
  popularTourModel.title = "Thailand";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price= "\$ 245.50";
  popularTourModel.rating = 4.0;
  populartourmodel.add(popularTourModel);
  popularTourModel = new populartourmodels();

  return populartourmodel;
}