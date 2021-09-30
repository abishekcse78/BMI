import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

//  const bottomContainerHeight = 80;

const activeCardColour = Color(0xFF55F811);
const inactiveCardColour = Color(0xFF138B0F);
const bottomContainerColour = Color(0xFFF66292);

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

late Gender selectedGender = Gender.none;

class _InputPageState extends State<InputPage> {
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;
  //
  // void updateCardColour(Gender selectedGender) {
  //   // male=1 & female=2
  //   if (selectedGender == Gender.male) {
  //     if (maleCardColour == inactiveCardColour) {
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     } else {
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  //   if (selectedGender == Gender.female) {
  //     if (femaleCardColour == inactiveCardColour) {
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     } else {
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                        //                      updateCardColour(Gender.male);
                      });

                      print('Male');
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      colour: selectedGender == Gender.male
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                        //                     updateCardColour(Gender.female);
                      });
                    },
                    child: ReusableCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      colour: selectedGender == Gender.female
                          ? activeCardColour
                          : inactiveCardColour,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: activeCardColour,
              cardChild: Column(
                children: [],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Column(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeCardColour,
                    cardChild: Column(),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Center(
              child: Text('Calculate the BMI',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            color: bottomContainerColour,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0, //            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}
