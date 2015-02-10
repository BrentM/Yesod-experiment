#Yesod Experiment

I'm going to play around with Yesod. I am enjoying Haskell and am interested in a framework that is focused on correctness.

I'm starting by following this guide: http://yannesposito.com/Scratch/fr/blog/Yesod-tutorial-for-newbies/

##Mirror endpoint
I had some trouble getting the mirror endpoint working using the example code. Something about the import of Data.Text to Mirror.hs was causing a conflict. Strangely this also confused the automatic compilation of the project.

To get around this I used the reverse function as imported from Foundation.hs.
## the Database is automatically migrated
This is run when the new model is detected in config/models
Something about this caused the dev server to terminate but a simple restart fixed it.
    Migrating: CREATE TABLE "article"("id" INTEGER PRIMARY KEY,"title" VARCHAR NOT NULL,"content" VARCHAR NOT NULL)
09/Feb/2015:21:22:28 -0800 [Debug#SQL] "CREATE TABLE \"article\"(\"id\" INTEGER PRIMARY KEY,\"title\" VARCHAR NOT NULL,\"content\" VARCHAR NOT NULL)" [] @(persistent-2.1.1.4:Database.Persist.Sql.Raw ./Database/Persist/Sql/Raw.hs:64:18)
