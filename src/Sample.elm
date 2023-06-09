module Sample exposing (..)

import Browser
import Html exposing (button, div, text)
import Html.Events exposing (onClick)



-- Main


main : Program () Int Msg
main =
    Browser.sandbox { init = init, update = update, view = view }



-- Model


type alias Model =
    Int


init : Model
init =
    0



-- UPDATE


type Msg
    = Increment
    | Decrement
    | Reset
    | IncrementByTen


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1

        Reset ->
            0

        IncrementByTen ->
            model + 10


view : Model -> Html.Html Msg
view model =
    div []
        [ button [ onClick Decrement ] [ text "-" ]
        , div [] [ text (String.fromInt model) ]
        , button [ onClick Increment ] [ text "+" ]
        , button [ onClick Reset ] [ text "Reset" ]
        , button [ onClick IncrementByTen ] [ text "Increment by 10" ]
        ]
