import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:json_converter/cursive/capital/caps_a.dart';
import 'package:json_converter/cursive/capital/small_a.dart';
import 'package:json_converter/numbers/number_0.dart';
import 'package:json_converter/numbers/number_1.dart';
import 'package:json_converter/numbers/number_2.dart';
import 'package:json_converter/numbers/number_3.dart';
import 'package:json_converter/numbers/number_4.dart';
import 'package:json_converter/numbers/number_5.dart';
import 'package:json_converter/numbers/number_6.dart';
import 'package:json_converter/numbers/number_7.dart';
import 'package:json_converter/numbers/number_8.dart';
import 'package:json_converter/numbers/number_9.dart';

import 'package:json_converter/standard/capital/caps_a.dart';
import 'package:json_converter/standard/capital/caps_b.dart';
import 'package:json_converter/standard/capital/caps_c.dart';
import 'package:json_converter/standard/capital/caps_d.dart';
import 'package:json_converter/standard/capital/caps_e.dart';
import 'package:json_converter/standard/capital/caps_f.dart';
import 'package:json_converter/standard/capital/caps_g.dart';
import 'package:json_converter/standard/capital/caps_h.dart';
import 'package:json_converter/standard/capital/caps_i.dart';
import 'package:json_converter/standard/capital/caps_j.dart';
import 'package:json_converter/standard/capital/caps_k.dart';
import 'package:json_converter/standard/capital/caps_l.dart';
import 'package:json_converter/standard/capital/caps_m.dart';
import 'package:json_converter/standard/capital/caps_n.dart';
import 'package:json_converter/standard/small/small_a.dart';
import 'package:json_converter/standard/small/small_b.dart';
import 'package:json_converter/standard/small/small_c.dart';
import 'package:json_converter/standard/small/small_d.dart';
import 'package:json_converter/standard/small/small_e.dart';
import 'package:json_converter/standard/small/small_f.dart';
import 'package:json_converter/standard/small/small_g.dart';
import 'package:json_converter/standard/small/small_h.dart';
import 'package:json_converter/standard/small/small_i.dart';
import 'package:json_converter/standard/small/small_j.dart';
import 'package:json_converter/standard/small/small_k.dart';
import 'package:json_converter/standard/small/small_l.dart';
import 'package:json_converter/standard/small/small_m.dart';
import 'package:json_converter/standard/small/small_n.dart';

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

void mergeOffsetsToFile(Map<String, Map<String, List<Offset?>>> newOffsetsMap,
    {bool update = false}) {
  File file = File('guide_points.json');
  Map<String, dynamic> existingJsonMap = {};

  // Load existing JSON if the file exists
  if (file.existsSync()) {
    String jsonString = file.readAsStringSync();
    existingJsonMap = jsonDecode(jsonString);
  }

  // Loop through the new offsets map and merge them into the existing JSON map
  newOffsetsMap.forEach((category, letters) {
    // Ensure the category (e.g., 'standard') exists in the existing map
    if (!existingJsonMap.containsKey(category)) {
      existingJsonMap[category] = {};
    }

    letters.forEach((letter, newOffsets) {
      List<Map<String, dynamic>?> jsonNewOffsets = newOffsets.map((offset) {
        return offset != null ? {'dx': offset.dx, 'dy': offset.dy} : null;
      }).toList();

      // If the letter already exists and update is true, merge offsets
      if (update && existingJsonMap[category].containsKey(letter)) {
        List<dynamic> existingOffsets = existingJsonMap[category][letter];

        // Update existing offsets with new ones
        for (int i = 0; i < newOffsets.length; i++) {
          if (i < existingOffsets.length) {
            if (newOffsets[i] != null) {
              existingOffsets[i] = jsonNewOffsets[i]; // Update non-null points
            }
          } else {
            existingOffsets.add(jsonNewOffsets[i]); // Add new points
          }
        }

        existingJsonMap[category][letter] =
            existingOffsets; // Save updated offsets
      } else {
        // If the letter doesn't exist, add it
        existingJsonMap[category][letter] = jsonNewOffsets;
      }
    });
  });

  // Save the updated JSON back to the file
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
      'N': letter_N,
      'n': letter_n,
    }
  };

  //PAG UPDATE, LAGYAN MO NG PARAMETER NA TRUE
  mergeOffsetsToFile(newOffsetsMap);
  //}
}
