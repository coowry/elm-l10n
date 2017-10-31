module Standard.Currency exposing (CurrencyCode, Currency, currency, symbol)

{-| Currency


# Definition

@docs CurrencyCode
@docs Currency


# Lookup functions

@docs currency
@docs symbol

-}


{-| Identifier of a currency
-}
type alias CurrencyCode =
    String


{-| code: identifier (e.g., "USD")
name: currency name (e.g., "US Dollar")
TODO complete
-}
type alias Currency =
    { code : CurrencyCode
    , name : String
    , native_name : Maybe String
    , symbol : Maybe String
    , fractionDigits : Int
    }


{-| Get the symbol of the currency
-}
symbol : CurrencyCode -> Maybe String
symbol curr =
    case currency curr of
        Just curr ->
            curr.symbol

        Nothing ->
            Nothing


{-| TODO
-}
currency : CurrencyCode -> Maybe Currency
currency code =
    case code of
        "AED" ->
            Just (Currency "AED" "United Arab Emirates Dirham" Nothing (Just "د.إ") 2)

        "AFN" ->
            Just (Currency "AFN" "Afghanistan Afghani" Nothing Nothing 2)

        "ALL" ->
            Just (Currency "ALL" "Albania Lek" Nothing Nothing 2)

        "AMD" ->
            Just (Currency "AMD" "Armenia Dram" Nothing Nothing 2)

        "ANG" ->
            Just (Currency "ANG" "Netherlands Antilles Guilder" Nothing Nothing 2)

        "AOA" ->
            Just (Currency "AOA" "Angola Kwanza" Nothing Nothing 2)

        "ARS" ->
            Just (Currency "ARS" "Argentine Peso" Nothing (Just "$") 2)

        "AUD" ->
            Just (Currency "AUD" "Australia Dollar" Nothing (Just "$") 2)

        "AWG" ->
            Just (Currency "AWG" "Aruba Guilder" Nothing Nothing 2)

        "AZN" ->
            Just (Currency "AZN" "Azerbaijan New Manat" Nothing Nothing 2)

        "BAM" ->
            Just (Currency "BAM" "Bosnia and Herzegovina Convertible Marka" Nothing Nothing 2)

        "BBD" ->
            Just (Currency "BBD" "Barbados Dollar" Nothing Nothing 2)

        "BDT" ->
            Just (Currency "BDT" "Bangladeshi Taka" Nothing (Just "Tk") 2)

        "BGN" ->
            Just (Currency "BGN" "Bulgaria Lev" Nothing Nothing 2)

        "BHD" ->
            Just (Currency "BHD" "Bahrain Dinar" Nothing Nothing 2)

        "BIF" ->
            Just (Currency "BIF" "Burundi Franc" Nothing Nothing 2)

        "BMD" ->
            Just (Currency "BMD" "Bermuda Dollar" Nothing Nothing 2)

        "BND" ->
            Just (Currency "BND" "Brunei Darussalam Dollar" Nothing Nothing 2)

        "BOB" ->
            Just (Currency "BOB" "Bolivia Boliviano" Nothing (Just "$b") 2)

        "BRL" ->
            Just (Currency "BRL" "Brazil Real" Nothing (Just "R$") 2)

        "BSD" ->
            Just (Currency "BSD" "Bahamas Dollar" Nothing Nothing 2)

        "BTN" ->
            Just (Currency "BTN" "Bhutan Ngultrum" Nothing Nothing 2)

        "BWP" ->
            Just (Currency "BWP" "Botswana Pula" Nothing Nothing 2)

        "BYR" ->
            Just (Currency "BYR" "Belarus Ruble" Nothing Nothing 2)

        "BZD" ->
            Just (Currency "BZD" "Belize Dollar" Nothing Nothing 2)

        "CAD" ->
            Just (Currency "CAD" "Canadian Dollar" Nothing Nothing 2)

        "CDF" ->
            Just (Currency "CDF" "Congo/Kinshasa Franc" Nothing Nothing 2)

        "CHF" ->
            Just (Currency "CHF" "Switzerland Franc" Nothing Nothing 2)

        "CLP" ->
            Just (Currency "CLP" "Chilean Peso" Nothing (Just "$") 2)

        "CNY" ->
            Just (Currency "CNY" "Chinese Yuan" Nothing (Just "¥") 2)

        "COP" ->
            Just (Currency "COP" "Colombia Peso" Nothing (Just "$") 2)

        "CRC" ->
            Just (Currency "CRC" "Costa Rican Colón" Nothing (Just "₡") 2)

        "CUC" ->
            Just (Currency "CUC" "Cuba Convertible Peso" Nothing Nothing 2)

        "CUP" ->
            Just (Currency "CUP" "Cuban Peso" Nothing (Just "₱") 2)

        "CVE" ->
            Just (Currency "CVE" "Cape Verde Escudo" Nothing Nothing 2)

        "CZK" ->
            Just (Currency "CZK" "Czech Republic Koruna" Nothing Nothing 2)

        "DJF" ->
            Just (Currency "DJF" "Djibouti Franc" Nothing Nothing 2)

        "DKK" ->
            Just (Currency "DKK" "Denmark Krone" Nothing Nothing 2)

        "DOP" ->
            Just (Currency "DOP" "Dominican Peso" Nothing (Just "RD$") 2)

        "DZD" ->
            Just (Currency "DZD" "Algerian Dinar" Nothing (Just "دج") 2)

        "EGP" ->
            Just (Currency "EGP" "Egypt Pound" Nothing Nothing 2)

        "ERN" ->
            Just (Currency "ERN" "Eritrea Nakfa" Nothing Nothing 2)

        "ETB" ->
            Just (Currency "ETB" "Ethiopia Birr" Nothing (Just "Br") 2)

        "EUR" ->
            Just (Currency "EUR" "Euro" Nothing (Just "€") 2)

        "FJD" ->
            Just (Currency "FJD" "Fijian Dollar" Nothing (Just "$") 2)

        "FKP" ->
            Just (Currency "FKP" "Falkland Islands (Malvinas) Pound" Nothing Nothing 2)

        "GBP" ->
            Just (Currency "GBP" "British Pound Sterling" Nothing (Just "£") 2)

        "GEL" ->
            Just (Currency "GEL" "Georgia Lari" Nothing Nothing 2)

        "GGP" ->
            Just (Currency "GGP" "Guernsey Pound" Nothing Nothing 2)

        "GHS" ->
            Just (Currency "GHS" "Ghana Cedi" Nothing Nothing 2)

        "GIP" ->
            Just (Currency "GIP" "Gibraltar Pound" Nothing Nothing 2)

        "GMD" ->
            Just (Currency "GMD" "Gambia Dalasi" Nothing Nothing 2)

        "GNF" ->
            Just (Currency "GNF" "Guinea Franc" Nothing Nothing 2)

        "GTQ" ->
            Just (Currency "GTQ" "Guatemalan Quetzal" Nothing (Just "Q") 2)

        "GYD" ->
            Just (Currency "GYD" "Guyana Dollar" Nothing Nothing 2)

        "HKD" ->
            Just (Currency "HKD" "Hong Kong Dollar" Nothing Nothing 2)

        "HNL" ->
            Just (Currency "HNL" "Honduran Lempira" Nothing (Just "L") 2)

        "HRK" ->
            Just (Currency "HRK" "Croatia Kuna" Nothing Nothing 2)

        "HTG" ->
            Just (Currency "HTG" "Haitian Gourde" Nothing (Just "G") 2)

        "HUF" ->
            Just (Currency "HUF" "Hungary Forint" Nothing Nothing 2)

        "IDR" ->
            Just (Currency "IDR" "Indonesian Rupiah" Nothing (Just "Rp") 0)

        "ILS" ->
            Just (Currency "ILS" "Israel Shekel" Nothing (Just "₪") 2)

        "IMP" ->
            Just (Currency "IMP" "Isle of Man Pound" Nothing Nothing 2)

        "INR" ->
            Just (Currency "INR" "Indian Rupee" Nothing (Just "₹") 2)

        "IQD" ->
            Just (Currency "IQD" "Iraq Dinar" Nothing Nothing 2)

        "IRR" ->
            Just (Currency "IRR" "Iran Rial" Nothing Nothing 2)

        "ISK" ->
            Just (Currency "ISK" "Iceland Krona" Nothing Nothing 2)

        "JEP" ->
            Just (Currency "JEP" "Jersey Pound" Nothing Nothing 2)

        "JMD" ->
            Just (Currency "JMD" "Jamaican Dollar" Nothing Nothing 2)

        "JOD" ->
            Just (Currency "JOD" "Jordan Dinar" Nothing Nothing 2)

        "JPY" ->
            Just (Currency "JPY" "Japanese Yen" Nothing (Just "¥") 2)

        "KES" ->
            Just (Currency "KES" "Kenya Shilling" Nothing Nothing 2)

        "KGS" ->
            Just (Currency "KGS" "Kyrgyzstan Som" Nothing Nothing 2)

        "KHR" ->
            Just (Currency "KHR" "Cambodia Riel" Nothing (Just "៛") 2)

        "KMF" ->
            Just (Currency "KMF" "Comoros Franc" Nothing Nothing 2)

        "KPW" ->
            Just (Currency "KPW" "Korea (North) Won" Nothing Nothing 2)

        "KRW" ->
            Just (Currency "KRW" "Korea (South) Won" Nothing Nothing 2)

        "KWD" ->
            Just (Currency "KWD" "Kuwait Dinar" Nothing Nothing 2)

        "KYD" ->
            Just (Currency "KYD" "Cayman Islands Dollar" Nothing Nothing 2)

        "KZT" ->
            Just (Currency "KZT" "Kazakhstan Tenge" Nothing Nothing 2)

        "LAK" ->
            Just (Currency "LAK" "Laos Kip" Nothing Nothing 2)

        "LBP" ->
            Just (Currency "LBP" "Lebanon Pound" Nothing Nothing 2)

        "LKR" ->
            Just (Currency "LKR" "Sri Lanka Rupee" Nothing (Just "₨") 2)

        "LRD" ->
            Just (Currency "LRD" "Liberia Dollar" Nothing Nothing 2)

        "LSL" ->
            Just (Currency "LSL" "Lesotho Loti" Nothing Nothing 2)

        "LYD" ->
            Just (Currency "LYD" "Libya Dinar" Nothing Nothing 2)

        "MAD" ->
            Just (Currency "MAD" "Morocco Dirham" Nothing Nothing 2)

        "MDL" ->
            Just (Currency "MDL" "Moldova Leu" Nothing Nothing 2)

        "MGA" ->
            Just (Currency "MGA" "Madagascar Ariary" Nothing Nothing 2)

        "MKD" ->
            Just (Currency "MKD" "Macedonia Denar" Nothing Nothing 2)

        "MMK" ->
            Just (Currency "MMK" "Myanmar (Burma) Kyat" Nothing Nothing 2)

        "MNT" ->
            Just (Currency "MNT" "Mongolia Tughrik" Nothing Nothing 2)

        "MOP" ->
            Just (Currency "MOP" "Macau Pataca" Nothing Nothing 2)

        "MRO" ->
            Just (Currency "MRO" "Mauritania Ouguiya" Nothing Nothing 2)

        "MUR" ->
            Just (Currency "MUR" "Mauritius Rupee" Nothing Nothing 2)

        "MVR" ->
            Just (Currency "MVR" "Maldives (Maldive Islands) Rufiyaa" Nothing Nothing 2)

        "MWK" ->
            Just (Currency "MWK" "Malawi Kwacha" Nothing Nothing 2)

        "MXN" ->
            Just (Currency "MXN" "Mexico Peso" Nothing (Just "$") 2)

        "MYR" ->
            Just (Currency "MYR" "Malaysia Ringgit" Nothing (Just "RM") 2)

        "MZN" ->
            Just (Currency "MZN" "Mozambique Metical" Nothing Nothing 2)

        "NAD" ->
            Just (Currency "NAD" "Namibia Dollar" Nothing Nothing 2)

        "NGN" ->
            Just (Currency "NGN" "Nigeria Naira" Nothing Nothing 2)

        "NIO" ->
            Just (Currency "NIO" "Nicaraguan Cordoba" Nothing (Just "C$") 2)

        "NOK" ->
            Just (Currency "NOK" "Norway Krone" Nothing Nothing 2)

        "NPR" ->
            Just (Currency "NPR" "Nepal Rupee" Nothing Nothing 2)

        "NZD" ->
            Just (Currency "NZD" "New Zealand Dollar" Nothing Nothing 2)

        "OMR" ->
            Just (Currency "OMR" "Oman Rial" Nothing Nothing 2)

        "PAB" ->
            Just (Currency "PAB" "Panamanian Balboa" Nothing (Just "B/.") 2)

        "PEN" ->
            Just (Currency "PEN" "Peruvian Sol" Nothing (Just "S/.") 2)

        "PGK" ->
            Just (Currency "PGK" "Papua New Guinea Kina" Nothing Nothing 2)

        "PHP" ->
            Just (Currency "PHP" "Philippines Peso" Nothing (Just "₱") 0)

        "PKR" ->
            Just (Currency "PKR" "Pakistani Rupee" Nothing (Just "₨") 2)

        "PLN" ->
            Just (Currency "PLN" "Poland Zloty" Nothing (Just "zł") 2)

        "PYG" ->
            Just (Currency "PYG" "Paraguayan Guaraní" Nothing (Just "Gs") 2)

        "QAR" ->
            Just (Currency "QAR" "Qatar Riyal" Nothing (Just "﷼") 2)

        "RON" ->
            Just (Currency "RON" "Romania New Leu" Nothing (Just "lei") 2)

        "RSD" ->
            Just (Currency "RSD" "Serbia Dinar" Nothing Nothing 2)

        "RUB" ->
            Just (Currency "RUB" "Russian Ruble" Nothing (Just "руб") 2)

        "RWF" ->
            Just (Currency "RWF" "Rwanda Franc" Nothing Nothing 2)

        "SAR" ->
            Just (Currency "SAR" "Saudi Arabia Riyal" Nothing Nothing 2)

        "SBD" ->
            Just (Currency "SBD" "Solomon Islands Dollar" Nothing Nothing 2)

        "SCR" ->
            Just (Currency "SCR" "Seychelles Rupee" Nothing Nothing 2)

        "SDG" ->
            Just (Currency "SDG" "Sudan Pound" Nothing Nothing 2)

        "SEK" ->
            Just (Currency "SEK" "Sweden Krona" Nothing (Just "kr") 2)

        "SGD" ->
            Just (Currency "SGD" "Singapore Dollar" Nothing (Just "$") 2)

        "SHP" ->
            Just (Currency "SHP" "Saint Helena Pound" Nothing Nothing 2)

        "SLL" ->
            Just (Currency "SLL" "Sierra Leone Leone" Nothing Nothing 2)

        "SOS" ->
            Just (Currency "SOS" "Somalia Shilling" Nothing Nothing 2)

        "SPL" ->
            Just (Currency "SPL" "Seborga Luigino" Nothing Nothing 2)

        "SRD" ->
            Just (Currency "SRD" "Suriname Dollar" Nothing Nothing 2)

        "STD" ->
            Just (Currency "STD" "São Tomé and Príncipe Dobra" Nothing Nothing 2)

        "SVC" ->
            Just (Currency "SVC" "El Salvador Colon" Nothing Nothing 2)

        "SYP" ->
            Just (Currency "SYP" "Syria Pound" Nothing Nothing 2)

        "SZL" ->
            Just (Currency "SZL" "Swaziland Lilangeni" Nothing Nothing 2)

        "THB" ->
            Just (Currency "THB" "Thailand Baht" Nothing (Just "฿") 2)

        "TJS" ->
            Just (Currency "TJS" "Tajikistan Somoni" Nothing Nothing 2)

        "TMT" ->
            Just (Currency "TMT" "Turkmenistan Manat" Nothing Nothing 2)

        "TND" ->
            Just (Currency "TND" "Tunisia Dinar" Nothing (Just "د.ت") 2)

        "TOP" ->
            Just (Currency "TOP" "Tonga Pa'anga" Nothing Nothing 2)

        "TRY" ->
            Just (Currency "TRY" "Turkey Lira" Nothing (Just "₺") 2)

        "TTD" ->
            Just (Currency "TTD" "Trinidad and Tobago Dollar" Nothing Nothing 2)

        "TVD" ->
            Just (Currency "TVD" "Tuvalu Dollar" Nothing Nothing 2)

        "TWD" ->
            Just (Currency "TWD" "Taiwan New Dollar" Nothing Nothing 2)

        "TZS" ->
            Just (Currency "TZS" "Tanzania Shilling" Nothing Nothing 2)

        "UAH" ->
            Just (Currency "UAH" "Ukraine Hryvnia" Nothing Nothing 2)

        "UGX" ->
            Just (Currency "UGX" "Uganda Shilling" Nothing Nothing 2)

        "USD" ->
            Just (Currency "USD" "US Dollar" Nothing (Just "$") 2)

        "UYU" ->
            Just (Currency "UYU" "Uruguayan Peso" Nothing (Just "$U") 2)

        "UZS" ->
            Just (Currency "UZS" "Uzbekistan Som" Nothing Nothing 2)

        "VEF" ->
            Just (Currency "VEF" "Venezuelan Bolívar" Nothing (Just "Bs") 2)

        "VND" ->
            Just (Currency "VND" "Viet Nam Dong" Nothing (Just "₫") 2)

        "VUV" ->
            Just (Currency "VUV" "Vanuatu Vatu" Nothing Nothing 2)

        "WST" ->
            Just (Currency "WST" "Samoa Tala" Nothing Nothing 2)

        "XAF" ->
            Just (Currency "XAF" "Communauté Financière Africaine (BEAC) CFA Franc BEAC" Nothing Nothing 2)

        "XCD" ->
            Just (Currency "XCD" "East Caribbean Dollar" Nothing Nothing 2)

        "XDR" ->
            Just (Currency "XDR" "International Monetary Fund (IMF) Special Drawing Rights" Nothing Nothing 2)

        "XOF" ->
            Just (Currency "XOF" "Communauté Financière Africaine (BCEAO) Franc" Nothing (Just "CFA") 2)

        "XPF" ->
            Just (Currency "XPF" "Comptoirs Français du Pacifique (CFP) Franc" Nothing Nothing 2)

        "YER" ->
            Just (Currency "YER" "Yemen Rial" Nothing Nothing 2)

        "ZAR" ->
            Just (Currency "ZAR" "South Africa Rand" Nothing (Just "R") 2)

        "ZMW" ->
            Just (Currency "ZMW" "Zambia Kwacha" Nothing Nothing 2)

        "ZWD" ->
            Just (Currency "ZWD" "Zimbabwe Dollar" Nothing Nothing 2)

        "ZWL" ->
            Just (Currency "ZWL" "Zimbabwean Dollar" Nothing Nothing 2)

        _ ->
            Nothing
