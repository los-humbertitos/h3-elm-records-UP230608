module Helper exposing (..)

import Html



--Ex simples 1
-- 1 Create a function "add2" that adds two integers


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2



-- 2 Create a function "add3" that adds three floats


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z



-- 3 Create a function "calc" that receives three inputs


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2



-- Recor exercices
-- 1.0 Let's define a record for programming languages


programLang : List { name : String, releaseYear : Int, currentVersion : String }
programLang =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames languages =
    List.map .name languages



-- 2.0. Let's define a record for user


type alias User =
    { name : String
    , uType : String
    }


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\user ->
            if user.uType == "Student" then
                user.name

            else
                ""
        )
        list



-- Ex Videojuegos --


type alias Videogame =
    { title : String, releaseYear : Int, available : Bool, downloads : Int, genres : List String }


videogames : List Videogame
videogames =
    [ { title = "Control", releaseYear = 2019, available = True, downloads = 928334, genres = [ "Action", "Shooter" ] }
    , { title = "Ocarina of time", releaseYear = 1996, available = True, downloads = 928034, genres = [ "Action", "Adventure" ] }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list



--Ex HTML


type alias Computer =
    { ram : String, model : String, brand : String, screenSize : String }


myLaptop : Computer
myLaptop =
    { ram = "16", model = "LOQ", brand = "Lenovo", screenSize = "16" }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ .ram myLaptop) ]
                , Html.li [] [ Html.text ("Modelo: " ++ .model myLaptop) ]
                , Html.li [] [ Html.text ("Marca: " ++ .brand myLaptop) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ]
                ]
            ]
        ]
