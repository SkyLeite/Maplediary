module MapleTask exposing (Kind(..), MapleTask, availableTasks, view)

import Boss exposing (Boss)
import Html exposing (Html, div, span, text)


type alias MapleTask =
    { kind : Kind
    , frequency : TaskFrequency
    }


type Kind
    = BossKill Boss
    | Quest


type TaskFrequency
    = Daily
    | Weekly


frequencyToString : TaskFrequency -> String
frequencyToString frequency =
    case frequency of
        Daily ->
            "Daily"

        Weekly ->
            "Weekly"


view : MapleTask -> Html msg
view task =
    div []
        [ span [] [ task.kind |> kindToString |> text ]
        , span [] [ task.frequency |> frequencyToString |> text ]
        ]


kindToString : Kind -> String
kindToString kind =
    case kind of
        BossKill boss ->
            Boss.toString boss

        Quest ->
            "Quest"


availableTasks : List MapleTask
availableTasks =
    [ MapleTask (BossKill Boss.zakum) Daily
    , MapleTask (BossKill Boss.chaosZakum) Weekly
    ]
