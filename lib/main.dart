import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:json_converter/cursive/capital/caps_a.dart';
import 'package:json_converter/cursive/capital/small_a.dart';

import 'package:json_converter/standard/capital/caps_a.dart';
import 'package:json_converter/standard/capital/caps_b.dart';
import 'package:json_converter/standard/capital/caps_c.dart';
import 'package:json_converter/standard/capital/caps_d.dart';
import 'package:json_converter/standard/capital/caps_e.dart';
import 'package:json_converter/standard/small/small_a.dart';
import 'package:json_converter/standard/small/small_b.dart';
import 'package:json_converter/standard/small/small_c.dart';
import 'package:json_converter/standard/small/small_d.dart';
import 'package:json_converter/standard/small/small_e.dart';

void saveOffsetsToFile(Map<String, Map<String, List<Offset?>>> offsetsMap) {
  Map<String, dynamic> jsonMap = offsetsMap.map((category, letters) {
    return MapEntry(category, letters.map((letter, offsets) {
      List<Map<String, dynamic>?> jsonOffsets = offsets.map((offset) {
        return offset != null ? {'dx': offset.dx, 'dy': offset.dy} : null;
      }).toList();
      return MapEntry(letter, jsonOffsets);
    }));
  });

  String jsonString = jsonEncode(jsonMap);

  // Save JSON string to a file
  File('guide_points.json').writeAsStringSync(jsonString);
}

void mergeOffsetsToFile(Map<String, Map<String, List<Offset?>>> newOffsetsMap) {
  File file = File('guide_points.json');
  Map<String, dynamic> existingJsonMap = {};

  // Load existing JSON if the file exists
  if (file.existsSync()) {
    String jsonString = file.readAsStringSync();
    existingJsonMap = jsonDecode(jsonString);
  }

  // Loop through the new offsets map and merge them into the existing JSON map
  newOffsetsMap.forEach((category, letters) {
    // Ensure the category exists
    if (!existingJsonMap.containsKey(category)) {
      existingJsonMap[category] = {};
    }

    letters.forEach((letter, offsets) {
      // Convert the new offsets to JSON format
      List<Map<String, dynamic>?> jsonOffsets = offsets.map((offset) {
        return offset != null ? {'dx': offset.dx, 'dy': offset.dy} : null;
      }).toList();

      // Merge or overwrite the new offsets for the given letter
      existingJsonMap[category][letter] = jsonOffsets;
    });
  });

  // Save the merged JSON map back to the file
  String jsonString = jsonEncode(existingJsonMap);
  file.writeAsStringSync(jsonString);
}

void main() {
  // PARA ETO SA CREATION {
  // Map<String, Map<String, List<Offset?>>> offsetsMap = {
  //   'standard': {
  //     'A': letter_A,
  //     'a': letter_a, // Placeholder
  //   },
  //   'cursive': {
  //     'A': cursive_A, // Placeholder
  //     'a': cursive_a, // Placeholder
  //   },
  // };

  // saveOffsetsToFile(offsetsMap);
  //}

//PARA SA PAG DAGDAG NG LETTER {
  Map<String, Map<String, List<Offset?>>> newOffsetsMap = {
    'standard': {
      'E': letter_E,
      'e': letter_e,
    }
  };

  mergeOffsetsToFile(newOffsetsMap);
  //}
}
