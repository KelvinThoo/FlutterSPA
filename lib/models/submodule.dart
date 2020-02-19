class SubModule {
  final String submoduleId;
  int counter=0;

  SubModule(this.submoduleId,this.counter);

  Map toJson() {
    return {
      'submoduleId' : submoduleId,
      'counter':counter
    };
  }

  @override
  String toString() {
      return '{ ${this.submoduleId}, ${this.counter} }';
  }

}