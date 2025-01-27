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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.Iter? () T@U)
(declare-fun Tagclass._module.Iter? () T@U)
(declare-fun Tagclass._module.Iter () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Iter () T@U)
(declare-fun field$y () T@U)
(declare-fun field$ug () T@U)
(declare-fun field$z () T@U)
(declare-fun field$ys () T@U)
(declare-fun field$ugs () T@U)
(declare-fun field$zs () T@U)
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
(declare-fun _module.Iter.g (T@U) T@U)
(declare-fun Tclass._module.Iter? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Iter.__decreases0 (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Iter.__decreases1 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Iter.y () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Iter.ug () T@U)
(declare-fun _module.Iter.z () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._module.Iter (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Iter.ys () T@U)
(declare-fun _module.Iter.ugs () T@U)
(declare-fun _module.Iter.zs () T@U)
(declare-fun _module.Iter.__new () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#23| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Div (Int Int) Int)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Iter?_0 (T@U) T@U)
(declare-fun Tclass._module.Iter_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Iter.Valid (T@U T@U T@U) Bool)
(declare-fun _module.Iter.__reads (T@U) T@U)
(declare-fun _module.Iter.n (T@U) Int)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.Iter.__modifies (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object class._module.Iter? Tagclass._module.Iter? Tagclass._module.Iter tytagFamily$nat tytagFamily$object tytagFamily$Iter field$y field$ug field$z field$ys field$ugs field$zs field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_module.Iter$G T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.Iter? _module.Iter$G))) ($IsBox (_module.Iter.g $o) _module.Iter$G))
 :qid |unknown.0:0|
 :skolemid |3660|
 :pattern ( (_module.Iter.g $o) (Tclass._module.Iter? _module.Iter$G))
)))
(assert (forall ((_module.Iter$G@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.Iter? _module.Iter$G@@0))) ($Is intType (int_2_U (_module.Iter.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |3680|
 :pattern ( (_module.Iter.__decreases0 $o@@0) (Tclass._module.Iter? _module.Iter$G@@0))
)))
(assert (forall ((_module.Iter$G@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.Iter? _module.Iter$G@@1))) ($IsBox (_module.Iter.__decreases1 $o@@1) _module.Iter$G@@1))
 :qid |unknown.0:0|
 :skolemid |3682|
 :pattern ( (_module.Iter.__decreases1 $o@@1) (Tclass._module.Iter? _module.Iter$G@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.Iter$G@@2 T@U) ($h T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Iter? _module.Iter$G@@2)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.Iter.y) _module.Iter$G@@2))
 :qid |unknown.0:0|
 :skolemid |3662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@2) _module.Iter.y) (Tclass._module.Iter? _module.Iter$G@@2))
)))
(assert (forall ((_module.Iter$G@@3 T@U) ($h@@0 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Iter? _module.Iter$G@@3)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@3) _module.Iter.ug) _module.Iter$G@@3))
 :qid |unknown.0:0|
 :skolemid |3664|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@3) _module.Iter.ug) (Tclass._module.Iter? _module.Iter$G@@3))
)))
(assert (forall ((_module.Iter$G@@4 T@U) ($h@@1 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.Iter? _module.Iter$G@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) _module.Iter.z) _module.Iter$G@@4))
 :qid |unknown.0:0|
 :skolemid |3666|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) _module.Iter.z) (Tclass._module.Iter? _module.Iter$G@@4))
)))
(assert (forall ((_module.Iter$G@@5 T@U) ($h@@2 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Iter? _module.Iter$G@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) _module.Iter.y) _module.Iter$G@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |3663|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) _module.Iter.y) (Tclass._module.Iter? _module.Iter$G@@5))
)))
(assert (forall ((_module.Iter$G@@6 T@U) ($h@@3 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Iter? _module.Iter$G@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) _module.Iter.ug) _module.Iter$G@@6 $h@@3))
 :qid |unknown.0:0|
 :skolemid |3665|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@6) _module.Iter.ug) (Tclass._module.Iter? _module.Iter$G@@6))
)))
(assert (forall ((_module.Iter$G@@7 T@U) ($h@@4 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.Iter? _module.Iter$G@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) _module.Iter.z) _module.Iter$G@@7 $h@@4))
 :qid |unknown.0:0|
 :skolemid |3667|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@7) _module.Iter.z) (Tclass._module.Iter? _module.Iter$G@@7))
)))
(assert (forall ((|x#0| T@U) ($h@@5 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@5)
 :qid |unknown.0:0|
 :skolemid |3405|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@5))
)))
(assert (forall ((_module.Iter$G@@8 T@U) (|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Iter _module.Iter$G@@8) $h@@6) ($IsAlloc refType |c#0| (Tclass._module.Iter? _module.Iter$G@@8) $h@@6))
 :qid |unknown.0:0|
 :skolemid |3697|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Iter _module.Iter$G@@8) $h@@6))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Iter? _module.Iter$G@@8) $h@@6))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3185|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@7) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@7))
 :qid |unknown.0:0|
 :skolemid |3411|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@7))
)))
(assert (= (FDim _module.Iter.ug) 0))
(assert (= (FieldOfDecl class._module.Iter? field$ug) _module.Iter.ug))
(assert ($IsGhostField _module.Iter.ug))
(assert (= (FDim _module.Iter.ys) 0))
(assert (= (FieldOfDecl class._module.Iter? field$ys) _module.Iter.ys))
(assert ($IsGhostField _module.Iter.ys))
(assert (= (FDim _module.Iter.ugs) 0))
(assert (= (FieldOfDecl class._module.Iter? field$ugs) _module.Iter.ugs))
(assert ($IsGhostField _module.Iter.ugs))
(assert (= (FDim _module.Iter.zs) 0))
(assert (= (FieldOfDecl class._module.Iter? field$zs) _module.Iter.zs))
(assert ($IsGhostField _module.Iter.zs))
(assert (= (FDim _module.Iter.__new) 0))
(assert (= (FieldOfDecl class._module.Iter? field$_new) _module.Iter.__new))
(assert ($IsGhostField _module.Iter.__new))
(assert (forall ((_module.Iter$G@@9 T@U) ($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 (Tclass._module.Iter? _module.Iter$G@@9) $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3657|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._module.Iter? _module.Iter$G@@9) $h@@8))
)))
(assert (= (FDim _module.Iter.y) 0))
(assert (= (FieldOfDecl class._module.Iter? field$y) _module.Iter.y))
(assert  (not ($IsGhostField _module.Iter.y)))
(assert (= (FDim _module.Iter.z) 0))
(assert (= (FieldOfDecl class._module.Iter? field$z) _module.Iter.z))
(assert  (not ($IsGhostField _module.Iter.z)))
(assert (forall (($o@@9 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._System.object? $h@@9)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |3408|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._System.object? $h@@9))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3178|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3179|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3077|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3075|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3318|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |3299|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |3300|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3086|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3106|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3107|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |3404|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3284|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((_module.Iter$G@@10 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._module.Iter _module.Iter$G@@10))  (and ($Is refType |c#0@@1| (Tclass._module.Iter? _module.Iter$G@@10)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3696|
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Iter _module.Iter$G@@10)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._module.Iter? _module.Iter$G@@10)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3099|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3171|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3170|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.Iter$G@@11 T@U) ) (!  (and (= (Tag (Tclass._module.Iter? _module.Iter$G@@11)) Tagclass._module.Iter?) (= (TagFamily (Tclass._module.Iter? _module.Iter$G@@11)) tytagFamily$Iter))
 :qid |unknown.0:0|
 :skolemid |3653|
 :pattern ( (Tclass._module.Iter? _module.Iter$G@@11))
)))
(assert (forall ((_module.Iter$G@@12 T@U) ) (!  (and (= (Tag (Tclass._module.Iter _module.Iter$G@@12)) Tagclass._module.Iter) (= (TagFamily (Tclass._module.Iter _module.Iter$G@@12)) tytagFamily$Iter))
 :qid |unknown.0:0|
 :skolemid |3685|
 :pattern ( (Tclass._module.Iter _module.Iter$G@@12))
)))
(assert (forall ((_module.Iter$G@@13 T@U) ($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Iter? _module.Iter$G@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Iter.ys)) (TSeq _module.Iter$G@@13) $h@@10))
 :qid |unknown.0:0|
 :skolemid |3669|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Iter.ys)) (Tclass._module.Iter? _module.Iter$G@@13))
)))
(assert (forall ((_module.Iter$G@@14 T@U) ($h@@11 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.Iter? _module.Iter$G@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Iter.ugs)) (TSeq _module.Iter$G@@14) $h@@11))
 :qid |unknown.0:0|
 :skolemid |3671|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@11) _module.Iter.ugs)) (Tclass._module.Iter? _module.Iter$G@@14))
)))
(assert (forall ((_module.Iter$G@@15 T@U) ($h@@12 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.Iter? _module.Iter$G@@15)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Iter.zs)) (TSeq _module.Iter$G@@15) $h@@12))
 :qid |unknown.0:0|
 :skolemid |3673|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@12) _module.Iter.zs)) (Tclass._module.Iter? _module.Iter$G@@15))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@13 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#23| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))  (=> (and (or (not (= $o@@13 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@13) |l#2|)))) (= $o@@13 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3856|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#23| |l#0| |l#1| |l#2| |l#3|) $o@@13 $f))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |3286|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |3403|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3406|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |3409|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((_module.Iter$G@@16 T@U) ($o@@14 T@U) ) (! (= ($Is refType $o@@14 (Tclass._module.Iter? _module.Iter$G@@16))  (or (= $o@@14 null) (= (dtype $o@@14) (Tclass._module.Iter? _module.Iter$G@@16))))
 :qid |unknown.0:0|
 :skolemid |3656|
 :pattern ( ($Is refType $o@@14 (Tclass._module.Iter? _module.Iter$G@@16)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |3410|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3285|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((_module.Iter$G@@17 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.Iter? _module.Iter$G@@17)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.Iter.__new)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3678|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.Iter.__new)) (Tclass._module.Iter? _module.Iter$G@@17))
)))
(assert (forall ((_module.Iter$G@@18 T@U) ($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.Iter? _module.Iter$G@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.Iter.__new)) (TSet Tclass._System.object?) $h@@14))
 :qid |unknown.0:0|
 :skolemid |3679|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.Iter.__new)) (Tclass._module.Iter? _module.Iter$G@@18))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |3399|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3210|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |3301|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3177|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |3167|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3087|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3098|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3281|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@6) ($IsAllocBox bx@@6 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3127|
 :pattern ( (|Set#IsMember| v@@5 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3128|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@2) h@@3))
)))
(assert (forall (($o@@17 T@U) ) (! ($Is refType $o@@17 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |3407|
 :pattern ( ($Is refType $o@@17 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@3 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3133|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3134|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@3) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3061|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3062|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3067|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3068|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((_module.Iter$G@@19 T@U) ) (! (= (Tclass._module.Iter?_0 (Tclass._module.Iter? _module.Iter$G@@19)) _module.Iter$G@@19)
 :qid |unknown.0:0|
 :skolemid |3654|
 :pattern ( (Tclass._module.Iter? _module.Iter$G@@19))
)))
(assert (forall ((_module.Iter$G@@20 T@U) ) (! (= (Tclass._module.Iter_0 (Tclass._module.Iter _module.Iter$G@@20)) _module.Iter$G@@20)
 :qid |unknown.0:0|
 :skolemid |3686|
 :pattern ( (Tclass._module.Iter _module.Iter$G@@20))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3085|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_module.Iter$G@@21 T@U) ($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.Iter? _module.Iter$G@@21)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))) ($IsAllocBox (_module.Iter.g $o@@18) _module.Iter$G@@21 $h@@15))
 :qid |unknown.0:0|
 :skolemid |3661|
 :pattern ( (_module.Iter.g $o@@18) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)) (Tclass._module.Iter? _module.Iter$G@@21))
)))
(assert (forall ((_module.Iter$G@@22 T@U) ($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._module.Iter? _module.Iter$G@@22)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)))) ($IsAlloc intType (int_2_U (_module.Iter.__decreases0 $o@@19)) TInt $h@@16))
 :qid |unknown.0:0|
 :skolemid |3681|
 :pattern ( (_module.Iter.__decreases0 $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)) (Tclass._module.Iter? _module.Iter$G@@22))
)))
(assert (forall ((_module.Iter$G@@23 T@U) ($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._module.Iter? _module.Iter$G@@23)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)))) ($IsAllocBox (_module.Iter.__decreases1 $o@@20) _module.Iter$G@@23 $h@@17))
 :qid |unknown.0:0|
 :skolemid |3683|
 :pattern ( (_module.Iter.__decreases1 $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)) (Tclass._module.Iter? _module.Iter$G@@23))
)))
(assert (forall ((_module.Iter$G@@24 T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.Iter _module.Iter$G@@24)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@21 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (or (or (= $o@@21 this) (|Set#IsMember| (_module.Iter.__reads this) ($Box refType $o@@21))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.Iter.__new)) ($Box refType $o@@21)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@21) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@21) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |3689|
)) (= (_module.Iter.Valid _module.Iter$G@@24 $h0 this) (_module.Iter.Valid _module.Iter$G@@24 $h1 this))))
 :qid |unknown.0:0|
 :skolemid |3690|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Iter.Valid _module.Iter$G@@24 $h1 this))
)))
(assert (forall ((_module.Iter$G@@25 T@U) ($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass._module.Iter? _module.Iter$G@@25))) ($Is intType (int_2_U (_module.Iter.n $o@@22)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |3658|
 :pattern ( (_module.Iter.n $o@@22) (Tclass._module.Iter? _module.Iter$G@@25))
)))
(assert (forall ((x@@7 Int) (y@@0 Int) ) (! (= (Mod x@@7 y@@0) (mod x@@7 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |3400|
 :pattern ( (Mod x@@7 y@@0))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3283|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((_module.Iter$G@@26 T@U) ($h@@18 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass._module.Iter? _module.Iter$G@@26)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@23) _module.Iter.ys)) (TSeq _module.Iter$G@@26)))
 :qid |unknown.0:0|
 :skolemid |3668|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@23) _module.Iter.ys)) (Tclass._module.Iter? _module.Iter$G@@26))
)))
(assert (forall ((_module.Iter$G@@27 T@U) ($h@@19 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.Iter? _module.Iter$G@@27)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@24) _module.Iter.ugs)) (TSeq _module.Iter$G@@27)))
 :qid |unknown.0:0|
 :skolemid |3670|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@24) _module.Iter.ugs)) (Tclass._module.Iter? _module.Iter$G@@27))
)))
(assert (forall ((_module.Iter$G@@28 T@U) ($h@@20 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._module.Iter? _module.Iter$G@@28)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@25) _module.Iter.zs)) (TSeq _module.Iter$G@@28)))
 :qid |unknown.0:0|
 :skolemid |3672|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@25) _module.Iter.zs)) (Tclass._module.Iter? _module.Iter$G@@28))
)))
(assert (forall ((bx@@7 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3092|
 :pattern ( ($IsBox bx@@7 (TSet t@@8)))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3095|
 :pattern ( ($IsBox bx@@8 (TSeq t@@9)))
)))
(assert (forall ((_module.Iter$G@@29 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.Iter? _module.Iter$G@@29)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.Iter? _module.Iter$G@@29))))
 :qid |unknown.0:0|
 :skolemid |3655|
 :pattern ( ($IsBox bx@@9 (Tclass._module.Iter? _module.Iter$G@@29)))
)))
(assert (forall ((_module.Iter$G@@30 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._module.Iter _module.Iter$G@@30)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._module.Iter _module.Iter$G@@30))))
 :qid |unknown.0:0|
 :skolemid |3687|
 :pattern ( ($IsBox bx@@10 (Tclass._module.Iter _module.Iter$G@@30)))
)))
(assert (forall ((_module.Iter$G@@31 T@U) ($h@@21 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) (Tclass._module.Iter? _module.Iter$G@@31)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) alloc)))) ($IsAlloc intType (int_2_U (_module.Iter.n $o@@26)) Tclass._System.nat $h@@21))
 :qid |unknown.0:0|
 :skolemid |3659|
 :pattern ( (_module.Iter.n $o@@26) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@26) alloc)) (Tclass._module.Iter? _module.Iter$G@@31))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |3176|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@8)))
)))
(assert (forall ((_module.Iter$G@@32 T@U) ($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass._module.Iter? _module.Iter$G@@32))) ($Is SetType (_module.Iter.__reads $o@@27) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3674|
 :pattern ( (_module.Iter.__reads $o@@27) (Tclass._module.Iter? _module.Iter$G@@32))
)))
(assert (forall ((_module.Iter$G@@33 T@U) ($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) (Tclass._module.Iter? _module.Iter$G@@33))) ($Is SetType (_module.Iter.__modifies $o@@28) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |3676|
 :pattern ( (_module.Iter.__modifies $o@@28) (Tclass._module.Iter? _module.Iter$G@@33))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b@@2 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3208|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b@@2 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3209|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((_module.Iter$G@@34 T@U) ($h@@22 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) (Tclass._module.Iter? _module.Iter$G@@34)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@29) alloc)))) ($IsAlloc SetType (_module.Iter.__reads $o@@29) (TSet Tclass._System.object?) $h@@22))
 :qid |unknown.0:0|
 :skolemid |3675|
 :pattern ( (_module.Iter.__reads $o@@29) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@29) alloc)) (Tclass._module.Iter? _module.Iter$G@@34))
)))
(assert (forall ((_module.Iter$G@@35 T@U) ($h@@23 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) (Tclass._module.Iter? _module.Iter$G@@35)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@30) alloc)))) ($IsAlloc SetType (_module.Iter.__modifies $o@@30) (TSet Tclass._System.object?) $h@@23))
 :qid |unknown.0:0|
 :skolemid |3677|
 :pattern ( (_module.Iter.__modifies $o@@30) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@30) alloc)) (Tclass._module.Iter? _module.Iter$G@@35))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3287|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3078|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3076|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3282|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@6 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3121|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@6))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3113|
 :pattern ( (|Seq#Index| v@@8 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3114|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3100|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@3| () Int)
(declare-fun |i#0@2| () Int)
(declare-fun |$decr$loop#01@1| () Int)
(declare-fun |_yieldCount#0@10| () Int)
(declare-fun |_yieldCount#0@0| () Int)
(declare-fun this@@0 () T@U)
(declare-fun $Heap@38 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@37 () T@U)
(declare-fun |_yieldCount#0@9| () Int)
(declare-fun $Heap@36 () T@U)
(declare-fun |_yieldCount#0@8| () Int)
(declare-fun |$rhs#0_1_1_0_0@1| () T@U)
(declare-fun $Heap@34 () T@U)
(declare-fun $Heap@35 () T@U)
(declare-fun |_yieldCount#0@7| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0_1_1_0_1_0@1| () T@U)
(declare-fun $Heap@29 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@30 () T@U)
(declare-fun $Heap@31 () T@U)
(declare-fun $Heap@32 () T@U)
(declare-fun |_yieldCount#0@6| () Int)
(declare-fun call1formal@rds@0 () T@U)
(declare-fun call2formal@nw@0 () T@U)
(declare-fun $Heap@33 () T@U)
(declare-fun |$rhs#0_1_1_0_0_0@1| () T@U)
(declare-fun |$rhs#0_1_1_0_0_1@1| () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun $Heap@26 () T@U)
(declare-fun $Heap@27 () T@U)
(declare-fun |_yieldCount#0@5| () Int)
(declare-fun call1formal@rds@0@@0 () T@U)
(declare-fun call2formal@nw@0@@0 () T@U)
(declare-fun $Heap@28 () T@U)
(declare-fun |$rhs#0_1_0_0@1| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |$rhs#0_1_0_1@1| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |_yieldCount#0@3| () Int)
(declare-fun call1formal@rds@0@@1 () T@U)
(declare-fun call2formal@nw@0@@1 () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun |_yieldCount#0@4| () Int)
(declare-fun call1formal@rds@0@@2 () T@U)
(declare-fun call2formal@nw@0@@2 () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |$rhs#0_0_0@1| () T@U)
(declare-fun |$rhs#0_0_1@1| () T@U)
(declare-fun |$rhs#0_0_2@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |_yieldCount#0@1| () Int)
(declare-fun call1formal@rds@0@@3 () T@U)
(declare-fun call2formal@nw@0@@3 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |_yieldCount#0@2| () Int)
(declare-fun call1formal@rds@0@@4 () T@U)
(declare-fun call2formal@nw@0@@4 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $_OldIterHeap@0 () T@U)
(declare-fun |_yieldCount#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |$decr_init$loop#01@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |g#0| () T@U)
(declare-fun _module.Iter$G@@36 () T@U)
(declare-fun call1formal@rds@0@@5 () T@U)
(declare-fun call2formal@nw@0@@5 () T@U)
(declare-fun |i#0@1| () Int)
(declare-fun $_OldIterHeap () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.Iter)
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
 (=> (= (ControlFlow 0 0) 41) (let ((anon20_correct  (=> (= |i#0@3| (+ |i#0@2| 1)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (or (<= 0 |$decr$loop#01@1|) (> |_yieldCount#0@10| |_yieldCount#0@0|)) (= (- (_module.Iter.n this@@0) |i#0@3|) |$decr$loop#01@1|))) (=> (or (or (<= 0 |$decr$loop#01@1|) (> |_yieldCount#0@10| |_yieldCount#0@0|)) (= (- (_module.Iter.n this@@0) |i#0@3|) |$decr$loop#01@1|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (> |_yieldCount#0@10| |_yieldCount#0@0|) (and (= |_yieldCount#0@10| |_yieldCount#0@0|) (< (- (_module.Iter.n this@@0) |i#0@3|) |$decr$loop#01@1|)))) (=> (or (> |_yieldCount#0@10| |_yieldCount#0@0|) (and (= |_yieldCount#0@10| |_yieldCount#0@0|) (< (- (_module.Iter.n this@@0) |i#0@3|) |$decr$loop#01@1|))) (=> (= (ControlFlow 0 5) (- 0 4)) (and (forall (($o@@31 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 this@@0) _module.Iter.__new)) ($Box refType $o@@31)) (or (not (= $o@@31 null)) (not true)))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3703|
 :pattern (  (or (not (= $o@@31 null)) (not true)))
)) (forall (($o@@32 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 this@@0) _module.Iter.__new)) ($Box refType $o@@32)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@32) alloc)))))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3704|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@38 this@@0) _module.Iter.__new)) ($Box refType $o@@32)))
)))))))))))
(let ((anon19_correct  (=> (= $Heap@38 $Heap@37) (=> (and (= |_yieldCount#0@10| |_yieldCount#0@9|) (= (ControlFlow 0 12) 5)) anon20_correct))))
(let ((anon18_correct  (=> (= $Heap@37 $Heap@36) (=> (and (= |_yieldCount#0@9| |_yieldCount#0@8|) (= (ControlFlow 0 16) 12)) anon19_correct))))
(let ((anon16_correct  (=> (and (= |$rhs#0_1_1_0_0@1| (ite (= (Mod |i#0@2| (LitInt 2)) (LitInt 0)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 this@@0) _module.Iter.y) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 this@@0) _module.Iter.y))) (= $Heap@35 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@34 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@34 this@@0) _module.Iter.y |$rhs#0_1_1_0_0@1|)))) (=> (and (and ($IsGoodHeap $Heap@35) (= |_yieldCount#0@8| |_yieldCount#0@7|)) (and (= $Heap@36 $Heap@35) (= (ControlFlow 0 18) 16))) anon18_correct))))
(let ((anon28_Else_correct  (=> (and (or (not (= (Mod |i#0@2| (LitInt 2)) (LitInt 0))) (not true)) (= (ControlFlow 0 20) 18)) anon16_correct)))
(let ((anon28_Then_correct  (=> (and (= (Mod |i#0@2| (LitInt 2)) (LitInt 0)) (= (ControlFlow 0 19) 18)) anon16_correct)))
(let ((anon13_correct  (and (=> (= (ControlFlow 0 21) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 21) 19) anon28_Then_correct) (=> (= (ControlFlow 0 21) 20) anon28_Else_correct))))))))
(let ((anon27_Else_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y)) (=> (= |$rhs#0_1_1_0_1_0@1| (_module.Iter.g this@@0)) (=> (and (= $Heap@29 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.y |$rhs#0_1_1_0_1_0@1|))) ($IsGoodHeap $Heap@29)) (=> (and (and (= $Heap@30 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@29 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 this@@0) _module.Iter.y))))))) (= $Heap@31 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@30 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 this@@0) _module.Iter.ug)))))))) (and (= $Heap@32 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@31 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@31 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@6| (+ |_yieldCount#0@0| 1)))) (=> (and (and (and (and (and (= |_yieldCount#0@6| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@6| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@6| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@32)) (and (= call1formal@rds@0 (_module.Iter.__reads this@@0)) (= call2formal@nw@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@33) ($IsHeapAnchor $Heap@33)) (forall (($o@@33 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@33) alloc)))) (=> (or (or (= $o@@33 this@@0) (|Set#IsMember| call1formal@rds@0 ($Box refType $o@@33))) (|Set#IsMember| call2formal@nw@0 ($Box refType $o@@33))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@33) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@32 $o@@33) $f@@1))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@33 $o@@33) $f@@1))
))) (and (and ($HeapSucc $Heap@32 $Heap@33) (= $Heap@34 $Heap@33)) (and (= |_yieldCount#0@7| |_yieldCount#0@6|) (= (ControlFlow 0 27) 21))))) anon13_correct))))))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 24) (- 0 26)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.ug))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.ug)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y)) (=> (and (= |$rhs#0_1_1_0_0_0@1| (_module.Iter.g this@@0)) (= |$rhs#0_1_1_0_0_1@1| (_module.Iter.g this@@0))) (=> (and (and (and (= $Heap@23 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.ug |$rhs#0_1_1_0_0_0@1|))) ($IsGoodHeap $Heap@23)) (and (= $Heap@24 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@23 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 this@@0) _module.Iter.y |$rhs#0_1_1_0_0_1@1|))) ($IsGoodHeap $Heap@24))) (and (and (= $Heap@25 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@24 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 this@@0) _module.Iter.y))))))) (= $Heap@26 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@25 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 this@@0) _module.Iter.ug)))))))) (and (= $Heap@27 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@26 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@5| (+ |_yieldCount#0@0| 1))))) (=> (and (and (and (and (and (= |_yieldCount#0@5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@27)) (and (= call1formal@rds@0@@0 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@28) ($IsHeapAnchor $Heap@28)) (forall (($o@@34 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@34) alloc)))) (=> (or (or (= $o@@34 this@@0) (|Set#IsMember| call1formal@rds@0@@0 ($Box refType $o@@34))) (|Set#IsMember| call2formal@nw@0@@0 ($Box refType $o@@34))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@34) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@34) $f@@2))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@34) $f@@2))
))) (and (and ($HeapSucc $Heap@27 $Heap@28) (= $Heap@34 $Heap@28)) (and (= |_yieldCount#0@7| |_yieldCount#0@5|) (= (ControlFlow 0 24) 21))))) anon13_correct)))))))))
(let ((anon26_Then_correct  (=> (= |i#0@2| (Mod (_module.Iter.n this@@0) (LitInt 11))) (and (=> (= (ControlFlow 0 29) 24) anon27_Then_correct) (=> (= (ControlFlow 0 29) 27) anon27_Else_correct)))))
(let ((anon26_Else_correct  (=> (and (and (or (not (= |i#0@2| (Mod (_module.Iter.n this@@0) (LitInt 11)))) (not true)) (= |_yieldCount#0@8| |_yieldCount#0@0|)) (and (= $Heap@36 $Heap@1) (= (ControlFlow 0 17) 16))) anon18_correct)))
(let ((anon25_Else_correct  (=> (or (not (= |i#0@2| (Div (_module.Iter.n this@@0) (LitInt 2)))) (not true)) (and (=> (= (ControlFlow 0 30) (- 0 31)) (or (not (= (LitInt 11) 0)) (not true))) (=> (or (not (= (LitInt 11) 0)) (not true)) (and (=> (= (ControlFlow 0 30) 29) anon26_Then_correct) (=> (= (ControlFlow 0 30) 17) anon26_Else_correct)))))))
(let ((anon25_Then_correct  (=> (= |i#0@2| (Div (_module.Iter.n this@@0) (LitInt 2))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y)) (=> (= |$rhs#0_1_0_0@1| (_module.Iter.g this@@0)) (=> (and (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.y |$rhs#0_1_0_0@1|))) ($IsGoodHeap $Heap@13)) (and (=> (= (ControlFlow 0 13) (- 0 14)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.z))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.z)) (=> (= |$rhs#0_1_0_1@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 this@@0) _module.Iter.y)) (=> (and (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 this@@0) _module.Iter.z |$rhs#0_1_0_1@1|))) ($IsGoodHeap $Heap@14)) (=> (and (and (= $Heap@15 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@14 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 this@@0) _module.Iter.y))))))) (= $Heap@16 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@15 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 this@@0) _module.Iter.ug)))))))) (and (= $Heap@17 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@16 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@3| (+ |_yieldCount#0@0| 1)))) (=> (and (and (and (and (and (and (= |_yieldCount#0@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@17)) (and (= call1formal@rds@0@@1 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@1 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (and (forall (($o@@35 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@35) alloc)))) (=> (or (or (= $o@@35 this@@0) (|Set#IsMember| call1formal@rds@0@@1 ($Box refType $o@@35))) (|Set#IsMember| call2formal@nw@0@@1 ($Box refType $o@@35))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@35) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@35) $f@@3))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@35) $f@@3))
)) ($HeapSucc $Heap@17 $Heap@18))) (and (and (= $Heap@19 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@18 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 this@@0) _module.Iter.y))))))) (= $Heap@20 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@19 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 this@@0) _module.Iter.ug)))))))) (and (= $Heap@21 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@20 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@4| (+ |_yieldCount#0@3| 1)))))) (and (and (and (and (and (= |_yieldCount#0@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@21)) (and (= call1formal@rds@0@@2 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@2 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)) (forall (($o@@36 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@36) alloc)))) (=> (or (or (= $o@@36 this@@0) (|Set#IsMember| call1formal@rds@0@@2 ($Box refType $o@@36))) (|Set#IsMember| call2formal@nw@0@@2 ($Box refType $o@@36))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@36) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@36) $f@@4))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@36) $f@@4))
))) (and (and ($HeapSucc $Heap@21 $Heap@22) (= $Heap@37 $Heap@22)) (and (= |_yieldCount#0@9| |_yieldCount#0@4|) (= (ControlFlow 0 13) 12)))))) anon19_correct)))))))))))))
(let ((anon24_Else_correct  (=> (or (not (= (Mod |i#0@2| (LitInt 17)) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 32) 13) anon25_Then_correct) (=> (= (ControlFlow 0 32) 30) anon25_Else_correct)))))))
(let ((anon24_Then_correct  (=> (= (Mod |i#0@2| (LitInt 17)) (LitInt 0)) (and (=> (= (ControlFlow 0 8) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.y)) (and (=> (= (ControlFlow 0 8) (- 0 10)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.ug))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.ug)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.z))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@0 _module.Iter.z)) (=> (= |$rhs#0_0_0@1| (_module.Iter.g this@@0)) (=> (and (and (= |$rhs#0_0_1@1| (_module.Iter.g this@@0)) (= |$rhs#0_0_2@1| (_module.Iter.g this@@0))) (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.y |$rhs#0_0_0@1|))) ($IsGoodHeap $Heap@2))) (=> (and (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@0) _module.Iter.ug |$rhs#0_0_1@1|))) ($IsGoodHeap $Heap@3)) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@0) _module.Iter.z |$rhs#0_0_2@1|))) ($IsGoodHeap $Heap@4))) (and (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 this@@0) _module.Iter.y))))))) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@0) _module.Iter.ug)))))))) (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@1| (+ |_yieldCount#0@0| 1))))) (=> (and (and (and (and (and (and (= |_yieldCount#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@7)) (and (= call1formal@rds@0@@3 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@3 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@37 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@37) alloc)))) (=> (or (or (= $o@@37 this@@0) (|Set#IsMember| call1formal@rds@0@@3 ($Box refType $o@@37))) (|Set#IsMember| call2formal@nw@0@@3 ($Box refType $o@@37))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@37) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@37) $f@@5))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@37) $f@@5))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.Iter.ys ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.Iter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 this@@0) _module.Iter.y))))))) (= $Heap@10 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@9 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@0) _module.Iter.ugs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@0) _module.Iter.ugs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@0) _module.Iter.ug)))))))) (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 this@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@0) _module.Iter.zs ($Box SeqType (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@0) _module.Iter.zs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 this@@0) _module.Iter.z))))))) (= |_yieldCount#0@2| (+ |_yieldCount#0@1| 1)))))) (and (and (and (and (and (= |_yieldCount#0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@2| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 this@@0) _module.Iter.zs))))) ($IsGoodHeap $Heap@11)) (and (= call1formal@rds@0@@4 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@4 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 this@@0) _module.Iter.__new))))) (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (forall (($o@@38 T@U) ($f@@6 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@38) alloc)))) (=> (or (or (= $o@@38 this@@0) (|Set#IsMember| call1formal@rds@0@@4 ($Box refType $o@@38))) (|Set#IsMember| call2formal@nw@0@@4 ($Box refType $o@@38))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@38) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@38) $f@@6))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@38) $f@@6))
))) (and (and ($HeapSucc $Heap@11 $Heap@12) (= $Heap@38 $Heap@12)) (and (= |_yieldCount#0@10| |_yieldCount#0@2|) (= (ControlFlow 0 8) 5)))))) anon20_correct)))))))))))))
(let ((anon23_Else_correct  (=> (and (< |i#0@2| (_module.Iter.n this@@0)) (= |$decr$loop#01@1| (- (_module.Iter.n this@@0) |i#0@2|))) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= (LitInt 17) 0)) (not true))) (=> (or (not (= (LitInt 17) 0)) (not true)) (and (=> (= (ControlFlow 0 34) 8) anon24_Then_correct) (=> (= (ControlFlow 0 34) 32) anon24_Else_correct)))))))
(let ((anon23_Then_correct true))
(let ((anon22_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 36) 3) anon23_Then_correct) (=> (= (ControlFlow 0 36) 34) anon23_Else_correct)))))
(let ((anon22_Then_correct true))
(let ((anon21_LoopBody_correct  (and (=> (= (ControlFlow 0 37) 2) anon22_Then_correct) (=> (= (ControlFlow 0 37) 36) anon22_Else_correct))))
(let ((anon21_LoopDone_correct true))
(let ((anon21_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (= |_yieldCount#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.ys)))) (= |_yieldCount#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.ugs))))) (= |_yieldCount#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.zs))))) (and ($IsGoodHeap $_OldIterHeap@0) ($HeapSucc $_OldIterHeap@0 $Heap@1))) (=> (and (and (and (and (and (<= 0 |_yieldCount#0@0|) (<= 0 |i#0@2|)) (= |_yieldCount#0| 0)) (forall (($o@@39 T@U) ) (!  (=> (and (or (not (= $o@@39 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@39) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@39)) (= $o@@39 this@@0)))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3701|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@39))
))) (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@40 T@U) ($f@@7 T@U) ) (!  (=> (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@40) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@40) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@40) $f@@7)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@40 $f@@7))))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3702|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@40) $f@@7))
)))) (and (and (forall (($o@@41 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.__new)) ($Box refType $o@@41)) (or (not (= $o@@41 null)) (not true)))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3703|
 :pattern (  (or (not (= $o@@41 null)) (not true)))
)) (forall (($o@@42 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.__new)) ($Box refType $o@@42)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@42) alloc)))))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3704|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@0) _module.Iter.__new)) ($Box refType $o@@42)))
))) (and (>= |_yieldCount#0@0| |_yieldCount#0|) (=> (= |_yieldCount#0@0| |_yieldCount#0|) (<= (- (_module.Iter.n this@@0) |i#0@2|) |$decr_init$loop#01@0|))))) (and (=> (= (ControlFlow 0 38) 1) anon21_LoopDone_correct) (=> (= (ControlFlow 0 38) 37) anon21_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#23| null $Heap alloc this@@0)) (=> (and (and (= (_module.Iter.n this@@0) |n#0|) (= (_module.Iter.g this@@0) |g#0|)) (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.ys)) |Seq#Empty|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.ugs)) |Seq#Empty|))) (=> (and (and (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.zs)) |Seq#Empty|) (_module.Iter.Valid _module.Iter$G@@36 $Heap this@@0)) (and (|Set#Equal| (_module.Iter.__reads this@@0) |Set#Empty|) (|Set#Equal| (_module.Iter.__modifies this@@0) |Set#Empty|))) (and (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.__new)) |Set#Empty|) (= (_module.Iter.__decreases0 this@@0) |n#0|)) (and (= (_module.Iter.__decreases1 this@@0) |g#0|) (= |_yieldCount#0| 0)))) (and (and (and (= call1formal@rds@0@@5 (_module.Iter.__reads this@@0)) (= call2formal@nw@0@@5 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.__new)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (forall (($o@@43 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@43) alloc)))) (=> (or (or (= $o@@43 this@@0) (|Set#IsMember| call1formal@rds@0@@5 ($Box refType $o@@43))) (|Set#IsMember| call2formal@nw@0@@5 ($Box refType $o@@43))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@43) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@43) $f@@8))))
 :qid |DafnyPreludebpl.620:19|
 :skolemid |3180|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@43) $f@@8))
)) ($HeapSucc $Heap $Heap@0)) (and (= |i#0@1| (LitInt 0)) (= |$decr_init$loop#01@0| (- (_module.Iter.n this@@0) |i#0@1|)))))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (and (forall (($o@@44 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@44)) (or (not (= $o@@44 null)) (not true)))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3703|
 :pattern (  (or (not (= $o@@44 null)) (not true)))
)) (forall (($o@@45 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@45)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@45) alloc)))))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3704|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@45)))
)))) (=> (and (forall (($o@@46 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@46)) (or (not (= $o@@46 null)) (not true)))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3703|
 :pattern (  (or (not (= $o@@46 null)) (not true)))
)) (forall (($o@@47 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@47)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@47) alloc)))))
 :qid |DefiniteAssignmentdfy.164:3|
 :skolemid |3704|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@0) _module.Iter.__new)) ($Box refType $o@@47)))
))) (=> (= (ControlFlow 0 39) 38) anon21_LoopHead_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Iter _module.Iter$G@@36)) ($IsAlloc refType this@@0 (Tclass._module.Iter _module.Iter$G@@36) $Heap))) (<= (LitInt 0) |n#0|)) (and ($IsBox |g#0| _module.Iter$G@@36) ($IsAllocBox |g#0| _module.Iter$G@@36 $Heap))) (=> (and (and (and (and (= |_yieldCount#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.ys)))) (= |_yieldCount#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.ugs))))) (= |_yieldCount#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Iter.zs))))) true) (and (and (and ($IsGoodHeap $_OldIterHeap) ($HeapSucc $_OldIterHeap $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 41) 39)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
