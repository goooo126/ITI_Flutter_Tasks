import 'package:flutter/material.dart';
import 'package:listview_gridview/components/please_card.dart';
import '../constants/app_constants.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Discover"),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "List view",
              ),
              Tab(
                text: "Grid",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
                itemCount: AppConstants.placesList.length,
                itemBuilder: (context, index) => PlaceCard(
                      description: AppConstants.placesList[index].description,
                      name: AppConstants.placesList[index].name,
                      prive: AppConstants.placesList[index].price,
                    )),
            GridView.builder(
                itemCount: AppConstants.placesList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.5,
                ),
                itemBuilder: (context, index) => PlaceCard(
                      description: AppConstants.placesList[index].description,
                      name: AppConstants.placesList[index].name,
                      prive: AppConstants.placesList[index].price,
                    )),
          ],
        ),
      ),
    );
  }
}
