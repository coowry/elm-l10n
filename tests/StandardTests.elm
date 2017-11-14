module StandardTests exposing (..)

import Expect exposing (Expectation)
import Fuzz exposing (Fuzzer, int, list, string)
import Json.Decode as JDec
import Json.Encode as JEnc
import Standard.Country as Country
import Test exposing (..)


suite : Test
suite =
    let
        spain =
            Country.country "ES"

        spainValue =
            Country.encoder spain

        spainJson =
            JEnc.encode 0 spainValue
    in
    describe "The Standard library"
        [ describe "Country"
            [ test "Spain native name" <| \_ -> Expect.equal (Just "España") spain.native_name
            , test "Spain pretty print" <| \_ -> Expect.equal "Spain (España)" (Country.pp spain)
            , test "JSON encoding" <|
                \_ ->
                    Expect.equal
                        "{\"code\":\"ES\",\"cc\":\"34\",\"name\":\"Spain\",\"native_name\":\"España\",\"currency\":\"EUR\",\"language\":\"es\"}"
                        spainJson
            , test "JSON decoding value" <|
                \_ -> Expect.equal (Ok spain) (JDec.decodeValue Country.decoder spainValue)
            , test "JSON decoding string" <|
                \_ -> Expect.equal (Ok spain) (JDec.decodeString Country.decoder spainJson)
            ]
        , todo "Implement more tests. See http://package.elm-lang.org/packages/elm-community/elm-test/latest for how to do this!"
        ]
