import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../data/services/data_provider.dart';
import '../../../global_widgets/background_image.dart';
import '../../../global_widgets/show_custom_dialog.dart';
import '../../../global_widgets/title_text_content.dart';

class SerieView extends StatelessWidget {
  const SerieView({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text('SERIES'),
      ),
      body: FutureBuilder<void>(
        future: dataProvider.fetchData(),
        builder: (context, snapshot) {
          final entries = dataProvider.getEntriesByProgramType('series');
          if (entries.isEmpty) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: entries.length > 20 ? 20 : entries.length,
              itemBuilder: (context, index) {
                final entry = entries[index];

                return GestureDetector(
                  onTap: () {
                    showCustomDialog(
                      context,
                      entry.title,
                      entry.description,
                      'Release Year: ${entry.releaseYear}',
                      entry.imageUrl,
                    );
                  },
                  child: Column(
                    children: [
                      TitleTextContent(title: entry.title),
                      BackgroundImage(
                        imageUrl: entry.imageUrl,
                      ),
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
