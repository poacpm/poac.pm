module Page.Policies.Dispute exposing (view)

import Css exposing (..)
import Css.Colors exposing (gray)
import Html.Styled exposing (..)
import Html.Styled.Attributes exposing (css)
import Messages exposing (Msg)


view : List (Html Msg)
view =
    [ h2 [] [ text "Dispute Policy" ]
    , h3 [ css [ color gray ] ]
        [ text "Comming soon..." ]
    ]
