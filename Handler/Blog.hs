module Handler.Blog
    ( getBlogR
    , postBlogR
    -- , getArticleR
    )
where

import Import

import Yesod.Form.Nic (YesodNic, nicHtmlField)
instance YesodNic App

getBlogR :: Handler Html
getBlogR = do
    -- Get the list of Articles inside the datebase
    articles <- runDB $ selectList [] [Desc ArticleTitle]
    -- create the form Field items for use in the template
    (articleWidget, enctype) <- generateFormPost entryForm
    defaultLayout $ do
        $(widgetFile "articles")

postBlogR :: Handler Html
--postBlogR = error "Not yet implemented: postBlogR"
postBlogR = do
    ((res, articleWidget),enctype) <- runFormPost entryForm
    case res of
        FormSuccess article -> do
            articleId <- runDB $ insert article
            setMessage $ toHtml $ (articleTitle article) <> " created"
            redirect $ ArticleR articleId
        _ -> defaultLayout $ do
            setTitle "Please correct your entry form"
            $(widgetFile "articleAddError")

entryForm :: Form Article
entryForm = renderDivs $ Article
    <$> areq textField "Title" Nothing
    <*> areq nicHtmlField "Content" Nothing
