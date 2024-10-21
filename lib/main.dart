import 'dart:convert';
import 'dart:io';
import 'dart:ui';

// import 'package:json_converter/cursive/capital/caps_a.dart';
// import 'package:json_converter/cursive/capital/small_a.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_I.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_a.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_b.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_c.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_d.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_e.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_f.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_g.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_h.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_j.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_k.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_l.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_m.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_n.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_o.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_p.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_q.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_r.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_s.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_t.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_u.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_v.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_w.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_x.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_y.dart';
import 'package:json_converter/cursive/cursive%20Capital/caps_z.dart';
import 'package:json_converter/cursive/cusive%20Small/small_a.dart';
import 'package:json_converter/cursive/cusive%20Small/small_b.dart';
import 'package:json_converter/cursive/cusive%20Small/small_c.dart';
import 'package:json_converter/cursive/cusive%20Small/small_d.dart';
import 'package:json_converter/cursive/cusive%20Small/small_e.dart';
import 'package:json_converter/cursive/cusive%20Small/small_f.dart';
import 'package:json_converter/cursive/cusive%20Small/small_g.dart';
import 'package:json_converter/cursive/cusive%20Small/small_h.dart';
import 'package:json_converter/cursive/cusive%20Small/small_i.dart';
import 'package:json_converter/cursive/cusive%20Small/small_j.dart';
import 'package:json_converter/cursive/cusive%20Small/small_k.dart';
import 'package:json_converter/cursive/cusive%20Small/small_l.dart';
import 'package:json_converter/cursive/cusive%20Small/small_m.dart';
import 'package:json_converter/cursive/cusive%20Small/small_n.dart';
import 'package:json_converter/cursive/cusive%20Small/small_o.dart';
import 'package:json_converter/cursive/cusive%20Small/small_p.dart';
import 'package:json_converter/cursive/cusive%20Small/small_q.dart';
import 'package:json_converter/cursive/cusive%20Small/small_r.dart';
import 'package:json_converter/cursive/cusive%20Small/small_s.dart';
import 'package:json_converter/cursive/cusive%20Small/small_t.dart';
import 'package:json_converter/cursive/cusive%20Small/small_u.dart';
import 'package:json_converter/cursive/cusive%20Small/small_v.dart';
import 'package:json_converter/cursive/cusive%20Small/small_w.dart';
import 'package:json_converter/cursive/cusive%20Small/small_x.dart';
import 'package:json_converter/cursive/cusive%20Small/small_y.dart';
import 'package:json_converter/cursive/cusive%20Small/small_z.dart';
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
    'cursive': {
      'N' : cursive_letter_N,
      'n' : cursive_letter_n,

      'O' : cursive_letter_O,
      'o' : cursive_letter_o,

      'P' : cursive_letter_P,
      'p' : cursive_letter_p,

      'Q' : cursive_letter_Q,
      'q' : cursive_letter_q,

      'R' : cursive_letter_R,
      'r' : cursive_letter_r,

      'S' : cursive_letter_S,
      's' : cursive_letter_s,

      'T' : cursive_letter_T,
      't' : cursive_letter_t,

      'U' : cursive_letter_U,
      'u' : cursive_letter_u,

      'V' : cursive_letter_V,
      'v' : cursive_letter_v,

      'W' : cursive_letter_W,
      'w' : cursive_letter_w,

      'X' : cursive_letter_X,
      'x' : cursive_letter_x,

      'Y' : cursive_letter_Y,
      'y' : cursive_letter_y,

      'Z' : cursive_letter_Z,
      'z' : cursive_letter_z,
    }
  };

  mergeOffsetsToFile(newOffsetsMap);
  //}
}
