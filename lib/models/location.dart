import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static List<Location> fetchAll() {
    return [
      Location(1, 'Arashiyama Bamboo Grove', 'assets/images/color.png', [
        LocationFact('Summary',
            'First Summary, and am I getting annoyed that my request isn\'s working?.'),
        LocationFact('How to Get There Fast',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Ogogo Forest', 'assets/images/btc.jpeg', [
        LocationFact('Summary',
            'This is the second summary among the summaries, even though Ive not gotten experience but I think this will work'),
        LocationFact('How to Get There Fast',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(3, 'Andela Grove', 'assets/images/wall.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and this being the third summary.'),
        LocationFact('How to Get There Fast',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }

  static Location fetchById(int locationId) {
    //fetch all locations, iterate them and find location with
    //wanted Id, return
    List<Location> locations = Location.fetchAll();
    for (var i = 0; i < locations.length; i++) {
      if (locations[i].id == locationId) {
        return locations[i];
      }
    }
  }
}
