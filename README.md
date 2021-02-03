# alchemy

Written in PHP (first time I have tried writing anything PHP) as an address to alchemy's current framework.

1) List all the spaceships allowing filtering by name, class, status

     File: apitest1.php 
           filters on status only , e.g apitest1.php?status="damaged" (case sensitive as it is passed directly into the sql) else return all
           class and name would be simple copys of the if..then for status added to the code.
           
           
2) Show details of a single spaceship
     
     File: apitest2.php
           id must be passed, e.g. apitest2.php?id=1
           the json repsonse structure is incorrect (the armaments array is appended to the array instead of inserted, lack of experience with PHP)
           
           
3) HTML Page : ran out of time.
