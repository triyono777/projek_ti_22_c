import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/note_model.dart';

class FirebaseService {
  contohFungsi(String a, int b) {}

  final CollectionReference _notesCollection =
      FirebaseFirestore.instance.collection('notes');

  Future<void> addNote(Note note) async {
    await _notesCollection.add(note.toMap());
  }

  Future<void> updateNote(Note note) async {
    await _notesCollection.doc(note.id).update(note.toMap());
  }

  Future<void> deleteNote(String id) async {
    await _notesCollection.doc(id).delete();
  }

  Future<List<Note>> getNotesByUser(String userId) async {
    QuerySnapshot snapshot =
        await _notesCollection.where('userId', isEqualTo: userId).get();
    return snapshot.docs
        .map((doc) => Note.fromMap(doc.data() as Map<String, dynamic>, doc.id))
        .toList();
  }

  Stream<List<Note>> getNotesStreamByUser(String userId) {
    return _notesCollection.where('userId', isEqualTo: userId).snapshots().map(
        (snapshot) => snapshot.docs
            .map((doc) =>
                Note.fromMap(doc.data() as Map<String, dynamic>, doc.id))
            .toList());
  }
}
