import 'package:favouriteapp/bloc/favourite_app/favourite_app_bloc.dart';
import 'package:favouriteapp/bloc/favourite_app/favourite_app_event.dart';
import 'package:favouriteapp/bloc/favourite_app/favourite_app_state.dart';
import 'package:favouriteapp/model/favourite_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteAppScreen extends StatelessWidget {
  const FavouriteAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<FavouriteAppBloc>().add(FetchFavouriteList());
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: const Text('Favourite App'), centerTitle: true,actions: [
        IconButton(onPressed: (){
          context.read<FavouriteAppBloc>().add(DeleteItem());
        }, icon: const Icon(Icons.delete))
      ],),
      body: BlocBuilder<FavouriteAppBloc, FavouriteAppState>(
        builder: (context, state) {
          return state.listStatus == ListStatus.loading ? const Center(child: CircularProgressIndicator()) : ListView.builder(
              itemCount: state.favouriteItemList.length,
              itemBuilder: (context, index) {
                var item = state.favouriteItemList[index];
                return Card(
                  elevation: 1,
                  child: ListTile(
                    title: Text(item.title),
                    leading: IconButton(onPressed: () {
                      FavouriteItemModel checkItem = FavouriteItemModel(title: item.title, id: item.id,isDelete: item.isDelete ? false : true,isFavourite: item.isFavourite);
                      context.read<FavouriteAppBloc>().add(AddCheckMark(checkItem));
                    },
                        icon: Icon(item.isDelete ? Icons.check_box : Icons.check_box_outline_blank)),
                    trailing: IconButton(onPressed: () {
                      FavouriteItemModel favItem = FavouriteItemModel(title: item.title, id: item.id,isFavourite: item.isFavourite ? false : true,isDelete: item.isDelete);
                      context.read<FavouriteAppBloc>().add(AddFavouriteItem(favItem));
                    },
                        icon: Icon(item.isFavourite ? Icons.favorite : Icons.favorite_border)),
                  ),
                );
              });
        },
      ),
    ));
  }
}
