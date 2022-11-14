import 'package:flutter/material.dart';
import 'package:flutter_stacked_firebase_boilerplate/viewmodels/home.viewmodel.dart';
import 'package:stacked/stacked.dart';

///
class HomeView extends StatefulWidget {
  ///
  const HomeView({super.key});
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: HomeViewModel.new,
      builder: (
        BuildContext context,
        HomeViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Center(
            child: Text(
              'HomeView',
            ),
          ),
        );
      },
    );
  }
}
