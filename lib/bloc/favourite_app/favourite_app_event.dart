import 'package:equatable/equatable.dart';
import 'package:favouriteapp/model/favourite_item_model.dart';

abstract class FavouriteAppEvent extends Equatable {
  const FavouriteAppEvent();

  @override
  List<Object> get props => [];
}

class FetchFavouriteList extends FavouriteAppEvent{}

class AddCheckMark extends FavouriteAppEvent{
  const AddCheckMark(this.item);
  final FavouriteItemModel item;
}

class AddFavouriteItem extends FavouriteAppEvent{
  const AddFavouriteItem(this.item);
  final FavouriteItemModel item;
}
