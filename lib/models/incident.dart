class Incident {
  final String versionId;
  int counter=0;

  Incident(this.versionId,this.counter);

  Map toJson() {
    return {
      'versionId' : versionId,
      'counter' : counter
    };
  }

  @override
  String toString() {
      return '{ ${this.versionId}, ${this.counter} }';
  }

}