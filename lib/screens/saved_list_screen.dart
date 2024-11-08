import 'package:flutter/material.dart';

class SavedListScreen extends StatelessWidget {
  const SavedListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 임시 데이터
    final List<String> savedLocations = [
      '서울',
      '부산',
      '인천',
      '대구',
      '대전',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('저장된 위치'),
      ),
      body: ListView.builder(
        itemCount: savedLocations.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.location_city),
              title: Text(savedLocations[index]),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // TODO: Implement delete functionality
                },
              ),
              onTap: () {
                // TODO: Implement navigation to weather details
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implement add new location functionality
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}