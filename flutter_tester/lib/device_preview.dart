import 'package:flutter/material.dart';
import 'package:device_frame/device_frame.dart';


class DevicePreview extends StatelessWidget {
  const DevicePreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   DeviceFrame(
      device: Devices.ios.iPhone13,
      screen: Container(
      color: Colors.white,
      child: Center(
        child: Text('Your UI preview here!', style: TextStyle(color: Colors.black),),
    ),
  ),
);

   
  }
}
