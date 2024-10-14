import 'package:bloc/bloc.dart';
import 'package:favouriteapp/bloc/favourite_app/favourite_app_event.dart';
import 'package:favouriteapp/bloc/favourite_app/favourite_app_state.dart';
import 'package:favouriteapp/model/favourite_item_model.dart';
import 'package:favouriteapp/repository/favourite_repository.dart';


class FavouriteAppBloc extends Bloc<FavouriteAppEvent, FavouriteAppState> {
  FavouriteAppBloc(this.favouriteRepository) : super(const FavouriteAppState()) {
    on<FetchFavouriteList>(_fetchFavouriteList);
  }

  FavouriteRepository favouriteRepository;
  List<FavouriteItemModel> itemList = [];

  void _fetchFavouriteList(FetchFavouriteList event,Emitter<FavouriteAppState> emit)async{
    itemList = await favouriteRepository.fetchItem();
    emit(state.copyWith(favouriteItemList: List.from(itemList),listStatus: ListStatus.success));
  }
}