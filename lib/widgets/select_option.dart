import 'package:car_rent/style/text_style.dart';
import 'package:flutter/material.dart';

Widget optionSelect() {
  return Container(
    height: 112.0,
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: logos_path.length + 1,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: 88.0,
          child: Container(
            margin: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: InkWell(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: index == 0
                ?Center(child: Text("All...",style: AppTextStyle.mainTitleStyle,))
                : Image.asset(
                  logos_path[index - 1],
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        );
      },
    ),
  );
}

List<String> logos_path = [
  "assets/logos/68-687271_ferrari-logo-txt-ferrari-logo-png.png",
  "assets/logos/audi-logo.png",
  "assets/logos/Chevrolet_new_logo.png",
  "assets/logos/Ford_logo_flat.svg.png",
  "assets/logos/kisspng-alfa-romeo-romeo-car-opkoper-logo-alfa-romeo-5b563cd0d75d44.9731436415323783208821.jpg",
  "assets/logos/lamborghini_PNG10709.png",
  "assets/logos/Mercedes_benz_logo1989.png",
  "assets/logos/Volkswagen_logo.png"

];