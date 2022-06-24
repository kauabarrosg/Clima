import 'package:clima_app/model/modelClimate.dart';
import 'package:clima_app/services/climateAPI.dart';
import 'package:clima_app/widget/widgetClimate.dart';
import 'package:clima_app/widget/widgetTable.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ClimateAPI climateAPI = ClimateAPI();

  //erro: data esta com valor null
  Climate? climate;

  Future<void> getData() async {
    await climateAPI.getCurrentClimate();

  }

  @override
  Widget build(BuildContext context) {
    print(climate);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: FutureBuilder(
            future: getData(),
            builder: (ctx, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    WidgetClimate(
                      Meteocons.cloud_sun,
                      '${climate?.temperatura}',
                      'Uberlândia',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                    widgetTable(
                      '${climate?.velocidade}',
                      '${climate?.umidade}',
                      Meteocons.windy,
                      Meteocons.drizzle,
                    )
                  ],
                );
              } else {}
              return Container();
            }),
      ),
    ));
  }
}