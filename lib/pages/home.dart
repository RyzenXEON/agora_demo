import 'package:agora_demo/pages/broadcast.dart';
import 'package:agora_demo/pages/viewer.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _channel = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Adhyayan Streaming App', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            const Text('You can start a broadcast below!'),
            const SizedBox(height: 20),
            TextField(
              controller: _channel,
              decoration: const InputDecoration(
                hintText: "Channel Name",
                
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Broadcast(channel: _channel.text)));
            },
            child: const Text("Broadcast"),),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Viewer(channel: _channel.text)));
            },
            child: const Text("Join"),)
          ],
        ),
      ),
    );
  }
}