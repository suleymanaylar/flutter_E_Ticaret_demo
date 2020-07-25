import 'package:e_ticaret_mobile/widgets/productListRow.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product List",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: _buildproductListePage(),
    );
  }

  _buildproductListePage() {
    Size scrrenSize = MediaQuery.of(context).size;
    return Container(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _buildFilterWidgets(scrrenSize);
          } else if (index == 4) {
            return SizedBox(
              height:12.0 ,
            );
          } else {
            return _buildProductListRow();
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size scrrenSize) {
    return Container(
      margin: EdgeInsets.all(12.0),
      width: scrrenSize.width,
      child: Card(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _buildFilterButton("Sırala"),
              Container(
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele"),
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell(
      onTap: (){
        print(title);
      },
      child: Row(
        children: <Widget>[
          Icon(
            Icons.arrow_drop_down,
            color: Colors.black,
          ),
          SizedBox(
            width: 2.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
    return ProductListRow(name:"Kazak",currentPrice:150,originalPrice:300,discount:50,imageUrl:"https://scontent.fist4-1.fna.fbcdn.net/v/t1.0-9/s960x960/53738161_10216790354204698_874675767777165312_o.jpg?_nc_cat=106&_nc_ohc=B588gu3lUEsAQkOU-r9i0MFwM5lbk4_7JmqG0RQH_EzqcKb-54f17-EIg&_nc_ht=scontent.fist4-1.fna&_nc_tp=1&oh=cfbfeb086ef8167a42aaf1e2df5ec173&oe=5E9C647D");
  }
}
