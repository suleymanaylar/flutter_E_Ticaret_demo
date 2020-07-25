import 'package:e_ticaret_mobile/Screens/productDetail.dart';
import 'package:e_ticaret_mobile/utilities/constants.dart';
import 'package:flutter/material.dart';

class Routes {
  static final routes=<String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_DETAIL:(BuildContext context)=>ProductDetail()
  };
}