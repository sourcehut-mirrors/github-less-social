{-
┌────────────────────────────────────┐
│ Contributors to github-less-social │
╘════════════════════════════════════╛

Sorted by date of contribution, this file defines contributors in Dhall format
for easy manipulation and consumption.

`name` is prefered name—no need to give away your identity. `::` lets us extend
the defaults (so `Optional` values can be omitted).
-}
let Key = { Type = { long-key-id : Text, fingerprint : Text }, default = {=} }

let Contributor =
      { Type =
          { name : Text
          , email : Text
          , website : Optional Text
          , pronouns : List Text
          , keys : List Key.Type
          }
      , default =
        { website = None Text
        , pronouns = [] : List Text
        , keys = [] : List Key.Type
        }
      }

in    [ Contributor::{
        , name = "toastal"
        , email = "toastal@posteo.net"
        , website = Some "https://toast.al"
        , pronouns = [ "he/him", "เขา", "ລາວ" ]
        , keys =
          [ { long-key-id = "ed25519/5CCE6F1466D47C9E"
            , fingerprint = "7944 74B7 D236 DAB9 C9EF  E7F9 5CCE 6F14 66D4 7C9E"
            }
          ]
        }
      ]
    : List Contributor.Type
