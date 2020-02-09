import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:portfolio/goals/goal.dart';
import 'package:portfolio/goals/store/goalStore.dart';
import 'package:provider/provider.dart';

class GoalDetailsPage extends StatelessWidget {
  int index;

  GoalDetailsPage({@required this.index});

  @override
  Widget build(BuildContext context) {
    final goalStore = Provider.of<GoalStore>(context);
    Goal goal = goalStore.goals[index];
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
              decoration:
                  BoxDecoration(boxShadow: [BoxShadow(blurRadius: 10.0)]),
              child: SizedBox(
                height: 330,
                child: Container(
                  color: Theme.of(context).primaryColor,
                  width: 1000,
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 32.0, bottom: 8.0),
                          child: Text(
                            goal.name.length < 17
                                ? "${goal.name}"
                                : "${goal.name.substring(0, 15)}...",
                            style: TextStyle(
                                fontSize: 48, fontWeight: FontWeight.bold),
                          )),
                      Observer(
                          builder: (_) => Hero(
                                tag: "details$index",
                                child: Material(
                                    color: Colors.transparent,
                                    child: CircularPercentIndicator(
                                      radius: 160,
                                      backgroundColor: Colors.white,
                                      percent: goal.fullfiled,
                                      progressColor: Colors.red,
                                      lineWidth: 10.0,
                                      animation: false,
                                      startAngle: 0,
                                      center: Icon(
                                        IconData(goal.icon,
                                            fontFamily: "MaterialIcons"),
                                        size: 100,
                                        color: Colors.white,
                                      ),
                                    )),
                              )),
                      Padding(
                          padding: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              coveredBy("Initial investement", Colors.red),
                              coveredBy("Investements gains", Colors.pink),
                              coveredBy("Left", Colors.white)
                            ],
                          )),
                    ],
                  ),
                ),
              )),
          Padding(padding: EdgeInsets.all(16.0)),
          Text("${goal.description}"),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "Goal Start Date:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "${goal.endDate}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Text(
              "Goal End Date:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              "${goal.endDate}",
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            )
          ]),
          SizedBox(
            child: Placeholder(
              color: Colors.grey,
            ),
            width: 250,
            height: 250,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(
                width: 100,
                child: RaisedButton(
                  child: Text("Back"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black,
                  textColor: Colors.white,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0)),
                )),
            RaisedButton(
                child: Text("Remove goal"),
                onPressed: () {
                  goalStore.removeGoal(index);
                  Navigator.pop(context);
                },
                color: Colors.red,
                textColor: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0))),
            RaisedButton(
                child: Text("Complete"),
                onPressed: () {},
                color: Colors.amber,
                textColor: Colors.white,
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)))
          ])
        ],
      ),
    );
  }

  Widget coveredBy(String text, Color color) {
    return Row(children: <Widget>[
      SizedBox(
        height: 20,
        width: 20,
        child: Container(
          color: color,
        ),
      ),
      Text("  $text")
    ]);
  }
}
