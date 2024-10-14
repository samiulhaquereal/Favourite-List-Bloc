import 'package:equatable/equatable.dart';
import 'package:favouriteapp/model/favourite_item_model.dart';

enum ListStatus{loading,success,failure}

class FavouriteAppState extends Equatable{
   const FavouriteAppState({
    this.isDelete = false,
    this.isFavourite = false,
    this.listStatus = ListStatus.loading,
    this.favouriteItemList = const [],
});

  final bool? isDelete;
  final ListStatus? listStatus;
  final bool? isFavourite;
  final List<FavouriteItemModel> favouriteItemList;

  FavouriteAppState copyWith({bool? isDelete,bool? isFavourite,List<FavouriteItemModel>? favouriteItemList,ListStatus? listStatus}){
    return FavouriteAppState(
      isDelete: isDelete ?? this.isDelete,
      isFavourite: isFavourite ?? this.isFavourite,
      favouriteItemList: favouriteItemList ?? this.favouriteItemList,
      listStatus: listStatus ?? this.listStatus,
    );
}

  @override
  List<Object?> get props => [isDelete,isFavourite,favouriteItemList,listStatus];

}

