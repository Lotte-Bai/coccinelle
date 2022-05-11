//The list_head xx is initialized statically by
//LIST_HEAD(). It is unnecessary to initialize by INIT_LIST_HEAD(). Drop
//them.


virtual condition
virtual patch
@r1@
declarer name LIST_HEAD;
identifier lname;
@@

LIST_HEAD(lname);

@r2@
identifier r1.lname;
@@

 INIT_LIST_HEAD(&lname);

@depends on !condition@
identifier r1.lname;
@@

- INIT_LIST_HEAD(&lname);

@script:python depends on r2 && condition@
lname << r1.lname;
@@

