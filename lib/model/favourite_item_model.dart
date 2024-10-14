import 'package:equatable/equatable.dart';

class FavouriteItemModel extends Equatable{
  const FavouriteItemModel({
    required this.title,
    required this.id,
    this.isFavourite = false,
    this.isDelete = false,
});

  final String title;
  final String id;
  final bool? isFavourite;
  final bool? isDelete;

  FavouriteItemModel copyWith({String? title,String? id,bool? isFavourite,bool? isDelete}){
    return FavouriteItemModel(
      title: title ?? this.title,
      id: id ?? this.id,
      isFavourite: isFavourite ?? this.isFavourite,
      isDelete: isDelete ?? this.isDelete,
    );
}
  @override
  List<Object?> get props => [title, id, isFavourite, isDelete];
}