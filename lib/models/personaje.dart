class Personaje{
  String? name;
  String? description;
  String? path;
  String? exten;
  int? id;
  
  

Personaje({
this.name,
this.description,
this.path,
this.exten,
this.id

}
);

factory Personaje.fromJSON(Map<String,dynamic> map){
    return Personaje(
      name: map['name'],
      description: map['description'],
      path: map ['thumbnail']['path'],
      exten: map['thumbnail']['extension'],
      id: map['id']
      
    );
  }
}