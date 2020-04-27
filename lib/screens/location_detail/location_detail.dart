import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'image_banner.dart';
import 'text_section.dart';
import '../../models/location.dart';

class LocationDetail extends StatelessWidget {
  final int _locationId;
  
  LocationDetail(this._locationId);

  @override
  Widget build(BuildContext context) {

    final location = Location.fetchById(_locationId);
    debugPrint('locations: $location');
    print(location);
    
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location))),
    );
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}
