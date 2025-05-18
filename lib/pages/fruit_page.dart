import 'package:flutter/material.dart';
import 'package:fruityvice/models/fruit_model.dart';
import 'package:fruityvice/pages/fruit_detail_page.dart';
import 'package:fruityvice/providers/fruit_provider.dart';
import 'package:fruityvice/services/fruit_service.dart';
import 'package:provider/provider.dart';

class FruitPage extends StatelessWidget {
  const FruitPage({super.key});

  @override
  Widget build(BuildContext context) {
    FruitService fvService = FruitService();
    FruitProvider provider = context.read<FruitProvider>();

    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: provider.getFruits(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return ListView.separated(
                itemCount: snapshot.data!.length,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      provider.fruitIndex = index;
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  FruitDetailPage()));
                    },
                    leading: Text(snapshot.data![index].id.toString()),
                    title: Text(snapshot.data![index].name),
                    subtitle: Text(snapshot.data![index].family),
                    trailing: Text(snapshot.data![index].order),
                  );
                },
              );
            } else
              return Text("ERROR");
          },
        ),
      ),
    );
  }
}
