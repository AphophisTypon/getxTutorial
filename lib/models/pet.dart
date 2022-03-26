
class Pet {
  ///Para classes caseiras, o tratamento com o Rx é diferente. Dentro do controlador, eu trabalho com a intancia local,
  ///e para trabalhar com ela de dentro do controlador, eu preciso configurar a instancia, e não a propriedade
  ///associada ao controlador
  String name;
  int age;
  Pet({
    required this.name,
    required this.age,
  });

  Pet copyWith({String? name, int? age}){
    return Pet(name: name ?? this.name, age: age ?? this.age);
  }

}

