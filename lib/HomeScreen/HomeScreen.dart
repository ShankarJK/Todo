import 'package:example/HomeScreen/HomeScreenModel.dart';
import 'package:flutter/material.dart';

class HomeScreenPage extends StatelessWidget {
  HomeScreenPage({super.key});

  HomeScreenModel instance = HomeScreenModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Example of Model"),
      ),
      floatingActionButton: FloatingActionButton.extended(label: const Text("Add Data"), onPressed: () {  },icon: const Icon(Icons.add_box_outlined),),
      body: SafeArea(
        child: ListView.builder(
          itemCount: instance.notes.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
              child: ListTile(
                title: Padding(padding:const EdgeInsets.only(bottom: 9),child: Text(instance.notes[index].title)),
                
                subtitle: Text(instance.notes[index].description),
              ),
            );
          },
        ),
      ),
    );
  }
}
