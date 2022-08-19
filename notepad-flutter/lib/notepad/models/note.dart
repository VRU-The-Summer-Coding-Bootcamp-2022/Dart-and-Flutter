class Note {
  int? id;
  String? title;
  String? text;
  String? date;
  int? person;

  Note({this.id, this.title, this.text, this.date, this.person});

  Note.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    text = json['text'];
    date = json['date'];
    person = json['person'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['text'] = this.text;
    data['date'] = this.date;
    data['person'] = this.person;
    return data;
  }
}
