class ProductModel {
  int? id;
  String? name;
  int? price;
  String? img;
  String? desc;
  int? catId;
  //constructor
  ProductModel(
      {this.id, this.name, this.price, this.img, this.desc, this.catId});

  // Convert a Breed into a Map. The keys must correspond to the names of the
  // columns in the database.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'img': img,
      'desc': desc,
      'catId': catId,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      price: map['price']?.toInt() ?? 0,
      img: map['img'] ?? '',
      desc: map['desc'] ?? '',
      catId: map['catId']?.toInt() ?? 0,
    );
  }

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
    price = json["price"];
    img = json["img"];
    desc = json["desc"];
    catId = json["catId"];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["name"] = name;
    data["price"] = price;
    data["img"] = img;
    data["desc"] = desc;
    data["catId"] = catId;
    return data;
  }
}

