class Note {
  String id;
  String title;
  String content;
  String imageUrl;
  String userId;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.userId,
  });

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'imageUrl': imageUrl,
      'userId': userId,
    };
  }

  // Create a Note object from a Map object
  factory Note.fromMap(Map<String, dynamic> map, String id) {
    return Note(
      id: id,
      title: map['title'] ?? '',
      content: map['content'] ?? '',
      imageUrl: map['imageUrl'] ?? '',
      userId: map['userId'] ?? '',
    );
  }
}
