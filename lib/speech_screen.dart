// import 'package:flutter/material.dart';
// import 'package:highlight_text/highlight_text.dart';
// import 'package:speech_to_text/speech_to_text.dart';
// import 'package:speech_to_text/speech_to_text.dart';

// class SpeechScreen extends StatefulWidget {
//   const SpeechScreen({super.key});

//   @override
//   State<SpeechScreen> createState() => _SpeechScreenState();
// }

// class _SpeechScreenState extends State<SpeechScreen> {
//    final Map<String, HighlightedWord> _highlights = {
//     'flutter': HighlightedWord(
//       onTap: () => print('flutter'),
//       textStyle: const TextStyle(
//         color: Colors.blue,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'ahmed': HighlightedWord(
//       onTap: () => print('ahmed'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'like': HighlightedWord(
//       onTap: () => print('like'),
//       textStyle: const TextStyle(
//         color: Colors.red,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'it': HighlightedWord(
//       onTap: () => print('it'),
//       textStyle: const TextStyle(
//         color: Colors.blueAccent,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//     'share': HighlightedWord(
//       onTap: () => print('share'),
//       textStyle: const TextStyle(
//         color: Colors.green,
//         fontWeight: FontWeight.bold,
//       ),
//     ),
//   };


//   stt.SpeechToText _speech;
//   bool _isListening = false;
//   String _text = 'Press';
//   double _confidence = 1.0;

//   @override
//   void initState() {
//     super.initState();
//     _speech = stt.SpeechToText();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold();
//   }
// }