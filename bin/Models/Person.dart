class Person{
  String? id;
  String? name;
  int? age;
  String? address;

Person({this.name, this.age, this.address, this.id});

factory Person.fromJson(Map json){
  return  Person(
    id: json["id"],
    name: json["name"],
    age: json["age"],
    address: json["address"]
  );
}

toMap(){
  return {
    "id": this.id,
    "name": this.name,
    "age": this.age,
    "address": this.address,
  };
}
}