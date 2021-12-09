import 'package:equatable/equatable.dart';

class DestinationModel extends Equatable {

  final String id;
  final String title;
  final String city;
  final String imageUrl;
  final double rating;
  final int price;

  DestinationModel({
    required this.id, 
    this.title = '', 
    this.city = '',
    this.imageUrl = '', 
    this.rating = 0.0, 
    this.price = 0
  });

  factory DestinationModel.fromJson(String id, Map<String, dynamic> json) 
    => DestinationModel(
      id: id,
      title: json['title'],
      city: json['city'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      price: json['price']
    );

  @override
  List<Object?> get props => [id,title,city,imageUrl,rating,price];
}