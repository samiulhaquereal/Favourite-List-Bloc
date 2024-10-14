import 'package:favouriteapp/model/favourite_item_model.dart';

class FavouriteRepository{


  Future<List<FavouriteItemModel>> fetchItem()async{
    await Future.delayed(const Duration(seconds: 2));
    return List.of(_generateList(length: 10));
  }

  List<FavouriteItemModel> _generateList({required int length}){
    return List.generate(length, (index)=> FavouriteItemModel(
        title: 'Item ${index + 1}',
        id: '$index',
    )
    );
  }

}