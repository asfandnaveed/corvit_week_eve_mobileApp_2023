class ProductModel {
  bool? status;
  List<Products>? products;

  ProductModel({this.status, this.products});

  ProductModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? id;
  String? pName;
  String? pPrice;
  String? pDescription;
  String? pStock;
  String? pImage;
  String? createdAt;
  Null? updatedAt;
  Null? deletedAt;

  Products(
      {this.id,
        this.pName,
        this.pPrice,
        this.pDescription,
        this.pStock,
        this.pImage,
        this.createdAt,
        this.updatedAt,
        this.deletedAt});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pName = json['p_name'];
    pPrice = json['p_price'];
    pDescription = json['p_description'];
    pStock = json['p_stock'];
    pImage = json['p_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['p_name'] = this.pName;
    data['p_price'] = this.pPrice;
    data['p_description'] = this.pDescription;
    data['p_stock'] = this.pStock;
    data['p_image'] = this.pImage;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['deleted_at'] = this.deletedAt;
    return data;
  }
}
