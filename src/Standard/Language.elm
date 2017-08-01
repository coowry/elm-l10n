module Standard.Language exposing (LanguageCode, Language, language)

{-| Language

# Definition
@docs LanguageCode
@docs Language

# Lookup functions
@docs language

-}


{-| Identifier of a language
-}
type alias LanguageCode = String

{-| TODO
-}
type alias Language = { code : LanguageCode
                      , name : String
                      , native_name : Maybe String}


{-| TODO
-}
language : LanguageCode -> Language
language code =
    case code of
        "aa" -> Language "aa" "Afar" Nothing
        "ab" -> Language "ab" "Abkhazian" Nothing
        "ae" -> Language "ae" "Avestan" Nothing
        "af" -> Language "af" "Afrikaans" Nothing
        "ak" -> Language "ak" "Akan" Nothing
        "am" -> Language "am" "Amharic" Nothing
        "an" -> Language "an" "Aragonese" Nothing
        "ar" -> Language "ar" "Arabic" Nothing
        "as" -> Language "as" "Assamese" Nothing
        "av" -> Language "av" "Avaric" Nothing
        "ay" -> Language "ay" "Aymara" Nothing
        "az" -> Language "az" "Azerbaijani" Nothing
        "ba" -> Language "ba" "Bashkir" Nothing
        "be" -> Language "be" "Belarusian" Nothing
        "bg" -> Language "bg" "Bulgarian" Nothing
        "bi" -> Language "bi" "Bislama" Nothing
        "bm" -> Language "bm" "Bambara" Nothing
        "bn" -> Language "bn" "Bengali" Nothing
        "bo" -> Language "bo" "Tibetan" Nothing
        "br" -> Language "br" "Breton" Nothing
        "bs" -> Language "bs" "Bosnian" Nothing
        "ca" -> Language "ca" "Catalan" Nothing
        "ce" -> Language "ce" "Chechen" Nothing
        "ch" -> Language "ch" "Chamorro" Nothing
        "co" -> Language "co" "Corsican" Nothing
        "cr" -> Language "cr" "Cree" Nothing
        "cs" -> Language "cs" "Czech" Nothing
        "cu" -> Language "cu" "Church Slavic" Nothing
        "cv" -> Language "cv" "Chuvash" Nothing
        "cy" -> Language "cy" "Welsh" Nothing
        "da" -> Language "da" "Danish" Nothing
        "de" -> Language "de" "German" Nothing
        "dv" -> Language "dv" "Dhivehi" Nothing
        "dz" -> Language "dz" "Dzongkha" Nothing
        "ee" -> Language "ee" "Ewe" Nothing
        "el" -> Language "el" "Modern Greek (1453-)" Nothing
        "en" -> Language "en" "English" Nothing
        "eo" -> Language "eo" "Esperanto" Nothing
        "es" -> Language "es" "Español" Nothing
        "et" -> Language "et" "Estonian" Nothing
        "eu" -> Language "eu" "Basque" Nothing
        "fa" -> Language "fa" "Persian" Nothing
        "ff" -> Language "ff" "Fulah" Nothing
        "fi" -> Language "fi" "Finnish" Nothing
        "fj" -> Language "fj" "Fijian" Nothing
        "fo" -> Language "fo" "Faroese" Nothing
        "fr" -> Language "fr" "French" Nothing
        "fy" -> Language "fy" "Western Frisian" Nothing
        "ga" -> Language "ga" "Irish" Nothing
        "gd" -> Language "gd" "Scottish Gaelic" Nothing
        "gl" -> Language "gl" "Galician" Nothing
        "gn" -> Language "gn" "Guarani" Nothing
        "gu" -> Language "gu" "Gujarati" Nothing
        "gv" -> Language "gv" "Manx" Nothing
        "ha" -> Language "ha" "Hausa" Nothing
        "he" -> Language "he" "Hebrew" Nothing
        "hi" -> Language "hi" "Hindi" Nothing
        "ho" -> Language "ho" "Hiri Motu" Nothing
        "hr" -> Language "hr" "Croatian" Nothing
        "ht" -> Language "ht" "Haitian" Nothing
        "hu" -> Language "hu" "Hungarian" Nothing
        "hy" -> Language "hy" "Armenian" Nothing
        "hz" -> Language "hz" "Herero" Nothing
        "ia" -> Language "ia" "Interlingua (International Auxiliary Language Association)" Nothing
        "id" -> Language "id" "Bahasa Indonesia" Nothing
        "ie" -> Language "ie" "Interlingue" Nothing
        "ig" -> Language "ig" "Igbo" Nothing
        "ii" -> Language "ii" "Sichuan Yi" Nothing
        "ik" -> Language "ik" "Inupiaq" Nothing
        "io" -> Language "io" "Ido" Nothing
        "is" -> Language "is" "Icelandic" Nothing
        "it" -> Language "it" "Italian" Nothing
        "iu" -> Language "iu" "Inuktitut" Nothing
        "ja" -> Language "ja" "Japanese" Nothing
        "jv" -> Language "jv" "Javanese" Nothing
        "ka" -> Language "ka" "Georgian" Nothing
        "kg" -> Language "kg" "Kongo" Nothing
        "ki" -> Language "ki" "Kikuyu" Nothing
        "kj" -> Language "kj" "Kuanyama" Nothing
        "kk" -> Language "kk" "Kazakh" Nothing
        "kl" -> Language "kl" "Kalaallisut" Nothing
        "km" -> Language "km" "Khmer" Nothing
        "kn" -> Language "kn" "Kannada" Nothing
        "ko" -> Language "ko" "Korean" Nothing
        "kr" -> Language "kr" "Kanuri" Nothing
        "ks" -> Language "ks" "Kashmiri" Nothing
        "ku" -> Language "ku" "Kurdish" Nothing
        "kv" -> Language "kv" "Komi" Nothing
        "kw" -> Language "kw" "Cornish" Nothing
        "ky" -> Language "ky" "Kirghiz" Nothing
        "la" -> Language "la" "Latin" Nothing
        "lb" -> Language "lb" "Luxembourgish" Nothing
        "lg" -> Language "lg" "Ganda" Nothing
        "li" -> Language "li" "Limburgan" Nothing
        "ln" -> Language "ln" "Lingala" Nothing
        "lo" -> Language "lo" "Lao" Nothing
        "lt" -> Language "lt" "Lithuanian" Nothing
        "lu" -> Language "lu" "Luba-Katanga" Nothing
        "lv" -> Language "lv" "Latvian" Nothing
        "mg" -> Language "mg" "Malagasy" Nothing
        "mh" -> Language "mh" "Marshallese" Nothing
        "mi" -> Language "mi" "Maori" Nothing
        "mk" -> Language "mk" "Macedonian" Nothing
        "ml" -> Language "ml" "Malayalam" Nothing
        "mn" -> Language "mn" "Mongolian" Nothing
        "mr" -> Language "mr" "Marathi" Nothing
        "ms" -> Language "ms" "Malay" Nothing
        "mt" -> Language "mt" "Maltese" Nothing
        "my" -> Language "my" "Burmese" Nothing
        "na" -> Language "na" "Nauru" Nothing
        "nb" -> Language "nb" "Norwegian Bokmål" Nothing
        "nd" -> Language "nd" "North Ndebele" Nothing
        "ne" -> Language "ne" "Nepali (macrolanguage)" Nothing
        "ng" -> Language "ng" "Ndonga" Nothing
        "nl" -> Language "nl" "Dutch" Nothing
        "nn" -> Language "nn" "Norwegian Nynorsk" Nothing
        "no" -> Language "no" "Norwegian" Nothing
        "nr" -> Language "nr" "South Ndebele" Nothing
        "nv" -> Language "nv" "Navajo" Nothing
        "ny" -> Language "ny" "Nyanja" Nothing
        "oc" -> Language "oc" "Occitan (post 1500)" Nothing
        "oj" -> Language "oj" "Ojibwa" Nothing
        "om" -> Language "om" "Oromo" Nothing
        "or" -> Language "or" "Oriya (macrolanguage)" Nothing
        "os" -> Language "os" "Ossetian" Nothing
        "pa" -> Language "pa" "Panjabi" Nothing
        "pi" -> Language "pi" "Pali" Nothing
        "pl" -> Language "pl" "Polish" Nothing
        "ps" -> Language "ps" "Pushto" Nothing
        "pt" -> Language "pt" "Portuguese" Nothing
        "qu" -> Language "qu" "Quechua" Nothing
        "rm" -> Language "rm" "Romansh" Nothing
        "rn" -> Language "rn" "Rundi" Nothing
        "ro" -> Language "ro" "Romanian" Nothing
        "ru" -> Language "ru" "Russian" Nothing
        "rw" -> Language "rw" "Kinyarwanda" Nothing
        "sa" -> Language "sa" "Sanskrit" Nothing
        "sc" -> Language "sc" "Sardinian" Nothing
        "sd" -> Language "sd" "Sindhi" Nothing
        "se" -> Language "se" "Northern Sami" Nothing
        "sg" -> Language "sg" "Sango" Nothing
        "si" -> Language "si" "Sinhalese" Nothing
        "sk" -> Language "sk" "Slovak" Nothing
        "sl" -> Language "sl" "Slovenian" Nothing
        "sm" -> Language "sm" "Samoan" Nothing
        "sn" -> Language "sn" "Shona" Nothing
        "so" -> Language "so" "Somali" Nothing
        "sq" -> Language "sq" "Albanian" Nothing
        "sr" -> Language "sr" "Serbian" Nothing
        "ss" -> Language "ss" "Swati" Nothing
        "st" -> Language "st" "Southern Sotho" Nothing
        "su" -> Language "su" "Sundanese" Nothing
        "sv" -> Language "sv" "Swedish" Nothing
        "sw" -> Language "sw" "Swahili (macrolanguage)" Nothing
        "ta" -> Language "ta" "Tamil" Nothing
        "te" -> Language "te" "Telugu" Nothing
        "tg" -> Language "tg" "Tajik" Nothing
        "th" -> Language "th" "Thai" Nothing
        "ti" -> Language "ti" "Tigrinya" Nothing
        "tk" -> Language "tk" "Turkmen" Nothing
        "tl" -> Language "tl" "Tagalog" Nothing
        "tn" -> Language "tn" "Tswana" Nothing
        "to" -> Language "to" "Tonga (Tonga Islands)" Nothing
        "tr" -> Language "tr" "Turkish" Nothing
        "ts" -> Language "ts" "Tsonga" Nothing
        "tt" -> Language "tt" "Tatar" Nothing
        "tw" -> Language "tw" "Twi" Nothing
        "ty" -> Language "ty" "Tahitian" Nothing
        "ug" -> Language "ug" "Uighur" Nothing
        "uk" -> Language "uk" "Ukrainian" Nothing
        "ur" -> Language "ur" "Urdu" Nothing
        "uz" -> Language "uz" "Uzbek" Nothing
        "ve" -> Language "ve" "Venda" Nothing
        "vi" -> Language "vi" "Vietnamese" Nothing
        "vo" -> Language "vo" "Volapük" Nothing
        "wa" -> Language "wa" "Walloon" Nothing
        "wo" -> Language "wo" "Wolof" Nothing
        "xh" -> Language "xh" "Xhosa" Nothing
        "yi" -> Language "yi" "Yiddish" Nothing
        "yo" -> Language "yo" "Yoruba" Nothing
        "za" -> Language "za" "Zhuang" Nothing
        "zh" -> Language "zh" "Chinese" Nothing
        "zu" -> Language "zu" "Zulu" Nothing
        _ -> Debug.crash ("Incorrect language code: " ++ code)
