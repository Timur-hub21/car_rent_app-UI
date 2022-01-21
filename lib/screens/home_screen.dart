import 'package:car_rent/model/cars.dart';
import 'package:car_rent/style/colors.dart';
import 'package:car_rent/style/search_bar.dart';
import 'package:car_rent/style/text_style.dart';
import 'package:car_rent/widgets/car_card.dart';
import 'package:car_rent/widgets/select_option.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: const Text(
                  "Rent Your Dream Car Now",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Choose the car model",
                style: AppTextStyle.mainTitleStyle,
              ),
              optionSelect(),
              const SizedBox(
                height: 12.0
              ),
              search_bar(),
              SizedBox(
                height: 12.0,
              ),
              Text("Latest Model", style: AppTextStyle.mainTitleStyle),
              SizedBox(
                height: 20.0,
              ),
              Column(
                children: cars_list.map((e) => car_card(e, context)).toList()
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<CarsModel> cars_list = [
  CarsModel(
    id: 0,
    car_img_path: "assets/images/2019-ford-fusion.jpeg",
    cars_model: "Ford Fusion 2021",
    carColor: CarColor(colorName: "White", carsColor: Colors.white),
    price: "1000\$/Day"),
    CarsModel(
    id: 1,
    car_img_path: "assets/images/2022-volkswagen-tiguan-us-spec-101-1620753302.jpeg",
    cars_model: "Volkswagen Tiguan 2022",
    carColor: CarColor(colorName: "White", carsColor: Colors.white),
    price: "1750\$/Day"),
    CarsModel(
    id: 2,
    car_img_path: "assets/images/703565f10a0a0065012fcdf5f93a679f.jpeg",
    cars_model: "Chevrolet 2020",
    carColor: CarColor(colorName: "Red", carsColor: Colors.red),
    price: "1200\$/Day"),
    CarsModel(
    id: 3,
    car_img_path: "assets/images/754788650684641.jpeg",
    cars_model: "Alfa-Romeo 2020",
    carColor: CarColor(colorName: "Red", carsColor: Colors.red),
    price: "2000\$/Day"),
    CarsModel(
    id: 4,
    car_img_path: "assets/images/a6-730-1.jpeg",
    cars_model: "Audi A6 2021",
    carColor: CarColor(colorName: "Grey", carsColor: Colors.grey),
    price: "1500\$/Day"),
    CarsModel(
    id: 5,
    car_img_path: "assets/images/mb-c-w206-tmb-550x300.jpeg",
    cars_model: "Mercedes C",
    carColor: CarColor(colorName: "Grey", carsColor: Colors.grey),
    price: "2300\$/Day"),
    CarsModel(
    id: 6,
    car_img_path: "assets/images/orig.jpeg",
    cars_model: "Ferrari",
    carColor: CarColor(colorName: "Red", carsColor: Colors.red),
    price: "3000\$/Day"),
    CarsModel(
    id: 7,
    car_img_path: "assets/images/picture.jpeg",
    cars_model: "Lamborghini",
    carColor: CarColor(colorName: "Black", carsColor: Colors.black),
    price: "3200\$/Day"),
];
