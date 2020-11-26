import 'dart:convert';

class Company {
  String logo;
  String name;
  String location;
  String type;
  String size;
  String employee;
  String hot;
  String count;
  String inc;

  Company(
      {this.logo,
        this.name,
        this.location,
        this.type,
        this.size,
        this.employee,
        this.hot,
        this.count,
        this.inc});

  Company.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
    name = json['name'];
    location = json['location'];
    type = json['type'];
    size = json['size'];
    employee = json['employee'];
    hot = json['hot'];
    count = json['count'];
    inc = json['inc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo'] = this.logo;
    data['name'] = this.name;
    data['location'] = this.location;
    data['type'] = this.type;
    data['size'] = this.size;
    data['employee'] = this.employee;
    data['hot'] = this.hot;
    data['count'] = this.count;
    data['inc'] = this.inc;
    return data;
  }

  static List<Company> resolveDataFromJsonString(String json) {
    List<Company> listModel = new List<Company>();
    List list = jsonDecode(json)['list'];
    list.forEach((element) {

      var model = Company(
        logo: element['logo'],
        name: element['name'],
        location: element['location'],
        type: element['type'],
        size: element['size'],
        employee: element['employee'],
        hot: element['hot'],
        inc: element['inc'],
        count: element['count'],
      );
      listModel.add(model);
    });

    return listModel;
  }
}