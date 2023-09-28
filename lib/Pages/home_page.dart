import 'package:flutter/material.dart';
import 'package:go_moon/CustomClasses/custom_dropdown_menu.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  // ignore: prefer_const_constructors_in_immutables
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitleWidget(),
                  _bookRideWidget(),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _pageTitleWidget() {
    return const Text(
      "GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.5,
      width: _deviceWidth * 0.65,
      alignment: Alignment.topRight,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.scaleDown,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

//DropDown
  Widget _destinationDropDownWidget() {
    List<String> items = [
      "Station 1",
      "Station 2",
      "Station 3",
      "Station 4",
      "Station 5"
    ];

    return CustomDropDownButton(
      value: items,
      width: _deviceWidth,
    );
  }

  Widget _travellerInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropDownButton(
          value: const ["1", "2", "3"],
          width: _deviceWidth * 0.43,
        ),
        CustomDropDownButton(
          value: const ["1", "2", "3"],
          width: _deviceWidth * 0.43,
        ),
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellerInformationWidget(),
          _rideButton()
        ],
      ),
    );
  }

  Widget _rideButton() {
    return MaterialButton(
      color: Colors.white,
      minWidth: _deviceWidth,
      height: _deviceHeight * 0.06,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      onPressed: () {},
      child: const Text(
        "Book Ride",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
