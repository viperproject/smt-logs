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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.NoPrintIter () T@U)
(declare-fun Tagclass._module.PrintIter () T@U)
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass._module.NoPrintIter? () T@U)
(declare-fun Tagclass._module.PrintIter? () T@U)
(declare-fun class._module.NoPrintIter? () T@U)
(declare-fun class._module.PrintIter? () T@U)
(declare-fun Tagclass._module.Cl? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$NoPrintIter () T@U)
(declare-fun tytagFamily$PrintIter () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$xs () T@U)
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
(declare-fun _module.NoPrintIter.a (T@U) Int)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.NoPrintIter? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.NoPrintIter.__decreases0 (T@U) Int)
(declare-fun _module.PrintIter.a (T@U) Int)
(declare-fun Tclass._module.PrintIter? () T@U)
(declare-fun _module.PrintIter.__decreases0 (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Cl? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.NoPrintIter () T@U)
(declare-fun Tclass._module.PrintIter () T@U)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun _module.NoPrintIter.__new () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.PrintIter.__new () T@U)
(declare-fun _module.NoPrintIter.xs () T@U)
(declare-fun _module.PrintIter.xs () T@U)
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
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.NoPrintIter.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.NoPrintIter.__reads (T@U) T@U)
(declare-fun _module.PrintIter.Valid (T@U T@U) Bool)
(declare-fun _module.PrintIter.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.NoPrintIter.__modifies (T@U) T@U)
(declare-fun _module.PrintIter.__modifies (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.NoPrintIter Tagclass._module.PrintIter Tagclass._module.Cl Tagclass._module.NoPrintIter? Tagclass._module.PrintIter? class._module.NoPrintIter? class._module.PrintIter? Tagclass._module.Cl? tytagFamily$object tytagFamily$NoPrintIter tytagFamily$PrintIter tytagFamily$Cl field$_new field$xs)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.NoPrintIter?)) ($Is intType (int_2_U (_module.NoPrintIter.a $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (_module.NoPrintIter.a $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass._module.NoPrintIter?)) ($Is intType (int_2_U (_module.NoPrintIter.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (_module.NoPrintIter.__decreases0 $o@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.PrintIter?)) ($Is intType (int_2_U (_module.PrintIter.a $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (_module.PrintIter.a $o@@1))
)))
(assert (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.PrintIter?)) ($Is intType (int_2_U (_module.PrintIter.__decreases0 $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (_module.PrintIter.__decreases0 $o@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.NoPrintIter?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.NoPrintIter?)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($Is refType $o@@3 Tclass._module.NoPrintIter?))
)))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass._module.PrintIter?)  (or (= $o@@4 null) (= (dtype $o@@4) Tclass._module.PrintIter?)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is refType $o@@4 Tclass._module.PrintIter?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Cl?)  (or (= $o@@5 null) (= (dtype $o@@5) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($Is refType $o@@5 Tclass._module.Cl?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.NoPrintIter $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.NoPrintIter? $h@@0))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NoPrintIter $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NoPrintIter? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.PrintIter $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.PrintIter? $h@@1))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.PrintIter $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.PrintIter? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Cl $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.Cl? $h@@2))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Cl $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Cl? $h@@2))
)))
(assert (= (FDim _module.NoPrintIter.__new) 0))
(assert (= (FieldOfDecl class._module.NoPrintIter? field$_new) _module.NoPrintIter.__new))
(assert ($IsGhostField _module.NoPrintIter.__new))
(assert (= (FDim _module.PrintIter.__new) 0))
(assert (= (FieldOfDecl class._module.PrintIter? field$_new) _module.PrintIter.__new))
(assert ($IsGhostField _module.PrintIter.__new))
(assert (= (FDim _module.NoPrintIter.xs) 0))
(assert (= (FieldOfDecl class._module.NoPrintIter? field$xs) _module.NoPrintIter.xs))
(assert ($IsGhostField _module.NoPrintIter.xs))
(assert (= (FDim _module.PrintIter.xs) 0))
(assert (= (FieldOfDecl class._module.PrintIter? field$xs) _module.PrintIter.xs))
(assert ($IsGhostField _module.PrintIter.xs))
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
(assert (forall (($o@@6 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@3)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@7 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.NoPrintIter? $h@@4)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.NoPrintIter? $h@@4))
)))
(assert (forall (($o@@8 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.PrintIter? $h@@5)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.PrintIter? $h@@5))
)))
(assert (forall (($o@@9 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.Cl? $h@@6)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.Cl? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.NoPrintIter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@10 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (or (or (= $o@@10 this) (|Set#IsMember| (_module.NoPrintIter.__reads this) ($Box refType $o@@10))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.NoPrintIter.__new)) ($Box refType $o@@10)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@10) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@10) $f)))
 :qid |unknown.0:0|
 :skolemid |553|
)) (= (_module.NoPrintIter.Valid $h0 this) (_module.NoPrintIter.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |554|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.NoPrintIter.Valid $h1 this))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.PrintIter))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@11 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (or (or (= $o@@11 this@@0) (|Set#IsMember| (_module.PrintIter.__reads this@@0) ($Box refType $o@@11))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) _module.PrintIter.__new)) ($Box refType $o@@11)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@11) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@11) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |583|
)) (= (_module.PrintIter.Valid $h0@@0 this@@0) (_module.PrintIter.Valid $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |584|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.PrintIter.Valid $h1@@0 this@@0))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall (($h@@7 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@12) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@12) _module.NoPrintIter.xs)) (TSeq TInt) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |542|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@12) _module.NoPrintIter.xs)))
)))
(assert (forall (($h@@8 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@13) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@13) _module.PrintIter.xs)) (TSeq TInt) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |572|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@13) _module.PrintIter.xs)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.NoPrintIter) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.NoPrintIter)))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@3 Tclass._module.NoPrintIter))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.PrintIter) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.PrintIter)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@4 Tclass._module.PrintIter))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Cl) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Cl)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@5 Tclass._module.Cl))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.NoPrintIter?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.NoPrintIter?)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsBox bx@@6 Tclass._module.NoPrintIter?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.PrintIter?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.PrintIter?)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@7 Tclass._module.PrintIter?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Cl?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsBox bx@@8 Tclass._module.Cl?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.NoPrintIter)  (and ($Is refType |c#0@@4| Tclass._module.NoPrintIter?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.NoPrintIter))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.NoPrintIter?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.PrintIter)  (and ($Is refType |c#0@@5| Tclass._module.PrintIter?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.PrintIter))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.PrintIter?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Cl)  (and ($Is refType |c#0@@6| Tclass._module.Cl?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Cl))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Cl?))
)))
(assert (forall (($h@@9 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.NoPrintIter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@14) _module.NoPrintIter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |547|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@14) _module.NoPrintIter.__new)))
)))
(assert (forall (($h@@10 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.PrintIter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@15) _module.PrintIter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |577|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@15) _module.PrintIter.__new)))
)))
(assert (forall (($h@@11 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@16) _module.NoPrintIter.__new)) (TSet Tclass._System.object?) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |548|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@16) _module.NoPrintIter.__new)))
)))
(assert (forall (($h@@12 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) _module.PrintIter.__new)) (TSet Tclass._System.object?) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |578|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@17) _module.PrintIter.__new)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@18 T@U) ) (! ($Is refType $o@@18 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@18 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@13 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@19) alloc)))) ($IsAlloc intType (int_2_U (_module.NoPrintIter.a $o@@19)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |538|
 :pattern ( (_module.NoPrintIter.a $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@19) alloc)))
)))
(assert (forall (($h@@14 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) alloc)))) ($IsAlloc intType (int_2_U (_module.NoPrintIter.__decreases0 $o@@20)) TInt $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |550|
 :pattern ( (_module.NoPrintIter.__decreases0 $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@20) alloc)))
)))
(assert (forall (($h@@15 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))) ($IsAlloc intType (int_2_U (_module.PrintIter.a $o@@21)) TInt $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |568|
 :pattern ( (_module.PrintIter.a $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@21) alloc)))
)))
(assert (forall (($h@@16 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))) ($IsAlloc intType (int_2_U (_module.PrintIter.__decreases0 $o@@22)) TInt $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |580|
 :pattern ( (_module.PrintIter.__decreases0 $o@@22) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@22) alloc)))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@23 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f@@1))  (=> (and (or (not (= $o@@23 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@23) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |635|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@23 $f@@1))
)))
(assert (forall ((bx@@11 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@7)))
)))
(assert (forall ((bx@@12 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@12 (TSeq t@@8)))
)))
(assert (forall (($h@@17 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.NoPrintIter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@24) _module.NoPrintIter.xs)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |541|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@24) _module.NoPrintIter.xs)))
)))
(assert (forall (($h@@18 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.PrintIter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@25) _module.PrintIter.xs)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |571|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@25) _module.PrintIter.xs)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.NoPrintIter) Tagclass._module.NoPrintIter))
(assert (= (TagFamily Tclass._module.NoPrintIter) tytagFamily$NoPrintIter))
(assert (= (Tag Tclass._module.PrintIter) Tagclass._module.PrintIter))
(assert (= (TagFamily Tclass._module.PrintIter) tytagFamily$PrintIter))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass._module.NoPrintIter?) Tagclass._module.NoPrintIter?))
(assert (= (TagFamily Tclass._module.NoPrintIter?) tytagFamily$NoPrintIter))
(assert (= (Tag Tclass._module.PrintIter?) Tagclass._module.PrintIter?))
(assert (= (TagFamily Tclass._module.PrintIter?) tytagFamily$PrintIter))
(assert (= (Tag Tclass._module.Cl?) Tagclass._module.Cl?))
(assert (= (TagFamily Tclass._module.Cl?) tytagFamily$Cl))
(assert (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.NoPrintIter?)) ($Is SetType (_module.NoPrintIter.__reads $o@@26) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( (_module.NoPrintIter.__reads $o@@26))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.NoPrintIter?)) ($Is SetType (_module.NoPrintIter.__modifies $o@@27) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (_module.NoPrintIter.__modifies $o@@27))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.PrintIter?)) ($Is SetType (_module.PrintIter.__reads $o@@28) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (_module.PrintIter.__reads $o@@28))
)))
(assert (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.PrintIter?)) ($Is SetType (_module.PrintIter.__modifies $o@@29) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (_module.PrintIter.__modifies $o@@29))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b@@2 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b@@2 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall (($h@@19 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@30) alloc)))) ($IsAlloc SetType (_module.NoPrintIter.__reads $o@@30) (TSet Tclass._System.object?) $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |544|
 :pattern ( (_module.NoPrintIter.__reads $o@@30) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@30) alloc)))
)))
(assert (forall (($h@@20 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.NoPrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@31) alloc)))) ($IsAlloc SetType (_module.NoPrintIter.__modifies $o@@31) (TSet Tclass._System.object?) $h@@20))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |546|
 :pattern ( (_module.NoPrintIter.__modifies $o@@31) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@31) alloc)))
)))
(assert (forall (($h@@21 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@32) alloc)))) ($IsAlloc SetType (_module.PrintIter.__reads $o@@32) (TSet Tclass._System.object?) $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |574|
 :pattern ( (_module.PrintIter.__reads $o@@32) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@32) alloc)))
)))
(assert (forall (($h@@22 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.PrintIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@33) alloc)))) ($IsAlloc SetType (_module.PrintIter.__modifies $o@@33) (TSet Tclass._System.object?) $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |576|
 :pattern ( (_module.PrintIter.__modifies $o@@33) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@33) alloc)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@4)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |a##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |_module.NoPrintIter.Valid#canCall| (T@U T@U) Bool)
(declare-fun |a##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |_module.PrintIter.Valid#canCall| (T@U T@U) Bool)
(declare-fun |defass#iter0#0| () Bool)
(declare-fun |iter0#0| () T@U)
(declare-fun |defass#iter1#0| () Bool)
(declare-fun |iter1#0| () T@U)
(declare-fun |defass#cl#0| () Bool)
(declare-fun |cl#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.P)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@34)))
 :qid |PrintEffectsdfy.40:8|
 :skolemid |510|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@34))
))) (=> (and (and (and ($HeapSucc $Heap $Heap@0) (= |a##0@0| (LitInt 3))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.NoPrintIter) ($IsAlloc refType call2formal@this Tclass._module.NoPrintIter $Heap)))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.NoPrintIter) ($IsAlloc refType call2formal@this@0 Tclass._module.NoPrintIter $Heap@1))))) (=> (and (and (and (and (and (= (_module.NoPrintIter.a call2formal@this@0) |a##0@0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) _module.NoPrintIter.xs)) |Seq#Empty|)) (and (|_module.NoPrintIter.Valid#canCall| $Heap@1 call2formal@this@0) (_module.NoPrintIter.Valid $Heap@1 call2formal@this@0))) (and (and (|Set#Equal| (_module.NoPrintIter.__reads call2formal@this@0) |Set#Empty|) (|Set#Equal| (_module.NoPrintIter.__modifies call2formal@this@0) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) _module.NoPrintIter.__new)) |Set#Empty|) (= (_module.NoPrintIter.__decreases0 call2formal@this@0) |a##0@0|)))) (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) alloc)))) (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@35)))
 :qid |PrintEffectsdfy.52:10|
 :skolemid |552|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@35))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |a##1@0| (LitInt 3)))) (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass._module.PrintIter) ($IsAlloc refType call2formal@this@@0 Tclass._module.PrintIter $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))))) (and (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass._module.PrintIter) ($IsAlloc refType call2formal@this@0@@0 Tclass._module.PrintIter $Heap@2))) (= (_module.PrintIter.a call2formal@this@0@@0) |a##1@0|)) (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.xs)) |Seq#Empty|) (|_module.PrintIter.Valid#canCall| $Heap@2 call2formal@this@0@@0))) (and (and (and (_module.PrintIter.Valid $Heap@2 call2formal@this@0@@0) (|Set#Equal| (_module.PrintIter.__reads call2formal@this@0@@0) |Set#Empty|)) (and (|Set#Equal| (_module.PrintIter.__modifies call2formal@this@0@@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.__new)) |Set#Empty|))) (and (and (= (_module.PrintIter.__decreases0 call2formal@this@0@@0) |a##1@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0@@0) alloc))))) (and (forall (($o@@36 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@36) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@36) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@36)))
 :qid |PrintEffectsdfy.59:19|
 :skolemid |582|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@36))
)) ($HeapSucc $Heap@1 $Heap@2)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (forall (($o@@37 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@37) alloc)))) (or (= $o@@37 call2formal@this@0) (= $o@@37 call2formal@this@0@@0))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@37 $f@@2)))
 :qid |PrintEffectsdfy.23:12|
 :skolemid |498|
))) (=> (forall (($o@@38 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@38) alloc)))) (or (= $o@@38 call2formal@this@0) (= $o@@38 call2formal@this@0@@0))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@38 $f@@3)))
 :qid |PrintEffectsdfy.23:12|
 :skolemid |498|
)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (_module.NoPrintIter.Valid $Heap@2 call2formal@this@0)) (=> (_module.NoPrintIter.Valid $Heap@2 call2formal@this@0) (and (=> (= (ControlFlow 0 2) (- 0 8)) (_module.PrintIter.Valid $Heap@2 call2formal@this@0@@0)) (=> (_module.PrintIter.Valid $Heap@2 call2formal@this@0@@0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|Set#Equal| (_module.NoPrintIter.__modifies call2formal@this@0) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) _module.NoPrintIter.__new)))) (=> (|Set#Equal| (_module.NoPrintIter.__modifies call2formal@this@0) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) _module.NoPrintIter.__new))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) _module.NoPrintIter.__new)) (_module.NoPrintIter.__reads call2formal@this@0))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) _module.NoPrintIter.__new)) (_module.NoPrintIter.__reads call2formal@this@0)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (|Set#Equal| (_module.NoPrintIter.__reads call2formal@this@0) |Set#Empty|)) (=> (|Set#Equal| (_module.NoPrintIter.__reads call2formal@this@0) |Set#Empty|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (|Set#Equal| (_module.PrintIter.__modifies call2formal@this@0@@0) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.__new)))) (=> (|Set#Equal| (_module.PrintIter.__modifies call2formal@this@0@@0) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.__new))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.__new)) (_module.PrintIter.__reads call2formal@this@0@@0))) (=> (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0@@0) _module.PrintIter.__new)) (_module.PrintIter.__reads call2formal@this@0@@0)) (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#Equal| (_module.PrintIter.__reads call2formal@this@0@@0) |Set#Empty|))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#iter0#0| (and ($Is refType |iter0#0| Tclass._module.NoPrintIter) ($IsAlloc refType |iter0#0| Tclass._module.NoPrintIter $Heap))) true) (and (=> |defass#iter1#0| (and ($Is refType |iter1#0| Tclass._module.PrintIter) ($IsAlloc refType |iter1#0| Tclass._module.PrintIter $Heap))) true)) (and (and (=> |defass#cl#0| (and ($Is refType |cl#0| Tclass._module.Cl) ($IsAlloc refType |cl#0| Tclass._module.Cl $Heap))) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 13) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
