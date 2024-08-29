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

const List<Map<String, dynamic>> distressEmergencySignals = [
  {
    "subcategory": 'subcategory_abandon',
    "signals": [
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
          "pl": "Nie zamierzam opuszczać mojego statku."
        },
      },
      {
        "flags": ["Alfa", "Golf"],
        "message": {
          "en": "You should abandon your vessel as quickly as possible.",
          "pl": "Powinieneś opuścić swój statek tak szybko, jak to możliwe."
        },
      },
      {
        "flags": ["Alfa", "Hotel"],
        "message": {
          "en": "You should not abandon your vessel.",
          "pl": "Nie powinieneś opuszczać swojego statku."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_doctor',
    "signals": [
      {
        "flags": ["Alfa", "Lima"],
        "message": {
          "en": "I have a doctor on board.",
          "pl": "Mam lekarza na pokładzie."
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
        "flags": ["Alfa", "Tango"],
        "message": {
          "en": "You should send injured/sick persons to me.",
          "pl": "Powinieneś wysłać do mnie rannych/chorych."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_assistance',
    "signals": [
      {
        "flags": ["Charlie", "Bravo"],
        "message": {
          "en": "I require immediate assistance.",
          "pl": "Potrzebuję natychmiastowej pomocy."
        },
      },
      {
        "flags": ["Charlie", "Echo"],
        "message": {
          "en": "I will attempt to obtain for you the assistance required.",
          "pl": "Spróbuję uzyskać dla Ciebie potrzebną pomoc."
        },
      },
      {
        "flags": ["Charlie", "Golf"],
        "message": {
          "en": "Stand by to assist me (or vessel indicated).",
          "pl": "Bądź w gotowości do udzielenia mi pomocy (lub wskazanemu statkowi)."
        },
      },
      {
        "flags": ["Charlie", "Golf", "1 Unaone"],
        "message": {
          "en": "I will stand by to assist you (or vessel indicated).",
          "pl": "Będę w gotowości do udzielenia Ci pomocy (lub wskazanemu statkowi)."
        },
      },
      {
        "flags": ["Charlie", "Juliett"],
        "message": {
          "en": "Do you require assistance?",
          "pl": "Czy potrzebujesz pomocy?"
        },
      },
      {
        "flags": ["Charlie", "Kilo"],
        "message": {
          "en": "Assistance is not (or is no longer) required by me (or vessel indicated).",
          "pl": "Pomoc nie jest (lub nie jest już) potrzebna przez mnie (lub wskazany statek)."
        },
      },
      {
        "flags": ["Charlie", "Lima"],
        "message": {
          "en": "I offered assistance but it was declined.",
          "pl": "Oferowałem pomoc, ale została ona odrzucona."
        },
      },
      {
        "flags": ["Charlie", "Mike"],
        "message": {
          "en": "One or more vessels are assisting the vessel in distress.",
          "pl": "Jeden lub więcej statków pomaga statkowi w niebezpieczeństwie."
        },
      },
      {
        "flags": ["Charlie", "November"],
        "message": {
          "en": "You should give all possible assistance.",
          "pl": "Powinieneś udzielić wszelkiej możliwej pomocy."
        },
      },
      {
        "flags": ["Charlie", "Oscar"],
        "message": {
          "en": "Assistance cannot be given to you (or vessel/aircraft indicated).",
          "pl": "Pomoc nie może być udzielona Tobie (lub wskazanemu statkowi/samolotowi)."
        },
      },
      {
        "flags": ["Charlie", "Papa"],
        "message": {
          "en": "I am (or vessel indicated is) proceeding to your assistance.",
          "pl": "Idę (lub wskazany statek) z pomocą."
        },
      },
      {
        "flags": ["Charlie", "Uniform"],
        "message": {
          "en": "Assistance will come at time indicated.",
          "pl": "Pomoc przybędzie o wskazanej godzinie."
        },
      },
      {
        "flags": ["Charlie", "Uniform", "1 Unaone"],
        "message": {
          "en": "I can assist you.",
          "pl": "Mogę Ci pomóc."
        },
      },
      {
        "flags": ["Charlie", "Victor"],
        "message": {
          "en": "I am unable to give assistance.",
          "pl": "Nie mogę udzielić pomocy."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_boats_rafts',
    "signals": [
      {
        "flags": ["Charlie", "Whiskey"],
        "message": {
          "en": "Boat/raft is on board.",
          "pl": "Łódź/tratwa jest na pokładzie."
        },
      },
      {
        "flags": ["Charlie", "X-ray"],
        "message": {
          "en": "Boats cannot be used.",
          "pl": "Łodzie nie mogą być używane."
        },
      },
      {
        "flags": ["Charlie", "Yankee"],
        "message": {
          "en": "Boat(s) is(are) coming to you.",
          "pl": "Łódź(e) płynie(ą) do ciebie."
        },
      },
      {
        "flags": ["Delta", "Delta"],
        "message": {
          "en": "Boats are not allowed to come alongside.",
          "pl": "Łodzie nie mogą się przybliżać."
        },
      },
      {
        "flags": ["Delta", "Hotel"],
        "message": {
          "en": "I have no boat/raft.",
          "pl": "Nie mam łodzi/tratwy."
        },
      },
      {
        "flags": ["Delta", "India"],
        "message": {
          "en": "I require boats for… (number) persons.",
          "pl": "Potrzebuję łodzi dla… (liczba) osób."
        },
      },
      {
        "flags": ["Delta", "Juliett"],
        "message": {
          "en": "Do you require a boat?",
          "pl": "Czy potrzebujesz łodzi?"
        },
      },
      {
        "flags": ["Delta", "Kilo"],
        "message": {
          "en": "You should send all available boats/rafts.",
          "pl": "Powinieneś wysłać wszystkie dostępne łodzie/tratwy."
        },
      },
      {
        "flags": ["Delta", "Kilo", "2 Bissotwo"],
        "message": {
          "en": "Can you send a boat?",
          "pl": "Czy możesz wysłać łódź?"
        },
      },
      {
        "flags": ["Delta", "Lima"],
        "message": {
          "en": "I can send a boat.",
          "pl": "Mogę wysłać łódź."
        },
      },
      {
        "flags": ["Delta", "Lima", "1 Unaone"],
        "message": {
          "en": "I am sending a boat.",
          "pl": "Wysyłam łódź."
        },
      },
      {
        "flags": ["Delta", "November"],
        "message": {
          "en": "I have found the boat/raft.",
          "pl": "Znalazłem łódź/tratwę."
        },
      },
      {
        "flags": ["Delta", "November", "1 Unaone"],
        "message": {
          "en": "Have you seen or heard anything of the boat/raft?",
          "pl": "Czy widziałeś lub słyszałeś coś o łodzi/tratwie?"
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_drifting',
    "signals": [
      {
        "flags": ["Delta", "Victor"],
        "message": {
          "en": "I am drifting.",
          "pl": "Dryfuję."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_distress',
    "signals": [
      {
        "flags": ["Delta", "Zulu"],
        "message": {
          "en": "Vessel (or aircraft) indicated appears to be in distress.",
          "pl": "Wskazany statek (lub samolot) wydaje się być w niebezpieczeństwie."
        },
      },
      {
        "flags": ["Echo", "Delta"],
        "message": {
          "en": "Your distress signals are understood.",
          "pl": "Twoje sygnały alarmowe zostały zrozumiane."
        },
      },
      {
        "flags": ["Echo", "Foxtrot"],
        "message": {
          "en": "SOS/MAYDAY has been cancelled.",
          "pl": "SOS/MAYDAY zostało odwołane."
        },
      },
      {
        "flags": ["Echo", "Lima"],
        "message": {
          "en": "Repeat the distress position.",
          "pl": "Powtórz pozycję alarmową."
        },
      },
      {
        "flags": ["Echo", "Lima", "1 Unaone"],
        "message": {
          "en": "What is the position of vessel in distress?",
          "pl": "Jaka jest pozycja statku w niebezpieczeństwie?"
        },
      },
      {
        "flags": ["Echo", "Oscar"],
        "message": {
          "en": "I am unable to locate vessel/aircraft in distress because of poor visibility.",
          "pl": "Nie mogę zlokalizować statku/samolotu w niebezpieczeństwie z powodu złej widoczności."
        },
      },
      {
        "flags": ["Echo", "Papa"],
        "message": {
          "en": "I have lost sight of you.",
          "pl": "Straciłem cię z oczu."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> positionRescueSignals = [
  {
    "subcategory": 'subcategory_position',
    "signals": [
      {
        "flags": ["Echo", "Uniform"],
        "message": {
          "en": "My present position is lat… long… (or bearing… from place indicated, distance…).",
          "pl": "Moja obecna pozycja to szerokość… długość… (lub kierunek… od wskazanego miejsca, odległość…)."
        },
      },
      {
        "flags": ["Echo", "Uniform", "1 Unaone"],
        "message": {
          "en": "What is your present position?",
          "pl": "Jaka jest twoja obecna pozycja?"
        },
      },
      {
        "flags": ["Echo", "X-ray"],
        "message": {
          "en": "My position is doubtful.",
          "pl": "Moja pozycja jest wątpliwa."
        },
      },
      {
        "flags": ["Echo", "Yankee"],
        "message": {
          "en": "I am confident as to my position.",
          "pl": "Jestem pewien co do mojej pozycji."
        },
      },
      {
        "flags": ["Foxtrot", "Charlie"],
        "message": {
          "en": "You should indicate your position by visual or sound signals.",
          "pl": "Powinieneś wskazać swoją pozycję za pomocą sygnałów wizualnych lub dźwiękowych."
        },
      },
      {
        "flags": ["Foxtrot", "Delta"],
        "message": {
          "en": "My position is indicated by visual or sound signals.",
          "pl": "Moja pozycja jest wskazywana za pomocą sygnałów wizualnych lub dźwiękowych."
        },
      },
      {
        "flags": ["Foxtrot", "Juliett"],
        "message": {
          "en": "Position of accident (or survival craft) is marked.",
          "pl": "Pozycja wypadku (lub tratwy ratunkowej) jest oznaczona."
        },
      },
      {
        "flags": ["Foxtrot", "Kilo"],
        "message": {
          "en": "Is position of accident (or survival craft) marked?",
          "pl": "Czy pozycja wypadku (lub tratwy ratunkowej) jest oznaczona?"
        },
      },
      {
        "flags": ["Foxtrot", "November"],
        "message": {
          "en": "I have lost all contact with vessel.",
          "pl": "Straciłem wszelki kontakt ze statkiem."
        },
      },
      {
        "flags": ["Foxtrot", "Oscar"],
        "message": {
          "en": "I will keep close to you.",
          "pl": "Będę trzymał się blisko ciebie."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_search',
    "signals": [
      {
        "flags": ["Foxtrot", "Romeo"],
        "message": {
          "en": "I am (or vessel indicated is) in charge of coordinating search.",
          "pl": "Jestem (lub wskazany statek jest) odpowiedzialny za koordynację poszukiwań."
        },
      },
      {
        "flags": ["Foxtrot", "Yankee"],
        "message": {
          "en": "I am in the search area.",
          "pl": "Jestem na obszarze poszukiwań."
        },
      },
      {
        "flags": ["Foxtrot", "Yankee", "1 Unaone"],
        "message": {
          "en": "Are you in the search area?",
          "pl": "Czy jesteś na obszarze poszukiwań?"
        },
      },
      {
        "flags": ["Golf", "Alfa"],
        "message": {
          "en": "I cannot continue to search.",
          "pl": "Nie mogę kontynuować poszukiwań."
        },
      },
      {
        "flags": ["Golf", "Golf"],
        "message": {
          "en": "Vessel/aircraft was last reported at time indicated in lat… long… steering course…",
          "pl": "Ostatnie zgłoszenie o statku/samolocie było o godzinie… na szerokości… długości… sterując kurs…"
        },
      },
      {
        "flags": ["Golf", "Juliett"],
        "message": {
          "en": "Wreckage is reported in lat… long…",
          "pl": "Zgłoszono wrak na szerokości… długości…"
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_rescue',
    "signals": [
      {
        "flags": ["Golf", "Mike"],
        "message": {
          "en": "I cannot save my vessel.",
          "pl": "Nie mogę uratować mojego statku."
        },
      },
      {
        "flags": ["Golf", "November"],
        "message": {
          "en": "You should take off persons.",
          "pl": "Powinieneś zabrać ludzi."
        },
      },
      {
        "flags": ["Golf", "Victor"],
        "message": {
          "en": "You should endeavor to send me a line.",
          "pl": "Powinieneś spróbować wysłać mi linę."
        },
      },
      {
        "flags": ["Golf", "Zulu"],
        "message": {
          "en": "All persons saved.",
          "pl": "Wszyscy zostali uratowani."
        },
      },
      {
        "flags": ["Golf", "Zulu", "1 Unaone"],
        "message": {
          "en": "All persons lost.",
          "pl": "Wszyscy zaginęli."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_survivors',
    "signals": [
      {
        "flags": ["Hotel", "Foxtrot"],
        "message": {
          "en": "I have located survivors in water, lat…long…(or bearing…from place indicated, distance…).",
          "pl": "Zlokalizowałem rozbitków w wodzie, szerokość…długość…(lub kierunek…od wskazanego miejsca, odległość…)."
        },
      },
      {
        "flags": ["Hotel", "Lima", "1 Unaone"],
        "message": {
          "en": "I am still looking for survivors.",
          "pl": "Wciąż szukam rozbitków."
        },
      },
      {
        "flags": ["Hotel", "Papa"],
        "message": {
          "en": "Survivors have not yet been picked up.",
          "pl": "Rozbitkowie nie zostali jeszcze podjęci."
        },
      },
      {
        "flags": ["Hotel", "Quebec"],
        "message": {
          "en": "Transfer survivors to my vessel (or vessel indicated).",
          "pl": "Przenieś rozbitków na mój statek (lub wskazany statek)."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> casualtiesDamagesSignals = [
  {
    "subcategory": 'subcategory_collision',
    "signals": [
      {
        "flags": ["Hotel", "Victor"],
        "message": {
          "en": "Have you been in collision?",
          "pl": "Czy miałeś kolizję?"
        },
      },
      {
        "flags": ["Hotel", "Whiskey"],
        "message": {
          "en": "I have (or vessel indicated has) collided with surface craft.",
          "pl": "Miałem (lub wskazany statek miał) kolizję z jednostką nawodną."
        },
      },
      {
        "flags": ["Hotel", "X-ray"],
        "message": {
          "en": "Have you received any damage in collision?",
          "pl": "Czy otrzymałeś jakieś uszkodzenia w kolizji?"
        },
      },
      {
        "flags": ["Hotel", "X-ray", "2 Bissotwo"],
        "message": {
          "en": "I have received serious damage below the waterline.",
          "pl": "Otrzymałem poważne uszkodzenie poniżej linii wodnej."
        },
      },
      {
        "flags": ["Hotel", "Zulu"],
        "message": {
          "en": "There has been a collision between vessels indicated (names or identity signals).",
          "pl": "Doszło do kolizji między wskazanymi statkami (nazwy lub sygnały identyfikacyjne)."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_damages_repairs',
    "signals": [
      {
        "flags": ["India", "Bravo"],
        "message": {
          "en": "What damage have you received?",
          "pl": "Jakie uszkodzenia otrzymałeś?"
        },
      },
      {
        "flags": ["India", "Bravo", "1 Unaone"],
        "message": {
          "en": "My vessel is seriously damaged.",
          "pl": "Mój statek jest poważnie uszkodzony."
        },
      },
      {
        "flags": ["India", "Bravo", "2 Bissotwo"],
        "message": {
          "en": "I have minor damage.",
          "pl": "Mam niewielkie uszkodzenia."
        },
      },
      {
        "flags": ["India", "Bravo", "3 Terrathree"],
        "message": {
          "en": "I have not received any damage.",
          "pl": "Nie otrzymałem żadnych uszkodzeń."
        },
      },
      {
        "flags": ["India", "Bravo", "4 Kartefour"],
        "message": {
          "en": "The extent of the damage is still unknown.",
          "pl": "Zakres uszkodzeń jest nadal nieznany."
        },
      },
      {
        "flags": ["India", "Charlie"],
        "message": {
          "en": "Can damage be repaired at sea?",
          "pl": "Czy uszkodzenie może być naprawione na morzu?"
        },
      },
      {
        "flags": ["India", "Delta"],
        "message": {
          "en": "Damage can be repaired at sea.",
          "pl": "Uszkodzenie może być naprawione na morzu."
        },
      },
      {
        "flags": ["India", "Foxtrot"],
        "message": {
          "en": "Damage cannot be repaired at sea.",
          "pl": "Uszkodzenie nie może być naprawione na morzu."
        },
      },
      {
        "flags": ["India", "Lima"],
        "message": {
          "en": "I can only proceed at slow speed.",
          "pl": "Mogę poruszać się tylko z małą prędkością."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_diver',
    "signals": [
      {
        "flags": ["India", "November"],
        "message": {
          "en": "I require a diver.",
          "pl": "Potrzebuję nurka."
        },
      },
      {
        "flags": ["India", "Oscar"],
        "message": {
          "en": "I have no diver.",
          "pl": "Nie mam nurka."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_fire',
    "signals": [
      {
        "flags": ["India", "Tango"],
        "message": {
          "en": "I am on fire.",
          "pl": "Płonę."
        },
      },
      {
        "flags": ["India", "Whiskey"],
        "message": {
          "en": "Fire is under control.",
          "pl": "Ogień jest pod kontrolą."
        },
      },
      {
        "flags": ["Juliett", "Alfa"],
        "message": {
          "en": "I require firefighting appliances.",
          "pl": "Potrzebuję urządzeń do gaszenia pożaru."
        },
      },
      {
        "flags": ["Juliett", "Bravo"],
        "message": {
          "en": "There is danger of explosion.",
          "pl": "Istnieje niebezpieczeństwo wybuchu."
        },
      },
      {
        "flags": ["Juliett", "Charlie"],
        "message": {
          "en": "There is no danger of explosion.",
          "pl": "Nie ma niebezpieczeństwa wybuchu."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_grounding',
    "signals": [
      {
        "flags": ["Juliett", "Foxtrot"],
        "message": {
          "en": "I am (or vessel indicated is) aground in lat… long…",
          "pl": "Mam (lub wskazany statek ma) osiadłość na mieliźnie na szerokości… długości…"
        },
      },
      {
        "flags": ["Juliett", "India"],
        "message": {
          "en": "Are you aground?",
          "pl": "Czy masz osiadłość na mieliźnie?"
        },
      },
      {
        "flags": ["Juliett", "Lima"],
        "message": {
          "en": "You are running the risk of going aground.",
          "pl": "Ryzykujesz osiadłości na mieliźnie."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_leak',
    "signals": [
      {
        "flags": ["Juliett", "Whiskey"],
        "message": {
          "en": "I have sprung a leak.",
          "pl": "Mam przeciek."
        },
      },
      {
        "flags": ["Juliett", "Whiskey", "1 Unaone"],
        "message": {
          "en": "Leak is dangerous.",
          "pl": "Przeciek jest niebezpieczny."
        },
      },
      {
        "flags": ["Juliett", "X-ray", "1 Unaone"],
        "message": {
          "en": "I cannot stop the leak.",
          "pl": "Nie mogę zatrzymać przecieku."
        },
      },
      {
        "flags": ["Juliett", "Yankee", "2 Bissotwo"],
        "message": {
          "en": "Leak is under control.",
          "pl": "Przeciek jest pod kontrolą."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_tug',
    "signals": [
      {
        "flags": ["Kilo", "Foxtrot"],
        "message": {
          "en": "I require a tug.",
          "pl": "Potrzebuję holownika."
        },
      },
      {
        "flags": ["Kilo", "Golf"],
        "message": {
          "en": "Do you require a tug?",
          "pl": "Czy potrzebujesz holownika?"
        },
      },
      {
        "flags": ["Kilo", "India"],
        "message": {
          "en": "There are no tugs available.",
          "pl": "Nie ma dostępnych holowników."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_towing',
    "signals": [
      {
        "flags": ["Kilo", "Juliett"],
        "message": {
          "en": "I am towing a submerged object.",
          "pl": "Holuję zanurzony obiekt."
        },
      },
      {
        "flags": ["Kilo", "November"],
        "message": {
          "en": "I cannot take you (or vessel indicated) in tow.",
          "pl": "Nie mogę wziąć cię (lub wskazanego statku) na hol."
        },
      },
      {
        "flags": ["Kilo", "Papa"],
        "message": {
          "en": "You should tow me to the nearest port or anchorage (or place indicated).",
          "pl": "Powinieneś holować mnie do najbliższego portu lub kotwicowiska (lub wskazanego miejsca)."
        },
      },
      {
        "flags": ["Kilo", "Quebec"],
        "message": {
          "en": "Prepare to be taken in tow.",
          "pl": "Przygotuj się do wzięcia na hol."
        },
      },
      {
        "flags": ["Kilo", "Romeo"],
        "message": {
          "en": "All is ready for towing.",
          "pl": "Wszystko jest gotowe do holowania."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> navigationHydrographySignals = [
  {
    "subcategory": 'subcategory_canal',
    "signals": [
      {
        "flags": ["Lima", "X-ray"],
        "message": {
          "en": "The canal is clear.",
          "pl": "Kanał jest czysty."
        },
      },
      {
        "flags": ["Lima", "X-ray", "3 Terrathree"],
        "message": {
          "en": "Is the canal clear?",
          "pl": "Czy kanał jest czysty?"
        },
      },
      {
        "flags": ["Lima", "Yankee"],
        "message": {
          "en": "The canal is not clear.",
          "pl": "Kanał nie jest czysty."
        },
      },
      {
        "flags": ["Mike", "Alfa"],
        "message": {
          "en": "The least depth of water in the channel/fairway is… (number feet or meters).",
          "pl": "Najmniejsza głębokość wody w kanale/przetokach wynosi… (liczba stóp lub metrów)."
        },
      },
      {
        "flags": ["Mike", "Bravo"],
        "message": {
          "en": "You should keep in the center of the channel/fairway.",
          "pl": "Powinieneś trzymać się środka kanału/przetok."
        },
      },
      {
        "flags": ["Mike", "Charlie"],
        "message": {
          "en": "There is an uncharted obstruction in the channel/fairway. You should proceed with caution.",
          "pl": "W kanale/przetokach znajduje się niezmapowana przeszkoda. Powinieneś postępować ostrożnie."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_dangers_warnings',
    "signals": [
      {
        "flags": ["Mike", "Kilo"],
        "message": {
          "en": "I have seen derelict (in lat… long… at time indicated).",
          "pl": "Widziałem opuszczony wrak (na szerokości… długości… o wskazanej godzinie)."
        },
      },
      {
        "flags": ["Mike", "Kilo", "1 Unaone"],
        "message": {
          "en": "Have you seen derelict (or wreckage)?",
          "pl": "Czy widziałeś opuszczony wrak (lub szczątki)?"
        },
      },
      {
        "flags": ["Mike", "Papa"],
        "message": {
          "en": "I am in shallow water. Please direct me how to navigate.",
          "pl": "Jestem na płytkiej wodzie. Proszę, skieruj mnie, jak nawigować."
        },
      },
      {
        "flags": ["Mike", "Yankee"],
        "message": {
          "en": "It is dangerous to stop.",
          "pl": "Zatrzymanie się jest niebezpieczne."
        },
      },
      {
        "flags": ["Mike", "Yankee", "1 Unaone"],
        "message": {
          "en": "It is dangerous to remain in present position.",
          "pl": "Przebywanie na obecnej pozycji jest niebezpieczne."
        },
      },
      {
        "flags": ["Mike", "Yankee", "2 Bissotwo"],
        "message": {
          "en": "It is dangerous to proceed on present course.",
          "pl": "Kontynuowanie na obecnym kursie jest niebezpieczne."
        },
      },
      {
        "flags": ["Mike", "Yankee", "6 Soxisix"],
        "message": {
          "en": "It is dangerous to approach close to my vessel.",
          "pl": "Zbliżanie się do mojego statku jest niebezpieczne."
        },
      },
      {
        "flags": ["November", "Alfa"],
        "message": {
          "en": "Navigation is closed.",
          "pl": "Nawigacja jest zamknięta."
        },
      },
      {
        "flags": ["November", "Echo"],
        "message": {
          "en": "You should proceed with great caution.",
          "pl": "Powinieneś kontynuować z wielką ostrożnością."
        },
      },
      {
        "flags": ["November", "Golf"],
        "message": {
          "en": "You are in a dangerous position.",
          "pl": "Jesteś w niebezpiecznej pozycji."
        },
      },
      {
        "flags": ["November", "Hotel"],
        "message": {
          "en": "You are clear of all danger.",
          "pl": "Jesteś poza wszelkim niebezpieczeństwem."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_depth',
    "signals": [
      {
        "flags": ["November", "Kilo"],
        "message": {
          "en": "There is not sufficient depth of water.",
          "pl": "Nie ma wystarczającej głębokości wody."
        },
      },
      {
        "flags": ["November", "Lima"],
        "message": {
          "en": "There is sufficient depth of water.",
          "pl": "Jest wystarczająca głębokość wody."
        },
      },
      {
        "flags": ["November", "Lima", "1 Unaone"],
        "message": {
          "en": "Is there sufficient depth of water?",
          "pl": "Czy jest wystarczająca głębokość wody?"
        },
      },
      {
        "flags": ["November", "November"],
        "message": {
          "en": "I am in… (number feet or meters) of water.",
          "pl": "Jestem na głębokości… (liczba stóp lub metrów) wody."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_radar',
    "signals": [
      {
        "flags": ["Oscar", "Hotel"],
        "message": {
          "en": "You should switch on your radar and keep radar watch.",
          "pl": "Powinieneś włączyć radar i utrzymywać czuwanie radarowe."
        },
      },
      {
        "flags": ["Oscar", "India"],
        "message": {
          "en": "I have no radar.",
          "pl": "Nie mam radaru."
        },
      },
      {
        "flags": ["Oscar", "Juliett", "1 Unaone"],
        "message": {
          "en": "I cannot locate you on my radar.",
          "pl": "Nie mogę zlokalizować cię na moim radarze."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_navigation_lights',
    "signals": [
      {
        "flags": ["Papa", "Delta"],
        "message": {
          "en": "Your navigation light(s) is (are) not visible.",
          "pl": "Twoje światło(a) nawigacyjne nie jest (są) widoczne."
        },
      },
      {
        "flags": ["Papa", "Delta", "1 Unaone"],
        "message": {
          "en": "My navigation lights are not functioning.",
          "pl": "Moje światła nawigacyjne nie działają."
        },
      },
      {
        "flags": ["Papa", "Golf"],
        "message": {
          "en": "I do not see any light.",
          "pl": "Nie widzę żadnego światła."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_steering_instructions',
    "signals": [
      {
        "flags": ["Papa", "Hotel", "1 Unaone"],
        "message": {
          "en": "You should steer towards me.",
          "pl": "Powinieneś sterować w moim kierunku."
        },
      },
      {
        "flags": ["Papa", "Hotel", "2 Bissotwo"],
        "message": {
          "en": "I am steering towards you.",
          "pl": "Steruję w twoim kierunku."
        },
      },
      {
        "flags": ["Papa", "India"],
        "message": {
          "en": "You should maintain your present course.",
          "pl": "Powinieneś utrzymywać swój obecny kurs."
        },
      },
      {
        "flags": ["Papa", "Juliett"],
        "message": {
          "en": "I cannot maintain my present course.",
          "pl": "Nie mogę utrzymać swojego obecnego kursu."
        },
      },
      {
        "flags": ["Papa", "Kilo"],
        "message": {
          "en": "I cannot steer without assistance.",
          "pl": "Nie mogę sterować bez pomocy."
        },
      },
      {
        "flags": ["Papa", "Mike"],
        "message": {
          "en": "You should follow in my wake (or wake of vessel indicated).",
          "pl": "Powinieneś podążać w moim śladzie (lub śladzie wskazanego statku)."
        },
      },
      {
        "flags": ["Papa", "Mike", "1 Unaone"],
        "message": {
          "en": "You should go ahead and lead the course.",
          "pl": "Powinieneś iść naprzód i prowadzić kurs."
        },
      },
      {
        "flags": ["Papa", "Oscar"],
        "message": {
          "en": "You should pass ahead of me (or vessel indicated).",
          "pl": "Powinieneś przejść przede mną (lub wskazanym statkiem)."
        },
      },
      {
        "flags": ["Papa", "Oscar", "1 Unaone"],
        "message": {
          "en": "I will pass ahead of you (or vessel indicated).",
          "pl": "Przejdę przed tobą (lub wskazanym statkiem)."
        },
      },
      {
        "flags": ["Papa", "Papa"],
        "message": {
          "en": "Keep well clear of me.",
          "pl": "Trzymaj się z dala ode mnie."
        },
      },
      {
        "flags": ["Papa", "Sierra"],
        "message": {
          "en": "You should not come any closer.",
          "pl": "Nie powinieneś się zbliżać."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> maneuversSignals = [
  {
    "subcategory": 'subcategory_ahead',
    "signals": [
      {
        "flags": ["Quebec", "Delta"],
        "message": {
          "en": "I am going ahead.",
          "pl": "Idę naprzód."
        },
      },
      {
        "flags": ["Quebec", "Foxtrot"],
        "message": {
          "en": "I cannot go ahead.",
          "pl": "Nie mogę iść naprzód."
        },
      },
      {
        "flags": ["Quebec", "Golf"],
        "message": {
          "en": "You should go ahead.",
          "pl": "Powinieneś iść naprzód."
        },
      },
      {
        "flags": ["Quebec", "Hotel"],
        "message": {
          "en": "You should not go ahead any more.",
          "pl": "Nie powinieneś iść dalej naprzód."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_astern',
    "signals": [
      {
        "flags": ["Quebec", "India"],
        "message": {
          "en": "I am going astern.",
          "pl": "Cofam się."
        },
      },
      {
        "flags": ["Quebec", "Juliett"],
        "message": {
          "en": "I have sternway.",
          "pl": "Mam ruch wstecz."
        },
      },
      {
        "flags": ["Quebec", "Kilo"],
        "message": {
          "en": "I cannot go astern.",
          "pl": "Nie mogę cofać."
        },
      },
      {
        "flags": ["Quebec", "Lima"],
        "message": {
          "en": "You should go astern.",
          "pl": "Powinieneś cofać."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_alongside',
    "signals": [
      {
        "flags": ["Quebec", "Oscar"],
        "message": {
          "en": "You should not come alongside.",
          "pl": "Nie powinieneś podpływać równolegle."
        },
      },
      {
        "flags": ["Quebec", "Papa"],
        "message": {
          "en": "I will come alongside.",
          "pl": "Podpłynę równolegle."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_anchor',
    "signals": [
      {
        "flags": ["Quebec", "Uniform"],
        "message": {
          "en": "Anchoring is prohibited.",
          "pl": "Kotwiczenie jest zabronione."
        },
      },
      {
        "flags": ["Quebec", "X-ray"],
        "message": {
          "en": "I request permission to anchor.",
          "pl": "Proszę o zgodę na zakotwiczenie."
        },
      },
      {
        "flags": ["Romeo", "Echo"],
        "message": {
          "en": "You should change your anchorage/berth. It is not safe.",
          "pl": "Powinieneś zmienić miejsce kotwiczenia/postój. To nie jest bezpieczne."
        },
      },
      {
        "flags": ["Romeo", "Foxtrot"],
        "message": {
          "en": "Will you lead me into a safe anchorage?",
          "pl": "Czy poprowadzisz mnie do bezpiecznego miejsca kotwiczenia?"
        },
      },
      {
        "flags": ["Romeo", "Hotel"],
        "message": {
          "en": "There is no good holding ground in my area (or around lat… long…).",
          "pl": "W mojej okolicy (lub wokół szerokości… długości…) nie ma dobrego gruntu kotwicznego."
        },
      },
      {
        "flags": ["Romeo", "India"],
        "message": {
          "en": "There is good holding ground in my area (or around lat… long…).",
          "pl": "W mojej okolicy (lub wokół szerokości… długości…) jest dobry grunt kotwiczny."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_engines',
    "signals": [
      {
        "flags": ["Romeo", "Juliett"],
        "message": {
          "en": "You should keep your engines ready.",
          "pl": "Powinieneś trzymać silniki w gotowości."
        },
      },
      {
        "flags": ["Romeo", "Kilo", "1 Unaone"],
        "message": {
          "en": "My engines are ready.",
          "pl": "Moje silniki są gotowe."
        },
      },
      {
        "flags": ["Romeo", "Lima"],
        "message": {
          "en": "You should stop your engines immediately.",
          "pl": "Powinieneś natychmiast zatrzymać silniki."
        },
      },
      {
        "flags": ["Romeo", "Mike"],
        "message": {
          "en": "My engines are stopped.",
          "pl": "Moje silniki są zatrzymane."
        },
      },
      {
        "flags": ["Romeo", "Oscar"],
        "message": {
          "en": "Propeller shaft is broken.",
          "pl": "Wał napędowy jest uszkodzony."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_boarding',
    "signals": [
      {
        "flags": ["Romeo", "Sierra"],
        "message": {
          "en": "No one is allowed on board.",
          "pl": "Nikt nie ma wstępu na pokład."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_proceed_underway',
    "signals": [
      {
        "flags": ["Romeo", "Victor"],
        "message": {
          "en": "You should proceed (to place indicated if necessary).",
          "pl": "Powinieneś kontynuować (do wskazanego miejsca, jeśli to konieczne)."
        },
      },
      {
        "flags": ["Romeo", "Zulu"],
        "message": {
          "en": "You should not proceed (to place indicated if necessary).",
          "pl": "Nie powinieneś kontynuować (do wskazanego miejsca, jeśli to konieczne)."
        },
      },
      {
        "flags": ["Sierra", "Bravo"],
        "message": {
          "en": "I am proceeding to the position of accident.",
          "pl": "Przemieszczam się do miejsca wypadku."
        },
      },
      {
        "flags": ["Sierra", "Charlie"],
        "message": {
          "en": "I am underway.",
          "pl": "Jestem w drodze."
        },
      },
      {
        "flags": ["Sierra", "Foxtrot"],
        "message": {
          "en": "Are you (or vessel indicated) underway?",
          "pl": "Czy jesteś (lub wskazany statek jest) w drodze?"
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> miscellaneousSignals = [
  {
    "subcategory": 'subcategory_cargo_balast',
    "signals": [
      {
        "flags": ["Sierra", "Tango"],
        "message": {
          "en": "What is your cargo?",
          "pl": "Jaki jest twój ładunek?"
        },
      },
      {
        "flags": ["Sierra", "Uniform", "8 Oktoeight"],
        "message": {
          "en": "I have a general cargo.",
          "pl": "Mam ładunek ogólny."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_crew',
    "signals": [
      {
        "flags": ["Sierra", "Zulu"],
        "message": {
          "en": "Total number of persons on board is…",
          "pl": "Łączna liczba osób na pokładzie to…"
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_fishery',
    "signals": [
      {
        "flags": ["Tango", "Delta"],
        "message": {
          "en": "I am a fish catch carrier boat.",
          "pl": "Jestem łodzią transportującą złowione ryby."
        },
      },
      {
        "flags": ["Tango", "Quebec"],
        "message": {
          "en": "You have caught my fishing gear.",
          "pl": "Zahaczyłeś o moje narzędzie połowowe."
        },
      },
      {
        "flags": ["Tango", "Quebec", "2 Bissotwo"],
        "message": {
          "en": "I am clearing the fishing gear.",
          "pl": "Usuwam narzędzia połowowe."
        },
      },
      {
        "flags": ["Tango", "Victor"],
        "message": {
          "en": "Fishing in this area is prohibited.",
          "pl": "Połów w tym obszarze jest zabroniony."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_port_harbor',
    "signals": [
      {
        "flags": ["Uniform", "Lima"],
        "message": {
          "en": "All vessels should proceed to sea as soon as possible owing to danger in port.",
          "pl": "Wszystkie statki powinny jak najszybciej wypłynąć na morze z powodu zagrożenia w porcie."
        },
      },
      {
        "flags": ["Uniform", "Mike"],
        "message": {
          "en": "The harbor (or port indicated) is closed to traffic.",
          "pl": "Port (lub wskazany port) jest zamknięty dla ruchu."
        },
      },
      {
        "flags": ["Uniform", "November"],
        "message": {
          "en": "You may enter the harbor immediately (or at time indicated).",
          "pl": "Możesz wpłynąć do portu natychmiast (lub o wskazanym czasie)."
        },
      },
      {
        "flags": ["Uniform", "November", "1 Unaone"],
        "message": {
          "en": "May I enter harbor?",
          "pl": "Czy mogę wpłynąć do portu?"
        },
      },
      {
        "flags": ["Uniform", "Oscar"],
        "message": {
          "en": "You must not enter harbor.",
          "pl": "Nie wolno ci wpłynąć do portu."
        },
      },
      {
        "flags": ["Uniform", "Papa"],
        "message": {
          "en": "Permission to enter harbor is urgently requested. I have an emergency case.",
          "pl": "Pilnie proszę o zgodę na wpłynięcie do portu. Mam nagły przypadek."
        },
      },
      {
        "flags": ["Uniform", "Quebec"],
        "message": {
          "en": "You should wait outside the harbor (or river mouth).",
          "pl": "Powinieneś czekać na zewnątrz portu (lub ujścia rzeki)."
        },
      },
      {
        "flags": ["Uniform", "Romeo"],
        "message": {
          "en": "My estimated time of arrival (at place indicated) is (time indicated).",
          "pl": "Mój przewidywany czas przybycia (do wskazanego miejsca) to (wskazany czas)."
        },
      },
      {
        "flags": ["Uniform", "Hotel"],
        "message": {
          "en": "Can you lead me into port?",
          "pl": "Czy możesz poprowadzić mnie do portu?"
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_miscellaneous',
    "signals": [
      {
        "flags": ["Uniform", "Tango"],
        "message": {
          "en": "Where are you bound for?",
          "pl": "Dokąd zmierzasz?"
        },
      },
      {
        "flags": ["Uniform", "Tango", "1 Unaone"],
        "message": {
          "en": "Where are you coming from?",
          "pl": "Skąd przybywasz?"
        },
      },
      {
        "flags": ["Uniform", "Uniform"],
        "message": {
          "en": "I am bound for…",
          "pl": "Zmierzam do…"
        },
      },
      {
        "flags": ["Uniform", "Victor"],
        "message": {
          "en": "I am coming from…",
          "pl": "Przybywam z…"
        },
      },
      {
        "flags": ["Uniform", "Whiskey"],
        "message": {
          "en": "I wish you a pleasant voyage.",
          "pl": "Życzę ci przyjemnej podróży."
        },
      },
      {
        "flags": ["Uniform", "Whiskey", "2 Bissotwo"],
        "message": {
          "en": "Welcome!",
          "pl": "Witamy!"
        },
      },
      {
        "flags": ["Uniform", "X-ray"],
        "message": {
          "en": "No information available.",
          "pl": "Brak dostępnych informacji."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_exercises',
    "signals": [
      {
        "flags": ["Uniform", "Yankee"],
        "message": {
          "en": "I am carrying out exercises. Please keep clear of me.",
          "pl": "Przeprowadzam ćwiczenia. Proszę trzymać się z dala ode mnie."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> meteorologyWeatherSignals = [
  {
    "subcategory": 'subcategory_gale_storm',
    "signals": [
      {
        "flags": ["Victor", "Juliett"],
        "message": {
          "en": "Gale (wind force Beaufort 8-9) is expected from direction indicated.",
          "pl": "Oczekiwany jest silny wiatr (siła wiatru Beaufort 8-9) z wskazanego kierunku."
        },
      },
      {
        "flags": ["Victor", "Kilo"],
        "message": {
          "en": "Storm (wind force Beaufort 10 or above) is expected from direction indicated.",
          "pl": "Oczekiwana jest burza (siła wiatru Beaufort 10 lub więcej) z wskazanego kierunku."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_atmospheric_pressure',
    "signals": [
      {
        "flags": ["Whiskey", "Papa"],
        "message": {
          "en": "Barometer is steady.",
          "pl": "Barometr jest stabilny."
        },
      },
      {
        "flags": ["Whiskey", "Papa", "1 Unaone"],
        "message": {
          "en": "Barometer is falling rapidly.",
          "pl": "Barometr szybko spada."
        },
      },
      {
        "flags": ["Whiskey", "Papa", "2 Bissotwo"],
        "message": {
          "en": "Barometer is rising rapidly.",
          "pl": "Barometr szybko rośnie."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_weather',
    "signals": [
      {
        "flags": ["X-ray", "Romeo"],
        "message": {
          "en": "Weather is good.",
          "pl": "Pogoda jest dobra."
        },
      },
      {
        "flags": ["X-ray", "Romeo", "1 Unaone"],
        "message": {
          "en": "Weather is bad.",
          "pl": "Pogoda jest zła."
        },
      },
      {
        "flags": ["X-ray", "Tango"],
        "message": {
          "en": "Weather expected is bad.",
          "pl": "Oczekiwana jest zła pogoda."
        },
      },
      {
        "flags": ["X-ray", "Tango", "1 Unaone"],
        "message": {
          "en": "Weather expected is good.",
          "pl": "Oczekiwana jest dobra pogoda."
        },
      },
      {
        "flags": ["X-ray", "Uniform"],
        "message": {
          "en": "You should wait until the weather moderates.",
          "pl": "Powinieneś poczekać, aż pogoda się uspokoi."
        },
      },
      {
        "flags": ["X-ray", "Uniform", "1 Unaone"],
        "message": {
          "en": "I will wait until the weather moderates.",
          "pl": "Poczekam, aż pogoda się uspokoi."
        },
      },
    ]
  },
];

const List<Map<String, dynamic>> communicationsSignals = [
  {
    "subcategory": 'subcategory_answer',
    "signals": [
      {
        "flags": ["Yankee", "Kilo"],
        "message": {
          "en": "I am unable to answer your question.",
          "pl": "Nie mogę odpowiedzieć na twoje pytanie."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_cancel',
    "signals": [
      {
        "flags": ["Yankee", "November"],
        "message": {
          "en": "Cancel my last signal/message.",
          "pl": "Anuluj mój ostatni sygnał/wiadomość."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_communicate',
    "signals": [
      {
        "flags": ["Yankee", "Zulu"],
        "message": {
          "en": "The words which follow are in plain language.",
          "pl": "Słowa, które następują, są w języku potocznym."
        },
      },
      {
        "flags": ["Zulu", "Echo"],
        "message": {
          "en": "You should come within visual signal distance.",
          "pl": "Powinieneś podejść w zasięg sygnału wizualnego."
        },
      },
      {
        "flags": ["Zulu", "Lima"],
        "message": {
          "en": "Your signal has been received but not understood.",
          "pl": "Twój sygnał został odebrany, ale nie zrozumiany."
        },
      },
      {
        "flags": ["Zulu", "Mike"],
        "message": {
          "en": "You should send (or speak) more slowly.",
          "pl": "Powinieneś wysyłać (lub mówić) wolniej."
        },
      },
    ]
  },
  {
    "subcategory": 'subcategory_repeat',
    "signals": [
      {
        "flags": ["Zulu", "Papa"],
        "message": {
          "en": "My last signal was incorrect. I will repeat it correctly.",
          "pl": "Mój ostatni sygnał był nieprawidłowy. Powtórzę go poprawnie."
        },
      },
      {
        "flags": ["Zulu", "Quebec"],
        "message": {
          "en": "Your signal appears incorrectly coded. You should check and repeat the whole.",
          "pl": "Twój sygnał wydaje się być źle zakodowany. Powinieneś sprawdzić i powtórzyć całość."
        },
      },
    ]
  },
];
