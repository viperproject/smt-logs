(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
; done setting options


(set-info :category "industrial")
(declare-sort |T@U| 0)
(declare-sort |T@T| 0)
(declare-fun real_pow (Real Real) Real)
(declare-fun UOrdering2 (|T@U| |T@U|) Bool)
(declare-fun UOrdering3 (|T@T| |T@U| |T@U|) Bool)
(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-fun TInt () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.Wellformedness.Iter1? () T@U)
(declare-fun Tagclass.Wellformedness.Iter1? () T@U)
(declare-fun Tagclass.Wellformedness.Iter1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Iter1 () T@U)
(declare-fun field$_new () T@U)
(declare-fun Ctor (T@T) Int)
(declare-fun boolType () T@T)
(declare-fun intType () T@T)
(declare-fun realType () T@T)
(declare-fun bool_2_U (Bool) T@U)
(declare-fun U_2_bool (T@U) Bool)
(declare-fun int_2_U (Int) T@U)
(declare-fun U_2_int (T@U) Int)
(declare-fun real_2_U (Real) T@U)
(declare-fun U_2_real (T@U) Real)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Wellformedness.Iter1.x (T@U) Int)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Wellformedness.Iter1? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Wellformedness.Iter1.z (T@U) Int)
(declare-fun Wellformedness.Iter1.__decreases0 (T@U) Int)
(declare-fun Wellformedness.Iter1.__decreases1 (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Wellformedness.Iter1 () T@U)
(declare-fun Wellformedness.Iter1.__new () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Wellformedness.Iter1.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Wellformedness.Iter1.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#10| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Wellformedness.Iter1.__modifies (T@U) T@U)
(assert  (and (and (and (and (and (and (and (and (= (Ctor boolType) 0) (= (Ctor intType) 1)) (= (Ctor realType) 2)) (forall ((arg0 Bool) ) (! (= (U_2_bool (bool_2_U arg0)) arg0)
 :qid |typeInv:U_2_bool|
 :pattern ( (bool_2_U arg0))
))) (forall ((x T@U) ) (! (= (bool_2_U (U_2_bool x)) x)
 :qid |cast:U_2_bool|
 :pattern ( (U_2_bool x))
))) (forall ((arg0@@0 Int) ) (! (= (U_2_int (int_2_U arg0@@0)) arg0@@0)
 :qid |typeInv:U_2_int|
 :pattern ( (int_2_U arg0@@0))
))) (forall ((x@@0 T@U) ) (! (= (int_2_U (U_2_int x@@0)) x@@0)
 :qid |cast:U_2_int|
 :pattern ( (U_2_int x@@0))
))) (forall ((arg0@@1 Real) ) (! (= (U_2_real (real_2_U arg0@@1)) arg0@@1)
 :qid |typeInv:U_2_real|
 :pattern ( (real_2_U arg0@@1))
))) (forall ((x@@1 T@U) ) (! (= (real_2_U (U_2_real x@@1)) x@@1)
 :qid |cast:U_2_real|
 :pattern ( (U_2_real x@@1))
))))
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.Wellformedness.Iter1? Tagclass.Wellformedness.Iter1? Tagclass.Wellformedness.Iter1 tytagFamily$object tytagFamily$Iter1 field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.Wellformedness.Iter1?)) ($Is intType (int_2_U (Wellformedness.Iter1.x $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |4165|
 :pattern ( (Wellformedness.Iter1.x $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.Wellformedness.Iter1?)) ($Is intType (int_2_U (Wellformedness.Iter1.z $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |4167|
 :pattern ( (Wellformedness.Iter1.z $o@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.Wellformedness.Iter1?)) ($Is intType (int_2_U (Wellformedness.Iter1.__decreases0 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |4175|
 :pattern ( (Wellformedness.Iter1.__decreases0 $o@@1))
)))
(assert (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Wellformedness.Iter1?)) ($Is intType (int_2_U (Wellformedness.Iter1.__decreases1 $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |4177|
 :pattern ( (Wellformedness.Iter1.__decreases1 $o@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3552|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.Wellformedness.Iter1?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.Wellformedness.Iter1?)))
 :qid |unknown.0:0|
 :skolemid |4163|
 :pattern ( ($Is refType $o@@3 Tclass.Wellformedness.Iter1?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |3778|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Wellformedness.Iter1 $h@@0) ($IsAlloc refType |c#0@@0| Tclass.Wellformedness.Iter1? $h@@0))
 :qid |unknown.0:0|
 :skolemid |4190|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Wellformedness.Iter1 $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Wellformedness.Iter1? $h@@0))
)))
(assert (= (FDim Wellformedness.Iter1.__new) 0))
(assert (= (FieldOfDecl class.Wellformedness.Iter1? field$_new) Wellformedness.Iter1.__new))
(assert ($IsGhostField Wellformedness.Iter1.__new))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@4 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@1)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3775|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@5 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.Wellformedness.Iter1? $h@@2)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4164|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.Wellformedness.Iter1? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3545|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3546|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3444|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3442|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3453|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3473|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3474|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.Wellformedness.Iter1))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@6 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (or (or (= $o@@6 this) (|Set#IsMember| (Wellformedness.Iter1.__reads this) ($Box refType $o@@6))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) Wellformedness.Iter1.__new)) ($Box refType $o@@6)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@6) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@6) $f)))
 :qid |unknown.0:0|
 :skolemid |4182|
)) (= (Wellformedness.Iter1.Valid $h0 this) (Wellformedness.Iter1.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4183|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (Wellformedness.Iter1.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3466|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3538|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3537|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#10| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f@@0))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (= $o@@7 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |14273|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#10| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3773|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |3776|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Wellformedness.Iter1?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.Wellformedness.Iter1?)))
 :qid |unknown.0:0|
 :skolemid |4162|
 :pattern ( ($IsBox bx@@3 Tclass.Wellformedness.Iter1?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Wellformedness.Iter1) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.Wellformedness.Iter1)))
 :qid |unknown.0:0|
 :skolemid |4180|
 :pattern ( ($IsBox bx@@4 Tclass.Wellformedness.Iter1))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3777|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Wellformedness.Iter1)  (and ($Is refType |c#0@@2| Tclass.Wellformedness.Iter1?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4189|
 :pattern ( ($Is refType |c#0@@2| Tclass.Wellformedness.Iter1))
 :pattern ( ($Is refType |c#0@@2| Tclass.Wellformedness.Iter1?))
)))
(assert (forall (($h@@3 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.Wellformedness.Iter1?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@8) Wellformedness.Iter1.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4173|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@8) Wellformedness.Iter1.__new)))
)))
(assert (forall (($h@@4 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@9) Wellformedness.Iter1.__new)) (TSet Tclass._System.object?) $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4174|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@9) Wellformedness.Iter1.__new)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3577|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3544|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |3534|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3454|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3465|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3494|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3495|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |3774|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3428|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3429|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3452|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@5 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (Wellformedness.Iter1.x $o@@11)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4166|
 :pattern ( (Wellformedness.Iter1.x $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@11) alloc)))
)))
(assert (forall (($h@@6 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (Wellformedness.Iter1.z $o@@12)) TInt $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4168|
 :pattern ( (Wellformedness.Iter1.z $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@12) alloc)))
)))
(assert (forall (($h@@7 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (Wellformedness.Iter1.__decreases0 $o@@13)) TInt $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4176|
 :pattern ( (Wellformedness.Iter1.__decreases0 $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@13) alloc)))
)))
(assert (forall (($h@@8 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (Wellformedness.Iter1.__decreases1 $o@@14)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4178|
 :pattern ( (Wellformedness.Iter1.__decreases1 $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@14) alloc)))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3459|
 :pattern ( ($IsBox bx@@7 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Wellformedness.Iter1?) Tagclass.Wellformedness.Iter1?))
(assert (= (TagFamily Tclass.Wellformedness.Iter1?) tytagFamily$Iter1))
(assert (= (Tag Tclass.Wellformedness.Iter1) Tagclass.Wellformedness.Iter1))
(assert (= (TagFamily Tclass.Wellformedness.Iter1) tytagFamily$Iter1))
(assert (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.Wellformedness.Iter1?)) ($Is SetType (Wellformedness.Iter1.__reads $o@@15) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4169|
 :pattern ( (Wellformedness.Iter1.__reads $o@@15))
)))
(assert (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.Wellformedness.Iter1?)) ($Is SetType (Wellformedness.Iter1.__modifies $o@@16) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4171|
 :pattern ( (Wellformedness.Iter1.__modifies $o@@16))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3575|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3576|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall (($h@@9 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@17) alloc)))) ($IsAlloc SetType (Wellformedness.Iter1.__reads $o@@17) (TSet Tclass._System.object?) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4170|
 :pattern ( (Wellformedness.Iter1.__reads $o@@17) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@17) alloc)))
)))
(assert (forall (($h@@10 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.Wellformedness.Iter1?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@18) alloc)))) ($IsAlloc SetType (Wellformedness.Iter1.__modifies $o@@18) (TSet Tclass._System.object?) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4172|
 :pattern ( (Wellformedness.Iter1.__modifies $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@18) alloc)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3445|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3443|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3488|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3467|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |x#0| () Int)
(declare-fun |z#0| () Int)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@modi@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call1formal@modi@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$Wellformedness.Iter1)
(set-option :timeout 10000)
(set-option :rlimit 0)
(set-option :auto_config false)
(set-option :type_check true)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.delay_units true)
(set-option :model_evaluator.completion true)
(set-option :model.completion true)
(set-option :model.compact false)
(set-option :smt.case_split 3)
(set-option :smt.mbqi false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
(set-option :smt.arith.solver 2)
(assert (not
 (=> (= (ControlFlow 0 0) 4) (let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#10| null $Heap alloc this@@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |x#0| 0)) (not true))) (=> (or (not (= |x#0| 0)) (not true)) (=> (= |x#0| (LitInt 10)) (=> (and (= (Wellformedness.Iter1.x this@@0) |x#0|) (= (Wellformedness.Iter1.z this@@0) |z#0|)) (=> (and (and (and (Wellformedness.Iter1.Valid $Heap this@@0) (|Set#Equal| (Wellformedness.Iter1.__reads this@@0) |Set#Empty|)) (and (|Set#Equal| (Wellformedness.Iter1.__modifies this@@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) Wellformedness.Iter1.__new)) |Set#Empty|))) (and (and (= (Wellformedness.Iter1.__decreases0 this@@0) |x#0|) (= (Wellformedness.Iter1.__decreases1 this@@0) |z#0|)) (and (= call1formal@rds@0 (Wellformedness.Iter1.__reads this@@0)) (= call2formal@modi@0 (Wellformedness.Iter1.__modifies this@@0))))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@19 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@19) alloc)))) (=> (and (and (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@19)) (not (|Set#IsMember| call2formal@modi@0 ($Box refType $o@@19)))) (or (not (= $o@@19 this@@0)) (not true))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@19) $f@@1))))
 :qid |DafnyPreludebpl.629:19|
 :skolemid |3548|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) $f@@1))
))) (and (and ($HeapSucc $Heap $Heap@0) (Wellformedness.Iter1.Valid $Heap@0 this@@0)) (and (= call1formal@modi@0 (Wellformedness.Iter1.__modifies this@@0)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) Wellformedness.Iter1.__new)))))) (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@20 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) alloc)))) (or (or (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) $f@@2)) (= $o@@20 this@@0)) (|Set#IsMember| call1formal@modi@0 ($Box refType $o@@20))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@20))))
 :qid |DafnyPreludebpl.638:19|
 :skolemid |3549|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@20) $f@@2))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and (forall (($o@@21 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) Wellformedness.Iter1.__new)) ($Box refType $o@@21)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) Wellformedness.Iter1.__new)) ($Box refType $o@@21)))) (or (not (= $o@@21 null)) (not true)))
 :qid |DefaultParametersdfy.162:12|
 :skolemid |4191|
 :pattern (  (or (not (= $o@@21 null)) (not true)))
)) (forall (($o@@22 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) Wellformedness.Iter1.__new)) ($Box refType $o@@22)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) Wellformedness.Iter1.__new)) ($Box refType $o@@22)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) alloc)))))
 :qid |DefaultParametersdfy.162:12|
 :skolemid |4192|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) alloc)))
))) (= (ControlFlow 0 2) 1)))) anon3_Then_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.Wellformedness.Iter1) ($IsAlloc refType this@@0 Tclass.Wellformedness.Iter1 $Heap))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
