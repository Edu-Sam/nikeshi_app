import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:nikeshi/models/models.dart';
import 'package:nikeshi/models/domain_server.dart';
import 'dart:convert';

class ProductRepository{
final String url_fetch_products="${DomainServer.name}shopisoko/productfetch.php";
final String url_fetch_products_by_category="${DomainServer.name}shopisoko/productsByCategory.php";
  ProductRepository(){

  }

  Future<List<Product>> getProducts() async{
    final http.Response response =
    await http.get(url_fetch_products, headers: {"Accept": "application/json"});

    var products = jsonDecode(response.body);
    var list_products = products["products"] as List;
    List<Product> user_products =
    list_products.map<Product>((json) => Product.fromJson(json)).toList();
    return user_products;
  }

  Future<List<Product>> getProductByName(String name) async{
    final http.Response response=await http.post(
      url_fetch_products,headers: {"Accept":"application/json"},
      body: {"name":name}
    );

    var products=jsonDecode(response.body);
    var list_products=products["products"] as List;
    List<Product> user_products=list_products.map<Product>((json) => Product.fromJson(json)).toList();
    return user_products;
  }

Future<List<Product>> getProductByCategory(int id) async{
  final http.Response response=await http.post(
      url_fetch_products_by_category,headers: {"Accept":"application/json"},
      body: {"id":id.toString()}
  );

  var products=jsonDecode(response.body);
  var list_products=products["products"] as List;
  List<Product> user_products=list_products.map<Product>((json) => Product.fromJson(json)).toList();
  return user_products;
}



}