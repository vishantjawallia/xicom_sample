

import 'package:xicom_sample/theme/palettes.dart';

const String APP_NAME = "Xicom Sample App";

const String VERSION_NUMBER = "0.0.1";

final List quotes = [
  {"id": 1, "name": "Success is not final, failure is not fatal: It is the courage to continue that counts", "author_id": 1, "tag_id": 1, "color": Palettes.red.value},
  {"id": 2, "name": "Believe you can and you're halfway there", "author_id": 1, "tag_id": 1, "color": Palettes.green.value},
  {"id": 3, "name": "The only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle.", "author_id": 2, "tag_ix": 1, "color": Palettes.orange.value},
  // truth
  {"id": 3, "name": "The truth will set you free, but first it will piss you off.", "author_id": 2, "tag_id": 2, "color": Palettes.orange.value},
  {"id": 4, "name": "The truth is rarely pure and never simple.", "author_id": 1, "tag_id": 2, "color": Palettes.pink.value},
  // poetry
  {"id": 5, "name": "And, when you want something, all the universe conspires in helping you to achieve it.", "author_id": 3, "tag_id": 3, "color": Palettes.black.value},
  // love
  {"id": 6, "name": "Love is an endless act of forgiveness. A tender look which becomes a habit.", "author_id": 1, "tag_id": 4, "color": Palettes.blue.value},
  {"id": 7, "name": "The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart.", "author_id": 3, "tag_id": 4, "color": Palettes.green.value},
  // lifestyle
  {"id": 8, "name": "Your time is limited, don't waste it living someone else's life.", "author_id": 1, "tag_id": 5, "color": Palettes.green.value},
  {"id": 9, "name": "Simplicity is the ultimate sophistication.", "author_id": 3, "tag_id": 5, "color": Palettes.red.value},
  // happiness
  {"id": 10, "name": "Happiness is not something ready made. It comes from your own actions.", "author_id": 2, "tag_id": 6, "color": Palettes.amber.value},
];
const tags = [
  {"id": 1, "name": "motivational"},
  {"id": 2, "name": "truth"},
  {"id": 3, "name": "poetry"},
  {"id": 4, "name": "love"},
  {"id": 5, "name": "lifestyle"},
  {"id": 6, "name": "happiness"}
];

const authors = [
  {"id": 1, "name": "Vishant"},
  {"id": 2, "name": "Neha"},
  {"id": 3, "name": "Manish"},
];
