// ignore_for_file: prefer_const_constructors

import 'package:pelis_app/screens/screen_Barrel.dart';

class CastingCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      width: double.infinity,
      height: 180,
      //color: Colors.red,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (_, int index) => _CastCard()),
    );
  }
}

class _CastCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      width: 110,
      height: 100,
      //color: Colors.green,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/loading.gif'),
              image: NetworkImage('https://via.placeholder.com/200x300'),
              height: 140,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'actor.name David Alejandro Alvarez Gutierrez',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
