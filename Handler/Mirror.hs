module Handler.Mirror where

import Import

getMirrorR :: Handler Html
getMirrorR = defaultLayout $(widgetFile "mirror") --error "Not yet implemented: getMirrorR more text!"

postMirrorR :: Handler Html
postMirrorR =  do
        postedText <- runInputPost $ ireq textField "content"
        defaultLayout $(widgetFile "posted")
