// To parse this JSON data, do
//
//     final dataModel = dataModelFromJson(jsonString);


class DataModel {
  String title;
  String image;
  String subTitle;
  String description;
  int quantity;
  bool isFav;
  String price;

  DataModel({
    required this.title,
    required this.image,
    required this.subTitle,
    required this.description,
    required this.quantity,
    required this.isFav,
    required this.price,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
    title: json["title"],
    image: json["image"],
    subTitle: json["subTitle"],
    description: json["description"],
    quantity: json["quantity"],
    isFav: json["isFav"],
    price: json["price"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "image": image,
    "subTitle": subTitle,
    "description": description,
    "quantity": quantity,
    "isFav": isFav,
    "price": price,
  };
}
