// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         title: const Text(
//           "Farm Safe",
//           style: TextStyle(color: Colors.black),
//         ),
//         centerTitle: true,
//         leading: IconButton(
//           icon: const Icon(Icons.location_on, color: Colors.black),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.more_vert, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Weather Card
//             Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: const Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '18°C',
//                           style: TextStyle(
//                               fontSize: 30, fontWeight: FontWeight.bold),
//                         ),
//                         Icon(Icons.cloud, size: 40),
//                       ],
//                     ),
//                     SizedBox(height: 10),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         WeatherInfo(label: 'Humidity', status: 'Good'),
//                         WeatherInfo(label: 'Soil Moisture', status: 'Good'),
//                         WeatherInfo(label: 'Precipitation', status: 'Low'),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             // Manage Fields Section
//             const Text(
//               "Manage your fields",
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
//             ),
//             const SizedBox(height: 10),
//             GridView(
//               shrinkWrap: true,
//               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 childAspectRatio: 1,
//               ),
//               children: const [
//                 FieldTile(icon: Icons.landscape, label: 'My Farm'),
//                 FieldTile(icon: Icons.agriculture, label: 'Crops'),
//                 FieldTile(icon: Icons.inventory, label: 'Inventory'),
//                 FieldTile(icon: Icons.camera, label: 'Camera'),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.green,
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.grass), label: 'Crops'),
//           BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Balance'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

// class WeatherInfo extends StatelessWidget {
//   final String label;
//   final String status;

//   const WeatherInfo({required this.label, required this.status, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(label, style: const TextStyle(fontSize: 16)),
//         const SizedBox(height: 5),
//         Text(
//           status,
//           style: TextStyle(
//             fontWeight: FontWeight.bold,
//             color: status == 'Good' ? Colors.green : Colors.red,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FieldTile extends StatelessWidget {
//   final IconData icon;
//   final String label;

//   const FieldTile({required this.icon, required this.label, Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // Handle tile tap
//       },
//       child: Card(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         elevation: 2,
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(icon, size: 40, color: Colors.green),
//               const SizedBox(height: 10),
//               Text(
//                 label,
//                 style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'camera_screen.dart'; // Create a new screen to handle camera preview

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Oakdale Ranch",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.location_on, color: Colors.black),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Weather Card
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          '18°C',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.cloud, size: 40),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        WeatherInfo(label: 'Humidity', status: 'Good'),
                        WeatherInfo(label: 'Soil Moisture', status: 'Good'),
                        WeatherInfo(label: 'Precipitation', status: 'Low'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Manage Fields Section
            const Text(
              "Manage your fields",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10),
            GridView(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 1,
              ),
              children: [
                const FieldTile(icon: Icons.landscape, label: 'My Farm'),
                const FieldTile(icon: Icons.agriculture, label: 'Crops'),
                const FieldTile(icon: Icons.inventory, label: 'Inventory'),
                FieldTile(
                  icon: Icons.camera_alt, // Camera icon
                  label: 'Camera', // Replace 'Balance' with 'Camera'
                  onTap: () async {
                    // Open the camera when this tile is tapped
                    await availableCameras().then((cameras) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => CameraScreen(cameras: cameras),
                        ),
                      );
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.grass), label: 'Crops'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: 'Balance'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class WeatherInfo extends StatelessWidget {
  final String label;
  final String status;

  const WeatherInfo({required this.label, required this.status, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 16)),
        const SizedBox(height: 5),
        Text(
          status,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: status == 'Good' ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }
}

class FieldTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onTap; // Add an onTap function parameter

  const FieldTile({
    required this.icon,
    required this.label,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when tile is tapped
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.green),
              const SizedBox(height: 10),
              Text(
                label,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
