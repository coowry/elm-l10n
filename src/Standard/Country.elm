module Standard.Country
    exposing
        ( Country
        , CountryCode
        , country
        , decoder
        , encoder
        , pp
        )

{-| Country


# Definition

@docs CountryCode
@docs Country


# Lookup functions

@docs country


# Json

@docs encoder
@docs decoder


# Pretty-printing

@docs pp

-}

import Json.Decode as JDec
import Json.Decode.Pipeline exposing (decode, required)
import Json.Encode as JEnc
import Standard.Currency exposing (CurrencyCode)
import Standard.Language exposing (LanguageCode)


{-| Identifier of a country
-}
type alias CountryCode =
    String


{-| Identifier of a calling code
-}
type alias CallingCode =
    String


{-| TODO
-}
type alias Country =
    { code : CountryCode
    , cc : CallingCode
    , name : String
    , native_name : Maybe String
    , currency : CurrencyCode
    , language : CountryCode
    }


{-| Json decoder for Country.
-}
decoder : JDec.Decoder Country
decoder =
    decode Country
        |> required "code" JDec.string
        |> required "cc" JDec.string
        |> required "name" JDec.string
        |> required "native_name" (JDec.nullable JDec.string)
        |> required "currency" JDec.string
        |> required "language" JDec.string


{-| Json encoder for Country.
-}
encoder : Country -> JEnc.Value
encoder country =
    JEnc.object
        [ ( "code", JEnc.string country.code )
        , ( "cc", JEnc.string country.cc )
        , ( "name", JEnc.string country.name )
        , ( "native_name"
          , case country.native_name of
                Nothing ->
                    JEnc.null

                Just nn ->
                    JEnc.string nn
          )
        , ( "currency", JEnc.string country.currency )
        , ( "language", JEnc.string country.language )
        ]


{-| Pretty-print in the format "name (native_name)". Fall back to "name" if
there is no native name available.
-}
pp : Country -> String
pp country =
    case country.native_name of
        Nothing ->
            country.name

        Just native_name ->
            country.name ++ " (" ++ native_name ++ ")"


{-| TODO
-}
country : CountryCode -> Country
country code =
    case code of
        "AD" ->
            Country "AD" "376" "Andorra" Nothing "EUR" "en"

        "AE" ->
            Country "AE" "971" "United Arab Emirates" (Just "الإمارات العربيّة المتّحدة") "AED" "ar"

        "AF" ->
            Country "AF" "93" "Afghanistan" (Just "افغانستان") "AFN" "en"

        "AG" ->
            Country "AG" "1268" "Antigua & Barbuda" Nothing "XCD" "en"

        "AI" ->
            Country "AI" "1264" "Anguilla" Nothing "XCD" "en"

        "AL" ->
            Country "AL" "355" "Albania" (Just "Shqipëria") "ALL" "en"

        "AM" ->
            Country "AM" "374" "Armenia" (Just "Հայաստան") "AMD" "en"

        "AO" ->
            Country "AO" "244" "Angola" Nothing "AOA" "en"

        "AR" ->
            Country "AR" "54" "Argentina" Nothing "ARS" "es"

        "AS" ->
            Country "AS" "1684" "American Samoa" (Just "Amerika Sāmoa") "USD" "en"

        "AT" ->
            Country "AT" "43" "Austria" (Just "Österreich") "EUR" "en"

        "AU" ->
            Country "AU" "61" "Australia" Nothing "AUD" "en"

        "AW" ->
            Country "AW" "297" "Aruba" Nothing "AWG" "en"

        "AX" ->
            Country "AX" "358" "Åland Islands" (Just "Ahvenanmaa") "EUR" "en"

        "AZ" ->
            Country "AZ" "994" "Azerbaijan" (Just "Azərbaycan") "AZN" "en"

        "BA" ->
            Country "BA" "387" "Bosnia" (Just "Босна и Херцеговина") "BAM" "en"

        "BB" ->
            Country "BB" "1246" "Barbados" Nothing "BBD" "en"

        "BD" ->
            Country "BD" "880" "Bangladesh" (Just "বাংলাদেশ") "BDT" "bn"

        "BE" ->
            Country "BE" "32" "Belgium" (Just "België") "EUR" "en"

        "BF" ->
            Country "BF" "226" "Burkina Faso" Nothing "XOF" "en"

        "BG" ->
            Country "BG" "359" "Bulgaria" (Just "България") "BGN" "en"

        "BH" ->
            Country "BH" "973" "Bahrain" (Just "البحرين") "BHD" "en"

        "BI" ->
            Country "BI" "257" "Burundi" Nothing "BIF" "en"

        "BJ" ->
            Country "BJ" "229" "Benin" Nothing "XOF" "en"

        "BL" ->
            Country "BL" "590" "St. Barthélemy" Nothing "EUR" "en"

        "BM" ->
            Country "BM" "1441" "Bermuda" Nothing "BMD" "en"

        "BN" ->
            Country "BN" "673" "Brunei" (Just "بروني") "BND" "en"

        "BO" ->
            Country "BO" "591" "Bolivia" Nothing "BOB" "es"

        "BQ" ->
            Country "BQ" "599" "Caribbean Netherlands" Nothing "USD" "en"

        "BR" ->
            Country "BR" "55" "Brazil" (Just "Brasil") "BRL" "pt"

        "BS" ->
            Country "BS" "1242" "Bahamas" Nothing "BSD" "en"

        "BT" ->
            Country "BT" "975" "Bhutan" (Just "འབྲུག་ཡུལ") "INR" "en"

        "BV" ->
            Country "BV" "47" "Bouvet Island" Nothing "NOK" "en"

        "BW" ->
            Country "BW" "267" "Botswana" Nothing "BWP" "en"

        "BY" ->
            Country "BY" "375" "Belarus" (Just "Беларусь") "BYR" "en"

        "BZ" ->
            Country "BZ" "501" "Belize" Nothing "BZD" "en"

        "CA" ->
            Country "CA" "1" "Canada" Nothing "CAD" "en"

        "CC" ->
            Country "CC" "61" "Cocos (Keeling) Islands" Nothing "AUD" "en"

        "CD" ->
            Country "CD" "243" "Democratic Republic of the Congo" Nothing "CDF" "ln"

        "CF" ->
            Country "CF" "236" "Central African Republic" (Just "République Centrafricaine") "XAF" "en"

        "CG" ->
            Country "CG" "242" "Congo" (Just "République du Congo") "XAF" "en"

        "CH" ->
            Country "CH" "41" "Switzerland" (Just "Schweiz") "CHF" "en"

        "CI" ->
            Country "CI" "225" "Côte d’Ivoire" Nothing "XOF" "en"

        "CK" ->
            Country "CK" "682" "Cook Islands" Nothing "NZD" "en"

        "CL" ->
            Country "CL" "56" "Chile" Nothing "CLP" "es"

        "CM" ->
            Country "CM" "237" "Cameroon" (Just "Cameroun") "XAF" "en"

        "CN" ->
            Country "CN" "86" "China" (Just "中国") "CNY" "zh"

        "CO" ->
            Country "CO" "57" "Colombia" Nothing "COP" "es"

        "CR" ->
            Country "CR" "506" "Costa Rica" Nothing "CRC" "es"

        "CU" ->
            Country "CU" "53" "Cuba" Nothing "CUP" "es"

        "CV" ->
            Country "CV" "238" "Cape Verde" (Just "Cabo Verde") "CVE" "en"

        "CW" ->
            Country "CW" "599" "Curaçao" Nothing "ANG" "en"

        "CX" ->
            Country "CX" "61" "Christmas Island" Nothing "AUD" "en"

        "CY" ->
            Country "CY" "357" "Cyprus" (Just "Kypros") "EUR" "en"

        "CZ" ->
            Country "CZ" "420" "Czech Republic" (Just "Česká republika") "CZK" "en"

        "DE" ->
            Country "DE" "49" "Germany" (Just "Deutschland") "EUR" "de"

        "DJ" ->
            Country "DJ" "253" "Djibouti" (Just "جيبوتي") "DJF" "en"

        "DK" ->
            Country "DK" "45" "Denmark" (Just "Danmark") "DKK" "en"

        "DM" ->
            Country "DM" "1767" "Dominica" Nothing "XCD" "en"

        "DO" ->
            Country "DO" "1" "Dominican Republic" (Just "República Dominicana") "DOP" "en"

        "DZ" ->
            Country "DZ" "213" "Algeria" (Just "الجزائر") "DZD" "ar"

        "EC" ->
            Country "EC" "593" "Ecuador" Nothing "USD" "es"

        "EE" ->
            Country "EE" "372" "Estonia" (Just "Eesti") "EUR" "en"

        "EG" ->
            Country "EG" "20" "Egypt" (Just "مصر") "EGP" "en"

        "EH" ->
            Country "EH" "212" "Western Sahara" Nothing "MAD" "en"

        "ER" ->
            Country "ER" "291" "Eritrea" (Just "إرتريا") "ERN" "en"

        "ES" ->
            Country "ES" "34" "Spain" (Just "España") "EUR" "es"

        "ET" ->
            Country "ET" "251" "Ethiopia" Nothing "ETB" "am"

        "FI" ->
            Country "FI" "358" "Finland" (Just "Suomi") "EUR" "en"

        "FJ" ->
            Country "FJ" "679" "Fiji" (Just "फ़िजी") "FJD" "fj"

        "FK" ->
            Country "FK" "500" "Falkland Islands" Nothing "FKP" "en"

        "FM" ->
            Country "FM" "691" "Micronesia" Nothing "USD" "en"

        "FO" ->
            Country "FO" "298" "Faroe Islands" (Just "Færøerne") "DKK" "en"

        "FR" ->
            Country "FR" "33" "France" Nothing "EUR" "fr"

        "GA" ->
            Country "GA" "241" "Gabon" (Just "République gabonaise") "XAF" "en"

        "GB" ->
            Country "GB" "44" "United Kingdom" Nothing "GBP" "en"

        "GD" ->
            Country "GD" "1473" "Grenada" Nothing "XCD" "en"

        "GE" ->
            Country "GE" "995" "Georgia" (Just "საქართველო") "GEL" "en"

        "GF" ->
            Country "GF" "594" "French Guiana" (Just "Guyane") "EUR" "en"

        "GG" ->
            Country "GG" "44" "Guernsey" Nothing "GBP" "en"

        "GH" ->
            Country "GH" "233" "Ghana" Nothing "GHS" "en"

        "GI" ->
            Country "GI" "350" "Gibraltar" Nothing "GIP" "en"

        "GL" ->
            Country "GL" "299" "Greenland" (Just "Grønland") "DKK" "en"

        "GM" ->
            Country "GM" "220" "Gambia" Nothing "GMD" "en"

        "GN" ->
            Country "GN" "224" "Guinea" (Just "Guiné-Bissau") "GNF" "en"

        "GP" ->
            Country "GP" "590" "Guadeloupe" Nothing "EUR" "en"

        "GQ" ->
            Country "GQ" "240" "Equatorial Guinea" (Just "Guinea Ecuatorial") "XAF" "en"

        "GR" ->
            Country "GR" "30" "Greece" (Just "Ελλάδα") "EUR" "en"

        "GT" ->
            Country "GT" "502" "Guatemala" Nothing "GTQ" "es"

        "GU" ->
            Country "GU" "1671" "Guam" (Just "Guåhån") "USD" "en"

        "GW" ->
            Country "GW" "245" "Guinea-Bissau" (Just "Guiné-Bissau") "XOF" "en"

        "GY" ->
            Country "GY" "592" "Guyana" Nothing "GYD" "en"

        "HK" ->
            Country "HK" "852" "Hong Kong" Nothing "HKD" "en"

        "HM" ->
            Country "HM" "672" "Heard & McDonald Islands" Nothing "AUD" "en"

        "HN" ->
            Country "HN" "504" "Honduras" Nothing "HNL" "es"

        "HR" ->
            Country "HR" "385" "Croatia" (Just "Hrvatska") "HRK" "en"

        "HT" ->
            Country "HT" "509" "Haiti" (Just "Haïti") "HTG" "fr"

        "HU" ->
            Country "HU" "36" "Hungary" (Just "Magyarország") "HUF" "en"

        "ID" ->
            Country "ID" "62" "Indonesia" Nothing "IDR" "id"

        "IE" ->
            Country "IE" "353" "Ireland" Nothing "EUR" "en"

        "IL" ->
            Country "IL" "972" "Israel" (Just "ישראל") "ILS" "he"

        "IM" ->
            Country "IM" "44" "Isle of Man" Nothing "GBP" "en"

        "IN" ->
            Country "IN" "91" "India" (Just "भारत") "INR" "hi"

        "IO" ->
            Country "IO" "246" "British Indian Ocean Territory" Nothing "USD" "en"

        "IQ" ->
            Country "IQ" "964" "Iraq" (Just "العراق") "IQD" "en"

        "IR" ->
            Country "IR" "98" "Iran" (Just "ایران") "IRR" "en"

        "IS" ->
            Country "IS" "354" "Iceland" (Just "Ísland") "ISK" "en"

        "IT" ->
            Country "IT" "39" "Italy" (Just "Italia") "EUR" "en"

        "JE" ->
            Country "JE" "44" "Jersey" Nothing "GBP" "en"

        "JM" ->
            Country "JM" "1876" "Jamaica" Nothing "JMD" "en"

        "JO" ->
            Country "JO" "962" "Jordan" (Just "الأردن") "JOD" "en"

        "JP" ->
            Country "JP" "81" "Japan" (Just "日本") "JPY" "en"

        "KE" ->
            Country "KE" "254" "Kenya" Nothing "KES" "en"

        "KG" ->
            Country "KG" "996" "Kyrgyzstan" (Just "Кыргызстан") "KGS" "en"

        "KH" ->
            Country "KH" "855" "Cambodia" (Just "Kampuchea") "KHR" "km"

        "KI" ->
            Country "KI" "686" "Kiribati" Nothing "AUD" "en"

        "KM" ->
            Country "KM" "269" "Comoros" (Just "جزر القمر") "KMF" "en"

        "KN" ->
            Country "KN" "1869" "St. Kitts & Nevis" Nothing "XCD" "en"

        "KP" ->
            Country "KP" "850" "North Korea" (Just "북조선") "KPW" "en"

        "KR" ->
            Country "KR" "82" "South Korea" (Just "남한") "KRW" "en"

        "KW" ->
            Country "KW" "965" "Kuwait" (Just "الكويت") "KWD" "en"

        "KY" ->
            Country "KY" "1345" "Cayman Islands" Nothing "KYD" "en"

        "KZ" ->
            Country "KZ" "7" "Kazakhstan" (Just "Казахстан") "KZT" "en"

        "LA" ->
            Country "LA" "856" "Laos" (Just "ປະເທດລາວ") "LAK" "en"

        "LB" ->
            Country "LB" "961" "Lebanon" (Just "لبنان") "LBP" "en"

        "LC" ->
            Country "LC" "1758" "St. Lucia" Nothing "XCD" "en"

        "LI" ->
            Country "LI" "423" "Liechtenstein" Nothing "CHF" "en"

        "LK" ->
            Country "LK" "94" "Sri Lanka" (Just "இலங்கை") "LKR" "si"

        "LR" ->
            Country "LR" "231" "Liberia" Nothing "LRD" "en"

        "LS" ->
            Country "LS" "266" "Lesotho" Nothing "ZAR" "en"

        "LT" ->
            Country "LT" "370" "Lithuania" (Just "Lietuva") "EUR" "en"

        "LU" ->
            Country "LU" "352" "Luxembourg" (Just "Lëtzebuerg") "EUR" "en"

        "LV" ->
            Country "LV" "371" "Latvia" (Just "Latvija") "EUR" "en"

        "LY" ->
            Country "LY" "218" "Libya" (Just "ليبيا") "LYD" "en"

        "MA" ->
            Country "MA" "212" "Morocco" (Just "المغرب") "MAD" "en"

        "MC" ->
            Country "MC" "377" "Monaco" Nothing "EUR" "en"

        "MD" ->
            Country "MD" "373" "Moldova" Nothing "MDL" "en"

        "ME" ->
            Country "ME" "382" "Montenegro" (Just "Црна Гора") "EUR" "en"

        "MF" ->
            Country "MF" "590" "St. Martin" (Just "Saint-Martin") "EUR" "en"

        "MG" ->
            Country "MG" "261" "Madagascar" Nothing "MGA" "en"

        "MH" ->
            Country "MH" "692" "Marshall Islands" (Just "Aorōkin M̧ajeļ") "USD" "en"

        "MK" ->
            Country "MK" "389" "Macedonia" (Just "Македонија") "MKD" "en"

        "ML" ->
            Country "ML" "223" "Mali" Nothing "XOF" "en"

        "MM" ->
            Country "MM" "95" "Myanmar" (Just "မြန်မာ") "MMK" "en"

        "MN" ->
            Country "MN" "976" "Mongolia" (Just "Монгол Улс") "MNT" "en"

        "MO" ->
            Country "MO" "853" "Macau" Nothing "MOP" "en"

        "MP" ->
            Country "MP" "1670" "Northern Mariana Islands" Nothing "USD" "en"

        "MQ" ->
            Country "MQ" "596" "Martinique" Nothing "EUR" "en"

        "MR" ->
            Country "MR" "222" "Mauritania" (Just "موريتانيا") "MRO" "en"

        "MS" ->
            Country "MS" "1664" "Montserrat" Nothing "XCD" "en"

        "MT" ->
            Country "MT" "356" "Malta" Nothing "EUR" "en"

        "MU" ->
            Country "MU" "230" "Mauritius" Nothing "MUR" "en"

        "MV" ->
            Country "MV" "960" "Maldives" (Just "Dhivehi Raajje") "MVR" "en"

        "MW" ->
            Country "MW" "265" "Malawi" Nothing "MWK" "en"

        "MX" ->
            Country "MX" "52" "Mexico" (Just "México") "MXN" "es"

        "MY" ->
            Country "MY" "60" "Malaysia" Nothing "MYR" "ms"

        "MZ" ->
            Country "MZ" "258" "Mozambique" Nothing "MZN" "en"

        "NA" ->
            Country "NA" "264" "Namibia" Nothing "ZAR" "en"

        "NC" ->
            Country "NC" "687" "New Caledonia" (Just "Nouvelle-Calédonie") "XPF" "en"

        "NE" ->
            Country "NE" "227" "Nigeria" Nothing "XOF" "en"

        "NF" ->
            Country "NF" "672" "Norfolk Island" Nothing "AUD" "en"

        "NG" ->
            Country "NG" "234" "Nigeria" Nothing "NGN" "en"

        "NI" ->
            Country "NI" "505" "Nicaragua" Nothing "NIO" "es"

        "NL" ->
            Country "NL" "31" "Netherlands" (Just "Nederland") "EUR" "en"

        "NO" ->
            Country "NO" "47" "Norway" (Just "Norge") "NOK" "en"

        "NP" ->
            Country "NP" "977" "Nepal" (Just "नेपाल") "NPR" "en"

        "NR" ->
            Country "NR" "674" "Nauru" Nothing "AUD" "en"

        "NU" ->
            Country "NU" "683" "Niue" Nothing "NZD" "en"

        "NZ" ->
            Country "NZ" "64" "New Zealand" Nothing "NZD" "en"

        "OM" ->
            Country "OM" "968" "Oman" (Just "عُمان") "OMR" "en"

        "PA" ->
            Country "PA" "507" "Panama" (Just "Panamá") "PAB" "es"

        "PE" ->
            Country "PE" "51" "Peru" (Just "Perú") "PEN" "es"

        "PF" ->
            Country "PF" "689" "French Polynesia" Nothing "XPF" "en"

        "PG" ->
            Country "PG" "675" "Papua New Guinea" Nothing "PGK" "en"

        "PH" ->
            Country "PH" "63" "Philippines" Nothing "PHP" "tl"

        "PK" ->
            Country "PK" "92" "Pakistan" (Just "پاکستان") "PKR" "ur"

        "PL" ->
            Country "PL" "48" "Poland" (Just "Polska") "PLN" "pl"

        "PM" ->
            Country "PM" "508" "St. Pierre & Miquelon" Nothing "EUR" "en"

        "PN" ->
            Country "PN" "870" "Pitcairn Islands" Nothing "NZD" "en"

        "PR" ->
            Country "PR" "1" "Puerto Rico" Nothing "USD" "en"

        "PT" ->
            Country "PT" "351" "Portugal" Nothing "EUR" "pt"

        "PW" ->
            Country "PW" "680" "Palau" (Just "Belau") "USD" "en"

        "PY" ->
            Country "PY" "595" "Paraguay" Nothing "PYG" "es"

        "QA" ->
            Country "QA" "974" "Qatar" (Just "قطر") "QAR" "ar"

        "RE" ->
            Country "RE" "262" "Réunion" Nothing "EUR" "en"

        "RO" ->
            Country "RO" "40" "Romania" (Just "România") "RON" "ro"

        "RS" ->
            Country "RS" "381" "Serbia" (Just "Srbija") "RSD" "en"

        "RU" ->
            Country "RU" "7" "Russia" (Just "Россия") "RUB" "ru"

        "RW" ->
            Country "RW" "250" "Rwanda" Nothing "RWF" "en"

        "SA" ->
            Country "SA" "966" "Saudi Arabia" (Just "المملكة العربية السعودية") "SAR" "en"

        "SB" ->
            Country "SB" "677" "Solomon Islands" Nothing "SBD" "en"

        "SC" ->
            Country "SC" "248" "Seychelles" Nothing "SCR" "en"

        "SD" ->
            Country "SD" "249" "Sudan" Nothing "SDG" "en"

        "SE" ->
            Country "SE" "46" "Sweden" (Just "Sverige") "SEK" "sv"

        "SG" ->
            Country "SG" "65" "Singapore" Nothing "SGD" "ms"

        "SH" ->
            Country "SH" "290" "St. Helena" Nothing "SHP" "en"

        "SI" ->
            Country "SI" "386" "Slovenia" (Just "Slovenija") "EUR" "en"

        "SJ" ->
            Country "SJ" "47" "Svalbard & Jan Mayen" Nothing "NOK" "en"

        "SK" ->
            Country "SK" "421" "Slovakia" (Just "Slovensko") "EUR" "en"

        "SL" ->
            Country "SL" "232" "Sierra Leone" Nothing "SLL" "en"

        "SM" ->
            Country "SM" "378" "San Marino" Nothing "EUR" "en"

        "SN" ->
            Country "SN" "221" "Senegal" (Just "Sénégal") "XOF" "wo"

        "SO" ->
            Country "SO" "252" "Somalia" (Just "الصومال") "SOS" "en"

        "SR" ->
            Country "SR" "597" "Suriname" Nothing "SRD" "en"

        "SS" ->
            Country "SS" "211" "South Sudan" Nothing "SDG" "en"

        "ST" ->
            Country "ST" "239" "São Tomé & Príncipe" Nothing "STD" "en"

        "SV" ->
            Country "SV" "503" "El Salvador" Nothing "USD" "es"

        "SX" ->
            Country "SX" "1721" "Sint Maarten" Nothing "ANG" "en"

        "SY" ->
            Country "SY" "963" "Syria" (Just "سورية") "SYP" "en"

        "SZ" ->
            Country "SZ" "268" "Swaziland" Nothing "SZL" "en"

        "TC" ->
            Country "TC" "1649" "Turks & Caicos Islands" Nothing "USD" "en"

        "TD" ->
            Country "TD" "235" "Chad" (Just "تشاد") "XAF" "en"

        "TF" ->
            Country "TF" "262" "French Southern Territories" Nothing "EUR" "en"

        "TG" ->
            Country "TG" "228" "Togo" Nothing "XOF" "en"

        "TH" ->
            Country "TH" "66" "Thailand" (Just "เมืองไทย") "THB" "th"

        "TJ" ->
            Country "TJ" "992" "Tajikistan" (Just "Тоҷикистон") "TJS" "en"

        "TK" ->
            Country "TK" "690" "Tokelau" Nothing "NZD" "en"

        "TL" ->
            Country "TL" "670" "Timor-Leste" Nothing "USD" "en"

        "TM" ->
            Country "TM" "993" "Turkmenistan" Nothing "TMT" "en"

        "TN" ->
            Country "TN" "216" "Tunisia" (Just "تونس") "TND" "ar"

        "TO" ->
            Country "TO" "676" "Tonga" Nothing "TOP" "en"

        "TR" ->
            Country "TR" "90" "Turkey" (Just "Türkiye") "TRY" "tr"

        "TT" ->
            Country "TT" "1868" "Trinidad & Tobago" Nothing "TTD" "en"

        "TV" ->
            Country "TV" "688" "Tuvalu" Nothing "AUD" "en"

        "TW" ->
            Country "TW" "886" "Taiwan" (Just "中華民國") "TWD" "en"

        "TZ" ->
            Country "TZ" "255" "Tanzania" Nothing "TZS" "en"

        "UA" ->
            Country "UA" "380" "Ukraine" (Just "Ukraїna") "UAH" "en"

        "UG" ->
            Country "UG" "256" "Uganda" Nothing "UGX" "en"

        "US" ->
            Country "US" "1" "United States" Nothing "USD" "en"

        "UY" ->
            Country "UY" "598" "Uruguay" Nothing "UYU" "es"

        "UZ" ->
            Country "UZ" "998" "Uzbekistan" (Just "Ўзбекистон") "UZS" "en"

        "VA" ->
            Country "VA" "3906" "Vatican City" Nothing "EUR" "en"

        "VC" ->
            Country "VC" "1784" "St. Vincent & Grenadines" Nothing "XCD" "en"

        "VE" ->
            Country "VE" "58" "Venezuela" Nothing "VEF" "es"

        "VG" ->
            Country "VG" "1284" "British Virgin Islands" Nothing "USD" "en"

        "VI" ->
            Country "VI" "1340" "U.S. Virgin Islands" Nothing "USD" "en"

        "VN" ->
            Country "VN" "84" "Vietnam" (Just "Việt Nam") "VND" "vi"

        "VU" ->
            Country "VU" "678" "Vanuatu" Nothing "VUV" "en"

        "WF" ->
            Country "WF" "681" "Wallis & Futuna" Nothing "XPF" "en"

        "WS" ->
            Country "WS" "685" "Samoa" (Just "Amerika Sāmoa") "WST" "en"

        "YE" ->
            Country "YE" "967" "Yemen" (Just "اليمن") "YER" "en"

        "YT" ->
            Country "YT" "262" "Mayotte" Nothing "EUR" "en"

        "ZA" ->
            Country "ZA" "27" "South Africa" Nothing "ZAR" "en"

        "ZM" ->
            Country "ZM" "260" "Zambia" Nothing "ZMW" "en"

        "ZW" ->
            Country "ZW" "263" "Zimbabwe" Nothing "ZWL" "en"

        _ ->
            Debug.crash ("Incorrect country code: " ++ code)
