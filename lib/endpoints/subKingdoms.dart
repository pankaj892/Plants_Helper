class SubKingdoms {
  String slug;
  String name;
  Kingdom kingdom;
  String id;
  List<Divisions> divisions;

  SubKingdoms({this.slug, this.name, this.kingdom, this.id, this.divisions});

  SubKingdoms.fromJson(Map<String, dynamic> json) {
    slug = json['slug'];
    name = json['name'];
    kingdom =
        json['kingdom'] != null ? new Kingdom.fromJson(json['kingdom']) : null;
    id = json['id'];
    if (json['divisions'] != null) {
      divisions = new List<Divisions>();
      json['divisions'].forEach((v) {
        divisions.add(new Divisions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = this.slug;
    data['name'] = this.name;
    if (this.kingdom != null) {
      data['kingdom'] = this.kingdom.toJson();
    }
    data['id'] = this.id;
    if (this.divisions != null) {
      data['divisions'] = this.divisions.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Kingdom {
  String slug;
  String name;
  String link;
  String id;

  Kingdom({this.slug, this.name, this.link, this.id});

  Kingdom.fromJson(Map<String, dynamic> json) {
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
