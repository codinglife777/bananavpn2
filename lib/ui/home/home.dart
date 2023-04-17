import 'dart:ffi';

import 'package:bananavpn/config.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';

import 'package:openvpn_flutter/openvpn_flutter.dart';
// import 'package:flutter_openvpn/flutter_openvpn.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String connectState = "Not connected";
  late OpenVPN engine;
  VpnStatus? status;
  VPNStage? stage;

  // static Future<void> initPlatformState() async {
  //   await FlutterOpenvpn.lunchVpn(
  //     "SAMPLE_OVPN_FILE",
  //     (isProfileLoaded) {
  //       print('isProfileLoaded : $isProfileLoaded');
  //     },
  //     (vpnActivated) {
  //       print('vpnActivated : $vpnActivated');
  //     },
  //     user: 'user',
  //     pass: 'pass',
  //     onConnectionStatusChanged:
  //         (duration, lastPacketRecieve, byteIn, byteOut) => print(byteIn),
  //     expireAt: DateTime.now().add(
  //       Duration(
  //         seconds: 180,
  //       ),
  //     ),
  //   );
  // }

  // @override
  // void initState() {
  //   FlutterOpenvpn.init(
  //         localizedDescription: "BananaVPN", //this is required only on iOS
  //         providerBundleIdentifier: "com.banana.vpn.extension",//this is required only on iOS
	//   //localizedDescription is the name of your VPN profile
	//   //providerBundleIdentifier is the bundle id of your vpn extension
  //   );
  //   print("FlutterOpenvpn initialized");

  //   super.initState();
  // }

  // void connectToVpn() async {
  //   print("Connecting...");
  //   setState(() {
  //     connectState = "Connecting...";
  //   });
  //   await FlutterOpenvpn.lunchVpn(
  //     Config.config,
  //     (isProfileLoaded) {
  //       setState(() {
  //         connectState = isProfileLoaded ? "Profile Loaded" : "Profile Not Loaded";
  //       });
  //       print('isProfileLoaded : $isProfileLoaded');
  //     },
  //     (vpnActivated) {
  //       setState(() {
  //         connectState = vpnActivated ;
  //       });
  //     },
  //     user: Config.defaultVpnUsername,
  //     pass: Config.defaultVpnPassword,
  //     onConnectionStatusChanged:
  //         (duration, lastPacketRecieve, byteIn, byteOut) => print(byteIn),
  //     expireAt: DateTime.now().add(
  //       Duration(
  //         seconds: 3600*24,
  //       ),
  //     ),
  //   );
  // }
  //   if (Platform.isAndroid && !_granted) {
  //     print("Connecting...");
  //     engine.requestPermissionAndroid().then((value) {
  //       setState(() {
  //         _granted = value;
  //         initPlatformState();
  //       });
  //     });
  //   } else {
  //     print("Connecting...");
  //     initPlatformState();
  //   }
  // }


  @override
  void initState() {
    engine = OpenVPN(
      onVpnStatusChanged: (data) {
        setState(() {
          status = data;
        });
      },
      onVpnStageChanged: (data, raw) {
        setState(() {
          stage = data;
        });
      },
    );

    engine.initialize(
      groupIdentifier: "group.1479440059",
      providerBundleIdentifier: "com.banana.vpn.extension",
      localizedDescription: "BananaVPN",
      lastStage: (stage) {
        setState(() {
          this.stage = stage;
        });
      },
      lastStatus: (status) {
        setState(() {
          this.status = status;
        });
      },
    );

    super.initState();
  }

  Future<void> initPlatformState() async {
    engine.connect(Config.config, "BananaVPN",
        username: Config.defaultVpnUsername,
        password: Config.defaultVpnPassword,
        certIsRequired: true);
    if (!mounted) return;
  }

  // @override
  // void dispose() {
  //   // ignore: avoid_print
  //   print('Dispose used');
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(
                        width: 137,
                        height: 29,
                        child:
                            Image(image: AssetImage('assets/images/logo.png')),
                      ),
                      IconButton(
                        onPressed: () {
                          // Navigator.pop(context);
                        },
                        iconSize: 32,
                        icon: const Icon(
                          Icons.place,
                          color: Color(0xFF7B8794),
                        ),
                      ),
                    ],
                  ),
                  // Text(connectState),
                  Text(status?.toJson().toString() ?? ""),
                  const SizedBox(height: 70),
                  Text(
                    stage?.toString() ?? VPNStage.disconnected.toString(),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 100),
                  IconButton(
                    onPressed: (){
                      initPlatformState();
                    },
                    icon: Image.asset('assets/images/connect.png'),
                    iconSize: 110,
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
