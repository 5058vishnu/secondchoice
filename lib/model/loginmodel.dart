class Loginmodel{
late  String? carimage;
late  String? carname;
 late String? modelyear;
 late String? kms;
 late String? fuel;
 late String? prize;

  Loginmodel({this.carimage, this.carname, this.modelyear, this.kms, this.fuel,
      this.prize});
  factory Loginmodel.fromJson(Map<String, dynamic> json) {
    return Loginmodel(
        carimage: json['carimage'],
        carname: json['carname'],
        modelyear: json['modelyear'],
        kms: json['kms'],
        fuel: json['fuel'],
        prize: json['prize']

    );
  }
Map<String, dynamic> toJson() {
  return {
    'carimage': carimage,
    'carname': carname,
    'modelyear': modelyear,
    'kms': kms,
    'fuel': fuel,
    'prize': prize
  };
}

}