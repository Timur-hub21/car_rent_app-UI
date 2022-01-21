import 'package:car_rent/model/cars.dart';
import 'package:car_rent/style/text_style.dart';
import 'package:car_rent/widgets/cars_details.dart';
import 'package:flutter/material.dart';
import 'package:car_rent/style/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.model}) : super(key: key);
  final CarsModel model;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "model${widget.model.id}",
                child: Container(
                  height: 400.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.0),
                      topRight: Radius.circular(12.0),
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.model.car_img_path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
               padding: EdgeInsets.all(16.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       SizedBox(
                         width: MediaQuery.of(context).size.width / 2,
                         child: Text(
                           widget.model.cars_model,
                           style: AppTextStyle.detailsTextStyle,
                           softWrap: true,
                         ),
                       ),
                       Text(widget.model.price, style: AppTextStyle.priceTextStyle,)
                     ],
                   ),
                   SizedBox(
                     height: 30.0,
                   ),
                   Text('Cars Details',
                   style: AppTextStyle.mainTitleStyle,
                   ),
                   SizedBox(
                     height: 12.0,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       carsDetails(Icons.speed, "320Km/h"),
                       carsDetails(Icons.access_time, "2.9s"),
                       carsDetails(Icons.power_sharp, "370hp"),
                       carsDetails(Icons.settings, "automatic"),
                     ],
                   ),
                 ],
               ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 60.0,
                    child: RawMaterialButton(
                      onPressed: () {},
                      child: Text(
                        "Rent now",
                        style: TextStyle(
                          color: Colors.white, fontSize: 22.0, fontWeight: FontWeight.bold,
                        ),
                      ),
                      fillColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
