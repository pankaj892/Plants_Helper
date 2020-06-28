class Kingdoms {
  List<Subkingdoms> subkingdoms;
  String slug;
  String name;
  String id;

  Kingdoms({this.subkingdoms, this.slug, this.name, this.id});

  Kingdoms.fromJson(Map<String, dynamic> json) {
    if (json['subkingdoms'] != null) {
      subkingdoms = new List<Subkingdoms>();
      json['subkingdoms'].forEach((v) {
        subkingdoms.add(new Subkingdoms.fromJson(v));
      });
    }
    slug = json['slug'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.subkingdoms != null) {
      data['subkingdoms'] = this.subkingdoms.map((v) => v.toJson()).toList();
    }
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}

class Subkingdoms {
  String slug;
  String name;
  String link;
  String id;

  Subkingdoms({this.slug, this.name, this.link, this.id});

  Subkingdoms.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    name = json['name'];
    link = json['link'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['name'] = this.name;
    data['link'] = this.link;
    data['id'] = this.id;
    return data;
  }
}
