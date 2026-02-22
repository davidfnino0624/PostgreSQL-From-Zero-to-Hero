/*
Indexes Are What Make Databases Useful

They are data structures that improve the lookup speed for queries.
Otherwise they would be just giant text files.

Become Important As Data Size Grows
We didn't need them until the number of rows hit around 10,000.

You Put Indexes On Specific Columns
Then when you search using that column, the index speeds up the process.

Why Not Put An Index On Everything
Each index requires an additional write for each input.
Too many will slow down inserts/deletes.

*/