local MODULE_NAME = "SkuOptions"
local L = Sku.L
local _G = _G


SkuOptions.BindTypeStrings = {
	[0] = "ungebunden",
	[1] = "BOP",
	[2] = "BOE",
	[3] = "BOU",
	[4] = "BOQ",
}

SkuOptions.Glossary1 = {
	["Routen Wörter"] = {
		"Zentralpunkt",
		"Kreuzungspunkt",
		"Startgebiet",
		"Zielgebiet",
		"Questgeber",
		"Questziel",
		"Punkt",
	},
	["Orte"] = {
		"Anleger",
		"Auktionshaus",
		"Berg",
		"Brunnen",
		"Bank",
		"Gildenbank",
		"Briefkasten",
		"Brücke",
		"Bündelpunkt",
		"Ein- und Ausgang",
		"Fahrstuhl",
		"Farmgebiet",
		"Flugpunkt",
		"Flusslauf",
		"Friedhof",
		"Gabelung",
		"Gasthaus",
		"Gasse",
		"Gebäude",
		"Gegnergebiet",
		"Gewässer",
		"Gruft",
		"Haus",
		"Höhle",
		"Instanzeingang",
		"Kirche",
		"Kreuzung",
		"Klassenlehrer",
		"Lager",
		"Meer",
		"Passage",
		"Pfad",
		"Portal",
		"Questgeber",
		"Questgebiet",
		"Rampe",
		"Reiseroute",
		"Reparieren",
		"Route",
		"Ruhepunkt",
		"Schlucht",
		"Schiff",
		"Schmiede",
		"See",
		"Spawnpunkt",
		"Spot",
		"Stadttor",
		"Stall",
		"Stallmeister",
		"Stammesgebiet",
		"Steg",
		"Strand",
		"Straße",
		"Tal",
		"Tal",
		"Tiertrainer",
		"Tiefenbahn",
		"Trainer",
		"Treffpunkt",
		"Treppe",
		"Treppenhaus",
		"Tunnel",
		"Turm",
		"Tür/Tor",
		"Übergang",
		"Überquerung",
		"Verkaufen",
		"Versammlungsstein",
		"Weg",
		"Wegpunkt",
		"Zelt",
		"Zentralerpunkt",
		"Zeppelin",
		"Scherbenwelt",
		"Nethersturm",
		"Schergrat",
		"Zangarmarschen",
		"Höllenfeuerhalbinsel",
		"Nagrand",
		"Wälder von Terokkar",
		"Schattemondtal",
		"Shattrath",
		"Azurmythosinsel",
		"Blutmythosinsel",
		"Immersangwald",
		"Geisterlande",
		"Käfig",
	},
	["Bindewörter"] = {
		"auf",
		"bei",
		"bis",
		"da",
		"das",
		"der",
		"die",
		"direkt",
		"dort",
		"durch",
		"ein",
		"einem",
		"hier",
		"hinter",
		"im",
		"im Umkreis",
		"in",
		"in Umgebung",
		"mit",
		"nach",
		"neben",
		"über",
		"umliegend",
		"unter",
		"von",
		"vom",
		"vor",
		"zum",
		"zu",
		"zur",
		"zwischen",
	},
	 ["Orientierung"] = {
		"Richtung",
		"Links",
		"Rechts",
		"Oben",
		"Unten",
		"nördlich",
		"nordöstlich",
		"östlich",
		"südöstlich",
		"südlich",
		"südwestlich",
		"westlich",
		"nordwestlich",
		"drinnen",
		"draußen",
	},
	 ["Klassen"] = {
		"Krieger",
		"Schurke",
		"Druide",
		"Paladin",
		"Schamane",
		"Priester",
		"Hexenmeister",
		"Magier",
		"Jäger",
		"Aldor",
		"Seher",
	},
	 ["Gegnertypen"] = {
		"Boss",
		"Dämonen",
		"Drachkin",
		"Elementar",
		"Elite",
		"Entartung",
		"Humanoid",
		"Mechanisch",
		"Questgegner",
		"Riese",
		"Tier",
		"Untot",
		"Wildtier",
	},
	 ["Berufe"] = {
		"Alchemie",
		"Angeln",
		"Bergbau",
		"Erste Hilfe",
		"Ingeneur",
		"Kochen",
		"Kräuterkunde",
		"Kürschnerei",
		"Lederverarbeitung",
		"Schmied",
		"Schneiderei",
		"Spezialisierung",
		"Verzauberkunst",
	},
	 ["Tätigkeiten"] = {
		"Farmen",
		"Grinden",
		"Questen",
		"Reisen",
	},
	["Spezial"] = {
		"achtung",
		"Allianz",
		"Bel",
		"geheim",
		"gut zugänglich",
		"Horde",
		"Klassenquest",
		"Level",
		"privat",
		"PVE",
		"PVP",
		"Quest",
		"schlecht zugänglich",
		"Sku",
		"Stufe",
		"Versuch",
		"vorsichtig",
		"Wichtig",
		"Rettung",
		"Hilfe",
	},
	["Maßeinheiten"] = {
		"Meter",
		"Einheiten",
	},
	["Farben"] = {
		"Blau",
		"Braun",
		"Gelb",
		"Grau",
		"Grün",
		"Orange",
		"Rot",
		"Schwarz",
	},
	["Zahlen"] = {
		"Eins",
		"Zwei",
		"Drei",
		"Vier",
		"Fünf",
		"Sechs",
		"Sieben",
		"Acht",
		"Neun",
		"Zehn",
	},
}

SkuOptions.BackgroundSoundFiles = {
	["silence.mp3"] = "Nichts",
	["benny_hill.mp3"] = "Benny Hill",
	["chor1.mp3"] = "Chormusik 1",
	["chor2.mp3"] = "Chormusik 2",
	["chor3.mp3"] = "Chormusik 3",
	["chor4.mp3"] = "Chormusik 4",
	["entspannungsmusik.mp3"] = "Entspannungsmusik",
	["gewitter.mp3"] = "Gewitter",
	["nachts_im_wald.mp3"] = "Nachts im Wald",
	["wald.mp3"] = "Vögel",
	["walgesang.mp3"] = "Walgesang",
	["slowreggaet.mp3"] = "Slow Reggae",
}
SkuOptions.BackgroundSoundFilesLen = {
	["benny_hill.mp3"] = 238,8,
	["chor1.mp3"] = 167,75,
	["chor2.mp3"] = 186,55,
	["chor3.mp3"] = 62.841541666666664,
	["chor4.mp3"] = 317,15,
	["entspannungsmusik.mp3"] = 112,95,
	["gewitter.mp3"] = 125,91,
	["nachts_im_wald.mp3"] = 100,41,
	["wald.mp3"] = 59,13,
	["walgesang.mp3"] = 141,37,
	["slowreggaet.mp3"] = 152,36,
}
