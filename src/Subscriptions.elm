module Subscriptions exposing (subscriptions)

import Browser.Events exposing (onAnimationFrame, onResize)
import Messages exposing (Msg(..))
import Model exposing (Model)
import Ports exposing (..)


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.batch
        [ onAnimationFrame OnAnimationFrame
        , onResize (\width _ -> GotNewWidth width)
        , onThemeChange OnThemeChange
        ]
