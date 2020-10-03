import 'package:SpellingWizard/categories/challenge.dart';
import 'package:flutter/material.dart';

class VerbsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verbs'),
        centerTitle: true,
        backgroundColor: Colors.blue[900],
      ),
      body: _verbsListView(context),
    );
  }

  ListView _verbsListView(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (_, index) {
        return Card(
          child: ListTile(
            title: Text('Lesson number $index'),
            subtitle: Text('Put Small Description Here'),
            leading: starsIcons(),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChallengePage()));
            },
          ),
        );
      },
    );
  }
}

Container starsIcons() {
  return Container(
    width: 70,
    child: Row(
      children: <Icon>[
        Icon(
          Icons.star,
          size: 20,
        ),
        Icon(
          Icons.star,
          size: 25,
        ),
        Icon(
          Icons.star,
          size: 20,
        )
      ],
    ),
  );
}
