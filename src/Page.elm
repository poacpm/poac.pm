module Page exposing (toUnstyledDocument, view)

import Browser
import Html.ResetCss exposing (normalize)
import Html.Styled exposing (Html, fromUnstyled, toUnstyled)
import Html.Styled.Lazy exposing (lazy)
import Messages exposing (Msg)
import Model exposing (Model)
import Page.Footer as Footer
import Page.Header as Header
import Page.Home as Home
import Page.NotFound as NotFound
import Page.Packages as Packages
import Page.Policies as Policies
import Route
import String.Extra exposing (humanize)
import Style.Global


type alias Document msg =
    { title : String
    , body : List (Html msg)
    }


toUnstyledDocument : Document msg -> Browser.Document msg
toUnstyledDocument doc =
    { title = doc.title
    , body = List.map toUnstyled doc.body
    }


view : Model -> Document Msg
view model =
    let
        ( title, body ) =
            currentPage model
    in
    { title = title
    , body =
        [ fromUnstyled normalize
        , Style.Global.all model
        , lazy Header.view model
        , body
        , Footer.view
        ]
    }


currentPage : Model -> ( String, Html Msg )
currentPage model =
    case model.route of
        Route.Home ->
            ( "Poac Package Manager for C++", lazy Home.view model )

        Route.Packages _ ->
            ( "Poac Packages", lazy Packages.view model )

        Route.Policies ->
            ( "Policies", lazy Policies.view "" )

        Route.Policy name ->
            ( humanize name, lazy Policies.view name )

        Route.NotFound ->
            ( "Not Found", NotFound.view )
