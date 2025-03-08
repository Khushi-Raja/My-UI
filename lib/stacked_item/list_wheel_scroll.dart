import 'package:flutter/material.dart';

class ListWheelScrollPractice extends StatefulWidget {
  const ListWheelScrollPractice({Key? key}) : super(key: key);

  @override
  _ListWheelScrollPracticeState createState() =>
      _ListWheelScrollPracticeState();
}

class _ListWheelScrollPracticeState extends State<ListWheelScrollPractice> {
  String selectedName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: Text(
            "Khushi A. Raja",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      backgroundColor: Colors.amber,
      body: ListWheelScrollView(itemExtent: 130, children: [
        CustomWidget(
          onTap: () => _updateSelectedName("Activity"),
          text: "Activity",
          icon: Icons.local_activity,
          textDis: "Description Here",
        ),
        CustomWidget(
          onTap: () => _updateSelectedName("Airport"),
          text: "Airport",
          icon: Icons.local_airport,
          textDis: "Description Here",
        ),
        CustomWidget(
            onTap: () => _updateSelectedName("ATM"),
            text: "ATM",
            icon: Icons.local_atm,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Cafe"),
            text: "Cafe",
            icon: Icons.local_cafe,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Car Wash"),
            text: "Car Wash",
            icon: Icons.local_car_wash,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Convenience Store"),
            text: "Convenience Store",
            icon: Icons.local_convenience_store,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Dining"),
            text: "Dining",
            icon: Icons.local_dining,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Drink"),
            text: "Drink",
            icon: Icons.local_drink,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Florist"),
            text: "Florist",
            icon: Icons.local_florist,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Gas Station"),
            text: "Gas Station",
            icon: Icons.local_gas_station,
            textDis: "Discription Here"),
        CustomWidget(
            onTap: () => _updateSelectedName("Grocery Store"),
            text: "Grocery Store",
            icon: Icons.local_grocery_store,
            textDis: "Discription Here"),
        // Add more CustomWidget with onTap for other items
      ]),
      bottomSheet: selectedName.isNotEmpty
          ? Container(
              height: 80,
              color: Colors.orange,
              alignment: Alignment.center,
              child: Text(
                '$selectedName',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            )
          : null,
    );
  }

  void _updateSelectedName(String name) {
    setState(() {
      selectedName = name;
    });
  }
}

class CustomWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? favcolor;
  final IconData icon;
  final String textDis;

  const CustomWidget({
    Key? key,
    required this.onTap,
    required this.text,
    this.fontSize = 23,
    this.fontWeight = FontWeight.w700,
    this.favcolor,
    required this.icon,
    required this.textDis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              Icon(
                icon,
                size: 60,
                color: Colors.grey,
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontWeight: fontWeight,
                      color: favcolor,
                    ),
                  ),
                  Text(
                    textDis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[100],
        ),
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 5, left: 5, right: 5),
      ),
    );
  }
}
