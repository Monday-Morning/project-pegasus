import 'package:flutter/material.dart';
import 'package:mondaymorning/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

/// Home screen of app
class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewmodel>.reactive(
      builder: (context, model, child) => SafeArea(
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: model.updateCounter,
            child: GestureDetector(child: const Icon(Icons.add)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: GestureDetector(
                  onTap: () => model.setTheme(),
                  child: Text(
                    model.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              Text(
                model.counter.toString(),
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewmodel(),
    );
  }
}
