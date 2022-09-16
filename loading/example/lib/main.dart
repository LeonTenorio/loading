import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_beat_indicator.dart';
import 'package:loading/indicator/ball_grid_pulse_indicator.dart';
import 'package:loading/indicator/ball_scale_indicator.dart';
import 'package:loading/indicator/ball_scale_multiple_indicator.dart';
import 'package:loading/indicator/ball_spin_fade_loader_indicator.dart';
import 'package:loading/indicator/line_scale_indicator.dart';
import 'package:loading/indicator/line_scale_party_indicator.dart';
import 'package:loading/indicator/line_scale_pulse_out_indicator.dart';
import 'package:loading/indicator/pacman_indicator.dart';
import 'package:loading/loading.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShowLoading(),
    );
  }
}

class ShowLoading extends StatelessWidget {
  static const double _loadingSize = 30.0;

  const ShowLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loading View'),
      ),
      backgroundColor: Colors.black,
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          Loading(
            indicator: BallBeatIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: BallGridPulseIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: BallPulseIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: BallScaleIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: BallScaleMultipleIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: BallSpinFadeLoaderIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: LineScaleIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: LineScalePartyIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: LineScalePulseOutIndicator(),
            size: _loadingSize,
          ),
          Loading(
            indicator: PacmanIndicator(),
            size: _loadingSize,
          ),
        ],
      ),
    );
  }
}
