class Note {
  final String id;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;

  Note({
    required this.id,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  // Factory constructor to create a new note with generated ID and timestamps
  factory Note.create({required String content}) {
    final now = DateTime.now();
    return Note(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      content: content,
      createdAt: now,
      updatedAt: now,
    );
  }

  // Create a copy of this note with updated fields
  Note copyWith({
    String? content,
    DateTime? updatedAt,
  }) {
    return Note(
      id: id,
      content: content ?? this.content,
      createdAt: createdAt,
      updatedAt: updatedAt ?? DateTime.now(),
    );
  }
}