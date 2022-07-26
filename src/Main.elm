module Main exposing (..)

import Browser
import Html exposing (Html, button, div, span, text)
import Html.Events exposing (onClick)
import MapleTask exposing (MapleTask)



-- MAIN


main =
    Browser.sandbox
        { init = init
        , update = update
        , view = view
        }



-- MODEL


type alias Model =
    { tasks : List MapleTask
    }


init : Model
init =
    { tasks = [] }



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div [] (List.map MapleTask.view model.tasks)
        , div [] (List.map MapleTask.view MapleTask.availableTasks)
        ]
