



import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApiInterface {

  GetConnect connect  = GetConnect();

  Future getProductsData() async{

    String url = 'https://asfandnaveed.com/projects/corvit/api/getallproducts.php';

    var response = await connect.get(url);
    debugPrint('${response.body}');

    return response.body;
  }


}