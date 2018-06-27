module View exposing (view)

import Views.Index as Index
import Views.Packages as Packages
import Views.Donate as Donate
import Views.Settings as Settings
import Views.NotFound as NotFound
import Model exposing (Model)
import Html exposing (Html)
import Messages exposing (Msg)
import Routing exposing (Route(..))


view : Model -> Html Msg
view model =
    case model.route of
        HomeIndexRoute ->
            Index.view model

        PackagesRoute ->
            Packages.view model

        DonateRoute ->
            Donate.view model

        SettingsRoute ->
            Settings.view model

        NotFoundRoute ->
            NotFound.view model
