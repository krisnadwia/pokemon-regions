import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pokemon_regions/model/regions.dart';

var informationTextStyle = const TextStyle(fontFamily: 'Oxygen');

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required this.regions}) : super(key: key);

  final Regions regions;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(regions: regions);
        } else {
          return DetailMobilePage(regions: regions);
        }
      },
    );
  }
}

class DetailMobilePage extends StatelessWidget {
  const DetailMobilePage({Key? key, required this.regions}) : super(key: key);
  
  final Regions regions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Hero(
                    tag: regions.regionImages,
                    child: Image.asset(regions.regionImages),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          CircleAvatar(
                            backgroundColor: Colors.cyan,
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          const FavoriteButton(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text(
                  regions.regionNames,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const Icon(Icons.accessibility_outlined),
                        const SizedBox(height: 8.0),
                        const Text('Professor:'),
                        const SizedBox(height: 8.0),
                        Text(
                          regions.regionProfessor,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        const Icon(Icons.adb_outlined),
                        const SizedBox(height: 8.0),
                        const Text('Starter Pokémon:'),
                        const SizedBox(height: 8.0),
                        Text(
                          regions.regionStarterPokemon,
                          style: informationTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'About Region',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionDetails,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Cities and Towns',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionCitiesAndTowns,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Island',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionIsland,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Other Locations',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionOtherLocations,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Areas of Interest',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionAreasOfInterest,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Landmarks',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionLandmarks,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'Places of Interest',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionPlacesOfInterest,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  'References',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily: 'Staatliches',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  regions.regionReferences,
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontFamily: 'Oxygen',
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: regions.regionUrls.map((url) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(url),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailWebPage extends StatefulWidget {
  const DetailWebPage({Key? key, required this.regions}) : super(key: key);

  final Regions regions;

  @override
  _DetailWebPageState createState() => _DetailWebPageState();
}

class _DetailWebPageState extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: SizedBox(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Pokémon Regions',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Hero(
                            tag: widget.regions.regionImages,
                            child: ClipRRect(
                              child: Image.asset(widget.regions.regionImages),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.regions.regionUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  widget.regions.regionNames,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      const Icon(Icons.accessibility_outlined),
                                      const SizedBox(width: 8.0),
                                      const Text('Professor:'),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        widget.regions.regionProfessor,
                                        style: informationTextStyle,
                                      ),
                                    ],
                                  ),
                                  const FavoriteButton(),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  const Icon(Icons.adb_outlined),
                                  const SizedBox(width: 8.0),
                                  const Text('Starter Pokémon'),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    widget.regions.regionStarterPokemon,
                                    style: informationTextStyle,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8.0),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'About Region',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionDetails,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Cities and Towns',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionCitiesAndTowns,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Island',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionIsland,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Other Locations',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionOtherLocations,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Areas of Interest',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionAreasOfInterest,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Landmarks',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionLandmarks,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'Places of Interest',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionPlacesOfInterest,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: const Text(
                                  'References',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.regions.regionReferences,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Oxygen',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({Key? key}) : super(key: key);

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
