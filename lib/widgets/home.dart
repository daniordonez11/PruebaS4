import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, color: Colors.black),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jun 2',
                      style: GoogleFonts.roboto(color: Colors.grey[700], fontSize: 14),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'London',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      '21°C',
                      style: TextStyle(
                        fontSize: 48,
                        color: Color.fromARGB(245, 245, 193, 67),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Overcast Clouds',
                      style: GoogleFonts.roboto(fontSize: 24, color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 190,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Positioned(
                            top: 2,
                            bottom: 0.0001,
                            child: Container(
                              width: 0.6,
                              color: Colors.grey,
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.grey, width: 2)),
                                ),
                                padding: const EdgeInsets.only(bottom: 2),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'Today',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Center(
                                        child: Text(
                                          'This Week',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey[500],
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Temperatures',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  _HourlyWeather(hour: '8 PM', temp: '21°C'),
                                  SizedBox(width: 40),
                                  _HourlyWeather(hour: '11 PM', temp: '22°C'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 17),
                    const Text(
                      "Details",
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _Detail(label: 'Minimum', value: '21°C'),
                        SizedBox(width: 143),
                        _Detail(label: 'Maximum', value: '22°C'),
                      ],
                    ),
                    const Divider(thickness: 1),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        _Detail(label: 'Pressure', value: '1020 Pa'),
                        SizedBox(width: 130),
                        _Detail(label: 'Humidity', value: '41%'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _HourlyWeather extends StatelessWidget {
  final String hour;
  final String temp;

  const _HourlyWeather({required this.hour, required this.temp});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(hour, style: TextStyle(fontSize: 12, color: Colors.grey[600])),
        const SizedBox(height: 4),
        Icon(Icons.cloud, color: Colors.lightBlue, size: 28),
        const SizedBox(height: 2),
        Text(temp, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _Detail extends StatelessWidget {
  final String label;
  final String value;

  const _Detail({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Colors.grey[600]),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
