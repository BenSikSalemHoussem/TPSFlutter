import 'package:flutter/material.dart';
import 'package:tp3/models/serie.dart';
import 'package:tp3/screens/serie_details_page.dart';
import 'package:tp3/widgets/serie_card.dart';

class SeriesListPage extends StatelessWidget {
  const SeriesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular TV Series"),
      ),
      body: ListView.builder(
        itemCount: series.length,
        itemBuilder: (context, index) {
          final serie = series[index];
          return SerieCard(
            serie: serie,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SerieDetailsPage(serie: serie),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
