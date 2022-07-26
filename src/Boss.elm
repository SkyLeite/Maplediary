module Boss exposing (Boss, BossName, chaosZakum, toString, zakum)


type alias Boss =
    { name : BossName
    , crystalCost : Int
    }


type BossName
    = Zakum
    | ChaosZakum


zakum : Boss
zakum =
    Boss Zakum 612500


chaosZakum : Boss
chaosZakum =
    Boss ChaosZakum 16200000


toString : Boss -> String
toString boss =
    case boss.name of
        Zakum ->
            "Zakum"

        ChaosZakum ->
            "Chaos Zakum"
