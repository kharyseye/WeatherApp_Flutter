import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/tween_animation_builder.dart';

class Progressbar extends StatefulWidget {
  const Progressbar({Key? key}) : super(key: key);


  @override
  State<Progressbar> createState() => _ProgressbarState();
}

class _ProgressbarState extends State<Progressbar> {
  double progress = 0;
  Future startDownload() async {

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("données en telechargement"),
            TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration:Duration(seconds: 10),
              builder:(context, value, _) => SizedBox(
                  width: 100,
                  height: 100,
                  child: CircularProgressIndicator(
                    value: value,
                    backgroundColor: Colors.indigo,
                    strokeWidth: 6,

                  )
              ),
            ),

            //FloatingActionButton.extended(
                //onPressed: () => startDownload(),
              //label: Text('REFRESH'),
              //icon: Icon(Icons.refresh),

            //),
          ],

        ),

      ),
    );
  }
}
