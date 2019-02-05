module Views.Footer exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Messages exposing (..)


view : Html Msg
view =
    footer []
        [ hr [ class "border-hr" ] []
        , div [ class "footer-content" ]
            [ div [ class "links" ]
                --              [ a [ href ("/" ++ (String.toLower "Policies")) ]
                --                  [ text "Policies"
                --                  ]
                --              , a [ href ("/" ++ (String.toLower "Sponsors")) ]
                --                  [ text "Sponsors"
                --                  ]
                [ a [ href "mailto:support@poac.io?subject=[Feedback]" ]
                    [ text "Feedback" ]
                , a [ href "https://github.com/poacpm" ]
                    [ text "GitHub" ]
                ]
            , div [ class "copyright" ]
                [ text "©︎ 2018 "
                , a [ href "https://github.com/matken11235" ]
                    [ text "Ken Matsui" ]
                ]
            ]
        ]
