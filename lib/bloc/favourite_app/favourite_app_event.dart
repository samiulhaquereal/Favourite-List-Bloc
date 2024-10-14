import 'package:equatable/equatable.dart';

abstract class FavouriteAppEvent extends Equatable {
  const FavouriteAppEvent();
}

class FetchFavouriteList extends FavouriteAppEvent{

  @override
  List<Object> get props => [];
}

class AddCheckMark extends FavouriteAppEvent{

  @override
  List<Object> get props => [];
}
class RemoveCheckMark extends FavouriteAppEvent{

  @override
  List<Object> get props => [];
}
class AddFavouriteItem extends FavouriteAppEvent{

  @override
  List<Object> get props => [];
}
class RemoveFavouriteItem extends FavouriteAppEvent{

  @override
  List<Object> get props => [];
}
