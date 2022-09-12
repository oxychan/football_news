import 'package:flutter/material.dart';
import 'package:football_news/schedule.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key, required this.schedules}) : super(key: key);

  final List<Schedule> schedules;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 3,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image(
                                  image: AssetImage(
                                    schedules[index].firstTeamImage.toString(),
                                  ),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Spacer(flex: 1),
                              Text(
                                schedules[index].firstTeamName.toString(),
                              ),
                              const Spacer(flex: 8),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Image(
                                  image: AssetImage(
                                    schedules[index].secondTeamImage.toString(),
                                  ),
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const Spacer(flex: 1),
                              Text(
                                schedules[index].secondTeamName.toString(),
                              ),
                              const Spacer(flex: 8)
                            ],
                          ),
                        ],
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.amber,
                      thickness: 5,
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              schedules[index].matchDate.toString(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              schedules[index].time.toString(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
