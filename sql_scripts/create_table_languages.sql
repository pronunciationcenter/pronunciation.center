CREATE DATABASE IF NOT EXISTS `pronunciationDB` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

drop table IF EXISTS `contact`;
drop table IF EXISTS `tips`;
drop table IF EXISTS `ipa_examples`;
drop table IF EXISTS `ipa`;
drop table IF EXISTS `languages`;


create table languages (
	id int primary key auto_increment,
	code varchar (10),
	name varchar(60)
);
insert into languages(code, name) values('af', 'Afrikaans');
insert into languages(code, name) values('af-ZA', 'Afrikaans (South Africa)');
insert into languages(code, name) values('ar', 'Arabic');
insert into languages(code, name) values('ar-AE', 'Arabic (U.A.E.)');
insert into languages(code, name) values('ar-BH', 'Arabic (Bahrain)');
insert into languages(code, name) values('ar-DZ', 'Arabic (Algeria)');
insert into languages(code, name) values('ar-EG', 'Arabic (Egypt)');
insert into languages(code, name) values('ar-IQ', 'Arabic (Iraq)');
insert into languages(code, name) values('ar-JO', 'Arabic (Jordan)');
insert into languages(code, name) values('ar-KW', 'Arabic (Kuwait)');
insert into languages(code, name) values('ar-LB', 'Arabic (Lebanon)');
insert into languages(code, name) values('ar-LY', 'Arabic (Libya)');
insert into languages(code, name) values('ar-MA', 'Arabic (Morocco)');
insert into languages(code, name) values('ar-OM', 'Arabic (Oman)');
insert into languages(code, name) values('ar-QA', 'Arabic (Qatar)');
insert into languages(code, name) values('ar-SA', 'Arabic (Saudi Arabia)');
insert into languages(code, name) values('ar-SY', 'Arabic (Syria)');
insert into languages(code, name) values('ar-TN', 'Arabic (Tunisia)');
insert into languages(code, name) values('ar-YE', 'Arabic (Yemen)');
insert into languages(code, name) values('az', 'Azeri (Latin)');
insert into languages(code, name) values('az-AZ', 'Azeri (Latin) (Azerbaijan)');
insert into languages(code, name) values('az-AZ', 'Azeri (Cyrillic) (Azerbaijan)');
insert into languages(code, name) values('be', 'Belarusian');
insert into languages(code, name) values('be-BY', 'Belarusian (Belarus)');
insert into languages(code, name) values('bg', 'Bulgarian');
insert into languages(code, name) values('bg-BG', 'Bulgarian (Bulgaria)');
insert into languages(code, name) values('bs-BA', 'Bosnian (Bosnia and Herzegovina)');
insert into languages(code, name) values('ca', 'Catalan');
insert into languages(code, name) values('ca-ES', 'Catalan (Spain)');
insert into languages(code, name) values('cs', 'Czech');
insert into languages(code, name) values('cs-CZ', 'Czech (Czech Republic)');
insert into languages(code, name) values('cy', 'Welsh');
insert into languages(code, name) values('cy-GB', 'Welsh (United Kingdom)');
insert into languages(code, name) values('da', 'Danish');
insert into languages(code, name) values('da-DK', 'Danish (Denmark)');
insert into languages(code, name) values('de', 'German');
insert into languages(code, name) values('de-AT', 'German (Austria)');
insert into languages(code, name) values('de-CH', 'German (Switzerland)');
insert into languages(code, name) values('de-DE', 'German (Germany)');
insert into languages(code, name) values('de-LI', 'German (Liechtenstein)');
insert into languages(code, name) values('de-LU', 'German (Luxembourg)');
insert into languages(code, name) values('dv', 'Divehi');
insert into languages(code, name) values('dv-MV', 'Divehi (Maldives)');
insert into languages(code, name) values('el', 'Greek');
insert into languages(code, name) values('el-GR', 'Greek (Greece)');
insert into languages(code, name) values('en', 'English');
insert into languages(code, name) values('en-AU', 'English (Australia)');
insert into languages(code, name) values('en-BZ', 'English (Belize)');
insert into languages(code, name) values('en-CA', 'English (Canada)');
insert into languages(code, name) values('en-CB', 'English (Caribbean)');
insert into languages(code, name) values('en-GB', 'English (United Kingdom)');
insert into languages(code, name) values('en-IE', 'English (Ireland)');
insert into languages(code, name) values('en-JM', 'English (Jamaica)');
insert into languages(code, name) values('en-NZ', 'English (New Zealand)');
insert into languages(code, name) values('en-PH', 'English (Republic of the Philippines)');
insert into languages(code, name) values('en-TT', 'English (Trinidad and Tobago)');
insert into languages(code, name) values('en-US', 'English (United States)');
insert into languages(code, name) values('en-ZA', 'English (South Africa)');
insert into languages(code, name) values('en-ZW', 'English (Zimbabwe)');
insert into languages(code, name) values('eo', 'Esperanto');
insert into languages(code, name) values('es', 'Spanish');
insert into languages(code, name) values('es-AR', 'Spanish (Argentina)');
insert into languages(code, name) values('es-BO', 'Spanish (Bolivia)');
insert into languages(code, name) values('es-CL', 'Spanish (Chile)');
insert into languages(code, name) values('es-CO', 'Spanish (Colombia)');
insert into languages(code, name) values('es-CR', 'Spanish (Costa Rica)');
insert into languages(code, name) values('es-DO', 'Spanish (Dominican Republic)');
insert into languages(code, name) values('es-EC', 'Spanish (Ecuador)');
insert into languages(code, name) values('es-ES', 'Spanish (Castilian)');
insert into languages(code, name) values('es-ES', 'Spanish (Spain)');
insert into languages(code, name) values('es-GT', 'Spanish (Guatemala)');
insert into languages(code, name) values('es-HN', 'Spanish (Honduras)');
insert into languages(code, name) values('es-MX', 'Spanish (Mexico)');
insert into languages(code, name) values('es-NI', 'Spanish (Nicaragua)');
insert into languages(code, name) values('es-PA', 'Spanish (Panama)');
insert into languages(code, name) values('es-PE', 'Spanish (Peru)');
insert into languages(code, name) values('es-PR', 'Spanish (Puerto Rico)');
insert into languages(code, name) values('es-PY', 'Spanish (Paraguay)');
insert into languages(code, name) values('es-SV', 'Spanish (El Salvador)');
insert into languages(code, name) values('es-UY', 'Spanish (Uruguay)');
insert into languages(code, name) values('es-VE', 'Spanish (Venezuela)');
insert into languages(code, name) values('et', 'Estonian');
insert into languages(code, name) values('et-EE', 'Estonian (Estonia)');
insert into languages(code, name) values('eu', 'Basque');
insert into languages(code, name) values('eu-ES', 'Basque (Spain)');
insert into languages(code, name) values('fa', 'Farsi');
insert into languages(code, name) values('fa-IR', 'Farsi (Iran)');
insert into languages(code, name) values('fi', 'Finnish');
insert into languages(code, name) values('fi-FI', 'Finnish (Finland)');
insert into languages(code, name) values('fo', 'Faroese');
insert into languages(code, name) values('fo-FO', 'Faroese (Faroe Islands)');
insert into languages(code, name) values('fr', 'French');
insert into languages(code, name) values('fr-BE', 'French (Belgium)');
insert into languages(code, name) values('fr-CA', 'French (Canada)');
insert into languages(code, name) values('fr-CH', 'French (Switzerland)');
insert into languages(code, name) values('fr-FR', 'French (France)');
insert into languages(code, name) values('fr-LU', 'French (Luxembourg)');
insert into languages(code, name) values('fr-MC', 'French (Principality of Monaco)');
insert into languages(code, name) values('gl', 'Galician');
insert into languages(code, name) values('gl-ES', 'Galician (Spain)');
insert into languages(code, name) values('gu', 'Gujarati');
insert into languages(code, name) values('gu-IN', 'Gujarati (India)');
insert into languages(code, name) values('he', 'Hebrew');
insert into languages(code, name) values('he-IL', 'Hebrew (Israel)');
insert into languages(code, name) values('hi', 'Hindi');
insert into languages(code, name) values('hi-IN', 'Hindi (India)');
insert into languages(code, name) values('hr', 'Croatian');
insert into languages(code, name) values('hr-BA', 'Croatian (Bosnia and Herzegovina)');
insert into languages(code, name) values('hr-HR', 'Croatian (Croatia)');
insert into languages(code, name) values('hu', 'Hungarian');
insert into languages(code, name) values('hu-HU', 'Hungarian (Hungary)');
insert into languages(code, name) values('hy', 'Armenian');
insert into languages(code, name) values('hy-AM', 'Armenian (Armenia)');
insert into languages(code, name) values('id', 'Indonesian');
insert into languages(code, name) values('id-ID', 'Indonesian (Indonesia)');
insert into languages(code, name) values('is', 'Icelandic');
insert into languages(code, name) values('is-IS', 'Icelandic (Iceland)');
insert into languages(code, name) values('it', 'Italian');
insert into languages(code, name) values('it-CH', 'Italian (Switzerland)');
insert into languages(code, name) values('it-IT', 'Italian (Italy)');
insert into languages(code, name) values('ja', 'Japanese');
insert into languages(code, name) values('ja-JP', 'Japanese (Japan)');
insert into languages(code, name) values('ka', 'Georgian');
insert into languages(code, name) values('ka-GE', 'Georgian (Georgia)');
insert into languages(code, name) values('kk', 'Kazakh');
insert into languages(code, name) values('kk-KZ', 'Kazakh (Kazakhstan)');
insert into languages(code, name) values('kn', 'Kannada');
insert into languages(code, name) values('kn-IN', 'Kannada (India)');
insert into languages(code, name) values('ko', 'Korean');
insert into languages(code, name) values('ko-KR', 'Korean (Korea)');
insert into languages(code, name) values('kok', 'Konkani');
insert into languages(code, name) values('kok-IN', 'Konkani (India)');
insert into languages(code, name) values('ky', 'Kyrgyz');
insert into languages(code, name) values('ky-KG', 'Kyrgyz (Kyrgyzstan)');
insert into languages(code, name) values('lt', 'Lithuanian');
insert into languages(code, name) values('lt-LT', 'Lithuanian (Lithuania)');
insert into languages(code, name) values('lv', 'Latvian');
insert into languages(code, name) values('lv-LV', 'Latvian (Latvia)');
insert into languages(code, name) values('mi', 'Maori');
insert into languages(code, name) values('mi-NZ', 'Maori (New Zealand)');
insert into languages(code, name) values('mk', 'FYRO Macedonian');
insert into languages(code, name) values('mk-MK', 'FYRO Macedonian (Former Yugoslav Republic of Macedonia)');
insert into languages(code, name) values('mn', 'Mongolian');
insert into languages(code, name) values('mn-MN', 'Mongolian (Mongolia)');
insert into languages(code, name) values('mr', 'Marathi');
insert into languages(code, name) values('mr-IN', 'Marathi (India)');
insert into languages(code, name) values('ms', 'Malay');
insert into languages(code, name) values('ms-BN', 'Malay (Brunei Darussalam)');
insert into languages(code, name) values('ms-MY', 'Malay (Malaysia)');
insert into languages(code, name) values('mt', 'Maltese');
insert into languages(code, name) values('mt-MT', 'Maltese (Malta)');
insert into languages(code, name) values('nb', 'Norwegian (Bokm?l)');
insert into languages(code, name) values('nb-NO', 'Norwegian (Bokm?l) (Norway)');
insert into languages(code, name) values('nl', 'Dutch');
insert into languages(code, name) values('nl-BE', 'Dutch (Belgium)');
insert into languages(code, name) values('nl-NL', 'Dutch (Netherlands)');
insert into languages(code, name) values('nn-NO', 'Norwegian (Nynorsk) (Norway)');
insert into languages(code, name) values('ns', 'Northern Sotho');
insert into languages(code, name) values('ns-ZA', 'Northern Sotho (South Africa)');
insert into languages(code, name) values('pa', 'Punjabi');
insert into languages(code, name) values('pa-IN', 'Punjabi (India)');
insert into languages(code, name) values('pl', 'Polish');
insert into languages(code, name) values('pl-PL', 'Polish (Poland)');
insert into languages(code, name) values('ps', 'Pashto');
insert into languages(code, name) values('ps-AR', 'Pashto (Afghanistan)');
insert into languages(code, name) values('pt', 'Portuguese');
insert into languages(code, name) values('pt-BR', 'Portuguese (Brazil)');
insert into languages(code, name) values('pt-PT', 'Portuguese (Portugal)');
insert into languages(code, name) values('qu', 'Quechua');
insert into languages(code, name) values('qu-BO', 'Quechua (Bolivia)');
insert into languages(code, name) values('qu-EC', 'Quechua (Ecuador)');
insert into languages(code, name) values('qu-PE', 'Quechua (Peru)');
insert into languages(code, name) values('ro', 'Romanian');
insert into languages(code, name) values('ro-RO', 'Romanian (Romania)');
insert into languages(code, name) values('ru', 'Russian');
insert into languages(code, name) values('ru-RU', 'Russian (Russia)');
insert into languages(code, name) values('sa', 'Sanskrit');
insert into languages(code, name) values('sa-IN', 'Sanskrit (India)');
insert into languages(code, name) values('se', 'Sami (Northern)');
insert into languages(code, name) values('se-FI', 'Sami (Northern) (Finland)');
insert into languages(code, name) values('se-FI', 'Sami (Skolt) (Finland)');
insert into languages(code, name) values('se-FI', 'Sami (Inari) (Finland)');
insert into languages(code, name) values('se-NO', 'Sami (Northern) (Norway)');
insert into languages(code, name) values('se-NO', 'Sami (Lule) (Norway)');
insert into languages(code, name) values('se-NO', 'Sami (Southern) (Norway)');
insert into languages(code, name) values('se-SE', 'Sami (Northern) (Sweden)');
insert into languages(code, name) values('se-SE', 'Sami (Lule) (Sweden)');
insert into languages(code, name) values('se-SE', 'Sami (Southern) (Sweden)');
insert into languages(code, name) values('sk', 'Slovak');
insert into languages(code, name) values('sk-SK', 'Slovak (Slovakia)');
insert into languages(code, name) values('sl', 'Slovenian');
insert into languages(code, name) values('sl-SI', 'Slovenian (Slovenia)');
insert into languages(code, name) values('sq', 'Albanian');
insert into languages(code, name) values('sq-AL', 'Albanian (Albania)');
insert into languages(code, name) values('sr-BA', 'Serbian (Latin) (Bosnia and Herzegovina)');
insert into languages(code, name) values('sr-BA', 'Serbian (Cyrillic) (Bosnia and Herzegovina)');
insert into languages(code, name) values('sr-SP', 'Serbian (Latin) (Serbia and Montenegro)');
insert into languages(code, name) values('sr-SP', 'Serbian (Cyrillic) (Serbia and Montenegro)');
insert into languages(code, name) values('sv', 'Swedish');
insert into languages(code, name) values('sv-FI', 'Swedish (Finland)');
insert into languages(code, name) values('sv-SE', 'Swedish (Sweden)');
insert into languages(code, name) values('sw', 'Swahili');
insert into languages(code, name) values('sw-KE', 'Swahili (Kenya)');
insert into languages(code, name) values('syr', 'Syriac');
insert into languages(code, name) values('syr-SY', 'Syriac (Syria)');
insert into languages(code, name) values('ta', 'Tamil');
insert into languages(code, name) values('ta-IN', 'Tamil (India)');
insert into languages(code, name) values('te', 'Telugu');
insert into languages(code, name) values('te-IN', 'Telugu (India)');
insert into languages(code, name) values('th', 'Thai');
insert into languages(code, name) values('th-TH', 'Thai (Thailand)');
insert into languages(code, name) values('tl', 'Tagalog');
insert into languages(code, name) values('tl-PH', 'Tagalog (Philippines)');
insert into languages(code, name) values('tn', 'Tswana');
insert into languages(code, name) values('tn-ZA', 'Tswana (South Africa)');
insert into languages(code, name) values('tr', 'Turkish');
insert into languages(code, name) values('tr-TR', 'Turkish (Turkey)');
insert into languages(code, name) values('tt', 'Tatar');
insert into languages(code, name) values('tt-RU', 'Tatar (Russia)');
insert into languages(code, name) values('ts', 'Tsonga');
insert into languages(code, name) values('uk', 'Ukrainian');
insert into languages(code, name) values('uk-UA', 'Ukrainian (Ukraine)');
insert into languages(code, name) values('ur', 'Urdu');
insert into languages(code, name) values('ur-PK', 'Urdu (Islamic Republic of Pakistan)');
insert into languages(code, name) values('uz', 'Uzbek (Latin)');
insert into languages(code, name) values('uz-UZ', 'Uzbek (Latin) (Uzbekistan)');
insert into languages(code, name) values('uz-UZ', 'Uzbek (Cyrillic) (Uzbekistan)');
insert into languages(code, name) values('vi', 'Vietnamese');
insert into languages(code, name) values('vi-VN', 'Vietnamese (Viet Nam)');
insert into languages(code, name) values('xh', 'Xhosa');
insert into languages(code, name) values('xh-ZA', 'Xhosa (South Africa)');
insert into languages(code, name) values('zh', 'Chinese');
insert into languages(code, name) values('zh-CN', 'Chinese (S)');
insert into languages(code, name) values('zh-HK', 'Chinese (Hong Kong)');
insert into languages(code, name) values('zh-MO', 'Chinese (Macau)');
insert into languages(code, name) values('zh-SG', 'Chinese (Singapore)');
insert into languages(code, name) values('zh-TW', 'Chinese (T)');
insert into languages(code, name) values('zu', 'Zulu');
insert into languages(code, name) values('zu-ZA', 'Zulu (South Africa)');

create table ipa (
	id int primary key auto_increment,
	letter varchar (5),
	type char(1)
);
insert into ipa(letter, type) values('ʌ', 'V');
insert into ipa(letter, type) values('ɑ:', 'V');
insert into ipa(letter, type) values('æ', 'V');
insert into ipa(letter, type) values('e', 'V');
insert into ipa(letter, type) values('ə', 'V');
insert into ipa(letter, type) values('ɜ:ʳ', 'V');
insert into ipa(letter, type) values('ɪ', 'V');
insert into ipa(letter, type) values('i:', 'V');
insert into ipa(letter, type) values('ɒ', 'V');
insert into ipa(letter, type) values('ɔ:', 'V');
insert into ipa(letter, type) values('ʊ', 'V');
insert into ipa(letter, type) values('u:', 'V');
insert into ipa(letter, type) values('aɪ', 'V');
insert into ipa(letter, type) values('aʊ', 'V');
insert into ipa(letter, type) values('eɪ', 'V');
insert into ipa(letter, type) values('oʊ', 'V');
insert into ipa(letter, type) values('ɔɪ', 'V');
insert into ipa(letter, type) values('eəʳ', 'V');
insert into ipa(letter, type) values('ɪəʳ', 'V');
insert into ipa(letter, type) values('ʊəʳ', 'V');

insert into ipa(letter, type) values('b', 'C');
insert into ipa(letter, type) values('d', 'C');
insert into ipa(letter, type) values('f', 'C');
insert into ipa(letter, type) values('g', 'C');
insert into ipa(letter, type) values('h', 'C');
insert into ipa(letter, type) values('j', 'C');
insert into ipa(letter, type) values('k', 'C');
insert into ipa(letter, type) values('l', 'C');
insert into ipa(letter, type) values('m', 'C');
insert into ipa(letter, type) values('n', 'C');
insert into ipa(letter, type) values('ŋ', 'C');
insert into ipa(letter, type) values('p', 'C');
insert into ipa(letter, type) values('r', 'C');
insert into ipa(letter, type) values('s', 'C');
insert into ipa(letter, type) values('ʃ', 'C');
insert into ipa(letter, type) values('t', 'C');
insert into ipa(letter, type) values('tʃ', 'C');
insert into ipa(letter, type) values('θ', 'C');
insert into ipa(letter, type) values('ð', 'C');
insert into ipa(letter, type) values('v', 'C');
insert into ipa(letter, type) values('w', 'C');
insert into ipa(letter, type) values('z', 'C');
insert into ipa(letter, type) values('ʒ', 'C');
insert into ipa(letter, type) values('dʒ', 'C');

create table ipa_examples (
	id int primary key auto_increment,
	id_ipa int,
	id_language int,
	examples varchar(100),
	description varchar(2000),
	picture varchar(300)
);
ALTER TABLE `ipa_examples` ADD INDEX(`id_ipa`);
ALTER TABLE `ipa_examples` ADD INDEX(`id_language`);
ALTER TABLE `ipa_examples` ADD CONSTRAINT `FK_ipa` FOREIGN KEY (`id_ipa`) REFERENCES `ipa`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE `ipa_examples` ADD CONSTRAINT `FK_language` FOREIGN KEY (`id_language`) REFERENCES `languages`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(1 ,57, 'cup, luck', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(2 ,57, 'arm, father', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(3 ,57, 'cat, black', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(4 ,57, 'met, bed', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(5 ,57, 'away, cinema', 'The [ə] phoneme is one of the most common sound in English. There are many spellings for [ə], such as: “a”, “ou”, “o”, “io”, “u”, “e”, “ea”, and “ia”. Examples: about, famous, complete, million, just, children, ocean, could, and special. To make this sound the mouth remains relaxed, with the lips slightly apart, and the teeth will be closed but not quite touching. The tongue remains flat and forward, very relaxed, lightly touching behind the bottom teeth. The vocal folds vibrate to produce this sound.','https://www.rachelsenglish.com/sites/default/files/sound_pics/ur_her_comp_all.jpg');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(6 ,57, 'turn, learn', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(7 ,57, 'hit, sitting', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(8 ,57, 'see, heat', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(9 ,57, 'hot, rock', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(10 ,57, 'call, four', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(11 ,57, 'put, could', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(12 ,57, 'blue, food', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(13 ,57, 'five, eye', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(14 ,57, 'now, out', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(15 ,57, 'say, eight', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(16 ,57, 'go, home', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(17 ,57, 'boy, join', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(18 ,57, 'where, air', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(19 ,57, 'near, here', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(20 ,57, 'pure, tourist', '','');

insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(21 ,57, 'bad, lab', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(22 ,57, 'did, lady', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(23 ,57, 'find, if', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(24 ,57, 'give, flag', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(25 ,57, 'how, hello', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(26 ,57, 'yes, yellow', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(27 ,57, 'cat, back', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(28 ,57, 'leg, little', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(29 ,57, 'man, lemon', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(30 ,57, 'no, ten', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(31 ,57, 'sing, finger', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(32 ,57, 'pet, map', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(33 ,57, 'red, try', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(34 ,57, 'sun, miss', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(35 ,57, 'she, crash', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(36 ,57, 'tea, getting', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(37 ,57, 'check, church', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(38 ,57, 'think, both', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(39 ,57, 'this, mother', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(40 ,57, 'voice, five', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(41 ,57, 'wet, window', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(42 ,57, 'zoo, lazy', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(43 ,57, 'pleasure, vision', '','');
insert into ipa_examples(id_ipa, id_language, examples, description, picture) values(44 ,57, 'just, large', '','');

create table tips (
	id int primary key auto_increment,
	id_ipa_example int,
	tittle varchar(50),
	link varchar(200),
	description varchar(300)
);
ALTER TABLE `tips` ADD INDEX(`id_ipa_example`);
ALTER TABLE `tips` ADD CONSTRAINT `FK_ipa_examples` FOREIGN KEY (`id_ipa_example`) REFERENCES `ipa_examples`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
insert into tips(id_ipa_example, tittle, link, description) values(5 ,'English: How to Pronounce the Schwa [ə] -- American Accent', 'https://www.youtube.com/embed/rM9NxK74JSE?rel=0', '');
insert into tips(id_ipa_example, tittle, link, description) values(5 ,'The /ə/ Sound', 'https://www.youtube.com/embed/RVvn6204I_Y?rel=0', '');

create table contact (
	id int primary key auto_increment,
	name varchar(50),
	email varchar(50),
	message varchar(2000)
);