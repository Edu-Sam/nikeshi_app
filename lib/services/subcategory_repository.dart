import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:nikeshi/models/models.dart';
import 'package:nikeshi/models/domain_server.dart';

class SubCategoriesRepository{
 // final String url_fetch_categories="${DomainServer.name}shopisoko/categoriesfetch.php";
  final String url_fetch_subcategories_by_id="${DomainServer.name}shopisoko/categoriesById.php";
  SubCategoriesRepository(){

  }

  Future<List<Categories>> getSubCategories() async{
    final http.Response response =
    await http.get(url_fetch_subcategories_by_id, headers: {"Accept": "application/json"});

    var categories = jsonDecode(response.body);
    var list_categories = categories["categories"] as List;
    List<Categories> user_categories =
    list_categories.map<Categories>((json) => Categories.fromJson(json)).toList();
    return user_categories;
  }

  Future<List<SubCategories>> getSubCategoriesById(int id) async{
    final http.Response response=await http.post(
        url_fetch_subcategories_by_id,headers: {"Accept":"application/json"},
        body: {"id": id}
    );

    var subcategories=jsonDecode(response.body);
    var list_subcategories=subcategories["subcategories"] as List;
    List<SubCategories> user_subcategories=list_subcategories.map<SubCategories>((json) => SubCategories.fromJson(json)).toList();
    return user_subcategories;
  }


}