import 'package:clima_app/model/modelClimate.dart';
import 'package:clima_app/services/climateAPI.dart';
import 'package:clima_app/widget/widgetClimate.dart';
import 'package:fluttericon/meteocons_icons.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  ClimateAPI climateAPI = ClimateAPI(); 
  Climate? data;

  Future<void> getData () async {
    await climateAPI.getCurrentClimate();
  }

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:FutureBuilder(
        future: getData(),
        builder: (ctx, snapshot){
          if(snapshot.connectionState == ConnectionState.done){

            return Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3,),
           WidgetClimate( Meteocons.cloud, '${data?.temperatura}', 'Uberlândia', '${data?.descricao}')
        ],
      );

          }else{}
          return Container();
        }
      )
      );
  }
}