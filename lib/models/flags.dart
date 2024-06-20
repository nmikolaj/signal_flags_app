const List<Map<String, String>> flags = [
  {"name": "Alfa", "imagePath": 'assets/flags/Alfa.png'},
  {"name": "Bravo", "imagePath": 'assets/flags/Bravo.png'},
  {"name": "Charlie", "imagePath": 'assets/flags/Charlie.png'},
  {"name": "Delta", "imagePath": 'assets/flags/Delta.png'},
  {"name": "Echo", "imagePath": 'assets/flags/Echo.png'},
  {"name": "Foxtrot", "imagePath": 'assets/flags/Foxtrot.png'},
  {"name": "Golf", "imagePath": 'assets/flags/Golf.png'},
  {"name": "Hotel", "imagePath": 'assets/flags/Hotel.png'},
  {"name": "India", "imagePath": 'assets/flags/India.png'},
  {"name": "Juliett", "imagePath": 'assets/flags/Juliett.png'},
  {"name": "Kilo", "imagePath": 'assets/flags/Kilo.png'},
  {"name": "Lima", "imagePath": 'assets/flags/Lima.png'},
  {"name": "Mike", "imagePath": 'assets/flags/Mike.png'},
];

const Map<String, Map<String, String>> flagMessages = {
  "Alfa": {"en": "I have a diver down; keep well clear at slow speed.", "pl": "Mam nurka w wodzie; trzymaj się z dala z małą prędkością."},
  "Bravo": {"en": "I am taking in, discharging, or carrying dangerous cargo.", "pl": "Biorę, wyładowuję lub przewożę niebezpieczny ładunek."},
  "Charlie": {"en": "Yes (affirmative).", "pl": "Tak (pozytywnie)."},
  "Delta": {"en": "Keep clear of me; I am maneuvering with difficulty.", "pl": "Trzymaj się z dala ode mnie; Manewruję z trudnościami."},
  "Echo": {"en": "I am altering my course to starboard.", "pl": "Zmieniam kurs na prawo."},
  "Foxtrot": {"en": "I am disabled; communicate with me.", "pl": "Jestem niepełnosprawny; skomunikuj się ze mną."},
  "Golf": {"en": "I require a pilot.", "pl": "Potrzebuję pilota."},
  "Hotel": {"en": "I have a pilot on board.", "pl": "Mam pilota na pokładzie."},
  "India": {"en": "I am altering my course to port.", "pl": "Zmieniam kurs na lewo."},
  "Juliett": {"en": "I am on fire and have dangerous cargo; keep clear.", "pl": "Płonę i mam niebezpieczny ładunek; trzymaj się z dala."},
  "Kilo": {"en": "I wish to communicate with you.", "pl": "Chcę się z tobą skomunikować."},
  "Lima": {"en": "You should stop your vessel immediately.", "pl": "Powinieneś natychmiast zatrzymać swój statek."},
  "Mike": {"en": "My vessel is stopped; making no way.", "pl": "Mój statek jest zatrzymany; nie płynie."},
};

const List<Map<String, dynamic>> multipleFlagMessages = [
  {
    "flags": ["Alfa", "Bravo"],
    "message": {
      "en": "I have a diver down; keep well clear at slow speed.",
      "pl": "Mam nurka w wodzie; trzymaj się z dala z małą prędkością."
    }
  },
  {
    "flags": ["Charlie", "Delta"],
    "message": {
      "en": "I am taking in, discharging, or carrying dangerous cargo.",
      "pl": "Biorę, wyładowuję lub przewożę niebezpieczny ładunek."
    }
  },
];