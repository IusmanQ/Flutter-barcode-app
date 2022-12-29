import 'package:flutter/material.dart';

class VolunteerDetails extends StatefulWidget {
  String result;
  VolunteerDetails(this.result,{Key? key}) : super(key: key);

  @override
  _VolunteerDetailsState createState() => _VolunteerDetailsState();
}

class _VolunteerDetailsState extends State<VolunteerDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Volunteer Details'),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100.0),
            const Text(
              'Details of the Scanned Bar Code',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.0
              ),
            ),
            SizedBox(height: 100.0),
            const Text(
              'Name of the Volunter:',
            ),
            const Text(
              'xxxxxxxx',
            ),
            const Text(
                'Cell Number of Volunteer:'
            ),
            const Text(
                'xxx-xxx-xxxx'
            ),
            Text(widget.result),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: 60.0,
        width: 120.0,
        child: FloatingActionButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15.0))
          ),
          onPressed: (){},
          tooltip: 'Looking for a walky talky?',
          child: Center(child: const Text('Walky Talky?')),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
