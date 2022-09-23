import 'package:agachaditos_app/colors/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({Key? key}) : super(key: key);

  @override
  State<PriceFilter> createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  //Propiedad
  RangeValues _values = RangeValues(0.3, 1.5);
  int _minPrize = 0;
  int _maxPrize = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '$_minPrize UST',
          style: const TextStyle(fontSize: 16),
        ),
        Container(
          width: 300,
          child: RangeSlider(
            activeColor: redColorPrimary,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 100,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrize = _values.start.round();
                _maxPrize = _values.end.round();
              });
            },
          ),
        ),
        Text(
          '$_maxPrize UST',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
