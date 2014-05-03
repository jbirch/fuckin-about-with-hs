fuckin-about-with-hs
====================

A simple Haskell webapp that only serves to lexicographically sort a comma-separated list.

Implementation details
----------------------

fuckin-about-with-hs is a Scotty webapp that runs on port 3000. It has one route, '/', which requires
one query parameter, 'items'. 'items' is a comma-separated list of strings.

The list of strings is sorted using a shitty quicksort implementation and returned in JSON as a top-level
list. I think this technically makes it invalid JSON.

Building and Running
--------------------

   cabal sandbox init
   cabal configure
   cabal install --only-dependencies
   cabal run

Testing details
---------------

Currently, only hlint and quickcheck are hooked into this. Run them with the `cabal test` command.

Benchmark details
-----------------

I haven't added a benchmark section to the cabal file yet. Seems like a really good thing to
add to something that rolls its own shitty sort.
