import 'package:flutter/material.dart';
import '../models/note_model.dart';

class CustomCard extends StatelessWidget {
  final Note note;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const CustomCard({super.key, 
    required this.note,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(note.content),
            SizedBox(height: 10),
            if (note.imageUrl.isNotEmpty)
              Image.network(note.imageUrl, height: 150, fit: BoxFit.cover),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: onEdit,
                ),
                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: onDelete,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
