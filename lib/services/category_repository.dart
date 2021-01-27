import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:nikeshi/models/models.dart';
import 'package:nikeshi/models/domain_server.dart';

class CategoriesRepository{
  final String url_fetch_products="${DomainServer.name}shopisoko/productfetch.php";
  CategoriesRepository(){

  }

  Future<List<Product>> getCategories() async{
    final http.Response response =
    await http.get(url_fetch_products, headers: {"Accept": "application/json"});

    var products = jsonDecode(response.body);
    var list_products = products["products"] as List;
    List<Product> user_products =
    list_products.map<Product>((json) => Product.fromJson(json)).toList();
    return user_products;
  }

  Future<List<Product>> getCategoriesById(String id) async{
    final http.Response response=await http.post(
        url_fetch_products,headers: {"Accept":"application/json"},
        body: {"id": id}
    );

    var products=jsonDecode(response.body);
    var list_products=products["products"] as List;
    List<Product> user_products=list_products.map<Product>((json) => Product.fromJson(json)).toList();
    return user_products;
  }


}