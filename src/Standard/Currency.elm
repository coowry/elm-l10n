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
type alias CurrencyCode = String

{-| code: identifier (e.g., "USD")
name: currency name (e.g., "US Dollar")
TODO complete
-}
type alias Currency = { code : CurrencyCode
                      , name : String
                      , native_name : Maybe String
                      , symbol : Maybe String }


{-| Get the symbol of the currency
-}
symbol : CurrencyCode -> Maybe String
symbol curr =
    case currency curr of
        Just curr -> curr.symbol
        Nothing -> Nothing


{-| TODO
-}
currency : CurrencyCode -> Maybe Currency
currency code =
    case code of
        "AED" -> Just (Currency "AED" "United Arab Emirates Dirham" Nothing (Just "د.إ"))
        "AFN" -> Just (Currency "AFN" "Afghanistan Afghani" Nothing Nothing)
        "ALL" -> Just (Currency "ALL" "Albania Lek" Nothing Nothing)
        "AMD" -> Just (Currency "AMD" "Armenia Dram" Nothing Nothing)
        "ANG" -> Just (Currency "ANG" "Netherlands Antilles Guilder" Nothing Nothing)
        "AOA" -> Just (Currency "AOA" "Angola Kwanza" Nothing Nothing)
        "ARS" -> Just (Currency "ARS" "Argentine Peso" Nothing (Just "$"))
        "AUD" -> Just (Currency "AUD" "Australia Dollar" Nothing (Just "$"))
        "AWG" -> Just (Currency "AWG" "Aruba Guilder" Nothing Nothing)
        "AZN" -> Just (Currency "AZN" "Azerbaijan New Manat" Nothing Nothing)
        "BAM" -> Just (Currency "BAM" "Bosnia and Herzegovina Convertible Marka" Nothing Nothing)
        "BBD" -> Just (Currency "BBD" "Barbados Dollar" Nothing Nothing)
        "BDT" -> Just (Currency "BDT" "Bangladeshi Taka" Nothing (Just "Tk"))
        "BGN" -> Just (Currency "BGN" "Bulgaria Lev" Nothing Nothing)
        "BHD" -> Just (Currency "BHD" "Bahrain Dinar" Nothing Nothing)
        "BIF" -> Just (Currency "BIF" "Burundi Franc" Nothing Nothing)
        "BMD" -> Just (Currency "BMD" "Bermuda Dollar" Nothing Nothing)
        "BND" -> Just (Currency "BND" "Brunei Darussalam Dollar" Nothing Nothing)
        "BOB" -> Just (Currency "BOB" "Bolivia Boliviano" Nothing (Just "$b"))
        "BRL" -> Just (Currency "BRL" "Brazil Real" Nothing (Just "R$"))
        "BSD" -> Just (Currency "BSD" "Bahamas Dollar" Nothing Nothing)
        "BTN" -> Just (Currency "BTN" "Bhutan Ngultrum" Nothing Nothing)
        "BWP" -> Just (Currency "BWP" "Botswana Pula" Nothing Nothing)
        "BYR" -> Just (Currency "BYR" "Belarus Ruble" Nothing Nothing)
        "BZD" -> Just (Currency "BZD" "Belize Dollar" Nothing Nothing)
        "CAD" -> Just (Currency "CAD" "Canadian Dollar" Nothing Nothing)
        "CDF" -> Just (Currency "CDF" "Congo/Kinshasa Franc" Nothing Nothing)
        "CHF" -> Just (Currency "CHF" "Switzerland Franc" Nothing Nothing)
        "CLP" -> Just (Currency "CLP" "Chilean Peso" Nothing (Just "$"))
        "CNY" -> Just (Currency "CNY" "Chinese Yuan" Nothing (Just "¥"))
        "COP" -> Just (Currency "COP" "Colombia Peso" Nothing (Just "$"))
        "CRC" -> Just (Currency "CRC" "Costa Rican Colón" Nothing (Just "₡"))
        "CUC" -> Just (Currency "CUC" "Cuba Convertible Peso" Nothing Nothing)
        "CUP" -> Just (Currency "CUP" "Cuban Peso" Nothing (Just "₱"))
        "CVE" -> Just (Currency "CVE" "Cape Verde Escudo" Nothing Nothing)
        "CZK" -> Just (Currency "CZK" "Czech Republic Koruna" Nothing Nothing)
        "DJF" -> Just (Currency "DJF" "Djibouti Franc" Nothing Nothing)
        "DKK" -> Just (Currency "DKK" "Denmark Krone" Nothing Nothing)
        "DOP" -> Just (Currency "DOP" "Dominican Peso" Nothing (Just "RD$"))
        "DZD" -> Just (Currency "DZD" "Algerian Dinar" Nothing (Just "دج"))
        "EGP" -> Just (Currency "EGP" "Egypt Pound" Nothing Nothing)
        "ERN" -> Just (Currency "ERN" "Eritrea Nakfa" Nothing Nothing)
        "ETB" -> Just (Currency "ETB" "Ethiopia Birr" Nothing (Just "Br"))
        "EUR" -> Just (Currency "EUR" "Euro" Nothing (Just "€"))
        "FJD" -> Just (Currency "FJD" "Fijian Dollar" Nothing (Just "$"))
        "FKP" -> Just (Currency "FKP" "Falkland Islands (Malvinas) Pound" Nothing Nothing)
        "GBP" -> Just (Currency "GBP" "British Pound Sterling" Nothing (Just "£"))
        "GEL" -> Just (Currency "GEL" "Georgia Lari" Nothing Nothing)
        "GGP" -> Just (Currency "GGP" "Guernsey Pound" Nothing Nothing)
        "GHS" -> Just (Currency "GHS" "Ghana Cedi" Nothing Nothing)
        "GIP" -> Just (Currency "GIP" "Gibraltar Pound" Nothing Nothing)
        "GMD" -> Just (Currency "GMD" "Gambia Dalasi" Nothing Nothing)
        "GNF" -> Just (Currency "GNF" "Guinea Franc" Nothing Nothing)
        "GTQ" -> Just (Currency "GTQ" "Guatemalan Quetzal" Nothing (Just "Q"))
        "GYD" -> Just (Currency "GYD" "Guyana Dollar" Nothing Nothing)
        "HKD" -> Just (Currency "HKD" "Hong Kong Dollar" Nothing Nothing)
        "HNL" -> Just (Currency "HNL" "Honduran Lempira" Nothing (Just "L"))
        "HRK" -> Just (Currency "HRK" "Croatia Kuna" Nothing Nothing)
        "HTG" -> Just (Currency "HTG" "Haitian Gourde" Nothing (Just "G"))
        "HUF" -> Just (Currency "HUF" "Hungary Forint" Nothing Nothing)
        "IDR" -> Just (Currency "IDR" "Indonesian Rupiah" Nothing (Just "Rp"))
        "ILS" -> Just (Currency "ILS" "Israel Shekel" Nothing (Just "₪"))
        "IMP" -> Just (Currency "IMP" "Isle of Man Pound" Nothing Nothing)
        "INR" -> Just (Currency "INR" "Indian Rupee" Nothing (Just "₹"))
        "IQD" -> Just (Currency "IQD" "Iraq Dinar" Nothing Nothing)
        "IRR" -> Just (Currency "IRR" "Iran Rial" Nothing Nothing)
        "ISK" -> Just (Currency "ISK" "Iceland Krona" Nothing Nothing)
        "JEP" -> Just (Currency "JEP" "Jersey Pound" Nothing Nothing)
        "JMD" -> Just (Currency "JMD" "Jamaican Dollar" Nothing Nothing)
        "JOD" -> Just (Currency "JOD" "Jordan Dinar" Nothing Nothing)
        "JPY" -> Just (Currency "JPY" "Japanese Yen" Nothing (Just "¥"))
        "KES" -> Just (Currency "KES" "Kenya Shilling" Nothing Nothing)
        "KGS" -> Just (Currency "KGS" "Kyrgyzstan Som" Nothing Nothing)
        "KHR" -> Just (Currency "KHR" "Cambodia Riel" Nothing (Just "៛"))
        "KMF" -> Just (Currency "KMF" "Comoros Franc" Nothing Nothing)
        "KPW" -> Just (Currency "KPW" "Korea (North) Won" Nothing Nothing)
        "KRW" -> Just (Currency "KRW" "Korea (South) Won" Nothing Nothing)
        "KWD" -> Just (Currency "KWD" "Kuwait Dinar" Nothing Nothing)
        "KYD" -> Just (Currency "KYD" "Cayman Islands Dollar" Nothing Nothing)
        "KZT" -> Just (Currency "KZT" "Kazakhstan Tenge" Nothing Nothing)
        "LAK" -> Just (Currency "LAK" "Laos Kip" Nothing Nothing)
        "LBP" -> Just (Currency "LBP" "Lebanon Pound" Nothing Nothing)
        "LKR" -> Just (Currency "LKR" "Sri Lanka Rupee" Nothing (Just "₨"))
        "LRD" -> Just (Currency "LRD" "Liberia Dollar" Nothing Nothing)
        "LSL" -> Just (Currency "LSL" "Lesotho Loti" Nothing Nothing)
        "LYD" -> Just (Currency "LYD" "Libya Dinar" Nothing Nothing)
        "MAD" -> Just (Currency "MAD" "Morocco Dirham" Nothing Nothing)
        "MDL" -> Just (Currency "MDL" "Moldova Leu" Nothing Nothing)
        "MGA" -> Just (Currency "MGA" "Madagascar Ariary" Nothing Nothing)
        "MKD" -> Just (Currency "MKD" "Macedonia Denar" Nothing Nothing)
        "MMK" -> Just (Currency "MMK" "Myanmar (Burma) Kyat" Nothing Nothing)
        "MNT" -> Just (Currency "MNT" "Mongolia Tughrik" Nothing Nothing)
        "MOP" -> Just (Currency "MOP" "Macau Pataca" Nothing Nothing)
        "MRO" -> Just (Currency "MRO" "Mauritania Ouguiya" Nothing Nothing)
        "MUR" -> Just (Currency "MUR" "Mauritius Rupee" Nothing Nothing)
        "MVR" -> Just (Currency "MVR" "Maldives (Maldive Islands) Rufiyaa" Nothing Nothing)
        "MWK" -> Just (Currency "MWK" "Malawi Kwacha" Nothing Nothing)
        "MXN" -> Just (Currency "MXN" "Mexico Peso" Nothing (Just "$"))
        "MYR" -> Just (Currency "MYR" "Malaysia Ringgit" Nothing (Just "RM"))
        "MZN" -> Just (Currency "MZN" "Mozambique Metical" Nothing Nothing)
        "NAD" -> Just (Currency "NAD" "Namibia Dollar" Nothing Nothing)
        "NGN" -> Just (Currency "NGN" "Nigeria Naira" Nothing Nothing)
        "NIO" -> Just (Currency "NIO" "Nicaraguan Cordoba" Nothing (Just "C$"))
        "NOK" -> Just (Currency "NOK" "Norway Krone" Nothing Nothing)
        "NPR" -> Just (Currency "NPR" "Nepal Rupee" Nothing Nothing)
        "NZD" -> Just (Currency "NZD" "New Zealand Dollar" Nothing Nothing)
        "OMR" -> Just (Currency "OMR" "Oman Rial" Nothing Nothing)
        "PAB" -> Just (Currency "PAB" "Panamanian Balboa" Nothing (Just "B/."))
        "PEN" -> Just (Currency "PEN" "Peruvian Sol" Nothing (Just "S/."))
        "PGK" -> Just (Currency "PGK" "Papua New Guinea Kina" Nothing Nothing)
        "PHP" -> Just (Currency "PHP" "Philippines Peso" Nothing (Just "₱"))
        "PKR" -> Just (Currency "PKR" "Pakistani Rupee" Nothing (Just "₨"))
        "PLN" -> Just (Currency "PLN" "Poland Zloty" Nothing (Just "zł"))
        "PYG" -> Just (Currency "PYG" "Paraguayan Guaraní" Nothing (Just "Gs"))
        "QAR" -> Just (Currency "QAR" "Qatar Riyal" Nothing (Just "﷼"))
        "RON" -> Just (Currency "RON" "Romania New Leu" Nothing (Just "lei"))
        "RSD" -> Just (Currency "RSD" "Serbia Dinar" Nothing Nothing)
        "RUB" -> Just (Currency "RUB" "Russian Ruble" Nothing (Just "руб"))
        "RWF" -> Just (Currency "RWF" "Rwanda Franc" Nothing Nothing)
        "SAR" -> Just (Currency "SAR" "Saudi Arabia Riyal" Nothing Nothing)
        "SBD" -> Just (Currency "SBD" "Solomon Islands Dollar" Nothing Nothing)
        "SCR" -> Just (Currency "SCR" "Seychelles Rupee" Nothing Nothing)
        "SDG" -> Just (Currency "SDG" "Sudan Pound" Nothing Nothing)
        "SEK" -> Just (Currency "SEK" "Sweden Krona" Nothing (Just "kr"))
        "SGD" -> Just (Currency "SGD" "Singapore Dollar" Nothing (Just "$"))
        "SHP" -> Just (Currency "SHP" "Saint Helena Pound" Nothing Nothing)
        "SLL" -> Just (Currency "SLL" "Sierra Leone Leone" Nothing Nothing)
        "SOS" -> Just (Currency "SOS" "Somalia Shilling" Nothing Nothing)
        "SPL" -> Just (Currency "SPL" "Seborga Luigino" Nothing Nothing)
        "SRD" -> Just (Currency "SRD" "Suriname Dollar" Nothing Nothing)
        "STD" -> Just (Currency "STD" "São Tomé and Príncipe Dobra" Nothing Nothing)
        "SVC" -> Just (Currency "SVC" "El Salvador Colon" Nothing Nothing)
        "SYP" -> Just (Currency "SYP" "Syria Pound" Nothing Nothing)
        "SZL" -> Just (Currency "SZL" "Swaziland Lilangeni" Nothing Nothing)
        "THB" -> Just (Currency "THB" "Thailand Baht" Nothing (Just "฿"))
        "TJS" -> Just (Currency "TJS" "Tajikistan Somoni" Nothing Nothing)
        "TMT" -> Just (Currency "TMT" "Turkmenistan Manat" Nothing Nothing)
        "TND" -> Just (Currency "TND" "Tunisia Dinar" Nothing (Just "د.ت"))
        "TOP" -> Just (Currency "TOP" "Tonga Pa'anga" Nothing Nothing)
        "TRY" -> Just (Currency "TRY" "Turkey Lira" Nothing (Just "₺"))
        "TTD" -> Just (Currency "TTD" "Trinidad and Tobago Dollar" Nothing Nothing)
        "TVD" -> Just (Currency "TVD" "Tuvalu Dollar" Nothing Nothing)
        "TWD" -> Just (Currency "TWD" "Taiwan New Dollar" Nothing Nothing)
        "TZS" -> Just (Currency "TZS" "Tanzania Shilling" Nothing Nothing)
        "UAH" -> Just (Currency "UAH" "Ukraine Hryvnia" Nothing Nothing)
        "UGX" -> Just (Currency "UGX" "Uganda Shilling" Nothing Nothing)
        "USD" -> Just (Currency "USD" "US Dollar" Nothing (Just "$"))
        "UYU" -> Just (Currency "UYU" "Uruguayan Peso" Nothing (Just "$U"))
        "UZS" -> Just (Currency "UZS" "Uzbekistan Som" Nothing Nothing)
        "VEF" -> Just (Currency "VEF" "Venezuelan Bolívar" Nothing (Just "Bs"))
        "VND" -> Just (Currency "VND" "Viet Nam Dong" Nothing (Just "₫"))
        "VUV" -> Just (Currency "VUV" "Vanuatu Vatu" Nothing Nothing)
        "WST" -> Just (Currency "WST" "Samoa Tala" Nothing Nothing)
        "XAF" -> Just (Currency "XAF" "Communauté Financière Africaine (BEAC) CFA Franc BEAC" Nothing Nothing)
        "XCD" -> Just (Currency "XCD" "East Caribbean Dollar" Nothing Nothing)
        "XDR" -> Just (Currency "XDR" "International Monetary Fund (IMF) Special Drawing Rights" Nothing Nothing)
        "XOF" -> Just (Currency "XOF" "Communauté Financière Africaine (BCEAO) Franc" Nothing (Just "CFA"))
        "XPF" -> Just (Currency "XPF" "Comptoirs Français du Pacifique (CFP) Franc" Nothing Nothing)
        "YER" -> Just (Currency "YER" "Yemen Rial" Nothing Nothing)
        "ZAR" -> Just (Currency "ZAR" "South Africa Rand" Nothing (Just "R"))
        "ZMW" -> Just (Currency "ZMW" "Zambia Kwacha" Nothing Nothing)
        "ZWD" -> Just (Currency "ZWD" "Zimbabwe Dollar" Nothing Nothing)
        "ZWL" -> Just (Currency "ZWL" "Zimbabwean Dollar" Nothing Nothing)
        _ -> Nothing
