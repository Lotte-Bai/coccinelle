//lock has declared and initialized by DEFINE_SPINLOCK,
//so we don't need to spin_lock_init again, drop it.

virtual content
virtual patch

@r1@
declarer name DEFINE_SPINLOCK;
identifier spinlock;
@@

DEFINE_SPINLOCK(spinlock);

@r2@
identifier r1.spinlock;
@@

 spin_lock_init(&spinlock);

@depends on !content@
identifier r1.spinlock;
@@

- spin_lock_init(&spinlock);

@script:python depends on r2 && content@
spinlock << r1.spinlock;
@@

