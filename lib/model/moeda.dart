class Moeda {
  String name;
  double buy;
  double sell;
  double variation;

  Moeda({this.name, this.buy, this.sell, this.variation});

  Moeda.fromJson(Map json)
      : this.name = json['name'],
        this.buy = json['buy'],
        this.sell = json['sell'],
        this.variation = json['variation'];

  @override
  String toString() {
    return 'Moeda{name=$name, buy=$buy, sell=$sell, variation=$variation}';
  }
}
