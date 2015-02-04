#Yesod Experiment

I'm going to play around with Yesod. I am enjoying Haskell and am interested in a framework that is focused on correctness.

I'm starting by following this guide: http://yannesposito.com/Scratch/fr/blog/Yesod-tutorial-for-newbies/

##Mirror endpoint
I had some trouble getting the mirror endpoint working using the example code. Something about the import of Data.Text to Mirror.hs was causing a conflict. Strangely this also confused the automatic compilation of the project.

To get around this I used the reverse function as imported from Foundation.hs.
