const List<Map<String, String>> flags = [
  {"name": "Alfa", "imagePath": 'assets/flags/Alfa.png', "type": "normal"},
  {"name": "Bravo", "imagePath": 'assets/flags/Bravo.png', "type": "normal"},
  {"name": "Charlie", "imagePath": 'assets/flags/Charlie.png', "type": "normal"},
  {"name": "Delta", "imagePath": 'assets/flags/Delta.png', "type": "normal"},
  {"name": "Echo", "imagePath": 'assets/flags/Echo.png', "type": "normal"},
  {"name": "Foxtrot", "imagePath": 'assets/flags/Foxtrot.png', "type": "normal"},
  {"name": "Golf", "imagePath": 'assets/flags/Golf.png', "type": "normal"},
  {"name": "Hotel", "imagePath": 'assets/flags/Hotel.png', "type": "normal"},
  {"name": "India", "imagePath": 'assets/flags/India.png', "type": "normal"},
  {"name": "Juliett", "imagePath": 'assets/flags/Juliett.png', "type": "normal"},
  {"name": "Kilo", "imagePath": 'assets/flags/Kilo.png', "type": "normal"},
  {"name": "Lima", "imagePath": 'assets/flags/Lima.png', "type": "normal"},
  {"name": "Mike", "imagePath": 'assets/flags/Mike.png', "type": "normal"},
  {"name": "November", "imagePath": 'assets/flags/November.png', "type": "normal"},
  {"name": "Oscar", "imagePath": 'assets/flags/Oscar.png', "type": "normal"},
  {"name": "Papa", "imagePath": 'assets/flags/Papa.png', "type": "normal"},
  {"name": "Quebec", "imagePath": 'assets/flags/Quebec.png', "type": "normal"},
  {"name": "Romeo", "imagePath": 'assets/flags/Romeo.png', "type": "normal"},
  {"name": "Sierra", "imagePath": 'assets/flags/Sierra.png', "type": "normal"},
  {"name": "Tango", "imagePath": 'assets/flags/Tango.png', "type": "normal"},
  {"name": "Uniform", "imagePath": 'assets/flags/Uniform.png', "type": "normal"},
  {"name": "Victor", "imagePath": 'assets/flags/Victor.png', "type": "normal"},
  {"name": "Whiskey", "imagePath": 'assets/flags/Whiskey.png', "type": "normal"},
  {"name": "X-ray", "imagePath": 'assets/flags/X-ray.png', "type": "normal"},
  {"name": "Yankee", "imagePath": 'assets/flags/Yankee.png', "type": "normal"},
  {"name": "Zulu", "imagePath": 'assets/flags/Zulu.png', "type": "normal"},
  {"name": "Nadazero", "imagePath": 'assets/flags/Nadazero.png', "type": "numeric"},
  {"name": "Unaone", "imagePath": 'assets/flags/Unaone.png', "type": "numeric"},
  {"name": "Bissotwo", "imagePath": 'assets/flags/Bissotwo.png', "type": "numeric"},
  {"name": "Terrathree", "imagePath": 'assets/flags/Terrathree.png', "type": "numeric"},
  {"name": "Kartefour", "imagePath": 'assets/flags/Kartefour.png', "type": "numeric"},
  {"name": "Pantafive", "imagePath": 'assets/flags/Pantafive.png', "type": "numeric"},
  {"name": "Soxisix", "imagePath": 'assets/flags/Soxisix.png', "type": "numeric"},
  {"name": "Setteseven", "imagePath": 'assets/flags/Setteseven.png', "type": "numeric"},
  {"name": "Oktoeight", "imagePath": 'assets/flags/Oktoeight.png', "type": "numeric"},
  {"name": "Novenine", "imagePath": 'assets/flags/Novenine.png', "type": "numeric"},
];

const List<Map<String, dynamic>> messages = [
  {
    "flags": ["Alfa"],
    "message": {
      "en": "I have a diver down; keep well clear at slow speed.",
      "pl": "Mam nurka w wodzie; trzymaj się z dala z małą prędkością."
    },
  },
  {
    "flags": ["Bravo"],
    "message": {
      "en": "I am taking in, discharging, or carrying dangerous cargo.",
      "pl": "Biorę, wyładowuję lub przewożę niebezpieczny ładunek."
    },
  },
  {
    "flags": ["Charlie"],
    "message": {
      "en": "Yes (affirmative).",
      "pl": "Tak (pozytywnie)."
    },
  },
  {
    "flags": ["Delta"],
    "message": {
      "en": "Keep clear of me; I am maneuvering with difficulty.",
      "pl": "Trzymaj się z dala ode mnie; Manewruję z trudnościami."
    },
  },
  // Add all other single-flag messages here
  {
    "flags": ["Alfa", "Bravo"],
    "message": {
      "en": "I have a diver down; keep well clear at slow speed.",
      "pl": "Mam nurka w wodzie; trzymaj się z dala z małą prędkością."
    },
  },
  {
    "flags": ["Charlie", "Delta"],
    "message": {
      "en": "I am taking in, discharging, or carrying dangerous cargo.",
      "pl": "Biorę, wyładowuję lub przewożę niebezpieczny ładunek."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Bravo"],
    "message": {
      "en": "I request you to make rendezvous in position indicated.",
      "pl": "Proszę o spotkanie we wskazanym miejscu."
    },
  },
  // Add all other multiple-flag messages here
];
