// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

import 'package:flutter_virtual_piano/flutter_virtual_piano.dart';
import 'package:msfa_plugin/msfa_plugin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  late MSFAPlugin plugin;

  @override
  void initState() {
    super.initState();
    plugin = MSFAPlugin();
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassembling state...");
    plugin.shutDown();
    plugin = MSFAPlugin();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void sendNoteOn(int noteNumber, int velocity) {
    print("send note on: $noteNumber");
    // Midi messages: [Status, NoteNumber, Velocity]
    // where status is 0x90-0x9F and the low nibble is the channel number 0-15
    // ref: http://midi.teragonaudio.com/tech/midispec/noteon.htm
    plugin.sendMidi([0x90, noteNumber, velocity]);
  }

  void sendNoteOff(int noteNumber) {
    print("send note off: $noteNumber");
    plugin.sendMidi([0x80, noteNumber, 0x00]);
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                spacerSmall,
                FutureBuilder<bool>(
                  future: plugin.init(),
                  builder: (BuildContext context, AsyncSnapshot<bool> value) {
                    final displayValue = (value.hasData) ? (value.data == true ? "completed" : "failed") : 'loading...';
                    return Text(
                      'MSFA Engine Init: $displayValue',
                      style: textStyle,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
                MaterialButton(
                  child: const Text("shutdown"),
                  onPressed: () async {
                    print("shutdown engine");
                    plugin.shutDown();
                  },
                ),
                SizedBox(
                  height: 120,
                  child: VirtualPiano(
                    noteRange: const RangeValues(52, 71),
                    onNotePressed: (note, pos) {
                      sendNoteOn(note, 0x57);
                    },
                    onNoteReleased: (note) {
                      sendNoteOff(note);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
