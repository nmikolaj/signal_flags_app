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
  {"name": "November", "imagePath": 'assets/flags/November.png'},
  {"name": "Oscar", "imagePath": 'assets/flags/Oscar.png'},
  {"name": "Papa", "imagePath": 'assets/flags/Papa.png'},
  {"name": "Quebec", "imagePath": 'assets/flags/Quebec.png'},
  {"name": "Romeo", "imagePath": 'assets/flags/Romeo.png'},
  {"name": "Sierra", "imagePath": 'assets/flags/Sierra.png'},
  {"name": "Tango", "imagePath": 'assets/flags/Tango.png'},
  {"name": "Uniform", "imagePath": 'assets/flags/Uniform.png'},
  {"name": "Victor", "imagePath": 'assets/flags/Victor.png'},
  {"name": "Whiskey", "imagePath": 'assets/flags/Whiskey.png'},
  {"name": "X-ray", "imagePath": 'assets/flags/X-ray.png'},
  {"name": "Yankee", "imagePath": 'assets/flags/Yankee.png'},
  {"name": "Zulu", "imagePath": 'assets/flags/Zulu.png'},
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
  "November": {"en": "No (negative).", "pl": "Nie (negatywnie)."},
  "Oscar": {"en": "Man overboard.", "pl": "Człowiek za burtą."},
  "Papa": {"en": "In port: All persons should report on board as the vessel is about to proceed to sea.", "pl": "W porcie: Wszyscy powinni zgłosić się na pokład, ponieważ statek ma zamiar wypłynąć w morze."},
  "Quebec": {"en": "My vessel is 'healthy' and I request free pratique.", "pl": "Mój statek jest 'zdrowy' i proszę o wolną praktykę."},
  "Romeo": {"en": "No specific meaning (to be used to indicate the absence of a signal).", "pl": "Brak określonego znaczenia (do użycia w celu wskazania braku sygnału)."},
  "Sierra": {"en": "I am operating astern propulsion.", "pl": "Pracuję na wstecznym napędzie."},
  "Tango": {"en": "Keep clear of me; I am engaged in pair trawling.", "pl": "Trzymaj się z dala ode mnie; Zajmuję się połowem parami."},
  "Uniform": {"en": "You are running into danger.", "pl": "Wpadasz w niebezpieczeństwo."},
  "Victor": {"en": "I require assistance.", "pl": "Potrzebuję pomocy."},
  "Whiskey": {"en": "I require medical assistance.", "pl": "Potrzebuję pomocy medycznej."},
  "X-ray": {"en": "Stop carrying out your intentions and watch for my signals.", "pl": "Przestań realizować swoje zamiary i obserwuj moje sygnały."},
  "Yankee": {"en": "I am dragging my anchor.", "pl": "Wlokę kotwicę."},
  "Zulu": {"en": "I require a tug.", "pl": "Potrzebuję holownika."}
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