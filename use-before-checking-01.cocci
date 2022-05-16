// find some patches that pointer dereferenced before checking.

virtual patch

// <smpl>

@@
type T;
expression E,E1;
identifier i,fld;
statement S;
@@

- T i = E->fld;
+ T i;
  ... when != E=E1
      when != i
  if (E == NULL||...) S
+ i = E->fld;
// </smpl>
