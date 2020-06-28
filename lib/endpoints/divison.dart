import 'subKingdoms.dart';

class Divison {
  Subkingdom subkingdom;
  String slug;
  String name;
  Subkingdom kingdom;
  String id;
  List<DivisionClasses> divisionClasses;

  Divison(
      {this.subkingdom,
      this.slug,
      this.name,
      this.kingdom,
      this.id,
      this.divisionClasses});

  Divison.fromJson(Map<String, dynamic> json) {
    subkingdom = json['subkingdom'] != null
        ? new Subkingdom.fromJson(json['subkingdom'])
        : null;
    slug = json['slug'];
    name = json['name'];
    kingdom = json['kingdom'] != null
        ? new Subkingdom.fromJson(json['kingdom'])
        : null;
    id = json['id'];
    if (json['division_classes'] != null) {
      divisionClasses = new List<DivisionClasses>();
      json['division_classes'].forEach((v) {
        divisionClasses.add(new DivisionClasses.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.subkingdom != null) {
      data['subkingdom'] = this.subkingdom.toJson();
    }
    data['slug'] = this.slug;
    data['name'] = this.name;
    if (this.kingdom != null) {
      data['kingdom'] = this.kingdom.toJson();
    }
    data['id'] = this.id;
    if (this.divisionClasses != null) {
      data['division_classes'] =
          this.divisionClasses.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Subkingdom {
  String slug;
  String name;
  String link;
  String id;

  Subkingdom({this.slug, this.name, this.link, this.id});

  Subkingdom.fromJson(Map<String, dynamic> json) {
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
