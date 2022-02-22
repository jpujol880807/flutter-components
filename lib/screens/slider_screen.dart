import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnbled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            onChanged: _sliderEnbled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null,
          ),
          // Checkbox(
          //   value: _sliderEnbled,
          //   onChanged: (value) {
          //     _sliderEnbled = value ?? true;
          //     setState(() {});
          //   },
          // ),
          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            value: _sliderEnbled,
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnbled = value ?? true;
              setState(() {});
            },
          ),
          const AboutListTile(),
          SwitchListTile.adaptive(
            title: const Text('Habilitar Slider'),
            value: _sliderEnbled,
            activeColor: AppTheme.primary,
            onChanged: (value) {
              _sliderEnbled = value;
              setState(() {});
            },
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.nicepng.com/png/detail/433-4336827_banner-batman-from-the-animated-animado-dibujos-de.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
