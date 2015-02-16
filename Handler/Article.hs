module Handler.Article where

import Import

getArticleR :: ArticleId -> Handler Html
--getArticleR articleId = error "Not yet implemented: getArticleR"
getArticleR articleId = do
    article <- runDB $ get404 articleId
    defaultLayout $ do
        setTitle $ toHtml $ articleTitle article
        $(widgetFile "article")
