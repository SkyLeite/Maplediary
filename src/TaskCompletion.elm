module TaskCompletion exposing (TaskCompletion)

import Html exposing (Html, div, span, text)
import MapleTask exposing (MapleTask)
import Time


type alias TaskCompletion =
    { task : MapleTask, completedAt : Time.Posix }


view : TaskCompletion -> Html msg
view taskCompletion =
    div []
        [ MapleTask.view taskCompletion.task
        , span [] [ text ("Completed At" taskCompletion.completedAt <| Time.posixToMillis) ]
        ]
