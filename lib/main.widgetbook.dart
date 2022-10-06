// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// WidgetbookGenerator
// **************************************************************************

import 'dart:core';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:review_app/main.dart';
import 'package:review_app/theme.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(HotReload());
}

class HotReload extends StatelessWidget {
  const HotReload({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appInfo: AppInfo(
        name: 'Review App',
      ),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: getLightTheme(),
        ),
      ],
      devices: [
        Device(
          name: 'Tab',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 1920.0,
              width: 1200.0,
            ),
            scaleFactor: 2.0,
          ),
          type: DeviceType.tablet,
        ),
        Device(
          name: 'S21 Ultra',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 3200.0,
              width: 1440.0,
            ),
            scaleFactor: 3.75,
          ),
          type: DeviceType.mobile,
        ),
        Device(
          name: 'S10',
          resolution: Resolution(
            nativeSize: DeviceSize(
              height: 3050.0,
              width: 1440.0,
            ),
            scaleFactor: 4.0,
          ),
          type: DeviceType.mobile,
        ),
      ],
      textScaleFactors: [
        1.0,
      ],
      categories: [
        WidgetbookCategory(
          name: 'use cases',
          folders: [],
          widgets: [
            WidgetbookComponent(
              name: 'MyApp',
              useCases: [
                WidgetbookUseCase(
                  name: 'App Entry Point',
                  builder: (context) => appMainScreenUseCase(context),
                ),
              ],
              isExpanded: true,
            ),
          ],
        ),
      ],
    );
  }
}
