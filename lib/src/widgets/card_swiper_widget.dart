import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:peliculas/src/models/pelicula_model.dart';

class CardSwiper extends StatelessWidget {
  //const CardSwiper({Key key}) : super(key: key);

  final List<Pelicula> peliculas;

  CardSwiper({@required this.peliculas});

  @override
  Widget build(BuildContext context) {

    final _screenSize = MediaQuery.of(context).size;
    
    return Container(
      //width: _screenSize.width * .07,
      //height: _screenSize.height * .05,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return ClipRRect( 
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              image: NetworkImage(peliculas[index].getPosterImg()),
              placeholder: AssetImage('assets/img/no-image.jpg'),
              fit:BoxFit.cover,
            ),
          );
        },
        itemCount: 10,
        itemHeight: _screenSize.height * .5,
        itemWidth: _screenSize.width * .7,
        layout: SwiperLayout.STACK,
      ),
    );
  }
}
