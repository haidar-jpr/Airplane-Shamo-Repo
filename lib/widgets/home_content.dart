import 'package:flutter/material.dart';

import 'card_destination_section.dart';
import 'tourism_destination_section.dart';
import 'themes.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> _cardNewDestination = List.generate(
      3,
      (index) => CardDestinationSection(),
    );

    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// !Greeting section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Howdy,\nAnanda Rea',
                    style: textStyle1.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  /// !Profile image
                  Padding(
                    padding: EdgeInsets.only(right: defaultMargin),
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://asset.kompas.com/crops/u9C40jFtPQHasW2etUnnrK3H-Ik=/0x0:620x413/750x500/data/photo/2020/12/31/5fed6250a28ce.jpg',
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),

              /// !Question section
              Text(
                'Where to fly today?',
                style: textStyle1.copyWith(
                  fontSize: 12,
                  fontWeight: FontWeight.w100,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: defaultMargin),

              /// !Tourism destination section [TourismDestinationSection]
              SizedBox(
                width: double.infinity,
                height: 220 + 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const TourismDestinationSection(
                      url: 'assets/images/image-1.png',
                      rating: '4.7',
                    );
                  },
                  itemCount: 10,
                ),
              ),
              SizedBox(height: defaultMargin),

              /// !New destination section
              /// !Text
              Text(
                'New This Year',
                style: textStyle1.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              /// !Card destination section
              Column(
                children: _cardNewDestination,
              )
            ],
          ),
        ),
      ),
    );
  }
}
