import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../domain/models/product_model.dart';

class ProductRemoteDataSource {
  final http.Client client;

  ProductRemoteDataSource({required this.client});

  Future<List<ProductModel>> getProducts() async {
    // Simulate a delay as if fetching from a network.
    await Future.delayed(const Duration(seconds: 2));

    // Decode the JSON data into a list of ProductModel.
    final List decodedJson = jsonDecode(productJson);
    return decodedJson.map((json) => ProductModel.fromJson(json)).toList();
  }
}

// Hardcoded JSON data.
const String productJson = '''
    [
      {
        "id": 1,
        "title": "Office Code",
        "price": 234,
        "size": 12,
        "description": "$dummyText",
        "image": "assets/images/bag_1.png",
        "color": 4291969454
      },
      {
        "id": 2,
        "title": "Belt Bag",
        "price": 234,
        "size": 8,
        "description": "$dummyText",
        "image": "assets/images/bag_2.png",
        "color": 3629811588
      },
      {
        "id": 3,
        "title": "Hang Top",
        "price": 234,
        "size": 10,
        "description": "$dummyText",
        "image": "assets/images/bag_3.png",
        "color": 4280159091
      },
      {
        "id": 4,
        "title": "Old Fashion",
        "price": 234,
        "size": 11,
        "description": "$dummyText",
        "image": "assets/images/bag_4.png",
        "color": 3875174680
      },
      {
        "id": 5,
        "title": "Office Code",
        "price": 234,
        "size": 12,
        "description": "$dummyText",
        "image": "assets/images/bag_5.png",
        "color": 4294940547
      },
      {
        "id": 6,
        "title": "Office Code",
        "price": 234,
        "size": 12,
        "description": "$dummyText",
        "image": "assets/images/bag_6.png",
        "color": 2868950880
      }
    ]
    ''';

// Dummy description text
const String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.";
