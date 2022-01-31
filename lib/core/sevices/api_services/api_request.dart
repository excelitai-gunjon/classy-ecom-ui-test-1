import 'dart:convert';

import 'package:classy_e_com_demo_test_ui_1/core/model/api_data_model/all_product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiRequest{
  Future allProductApiRequest() async {
    final response = await http.get(Uri.parse(
        'https://classyecommerce.excelitaiportfolio.com/api/products'));
    if (response.statusCode == 200) {
      final responseList = json.decode(response.body);
      //AllProductModel products=responseList.map((e) => AllProductModel.fromJson(e));
      AllProductModel products = AllProductModel.fromJson(responseList);
      return products.products;
      //   responseList.map((data) {
      //   return AllProductModel.fromJson(data);
      // }).toList();
    } else {
      throw Exception('Failed to load post');
    }
    //return ;
  }
}