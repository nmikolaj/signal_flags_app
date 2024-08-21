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
  {"name": "0 Nadazero", "imagePath": 'assets/flags/Nadazero.png', "type": "numeric"},
  {"name": "1 Unaone", "imagePath": 'assets/flags/Unaone.png', "type": "numeric"},
  {"name": "2 Bissotwo", "imagePath": 'assets/flags/Bissotwo.png', "type": "numeric"},
  {"name": "3 Terrathree", "imagePath": 'assets/flags/Terrathree.png', "type": "numeric"},
  {"name": "4 Kartefour", "imagePath": 'assets/flags/Kartefour.png', "type": "numeric"},
  {"name": "5 Pantafive", "imagePath": 'assets/flags/Pantafive.png', "type": "numeric"},
  {"name": "6 Soxisix", "imagePath": 'assets/flags/Soxisix.png', "type": "numeric"},
  {"name": "7 Setteseven", "imagePath": 'assets/flags/Setteseven.png', "type": "numeric"},
  {"name": "8 Oktoeight", "imagePath": 'assets/flags/Oktoeight.png', "type": "numeric"},
  {"name": "9 Novenine", "imagePath": 'assets/flags/Novenine.png', "type": "numeric"},
];

const List<Map<String, dynamic>> singleFlagSignals = [
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
  {
    "flags": ["Echo"],
    "message": {
      "en": "I am altering my course to starboard.",
      "pl": "Zmieniam kurs w prawo."
    },
  },
  {
    "flags": ["Foxtrot"],
    "message": {
      "en": "I am disabled; communicate with me.",
      "pl": "Jestem niezdolny do manewru; komunikuj się ze mną."
    },
  },
  {
    "flags": ["Golf"],
    "message": {
      "en": "I require a pilot.",
      "pl": "Potrzebuję pilota."
    },
  },
  {
    "flags": ["Hotel"],
    "message": {
      "en": "I have a pilot on board.",
      "pl": "Mam pilota na pokładzie."
    },
  },
  {
    "flags": ["India"],
    "message": {
      "en": "I am altering my course to port.",
      "pl": "Zmieniam kurs w lewo."
    },
  },
  {
    "flags": ["Juliett"],
    "message": {
      "en": "I am on fire and have dangerous cargo; keep clear.",
      "pl": "Płonę i mam niebezpieczny ładunek; trzymaj się z dala."
    },
  },
  {
    "flags": ["Kilo"],
    "message": {
      "en": "I wish to communicate with you.",
      "pl": "Chcę się z tobą skomunikować."
    },
  },
  {
    "flags": ["Lima"],
    "message": {
      "en": "You should stop your vessel immediately.",
      "pl": "Powinieneś natychmiast zatrzymać swój statek."
    },
  },
  {
    "flags": ["Mike"],
    "message": {
      "en": "My vessel is stopped and making no way through the water.",
      "pl": "Mój statek jest zatrzymany i nie płynie przez wodę."
    },
  },
  {
    "flags": ["November"],
    "message": {
      "en": "No (negative).",
      "pl": "Nie (negatywnie)."
    },
  },
  {
    "flags": ["Oscar"],
    "message": {
      "en": "Man overboard.",
      "pl": "Człowiek za burtą."
    },
  },
  {
    "flags": ["Papa"],
    "message": {
      "en": "The vessel is about to sail.",
      "pl": "Statek zaraz wypłynie."
    },
  },
  {
    "flags": ["Quebec"],
    "message": {
      "en": "My vessel is 'healthy' and I request free pratique.",
      "pl": "Mój statek jest „zdrowy” i proszę o zgodę na wejście do portu."
    },
  },
  {
    "flags": ["Romeo"],
    "message": {
      "en": "None (the flag is used as a spacer).",
      "pl": "Brak (flaga używana jako separator)."
    },
  },
  {
    "flags": ["Sierra"],
    "message": {
      "en": "I am operating astern propulsion.",
      "pl": "Działam z napędem rufowym."
    },
  },
  {
    "flags": ["Tango"],
    "message": {
      "en": "Keep clear of me; I am engaged in pair trawling.",
      "pl": "Trzymaj się z dala ode mnie; Zajmuję się połowem parami."
    },
  },
  {
    "flags": ["Uniform"],
    "message": {
      "en": "You are running into danger.",
      "pl": "Wpadasz w niebezpieczeństwo."
    },
  },
  {
    "flags": ["Victor"],
    "message": {
      "en": "I require assistance.",
      "pl": "Potrzebuję pomocy."
    },
  },
  {
    "flags": ["Whiskey"],
    "message": {
      "en": "I require medical assistance.",
      "pl": "Potrzebuję pomocy medycznej."
    },
  },
  {
    "flags": ["X-ray"],
    "message": {
      "en": "Stop carrying out your intentions and watch for my signals.",
      "pl": "Przestań realizować swoje zamiary i obserwuj moje sygnały."
    },
  },
  {
    "flags": ["Yankee"],
    "message": {
      "en": "I am dragging my anchor.",
      "pl": "Wlokę kotwicę."
    },
  },
  {
    "flags": ["Zulu"],
    "message": {
      "en": "I require a tug.",
      "pl": "Potrzebuję holownika."
    },
  },
];

const List<Map<String, dynamic>> multipleFlagsSignals = [
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
    "flags": ["Alfa", "Charlie"],
    "message": {
      "en": "I am abandoning my vessel.",
      "pl": "Opuszczam swój statek."
    },
  },
  {
    "flags": ["Alfa", "Echo"],
    "message": {
      "en": "I must abandon my vessel.",
      "pl": "Muszę opuścić swój statek."
    },
  },
  {
    "flags": ["Alfa", "Foxtrot"],
    "message": {
      "en": "I do not intend to abandon my vessel.",
      "pl": "Nie zamierzam opuszczać swojego statku."
    },
  },
  {
    "flags": ["Alfa", "Golf"],
    "message": {
      "en": "You should abandon your vessel as quickly as possible.",
      "pl": "Powinieneś jak najszybciej opuścić swój statek."
    },
  },
  {
    "flags": ["Alfa", "Hotel"],
    "message": {
      "en": "You should not abandon your vessel.",
      "pl": "Nie powinieneś opuszczać swojego statku."
    },
  },
  {
    "flags": ["Alfa", "Lima"],
    "message": {
      "en": "I have a doctor on board.",
      "pl": "Mam lekarza na pokładzie."
    },
  },
  {
    "flags": ["Alfa", "Mike"],
    "message": {
      "en": "Have you a doctor?",
      "pl": "Czy masz lekarza?"
    },
  },
  {
    "flags": ["Alfa", "November"],
    "message": {
      "en": "I need a doctor.",
      "pl": "Potrzebuję lekarza."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Alfa"],
    "message": {
      "en": "I request urgent medical advice.",
      "pl": "Proszę o pilną poradę medyczną."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Bravo"],
    "message": {
      "en": "I request you to make rendezvous in position indicated.",
      "pl": "Proszę o spotkanie we wskazanym miejscu."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Charlie"],
    "message": {
      "en": "I request you to arrange hospital admission.",
      "pl": "Proszę o zorganizowanie przyjęcia do szpitala."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Delta"],
    "message": {
      "en": "I am ... (indicate number) hours from the nearest port.",
      "pl": "Jestem ... (podaj liczbę) godzin od najbliższego portu."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Oscar"],
    "message": {
      "en": "General condition of the patient is good.",
      "pl": "Ogólny stan pacjenta jest dobry."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Papa"],
    "message": {
      "en": "General condition of the patient is serious.",
      "pl": "Ogólny stan pacjenta jest poważny."
    },
  },
];

const List<Map<String, dynamic>> distressSignals = [
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
    "flags": ["Alfa", "Charlie"],
    "message": {
      "en": "I am abandoning my vessel.",
      "pl": "Opuszczam swój statek."
    },
  },
  {
    "flags": ["Alfa", "Echo"],
    "message": {
      "en": "I must abandon my vessel.",
      "pl": "Muszę opuścić swój statek."
    },
  },
  {
    "flags": ["Alfa", "Foxtrot"],
    "message": {
      "en": "I do not intend to abandon my vessel.",
      "pl": "Nie zamierzam opuszczać swojego statku."
    },
  },
  {
    "flags": ["Alfa", "Golf"],
    "message": {
      "en": "You should abandon your vessel as quickly as possible.",
      "pl": "Powinieneś jak najszybciej opuścić swój statek."
    },
  },
  {
    "flags": ["Alfa", "Hotel"],
    "message": {
      "en": "You should not abandon your vessel.",
      "pl": "Nie powinieneś opuszczać swojego statku."
    },
  },
  {
    "flags": ["Alfa", "Lima"],
    "message": {
      "en": "I have a doctor on board.",
      "pl": "Mam lekarza na pokładzie."
    },
  },
  {
    "flags": ["Alfa", "Mike"],
    "message": {
      "en": "Have you a doctor?",
      "pl": "Czy masz lekarza?"
    },
  },
  {
    "flags": ["Alfa", "November"],
    "message": {
      "en": "I need a doctor.",
      "pl": "Potrzebuję lekarza."
    },
  },
];

const List<Map<String, dynamic>> casualtiesDamagesSignals = [
  {
    "flags": ["Mike", "Alfa", "Alfa"],
    "message": {
      "en": "I request urgent medical advice.",
      "pl": "Proszę o pilną poradę medyczną."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Bravo"],
    "message": {
      "en": "I request you to make rendezvous in position indicated.",
      "pl": "Proszę o spotkanie we wskazanym miejscu."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Charlie"],
    "message": {
      "en": "I request you to arrange hospital admission.",
      "pl": "Proszę o zorganizowanie przyjęcia do szpitala."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Delta"],
    "message": {
      "en": "I am ... (indicate number) hours from the nearest port.",
      "pl": "Jestem ... (podaj liczbę) godzin od najbliższego portu."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Oscar"],
    "message": {
      "en": "General condition of the patient is good.",
      "pl": "Ogólny stan pacjenta jest dobry."
    },
  },
  {
    "flags": ["Mike", "Alfa", "Papa"],
    "message": {
      "en": "General condition of the patient is serious.",
      "pl": "Ogólny stan pacjenta jest poważny."
    },
  },
];