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
import 'package:json_converter/standard/capital/caps_o.dart';
import 'package:json_converter/standard/capital/caps_p.dart';
import 'package:json_converter/standard/capital/caps_q.dart';
import 'package:json_converter/standard/capital/caps_r.dart';
import 'package:json_converter/standard/capital/caps_s.dart';
import 'package:json_converter/standard/capital/caps_t.dart';
import 'package:json_converter/standard/capital/caps_u.dart';
import 'package:json_converter/standard/capital/caps_v.dart';
import 'package:json_converter/standard/capital/caps_w.dart';
import 'package:json_converter/standard/capital/caps_x.dart';
import 'package:json_converter/standard/capital/caps_y.dart';
import 'package:json_converter/standard/capital/caps_z.dart';
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
import 'package:json_converter/standard/small/small_o.dart';
import 'package:json_converter/standard/small/small_p.dart';
import 'package:json_converter/standard/small/small_q.dart';
import 'package:json_converter/standard/small/small_r.dart';
import 'package:json_converter/standard/small/small_s.dart';
import 'package:json_converter/standard/small/small_t.dart';
import 'package:json_converter/standard/small/small_u.dart';
import 'package:json_converter/standard/small/small_v.dart';
import 'package:json_converter/standard/small/small_w.dart';
import 'package:json_converter/standard/small/small_x.dart';
import 'package:json_converter/standard/small/small_y.dart';
import 'package:json_converter/standard/small/small_z.dart';
import 'package:json_converter/words/word_apple.dart';
import 'package:json_converter/words/word_at.dart';
import 'package:json_converter/words/word_bike.dart';
import 'package:json_converter/words/word_cat.dart';
import 'package:json_converter/words/word_dog.dart';
import 'package:json_converter/words/word_kite.dart';
import 'package:json_converter/words/word_on.dart';
import 'package:json_converter/words/word_pig.dart';
import 'package:json_converter/words/words_in.dart';
import 'package:json_converter/words/words_orange.dart';

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
    'word': {
      'on': word_on,
      'in': word_in,
      'cat': word_cat,
      'dog': word_dog,
      'pig': word_pig,
      'bike': word_bike,
      'kite': word_kite,
      'apple': word_apple,
      'orange': word_orange,
    }
  };

  mergeOffsetsToFile(newOffsetsMap);
  //}
}
