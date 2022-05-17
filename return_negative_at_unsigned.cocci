virtual patch

// <smpl>
@exists@
identifier f;
constant C;
@@

 unsigned f(...)
 { <+...
*  return -C;
 ...+> }
// </smpl>
