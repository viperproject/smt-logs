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
(declare-fun Tagclass._module.MyIter () T@U)
(declare-fun Tagclass._module.MyIntIter () T@U)
(declare-fun Tagclass._module.MyIntIter? () T@U)
(declare-fun Tagclass._module.Naturals () T@U)
(declare-fun Tagclass._module.Naturals? () T@U)
(declare-fun class._module.MyIter? () T@U)
(declare-fun Tagclass._module.MyIter? () T@U)
(declare-fun class._module.MyIntIter? () T@U)
(declare-fun class._module.Naturals? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$MyIter () T@U)
(declare-fun tytagFamily$MyIntIter () T@U)
(declare-fun tytagFamily$Naturals () T@U)
(declare-fun field$ys () T@U)
(declare-fun field$xs () T@U)
(declare-fun field$x () T@U)
(declare-fun field$_new () T@U)
(declare-fun field$y () T@U)
(declare-fun field$n () T@U)
(declare-fun field$ns () T@U)
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
(declare-fun _module.MyIter.q (T@U) T@U)
(declare-fun Tclass._module.MyIter? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.MyIter.__decreases0 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.MyIter.x () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.MyIter.y () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun _module.Naturals.u (T@U) Int)
(declare-fun Tclass._module.Naturals? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _module.Naturals.__decreases0 (T@U) Int)
(declare-fun Tclass._module.MyIter (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._module.MyIntIter? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.MyIntIter () T@U)
(declare-fun Tclass._module.Naturals () T@U)
(declare-fun _module.MyIter.ys () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.MyIter.xs () T@U)
(declare-fun _module.MyIter.__new () T@U)
(declare-fun _module.MyIntIter.__new () T@U)
(declare-fun _module.Naturals.__new () T@U)
(declare-fun _module.MyIntIter.xs () T@U)
(declare-fun _module.MyIntIter.ys () T@U)
(declare-fun _module.Naturals.ns () T@U)
(declare-fun _module.MyIntIter.x () T@U)
(declare-fun _module.MyIntIter.y () T@U)
(declare-fun _module.Naturals.n () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.MyIntIter.Valid (T@U T@U) Bool)
(declare-fun _module.MyIntIter.__reads (T@U) T@U)
(declare-fun _module.Naturals.Valid (T@U T@U) Bool)
(declare-fun _module.Naturals.__reads (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.MyIter_0 (T@U) T@U)
(declare-fun Tclass._module.MyIter?_0 (T@U) T@U)
(declare-fun _module.MyIter.Valid (T@U T@U T@U) Bool)
(declare-fun _module.MyIter.__reads (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun _module.MyIter.__modifies (T@U) T@U)
(declare-fun _module.MyIntIter.__modifies (T@U) T@U)
(declare-fun _module.Naturals.__modifies (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._module.MyIter Tagclass._module.MyIntIter Tagclass._module.MyIntIter? Tagclass._module.Naturals Tagclass._module.Naturals? class._module.MyIter? Tagclass._module.MyIter? class._module.MyIntIter? class._module.Naturals? tytagFamily$nat tytagFamily$object tytagFamily$MyIter tytagFamily$MyIntIter tytagFamily$Naturals field$ys field$xs field$x field$_new field$y field$n field$ns)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_module.MyIter$T T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.MyIter? _module.MyIter$T))) ($IsBox (_module.MyIter.q $o) _module.MyIter$T))
 :qid |unknown.0:0|
 :skolemid |4755|
 :pattern ( (_module.MyIter.q $o) (Tclass._module.MyIter? _module.MyIter$T))
)))
(assert (forall ((_module.MyIter$T@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.MyIter? _module.MyIter$T@@0))) ($IsBox (_module.MyIter.__decreases0 $o@@0) _module.MyIter$T@@0))
 :qid |unknown.0:0|
 :skolemid |4771|
 :pattern ( (_module.MyIter.__decreases0 $o@@0) (Tclass._module.MyIter? _module.MyIter$T@@0))
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
(assert (forall ((_module.MyIter$T@@1 T@U) ($h T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.MyIter? _module.MyIter$T@@1)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.MyIter.x) _module.MyIter$T@@1))
 :qid |unknown.0:0|
 :skolemid |4757|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@1) _module.MyIter.x) (Tclass._module.MyIter? _module.MyIter$T@@1))
)))
(assert (forall ((_module.MyIter$T@@2 T@U) ($h@@0 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.MyIter? _module.MyIter$T@@2)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@2) _module.MyIter.y) _module.MyIter$T@@2))
 :qid |unknown.0:0|
 :skolemid |4759|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@2) _module.MyIter.y) (Tclass._module.MyIter? _module.MyIter$T@@2))
)))
(assert (forall ((_module.MyIter$T@@3 T@U) ($h@@1 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.MyIter? _module.MyIter$T@@3)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) _module.MyIter.x) _module.MyIter$T@@3 $h@@1))
 :qid |unknown.0:0|
 :skolemid |4758|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@3) _module.MyIter.x) (Tclass._module.MyIter? _module.MyIter$T@@3))
)))
(assert (forall ((_module.MyIter$T@@4 T@U) ($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.MyIter? _module.MyIter$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.MyIter.y) _module.MyIter$T@@4 $h@@2))
 :qid |unknown.0:0|
 :skolemid |4760|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.MyIter.y) (Tclass._module.MyIter? _module.MyIter$T@@4))
)))
(assert (forall ((|x#0| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@3)
 :qid |unknown.0:0|
 :skolemid |4540|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@3))
)))
(assert (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Naturals?)) ($Is intType (int_2_U (_module.Naturals.u $o@@5)) TInt))
 :qid |unknown.0:0|
 :skolemid |4819|
 :pattern ( (_module.Naturals.u $o@@5))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Naturals?)) ($Is intType (int_2_U (_module.Naturals.__decreases0 $o@@6)) TInt))
 :qid |unknown.0:0|
 :skolemid |4831|
 :pattern ( (_module.Naturals.__decreases0 $o@@6))
)))
(assert (forall ((_module.MyIter$T@@5 T@U) (|c#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.MyIter _module.MyIter$T@@5) $h@@4) ($IsAlloc refType |c#0| (Tclass._module.MyIter? _module.MyIter$T@@5) $h@@4))
 :qid |unknown.0:0|
 :skolemid |4783|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.MyIter _module.MyIter$T@@5) $h@@4))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.MyIter? _module.MyIter$T@@5) $h@@4))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |4320|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.MyIntIter?)  (or (= $o@@7 null) (= (dtype $o@@7) Tclass._module.MyIntIter?)))
 :qid |unknown.0:0|
 :skolemid |4787|
 :pattern ( ($Is refType $o@@7 Tclass._module.MyIntIter?))
)))
(assert (forall (($o@@8 T@U) ) (! (= ($Is refType $o@@8 Tclass._module.Naturals?)  (or (= $o@@8 null) (= (dtype $o@@8) Tclass._module.Naturals?)))
 :qid |unknown.0:0|
 :skolemid |4817|
 :pattern ( ($Is refType $o@@8 Tclass._module.Naturals?))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@5) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@5))
 :qid |unknown.0:0|
 :skolemid |4546|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@5))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.MyIntIter $h@@6) ($IsAlloc refType |c#0@@1| Tclass._module.MyIntIter? $h@@6))
 :qid |unknown.0:0|
 :skolemid |4813|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.MyIntIter $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.MyIntIter? $h@@6))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Naturals $h@@7) ($IsAlloc refType |c#0@@2| Tclass._module.Naturals? $h@@7))
 :qid |unknown.0:0|
 :skolemid |4843|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Naturals $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Naturals? $h@@7))
)))
(assert (= (FDim _module.MyIter.ys) 0))
(assert (= (FieldOfDecl class._module.MyIter? field$ys) _module.MyIter.ys))
(assert ($IsGhostField _module.MyIter.ys))
(assert (= (FDim _module.MyIter.xs) 0))
(assert (= (FieldOfDecl class._module.MyIter? field$xs) _module.MyIter.xs))
(assert ($IsGhostField _module.MyIter.xs))
(assert (= (FDim _module.MyIter.__new) 0))
(assert (= (FieldOfDecl class._module.MyIter? field$_new) _module.MyIter.__new))
(assert ($IsGhostField _module.MyIter.__new))
(assert (= (FDim _module.MyIntIter.__new) 0))
(assert (= (FieldOfDecl class._module.MyIntIter? field$_new) _module.MyIntIter.__new))
(assert ($IsGhostField _module.MyIntIter.__new))
(assert (= (FDim _module.Naturals.__new) 0))
(assert (= (FieldOfDecl class._module.Naturals? field$_new) _module.Naturals.__new))
(assert ($IsGhostField _module.Naturals.__new))
(assert (= (FDim _module.MyIntIter.xs) 0))
(assert (= (FieldOfDecl class._module.MyIntIter? field$xs) _module.MyIntIter.xs))
(assert ($IsGhostField _module.MyIntIter.xs))
(assert (= (FDim _module.MyIntIter.ys) 0))
(assert (= (FieldOfDecl class._module.MyIntIter? field$ys) _module.MyIntIter.ys))
(assert ($IsGhostField _module.MyIntIter.ys))
(assert (= (FDim _module.Naturals.ns) 0))
(assert (= (FieldOfDecl class._module.Naturals? field$ns) _module.Naturals.ns))
(assert ($IsGhostField _module.Naturals.ns))
(assert (forall ((_module.MyIter$T@@6 T@U) ($o@@9 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@9 (Tclass._module.MyIter? _module.MyIter$T@@6) $h@@8)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4754|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._module.MyIter? _module.MyIter$T@@6) $h@@8))
)))
(assert (= (FDim _module.MyIter.x) 0))
(assert (= (FieldOfDecl class._module.MyIter? field$x) _module.MyIter.x))
(assert  (not ($IsGhostField _module.MyIter.x)))
(assert (= (FDim _module.MyIter.y) 0))
(assert (= (FieldOfDecl class._module.MyIter? field$y) _module.MyIter.y))
(assert  (not ($IsGhostField _module.MyIter.y)))
(assert (= (FDim _module.MyIntIter.x) 0))
(assert (= (FieldOfDecl class._module.MyIntIter? field$x) _module.MyIntIter.x))
(assert  (not ($IsGhostField _module.MyIntIter.x)))
(assert (= (FDim _module.MyIntIter.y) 0))
(assert (= (FieldOfDecl class._module.MyIntIter? field$y) _module.MyIntIter.y))
(assert  (not ($IsGhostField _module.MyIntIter.y)))
(assert (= (FDim _module.Naturals.n) 0))
(assert (= (FieldOfDecl class._module.Naturals? field$n) _module.Naturals.n))
(assert  (not ($IsGhostField _module.Naturals.n)))
(assert (forall (($o@@10 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._System.object? $h@@9)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4543|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._System.object? $h@@9))
)))
(assert (forall (($o@@11 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.MyIntIter? $h@@10)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4788|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.MyIntIter? $h@@10))
)))
(assert (forall (($o@@12 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Naturals? $h@@11)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4818|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Naturals? $h@@11))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |4313|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |4314|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4212|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4210|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |4453|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |4434|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |4435|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4221|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |4241|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |4242|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |4539|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |4419|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.MyIntIter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@13 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (or (or (= $o@@13 this) (|Set#IsMember| (_module.MyIntIter.__reads this) ($Box refType $o@@13))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.MyIntIter.__new)) ($Box refType $o@@13)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@13) $f)))
 :qid |unknown.0:0|
 :skolemid |4805|
)) (= (_module.MyIntIter.Valid $h0 this) (_module.MyIntIter.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4806|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.MyIntIter.Valid $h1 this))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Naturals))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@14 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (or (or (= $o@@14 this@@0) (|Set#IsMember| (_module.Naturals.__reads this@@0) ($Box refType $o@@14))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@0) _module.Naturals.__new)) ($Box refType $o@@14)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@14) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@14) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |4835|
)) (= (_module.Naturals.Valid $h0@@0 this@@0) (_module.Naturals.Valid $h1@@0 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4836|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Naturals.Valid $h1@@0 this@@0))
)))
(assert (forall (($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.MyIntIter.x)) TInt $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4790|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) _module.MyIntIter.x)))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) _module.MyIntIter.y)) TInt $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4792|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) _module.MyIntIter.y)))
)))
(assert (forall ((_module.MyIter$T@@7 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.MyIter _module.MyIter$T@@7))  (and ($Is refType |c#0@@3| (Tclass._module.MyIter? _module.MyIter$T@@7)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4782|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.MyIter _module.MyIter$T@@7)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.MyIter? _module.MyIter$T@@7)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |4234|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |4306|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |4305|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.MyIter$T@@8 T@U) ) (!  (and (= (Tag (Tclass._module.MyIter _module.MyIter$T@@8)) Tagclass._module.MyIter) (= (TagFamily (Tclass._module.MyIter _module.MyIter$T@@8)) tytagFamily$MyIter))
 :qid |unknown.0:0|
 :skolemid |4677|
 :pattern ( (Tclass._module.MyIter _module.MyIter$T@@8))
)))
(assert (forall ((_module.MyIter$T@@9 T@U) ) (!  (and (= (Tag (Tclass._module.MyIter? _module.MyIter$T@@9)) Tagclass._module.MyIter?) (= (TagFamily (Tclass._module.MyIter? _module.MyIter$T@@9)) tytagFamily$MyIter))
 :qid |unknown.0:0|
 :skolemid |4750|
 :pattern ( (Tclass._module.MyIter? _module.MyIter$T@@9))
)))
(assert (forall ((_module.MyIter$T@@10 T@U) ($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.MyIter? _module.MyIter$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) _module.MyIter.xs)) (TSeq _module.MyIter$T@@10) $h@@14))
 :qid |unknown.0:0|
 :skolemid |4762|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) _module.MyIter.xs)) (Tclass._module.MyIter? _module.MyIter$T@@10))
)))
(assert (forall ((_module.MyIter$T@@11 T@U) ($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.MyIter? _module.MyIter$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.MyIter.ys)) (TSeq _module.MyIter$T@@11) $h@@15))
 :qid |unknown.0:0|
 :skolemid |4764|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) _module.MyIter.ys)) (Tclass._module.MyIter? _module.MyIter$T@@11))
)))
(assert (forall (($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Naturals?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.Naturals.n)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4821|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) _module.Naturals.n)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |4421|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall (($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.MyIntIter.xs)) (TSeq TInt) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4794|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) _module.MyIntIter.xs)))
)))
(assert (forall (($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.MyIntIter.ys)) (TSeq TInt) $h@@18))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4796|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) _module.MyIntIter.ys)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |4538|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4541|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |4544|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.MyIntIter) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.MyIntIter)))
 :qid |unknown.0:0|
 :skolemid |4684|
 :pattern ( ($IsBox bx@@5 Tclass._module.MyIntIter))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.MyIntIter?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.MyIntIter?)))
 :qid |unknown.0:0|
 :skolemid |4686|
 :pattern ( ($IsBox bx@@6 Tclass._module.MyIntIter?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Naturals) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Naturals)))
 :qid |unknown.0:0|
 :skolemid |4694|
 :pattern ( ($IsBox bx@@7 Tclass._module.Naturals))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Naturals?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Naturals?)))
 :qid |unknown.0:0|
 :skolemid |4696|
 :pattern ( ($IsBox bx@@8 Tclass._module.Naturals?))
)))
(assert (forall ((_module.MyIter$T@@12 T@U) ($o@@22 T@U) ) (! (= ($Is refType $o@@22 (Tclass._module.MyIter? _module.MyIter$T@@12))  (or (= $o@@22 null) (= (dtype $o@@22) (Tclass._module.MyIter? _module.MyIter$T@@12))))
 :qid |unknown.0:0|
 :skolemid |4753|
 :pattern ( ($Is refType $o@@22 (Tclass._module.MyIter? _module.MyIter$T@@12)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4545|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.MyIntIter)  (and ($Is refType |c#0@@5| Tclass._module.MyIntIter?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4812|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.MyIntIter))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.MyIntIter?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Naturals)  (and ($Is refType |c#0@@6| Tclass._module.Naturals?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4842|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Naturals))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Naturals?))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |4420|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall (($h@@19 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@23) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@23) _module.Naturals.n)) Tclass._System.nat $h@@19))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4822|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@23) _module.Naturals.n)))
)))
(assert (forall ((_module.MyIter$T@@13 T@U) ($h@@20 T@U) ($o@@24 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass._module.MyIter? _module.MyIter$T@@13)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) _module.MyIter.__new)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4769|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@24) _module.MyIter.__new)) (Tclass._module.MyIter? _module.MyIter$T@@13))
)))
(assert (forall ((_module.MyIter$T@@14 T@U) ($h@@21 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._module.MyIter? _module.MyIter$T@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) _module.MyIter.__new)) (TSet Tclass._System.object?) $h@@21))
 :qid |unknown.0:0|
 :skolemid |4770|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@25) _module.MyIter.__new)) (Tclass._module.MyIter? _module.MyIter$T@@14))
)))
(assert (forall (($h@@22 T@U) ($o@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.MyIntIter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.MyIntIter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4801|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@26) _module.MyIntIter.__new)))
)))
(assert (forall (($h@@23 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Naturals?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Naturals.ns)) (TSeq Tclass._System.nat)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4823|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@27) _module.Naturals.ns)))
)))
(assert (forall (($h@@24 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.Naturals?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) _module.Naturals.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4829|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@28) _module.Naturals.__new)))
)))
(assert (forall (($h@@25 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) _module.MyIntIter.__new)) (TSet Tclass._System.object?) $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4802|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@29) _module.MyIntIter.__new)))
)))
(assert (forall (($h@@26 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@30) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@30) _module.Naturals.ns)) (TSeq Tclass._System.nat) $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4824|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@30) _module.Naturals.ns)))
)))
(assert (forall (($h@@27 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@31) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@31) _module.Naturals.__new)) (TSet Tclass._System.object?) $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4830|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@31) _module.Naturals.__new)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |4345|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Seq#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |4436|
 :pattern ( (|Seq#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |4312|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |4302|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |4222|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |4233|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |4416|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |4262|
 :pattern ( (|Set#IsMember| v@@5 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |4263|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@32 T@U) ) (! ($Is refType $o@@32 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |4542|
 :pattern ( ($Is refType $o@@32 Tclass._System.object?))
)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsAllocBox (|Seq#Index| v@@6 i@@0) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |4268|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |4269|
 :pattern ( ($IsAlloc SeqType v@@6 (TSeq t0@@2) h@@4))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |4196|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |4197|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |4202|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |4203|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((_module.MyIter$T@@15 T@U) ) (! (= (Tclass._module.MyIter_0 (Tclass._module.MyIter _module.MyIter$T@@15)) _module.MyIter$T@@15)
 :qid |unknown.0:0|
 :skolemid |4678|
 :pattern ( (Tclass._module.MyIter _module.MyIter$T@@15))
)))
(assert (forall ((_module.MyIter$T@@16 T@U) ) (! (= (Tclass._module.MyIter?_0 (Tclass._module.MyIter? _module.MyIter$T@@16)) _module.MyIter$T@@16)
 :qid |unknown.0:0|
 :skolemid |4751|
 :pattern ( (Tclass._module.MyIter? _module.MyIter$T@@16))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4220|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_module.MyIter$T@@17 T@U) ($h@@28 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) (Tclass._module.MyIter? _module.MyIter$T@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@33) alloc)))) ($IsAllocBox (_module.MyIter.q $o@@33) _module.MyIter$T@@17 $h@@28))
 :qid |unknown.0:0|
 :skolemid |4756|
 :pattern ( (_module.MyIter.q $o@@33) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@33) alloc)) (Tclass._module.MyIter? _module.MyIter$T@@17))
)))
(assert (forall ((_module.MyIter$T@@18 T@U) ($h@@29 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) (Tclass._module.MyIter? _module.MyIter$T@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@34) alloc)))) ($IsAllocBox (_module.MyIter.__decreases0 $o@@34) _module.MyIter$T@@18 $h@@29))
 :qid |unknown.0:0|
 :skolemid |4772|
 :pattern ( (_module.MyIter.__decreases0 $o@@34) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@34) alloc)) (Tclass._module.MyIter? _module.MyIter$T@@18))
)))
(assert (forall ((_module.MyIter$T@@19 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.MyIter _module.MyIter$T@@19)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@35 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (or (or (= $o@@35 this@@1) (|Set#IsMember| (_module.MyIter.__reads this@@1) ($Box refType $o@@35))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@1) _module.MyIter.__new)) ($Box refType $o@@35)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@35) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@35) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |4775|
)) (= (_module.MyIter.Valid _module.MyIter$T@@19 $h0@@1 this@@1) (_module.MyIter.Valid _module.MyIter$T@@19 $h1@@1 this@@1))))
 :qid |unknown.0:0|
 :skolemid |4776|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.MyIter.Valid _module.MyIter$T@@19 $h1@@1 this@@1))
)))
(assert (forall (($h@@30 T@U) ($o@@36 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) Tclass._module.MyIntIter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@36) _module.MyIntIter.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4789|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@36) _module.MyIntIter.x)))
)))
(assert (forall (($h@@31 T@U) ($o@@37 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@37 null)) (not true)) (= (dtype $o@@37) Tclass._module.MyIntIter?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@37) _module.MyIntIter.y)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4791|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@37) _module.MyIntIter.y)))
)))
(assert (forall (($h@@32 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@38) alloc)))) ($IsAlloc intType (int_2_U (_module.Naturals.u $o@@38)) TInt $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4820|
 :pattern ( (_module.Naturals.u $o@@38) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@38) alloc)))
)))
(assert (forall (($h@@33 T@U) ($o@@39 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@39) alloc)))) ($IsAlloc intType (int_2_U (_module.Naturals.__decreases0 $o@@39)) TInt $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4832|
 :pattern ( (_module.Naturals.__decreases0 $o@@39) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@39) alloc)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@40 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@40 $f@@2))  (=> (and (or (not (= $o@@40 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@40) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5370|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@40 $f@@2))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |4535|
 :pattern ( (Mod x@@6 y))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |4418|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((_module.MyIter$T@@20 T@U) ($h@@34 T@U) ($o@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) (Tclass._module.MyIter? _module.MyIter$T@@20)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@41) _module.MyIter.xs)) (TSeq _module.MyIter$T@@20)))
 :qid |unknown.0:0|
 :skolemid |4761|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@41) _module.MyIter.xs)) (Tclass._module.MyIter? _module.MyIter$T@@20))
)))
(assert (forall ((_module.MyIter$T@@21 T@U) ($h@@35 T@U) ($o@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@42 null)) (not true)) (= (dtype $o@@42) (Tclass._module.MyIter? _module.MyIter$T@@21)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@42) _module.MyIter.ys)) (TSeq _module.MyIter$T@@21)))
 :qid |unknown.0:0|
 :skolemid |4763|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@42) _module.MyIter.ys)) (Tclass._module.MyIter? _module.MyIter$T@@21))
)))
(assert (forall ((bx@@11 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |4227|
 :pattern ( ($IsBox bx@@11 (TSet t@@8)))
)))
(assert (forall ((bx@@12 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@12 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@12)) bx@@12) ($Is SeqType ($Unbox SeqType bx@@12) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |4230|
 :pattern ( ($IsBox bx@@12 (TSeq t@@9)))
)))
(assert (forall ((_module.MyIter$T@@22 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._module.MyIter _module.MyIter$T@@22)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass._module.MyIter _module.MyIter$T@@22))))
 :qid |unknown.0:0|
 :skolemid |4679|
 :pattern ( ($IsBox bx@@13 (Tclass._module.MyIter _module.MyIter$T@@22)))
)))
(assert (forall ((_module.MyIter$T@@23 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._module.MyIter? _module.MyIter$T@@23)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._module.MyIter? _module.MyIter$T@@23))))
 :qid |unknown.0:0|
 :skolemid |4752|
 :pattern ( ($IsBox bx@@14 (Tclass._module.MyIter? _module.MyIter$T@@23)))
)))
(assert (forall (($h@@36 T@U) ($o@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) Tclass._module.MyIntIter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@43) _module.MyIntIter.xs)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4793|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@43) _module.MyIntIter.xs)))
)))
(assert (forall (($h@@37 T@U) ($o@@44 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) Tclass._module.MyIntIter?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@44) _module.MyIntIter.ys)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4795|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@44) _module.MyIntIter.ys)))
)))
(assert (forall ((_module.MyIter$T@@24 T@U) ($o@@45 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (= (dtype $o@@45) (Tclass._module.MyIter? _module.MyIter$T@@24))) ($Is SetType (_module.MyIter.__reads $o@@45) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4765|
 :pattern ( (_module.MyIter.__reads $o@@45) (Tclass._module.MyIter? _module.MyIter$T@@24))
)))
(assert (forall ((_module.MyIter$T@@25 T@U) ($o@@46 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (= (dtype $o@@46) (Tclass._module.MyIter? _module.MyIter$T@@25))) ($Is SetType (_module.MyIter.__modifies $o@@46) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4767|
 :pattern ( (_module.MyIter.__modifies $o@@46) (Tclass._module.MyIter? _module.MyIter$T@@25))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.MyIntIter) Tagclass._module.MyIntIter))
(assert (= (TagFamily Tclass._module.MyIntIter) tytagFamily$MyIntIter))
(assert (= (Tag Tclass._module.MyIntIter?) Tagclass._module.MyIntIter?))
(assert (= (TagFamily Tclass._module.MyIntIter?) tytagFamily$MyIntIter))
(assert (= (Tag Tclass._module.Naturals) Tagclass._module.Naturals))
(assert (= (TagFamily Tclass._module.Naturals) tytagFamily$Naturals))
(assert (= (Tag Tclass._module.Naturals?) Tagclass._module.Naturals?))
(assert (= (TagFamily Tclass._module.Naturals?) tytagFamily$Naturals))
(assert (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (= (dtype $o@@47) Tclass._module.MyIntIter?)) ($Is SetType (_module.MyIntIter.__reads $o@@47) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4797|
 :pattern ( (_module.MyIntIter.__reads $o@@47))
)))
(assert (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (= (dtype $o@@48) Tclass._module.MyIntIter?)) ($Is SetType (_module.MyIntIter.__modifies $o@@48) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4799|
 :pattern ( (_module.MyIntIter.__modifies $o@@48))
)))
(assert (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (= (dtype $o@@49) Tclass._module.Naturals?)) ($Is SetType (_module.Naturals.__reads $o@@49) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4825|
 :pattern ( (_module.Naturals.__reads $o@@49))
)))
(assert (forall (($o@@50 T@U) ) (!  (=> (and (or (not (= $o@@50 null)) (not true)) (= (dtype $o@@50) Tclass._module.Naturals?)) ($Is SetType (_module.Naturals.__modifies $o@@50) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |4827|
 :pattern ( (_module.Naturals.__modifies $o@@50))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@2 b@@2) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@2 o@@1) (|Set#IsMember| b@@2 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |4343|
 :pattern ( (|Set#IsMember| a@@2 o@@1))
 :pattern ( (|Set#IsMember| b@@2 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |4344|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((_module.MyIter$T@@26 T@U) ($h@@38 T@U) ($o@@51 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@51 null)) (not true)) (= (dtype $o@@51) (Tclass._module.MyIter? _module.MyIter$T@@26)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@51) alloc)))) ($IsAlloc SetType (_module.MyIter.__reads $o@@51) (TSet Tclass._System.object?) $h@@38))
 :qid |unknown.0:0|
 :skolemid |4766|
 :pattern ( (_module.MyIter.__reads $o@@51) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@51) alloc)) (Tclass._module.MyIter? _module.MyIter$T@@26))
)))
(assert (forall ((_module.MyIter$T@@27 T@U) ($h@@39 T@U) ($o@@52 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@39) (and (or (not (= $o@@52 null)) (not true)) (= (dtype $o@@52) (Tclass._module.MyIter? _module.MyIter$T@@27)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@52) alloc)))) ($IsAlloc SetType (_module.MyIter.__modifies $o@@52) (TSet Tclass._System.object?) $h@@39))
 :qid |unknown.0:0|
 :skolemid |4768|
 :pattern ( (_module.MyIter.__modifies $o@@52) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@39 $o@@52) alloc)) (Tclass._module.MyIter? _module.MyIter$T@@27))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |4422|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall (($h@@40 T@U) ($o@@53 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@40) (and (or (not (= $o@@53 null)) (not true)) (= (dtype $o@@53) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@53) alloc)))) ($IsAlloc SetType (_module.MyIntIter.__reads $o@@53) (TSet Tclass._System.object?) $h@@40))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4798|
 :pattern ( (_module.MyIntIter.__reads $o@@53) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@40 $o@@53) alloc)))
)))
(assert (forall (($h@@41 T@U) ($o@@54 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@54 null)) (not true)) (= (dtype $o@@54) Tclass._module.MyIntIter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@54) alloc)))) ($IsAlloc SetType (_module.MyIntIter.__modifies $o@@54) (TSet Tclass._System.object?) $h@@41))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4800|
 :pattern ( (_module.MyIntIter.__modifies $o@@54) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@54) alloc)))
)))
(assert (forall (($h@@42 T@U) ($o@@55 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@55 null)) (not true)) (= (dtype $o@@55) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@55) alloc)))) ($IsAlloc SetType (_module.Naturals.__reads $o@@55) (TSet Tclass._System.object?) $h@@42))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4826|
 :pattern ( (_module.Naturals.__reads $o@@55) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@55) alloc)))
)))
(assert (forall (($h@@43 T@U) ($o@@56 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@56 null)) (not true)) (= (dtype $o@@56) Tclass._module.Naturals?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@56) alloc)))) ($IsAlloc SetType (_module.Naturals.__modifies $o@@56) (TSet Tclass._System.object?) $h@@43))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4828|
 :pattern ( (_module.Naturals.__modifies $o@@56) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@56) alloc)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4213|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4211|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |4417|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc intType v@@7 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4256|
 :pattern ( ($IsAlloc intType v@@7 TInt h@@5))
)))
(assert (forall ((v@@8 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@4)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@1) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |4248|
 :pattern ( (|Seq#Index| v@@8 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |4249|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@4)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4235|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |patience#0@1| () Int)
(declare-fun |_module.MyIntIter.Valid#canCall| (T@U T@U) Bool)
(declare-fun $Heap@6 () T@U)
(declare-fun call1formal@this@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |remaining#0@1| () Int)
(declare-fun |_module.Naturals.Valid#canCall| (T@U T@U) Bool)
(declare-fun $Heap@10 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |$decr$loop#10@1| () Int)
(declare-fun |remaining#0@2| () Int)
(declare-fun $Heap@11 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call2formal@more#0@0| () Bool)
(declare-fun |q##0@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun |u##0@0| () Int)
(declare-fun |$decr_init$loop#10@0| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |remaining#0@0| () Int)
(declare-fun |call2formal@more#0@0@@0| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun |patience#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |patience#0@0| () Int)
(declare-fun |call3formal@more#0@0| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun call3formal@this@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@more#0@0@@0| () Bool)
(declare-fun |_module.MyIter.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@more#0@0@@1| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |a#0@0| () Int)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@_module.MyIter$T () T@U)
(declare-fun |call1formal@q#0@0| () T@U)
(declare-fun |defass#m#0| () Bool)
(declare-fun |m#0| () T@U)
(declare-fun |defass#n#0| () Bool)
(declare-fun |n#0| () T@U)
(declare-fun |defass#o#0| () Bool)
(declare-fun |o#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 104) (let ((anon15_correct true))
(let ((anon42_Else_correct  (=> (and (< (LitInt 0) |patience#0@1|) (= (ControlFlow 0 57) 55)) anon15_correct)))
(let ((anon42_Then_correct  (=> (and (<= |patience#0@1| (LitInt 0)) (= (ControlFlow 0 56) 55)) anon15_correct)))
(let ((anon12_correct  (=> (|_module.MyIntIter.Valid#canCall| $Heap@6 call1formal@this@0) (=> (and (_module.MyIntIter.Valid $Heap@6 call1formal@this@0) (and (forall (($o@@57 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@57)) (or (not (= $o@@57 null)) (not true)))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4687|
 :pattern (  (or (not (= $o@@57 null)) (not true)))
)) (forall (($o@@58 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@58)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@58) alloc)))))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4688|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@58)))
)))) (and (=> (= (ControlFlow 0 58) 56) anon42_Then_correct) (=> (= (ControlFlow 0 58) 57) anon42_Else_correct))))))
(let ((anon41_Else_correct  (=> (and (not (_module.MyIntIter.Valid $Heap@6 call1formal@this@0)) (= (ControlFlow 0 62) 58)) anon12_correct)))
(let ((anon41_Then_correct  (=> (_module.MyIntIter.Valid $Heap@6 call1formal@this@0) (and (=> (= (ControlFlow 0 59) (- 0 61)) true) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= call1formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 59) 58) anon12_correct))))))
(let ((anon40_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 63) (- 0 65)) true) (and (=> (= (ControlFlow 0 63) (- 0 64)) (or (not (= call1formal@this@0 null)) (not true))) (=> (and ($IsAllocBox ($Box refType call1formal@this@0) Tclass._module.MyIntIter? $Heap@6) (|_module.MyIntIter.Valid#canCall| $Heap@6 call1formal@this@0)) (and (=> (= (ControlFlow 0 63) 59) anon41_Then_correct) (=> (= (ControlFlow 0 63) 62) anon41_Else_correct))))))))
(let ((anon29_correct true))
(let ((anon48_Else_correct  (=> (and (< (LitInt 0) |remaining#0@1|) (= (ControlFlow 0 32) 30)) anon29_correct)))
(let ((anon48_Then_correct  (=> (and (<= |remaining#0@1| (LitInt 0)) (= (ControlFlow 0 31) 30)) anon29_correct)))
(let ((anon26_correct  (=> (|_module.Naturals.Valid#canCall| $Heap@10 call2formal@this@0) (=> (and (_module.Naturals.Valid $Heap@10 call2formal@this@0) (and (forall (($o@@59 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@59)) (or (not (= $o@@59 null)) (not true)))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4697|
 :pattern (  (or (not (= $o@@59 null)) (not true)))
)) (forall (($o@@60 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@60)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@60) alloc)))))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4698|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@60)))
)))) (and (=> (= (ControlFlow 0 33) 31) anon48_Then_correct) (=> (= (ControlFlow 0 33) 32) anon48_Else_correct))))))
(let ((anon47_Else_correct  (=> (and (not (_module.Naturals.Valid $Heap@10 call2formal@this@0)) (= (ControlFlow 0 37) 33)) anon26_correct)))
(let ((anon47_Then_correct  (=> (_module.Naturals.Valid $Heap@10 call2formal@this@0) (and (=> (= (ControlFlow 0 34) (- 0 36)) true) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= call2formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 34) 33) anon26_correct))))))
(let ((anon46_Then_correct  (=> (not |$w$loop#1@0|) (and (=> (= (ControlFlow 0 38) (- 0 40)) true) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= call2formal@this@0 null)) (not true))) (=> (and ($IsAllocBox ($Box refType call2formal@this@0) Tclass._module.Naturals? $Heap@10) (|_module.Naturals.Valid#canCall| $Heap@10 call2formal@this@0)) (and (=> (= (ControlFlow 0 38) 34) anon47_Then_correct) (=> (= (ControlFlow 0 38) 37) anon47_Else_correct))))))))
(let ((anon35_correct  (and (=> (= (ControlFlow 0 14) (- 0 17)) (or (<= 0 |$decr$loop#10@1|) (= (ite (<= |remaining#0@2| (LitInt 0)) (- 0 |remaining#0@2|) (- |remaining#0@2| 0)) |$decr$loop#10@1|))) (=> (or (<= 0 |$decr$loop#10@1|) (= (ite (<= |remaining#0@2| (LitInt 0)) (- 0 |remaining#0@2|) (- |remaining#0@2| 0)) |$decr$loop#10@1|)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< (ite (<= |remaining#0@2| (LitInt 0)) (- 0 |remaining#0@2|) (- |remaining#0@2| 0)) |$decr$loop#10@1|)) (=> (< (ite (<= |remaining#0@2| (LitInt 0)) (- 0 |remaining#0@2|) (- |remaining#0@2| 0)) |$decr$loop#10@1|) (=> (|_module.Naturals.Valid#canCall| $Heap@11 call2formal@this@0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> |$w$loop#1@0| (_module.Naturals.Valid $Heap@11 call2formal@this@0))) (=> (=> |$w$loop#1@0| (_module.Naturals.Valid $Heap@11 call2formal@this@0)) (=> (= (ControlFlow 0 14) (- 0 13)) (=> |$w$loop#1@0| (and (forall (($o@@61 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@61)) (or (not (= $o@@61 null)) (not true)))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4699|
 :pattern (  (or (not (= $o@@61 null)) (not true)))
)) (forall (($o@@62 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@62)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@62) alloc)))))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@62)))
))))))))))))))
(let ((anon50_Else_correct  (=> (and (or (not (= (Mod |remaining#0@2| (LitInt 10)) (LitInt 0))) (not true)) (= (ControlFlow 0 19) 14)) anon35_correct)))
(let ((anon50_Then_correct  (=> (and (= (Mod |remaining#0@2| (LitInt 10)) (LitInt 0)) (= (ControlFlow 0 18) 14)) anon35_correct)))
(let ((anon49_Else_correct  (=> (and (or (not (= |remaining#0@1| 0)) (not true)) (= |$decr$loop#10@1| (ite (<= |remaining#0@1| (LitInt 0)) (- 0 |remaining#0@1|) (- |remaining#0@1| 0)))) (and (=> (= (ControlFlow 0 20) (- 0 28)) true) (and (=> (= (ControlFlow 0 20) (- 0 27)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 26)) (forall (($o@@63 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@63 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@63) alloc)))) (or (or (= $o@@63 call2formal@this@0) (|Set#IsMember| (_module.Naturals.__modifies call2formal@this@0) ($Box refType $o@@63))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@63)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@63 $f@@3)))
 :qid |Iteratorsdfy.59:27|
 :skolemid |4703|
))) (=> (forall (($o@@64 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@64 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@64) alloc)))) (or (or (= $o@@64 call2formal@this@0) (|Set#IsMember| (_module.Naturals.__modifies call2formal@this@0) ($Box refType $o@@64))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@64)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@64 $f@@4)))
 :qid |Iteratorsdfy.59:27|
 :skolemid |4703|
)) (and (=> (= (ControlFlow 0 20) (- 0 25)) (_module.Naturals.Valid $Heap@10 call2formal@this@0)) (=> (_module.Naturals.Valid $Heap@10 call2formal@this@0) (=> (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (=> (and (and (and (and (forall (($o@@65 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@65)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@65)))) (or (not (= $o@@65 null)) (not true)))
 :qid |Iteratorsdfy.17:10|
 :skolemid |4839|
 :pattern (  (or (not (= $o@@65 null)) (not true)))
)) (forall (($o@@66 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@66)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@66)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@66) alloc)))))
 :qid |Iteratorsdfy.17:10|
 :skolemid |4840|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@66) alloc)))
))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.__new)) ($Box refType null)))) (and (=> |call2formal@more#0@0| (|_module.Naturals.Valid#canCall| $Heap@11 call2formal@this@0)) (=> |call2formal@more#0@0| (_module.Naturals.Valid $Heap@11 call2formal@this@0)))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.ns)) (ite |call2formal@more#0@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.ns)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 call2formal@this@0) _module.Naturals.n))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.ns)))) (=> (not |call2formal@more#0@0|) (U_2_bool (Lit boolType (bool_2_U false))))) (and (forall (($o@@67 T@U) ) (!  (=> (and (or (not (= $o@@67 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@67) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@67) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@67)) (or (or (= $o@@67 call2formal@this@0) (|Set#IsMember| (_module.Naturals.__modifies call2formal@this@0) ($Box refType $o@@67))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@67)))))
 :qid |Iteratorsdfy.17:10|
 :skolemid |4841|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@67))
)) ($HeapSucc $Heap@10 $Heap@11)))) (and (=> (= (ControlFlow 0 20) (- 0 24)) |call2formal@more#0@0|) (=> |call2formal@more#0@0| (and (=> (= (ControlFlow 0 20) (- 0 23)) true) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= call2formal@this@0 null)) (not true))) (=> (= |remaining#0@2| (- |remaining#0@1| 1)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= (LitInt 10) 0)) (not true))) (=> (or (not (= (LitInt 10) 0)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon50_Then_correct) (=> (= (ControlFlow 0 20) 19) anon50_Else_correct)))))))))))))))))))))
(let ((anon49_Then_correct true))
(let ((anon46_Else_correct  (=> |$w$loop#1@0| (and (=> (= (ControlFlow 0 29) 12) anon49_Then_correct) (=> (= (ControlFlow 0 29) 20) anon49_Else_correct)))))
(let ((anon45_LoopBody_correct  (and (=> (= (ControlFlow 0 41) 38) anon46_Then_correct) (=> (= (ControlFlow 0 41) 29) anon46_Else_correct))))
(let ((anon45_LoopDone_correct true))
(let ((anon45_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (not false) true) (= |q##0@0| 12)) true) (and (<= 0 |patience#0@1|) (< |patience#0@1| 11))) (= |$decr_init$loop#00@0| 10)) |$w$loop#0@0|) true) (= |u##0@0| 18)) (and (<= 0 |remaining#0@1|) (< |remaining#0@1| 101))) (= |$decr_init$loop#10@0| 100)) (=> |$w$loop#1@0| (|_module.Naturals.Valid#canCall| $Heap@10 call2formal@this@0))) (and (=> |$w$loop#1@0| (_module.Naturals.Valid $Heap@10 call2formal@this@0)) (=> |$w$loop#1@0| (and (forall (($o@@68 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@68)) (or (not (= $o@@68 null)) (not true)))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4699|
 :pattern (  (or (not (= $o@@68 null)) (not true)))
)) (forall (($o@@69 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@69)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@69) alloc)))))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@69)))
)))))) (and (and (forall (($o@@70 T@U) ) (!  (=> (and (or (not (= $o@@70 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@70) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@70) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@70)))
 :qid |Iteratorsdfy.56:3|
 :skolemid |4701|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@70))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (forall (($o@@71 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@71 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@71) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@71) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@71) $f@@5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@71 $f@@5))))
 :qid |Iteratorsdfy.56:3|
 :skolemid |4702|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@71) $f@@5))
)) (<= (ite (<= |remaining#0@1| (LitInt 0)) (- 0 |remaining#0@1|) (- |remaining#0@1| 0)) |$decr_init$loop#10@0|)))) (and (=> (= (ControlFlow 0 42) 11) anon45_LoopDone_correct) (=> (= (ControlFlow 0 42) 41) anon45_LoopBody_correct))))))
(let ((after_0_correct  (=> (= |u##0@0| (LitInt 18)) (=> (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass._module.Naturals) ($IsAlloc refType call2formal@this Tclass._module.Naturals $Heap))) (and (=> (= (ControlFlow 0 43) (- 0 46)) (< |u##0@0| 25)) (=> (< |u##0@0| 25) (=> (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (=> (and (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass._module.Naturals) ($IsAlloc refType call2formal@this@0 Tclass._module.Naturals $Heap@9))) (= (_module.Naturals.u call2formal@this@0) |u##0@0|)) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.ns)) |Seq#Empty|) (|_module.Naturals.Valid#canCall| $Heap@9 call2formal@this@0)) (and (_module.Naturals.Valid $Heap@9 call2formal@this@0) (|Set#Equal| (_module.Naturals.__reads call2formal@this@0) |Set#Empty|)))) (and (and (and (|Set#Equal| (_module.Naturals.__modifies call2formal@this@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) |Set#Empty|)) (and (= (_module.Naturals.__decreases0 call2formal@this@0) |u##0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 call2formal@this@0) alloc)))))) (and (and (forall (($o@@72 T@U) ) (!  (=> (and (or (not (= $o@@72 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@72) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@72) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@72)))
 :qid |Iteratorsdfy.17:10|
 :skolemid |4834|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@72))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (= |remaining#0@0| (LitInt 100)) (= |$decr_init$loop#10@0| (ite (<= |remaining#0@0| (LitInt 0)) (- 0 |remaining#0@0|) (- |remaining#0@0| 0))))))) (and (=> (= (ControlFlow 0 43) (- 0 45)) (=> |$w$loop#1@0| (_module.Naturals.Valid $Heap@9 call2formal@this@0))) (=> (=> |$w$loop#1@0| (_module.Naturals.Valid $Heap@9 call2formal@this@0)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (=> |$w$loop#1@0| (and (forall (($o@@73 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@73)) (or (not (= $o@@73 null)) (not true)))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4699|
 :pattern (  (or (not (= $o@@73 null)) (not true)))
)) (forall (($o@@74 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@74)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@74) alloc)))))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@74)))
))))) (=> (=> |$w$loop#1@0| (and (forall (($o@@75 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@75)) (or (not (= $o@@75 null)) (not true)))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4699|
 :pattern (  (or (not (= $o@@75 null)) (not true)))
)) (forall (($o@@76 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@76)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@76) alloc)))))
 :qid |Iteratorsdfy.57:28|
 :skolemid |4700|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call2formal@this@0) _module.Naturals.__new)) ($Box refType $o@@76)))
)))) (=> (= (ControlFlow 0 43) 42) anon45_LoopHead_correct)))))))))))))
(let ((anon44_Then_correct  (=> (not |call2formal@more#0@0@@0|) (=> (and (= $Heap@8 $Heap@7) (= (ControlFlow 0 48) 43)) after_0_correct))))
(let ((anon43_Then_correct  (=> (= |patience#0@1| 0) (=> (and (= $Heap@8 $Heap@6) (= (ControlFlow 0 47) 43)) after_0_correct))))
(let ((anon44_Else_correct  (=> |call2formal@more#0@0@@0| (and (=> (= (ControlFlow 0 3) (- 0 10)) true) (and (=> (= (ControlFlow 0 3) (- 0 9)) (or (not (= call1formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 8)) true) (and (=> (= (ControlFlow 0 3) (- 0 7)) (or (not (= call1formal@this@0 null)) (not true))) (=> (= |patience#0@2| (- |patience#0@1| 1)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (<= 0 |$decr$loop#00@1|) (= (ite (<= |patience#0@2| (LitInt 0)) (- 0 |patience#0@2|) (- |patience#0@2| 0)) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (ite (<= |patience#0@2| (LitInt 0)) (- 0 |patience#0@2|) (- |patience#0@2| 0)) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (< (ite (<= |patience#0@2| (LitInt 0)) (- 0 |patience#0@2|) (- |patience#0@2| 0)) |$decr$loop#00@1|)) (=> (< (ite (<= |patience#0@2| (LitInt 0)) (- 0 |patience#0@2|) (- |patience#0@2| 0)) |$decr$loop#00@1|) (=> (|_module.MyIntIter.Valid#canCall| $Heap@7 call1formal@this@0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (_module.MyIntIter.Valid $Heap@7 call1formal@this@0))) (=> (=> |$w$loop#0@0| (_module.MyIntIter.Valid $Heap@7 call1formal@this@0)) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (and (forall (($o@@77 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@77)) (or (not (= $o@@77 null)) (not true)))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4689|
 :pattern (  (or (not (= $o@@77 null)) (not true)))
)) (forall (($o@@78 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@78)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@78) alloc)))))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4690|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@78)))
))))))))))))))))))))
(let ((anon43_Else_correct  (=> (and (or (not (= |patience#0@1| 0)) (not true)) (= |$decr$loop#00@1| (ite (<= |patience#0@1| (LitInt 0)) (- 0 |patience#0@1|) (- |patience#0@1| 0)))) (and (=> (= (ControlFlow 0 49) (- 0 53)) true) (and (=> (= (ControlFlow 0 49) (- 0 52)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 49) (- 0 51)) (forall (($o@@79 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@79 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@79) alloc)))) (or (or (= $o@@79 call1formal@this@0) (|Set#IsMember| (_module.MyIntIter.__modifies call1formal@this@0) ($Box refType $o@@79))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@79)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@79 $f@@6)))
 :qid |Iteratorsdfy.48:27|
 :skolemid |4693|
))) (=> (forall (($o@@80 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@80 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@80) alloc)))) (or (or (= $o@@80 call1formal@this@0) (|Set#IsMember| (_module.MyIntIter.__modifies call1formal@this@0) ($Box refType $o@@80))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@80)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@80 $f@@7)))
 :qid |Iteratorsdfy.48:27|
 :skolemid |4693|
)) (and (=> (= (ControlFlow 0 49) (- 0 50)) (_module.MyIntIter.Valid $Heap@6 call1formal@this@0)) (=> (_module.MyIntIter.Valid $Heap@6 call1formal@this@0) (=> (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (=> (and (and (and (and (forall (($o@@81 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@81)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@81)))) (or (not (= $o@@81 null)) (not true)))
 :qid |Iteratorsdfy.8:10|
 :skolemid |4809|
 :pattern (  (or (not (= $o@@81 null)) (not true)))
)) (forall (($o@@82 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@82)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@82)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@82) alloc)))))
 :qid |Iteratorsdfy.8:10|
 :skolemid |4810|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@82) alloc)))
))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType null)))) (and (=> |call2formal@more#0@0@@0| (|_module.MyIntIter.Valid#canCall| $Heap@7 call1formal@this@0)) (=> |call2formal@more#0@0@@0| (_module.MyIntIter.Valid $Heap@7 call1formal@this@0)))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.xs)) (ite |call2formal@more#0@0@@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.xs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.x))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.xs)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.ys)) (ite |call2formal@more#0@0@@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 call1formal@this@0) _module.MyIntIter.y))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.ys))))) (and (forall (($o@@83 T@U) ) (!  (=> (and (or (not (= $o@@83 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@83) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@83) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@83)) (or (or (= $o@@83 call1formal@this@0) (|Set#IsMember| (_module.MyIntIter.__modifies call1formal@this@0) ($Box refType $o@@83))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@83)))))
 :qid |Iteratorsdfy.8:10|
 :skolemid |4811|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@83))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 49) 48) anon44_Then_correct) (=> (= (ControlFlow 0 49) 3) anon44_Else_correct))))))))))))))
(let ((anon40_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 54) 47) anon43_Then_correct) (=> (= (ControlFlow 0 54) 49) anon43_Else_correct)))))
(let ((anon39_LoopBody_correct  (and (=> (= (ControlFlow 0 66) 63) anon40_Then_correct) (=> (= (ControlFlow 0 66) 54) anon40_Else_correct))))
(let ((anon39_LoopDone_correct true))
(let ((anon39_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (=> (and (and (and (and (and (and (and (and (not false) true) (= |q##0@0| 12)) true) (and (<= 0 |patience#0@1|) (< |patience#0@1| 11))) (= |$decr_init$loop#00@0| 10)) (=> |$w$loop#0@0| (|_module.MyIntIter.Valid#canCall| $Heap@6 call1formal@this@0))) (and (=> |$w$loop#0@0| (_module.MyIntIter.Valid $Heap@6 call1formal@this@0)) (=> |$w$loop#0@0| (and (forall (($o@@84 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@84)) (or (not (= $o@@84 null)) (not true)))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4689|
 :pattern (  (or (not (= $o@@84 null)) (not true)))
)) (forall (($o@@85 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@85)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@85) alloc)))))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4690|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@85)))
)))))) (and (and (forall (($o@@86 T@U) ) (!  (=> (and (or (not (= $o@@86 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@86) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@86) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@86)))
 :qid |Iteratorsdfy.45:3|
 :skolemid |4691|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@86))
)) ($HeapSucc $Heap@5 $Heap@6)) (and (forall (($o@@87 T@U) ($f@@8 T@U) ) (!  (=> (and (or (not (= $o@@87 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@87) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@87) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@87) $f@@8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@87 $f@@8))))
 :qid |Iteratorsdfy.45:3|
 :skolemid |4692|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@87) $f@@8))
)) (<= (ite (<= |patience#0@1| (LitInt 0)) (- 0 |patience#0@1|) (- |patience#0@1| 0)) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 67) 1) anon39_LoopDone_correct) (=> (= (ControlFlow 0 67) 66) anon39_LoopBody_correct))))))
(let ((anon8_correct  (=> (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.MyIntIter) ($IsAlloc refType call1formal@this Tclass._module.MyIntIter $Heap))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.MyIntIter) ($IsAlloc refType call1formal@this@0 Tclass._module.MyIntIter $Heap@5)))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.xs)) |Seq#Empty|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.ys)) |Seq#Empty|)) (and (|_module.MyIntIter.Valid#canCall| $Heap@5 call1formal@this@0) (_module.MyIntIter.Valid $Heap@5 call1formal@this@0)))) (and (and (and (|Set#Equal| (_module.MyIntIter.__reads call1formal@this@0) |Set#Empty|) (|Set#Equal| (_module.MyIntIter.__modifies call1formal@this@0) |Set#Empty|)) (and (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) |Set#Empty|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call1formal@this@0) alloc)))))) (and (and (forall (($o@@88 T@U) ) (!  (=> (and (or (not (= $o@@88 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@88) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@88) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@88)))
 :qid |Iteratorsdfy.8:10|
 :skolemid |4804|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@88))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |patience#0@0| (LitInt 10)) (= |$decr_init$loop#00@0| (ite (<= |patience#0@0| (LitInt 0)) (- 0 |patience#0@0|) (- |patience#0@0| 0))))))) (and (=> (= (ControlFlow 0 68) (- 0 70)) (=> |$w$loop#0@0| (_module.MyIntIter.Valid $Heap@5 call1formal@this@0))) (=> (=> |$w$loop#0@0| (_module.MyIntIter.Valid $Heap@5 call1formal@this@0)) (and (=> (= (ControlFlow 0 68) (- 0 69)) (=> |$w$loop#0@0| (and (forall (($o@@89 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@89)) (or (not (= $o@@89 null)) (not true)))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4689|
 :pattern (  (or (not (= $o@@89 null)) (not true)))
)) (forall (($o@@90 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@90)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@90) alloc)))))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4690|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@90)))
))))) (=> (=> |$w$loop#0@0| (and (forall (($o@@91 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@91)) (or (not (= $o@@91 null)) (not true)))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4689|
 :pattern (  (or (not (= $o@@91 null)) (not true)))
)) (forall (($o@@92 T@U) ) (!  (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@92)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@92) alloc)))))
 :qid |Iteratorsdfy.46:28|
 :skolemid |4690|
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 call1formal@this@0) _module.MyIntIter.__new)) ($Box refType $o@@92)))
)))) (=> (= (ControlFlow 0 68) 67) anon39_LoopHead_correct)))))))))
(let ((anon38_Else_correct  (=> (not |call3formal@more#0@0|) (=> (and (= $Heap@4 $Heap@1) (= (ControlFlow 0 80) 68)) anon8_correct))))
(let ((anon38_Then_correct  (=> |call3formal@more#0@0| (and (=> (= (ControlFlow 0 71) (- 0 79)) true) (and (=> (= (ControlFlow 0 71) (- 0 78)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 71) (- 0 77)) (forall (($o@@93 T@U) ($f@@9 T@U) ) (!  (=> (and (and (or (not (= $o@@93 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@93) alloc)))) (or (or (= $o@@93 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@93))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@93)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@93 $f@@9)))
 :qid |Iteratorsdfy.39:22|
 :skolemid |4682|
))) (=> (forall (($o@@94 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@94 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@94) alloc)))) (or (or (= $o@@94 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@94))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@94)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@94 $f@@10)))
 :qid |Iteratorsdfy.39:22|
 :skolemid |4682|
)) (and (=> (= (ControlFlow 0 71) (- 0 76)) (_module.MyIter.Valid TInt $Heap@1 call3formal@this@0)) (=> (_module.MyIter.Valid TInt $Heap@1 call3formal@this@0) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and (forall (($o@@95 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@95)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@95)))) (or (not (= $o@@95 null)) (not true)))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4779|
 :pattern (  (or (not (= $o@@95 null)) (not true)))
)) (forall (($o@@96 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@96)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@96)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@96) alloc)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4780|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@96) alloc)))
))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType null)))) (and (=> |call3formal@more#0@0@@0| (|_module.MyIter.Valid#canCall| TInt $Heap@2 call3formal@this@0)) (=> |call3formal@more#0@0@@0| (_module.MyIter.Valid TInt $Heap@2 call3formal@this@0)))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.xs)) (ite |call3formal@more#0@0@@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.xs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.x))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.xs)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.ys)) (ite |call3formal@more#0@0@@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.y))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.ys))))) (and (forall (($o@@97 T@U) ) (!  (=> (and (or (not (= $o@@97 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@97) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@97) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@97)) (or (or (= $o@@97 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@97))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@97)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4781|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@97))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 71) (- 0 75)) true) (and (=> (= (ControlFlow 0 71) (- 0 74)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 71) (- 0 73)) (forall (($o@@98 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@98 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@98) alloc)))) (or (or (= $o@@98 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@98))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@98)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@98 $f@@11)))
 :qid |Iteratorsdfy.40:22|
 :skolemid |4683|
))) (=> (forall (($o@@99 T@U) ($f@@12 T@U) ) (!  (=> (and (and (or (not (= $o@@99 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@99) alloc)))) (or (or (= $o@@99 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@99))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@99)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@99 $f@@12)))
 :qid |Iteratorsdfy.40:22|
 :skolemid |4683|
)) (and (=> (= (ControlFlow 0 71) (- 0 72)) (_module.MyIter.Valid TInt $Heap@2 call3formal@this@0)) (=> (_module.MyIter.Valid TInt $Heap@2 call3formal@this@0) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (forall (($o@@100 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@100)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@100)))) (or (not (= $o@@100 null)) (not true)))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4779|
 :pattern (  (or (not (= $o@@100 null)) (not true)))
)) (forall (($o@@101 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@101)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@101)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@101) alloc)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4780|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@101) alloc)))
))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.__new)) ($Box refType null)))) (=> (and (and (and (=> |call3formal@more#0@0@@1| (|_module.MyIter.Valid#canCall| TInt $Heap@3 call3formal@this@0)) (=> |call3formal@more#0@0@@1| (_module.MyIter.Valid TInt $Heap@3 call3formal@this@0))) (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.xs)) (ite |call3formal@more#0@0@@1| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.xs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.x))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.xs)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.ys)) (ite |call3formal@more#0@0@@1| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call3formal@this@0) _module.MyIter.y))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.ys)))))) (and (and (forall (($o@@102 T@U) ) (!  (=> (and (or (not (= $o@@102 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@102) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@102) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@102)) (or (or (= $o@@102 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@102))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@102)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4781|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@102))
)) ($HeapSucc $Heap@2 $Heap@3)) (and (= $Heap@4 $Heap@3) (= (ControlFlow 0 71) 68)))) anon8_correct))))))))))))))))))))))
(let ((anon5_correct  (and (=> (= (ControlFlow 0 81) (- 0 85)) true) (and (=> (= (ControlFlow 0 81) (- 0 84)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 81) (- 0 83)) (forall (($o@@103 T@U) ($f@@13 T@U) ) (!  (=> (and (and (or (not (= $o@@103 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@103) alloc)))) (or (or (= $o@@103 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@103))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@103)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@103 $f@@13)))
 :qid |Iteratorsdfy.37:24|
 :skolemid |4681|
))) (=> (forall (($o@@104 T@U) ($f@@14 T@U) ) (!  (=> (and (and (or (not (= $o@@104 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@104) alloc)))) (or (or (= $o@@104 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@104))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@104)))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@104 $f@@14)))
 :qid |Iteratorsdfy.37:24|
 :skolemid |4681|
)) (and (=> (= (ControlFlow 0 81) (- 0 82)) (_module.MyIter.Valid TInt $Heap@0 call3formal@this@0)) (=> (_module.MyIter.Valid TInt $Heap@0 call3formal@this@0) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (forall (($o@@105 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@105)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@105)))) (or (not (= $o@@105 null)) (not true)))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4779|
 :pattern (  (or (not (= $o@@105 null)) (not true)))
)) (forall (($o@@106 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@106)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@106)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@106) alloc)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4780|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@106) alloc)))
))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.__new)) ($Box refType null)))) (and (=> |call3formal@more#0@0| (|_module.MyIter.Valid#canCall| TInt $Heap@1 call3formal@this@0)) (=> |call3formal@more#0@0| (_module.MyIter.Valid TInt $Heap@1 call3formal@this@0)))) (and (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.xs)) (ite |call3formal@more#0@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.x))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.ys)) (ite |call3formal@more#0@0| (|Seq#Append| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call3formal@this@0) _module.MyIter.y))) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys))))) (and (forall (($o@@107 T@U) ) (!  (=> (and (or (not (= $o@@107 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@107) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@107) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@107)) (or (or (= $o@@107 call3formal@this@0) (|Set#IsMember| (_module.MyIter.__modifies call3formal@this@0) ($Box refType $o@@107))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) ($Box refType $o@@107)))))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4781|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@107))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 81) 71) anon38_Then_correct) (=> (= (ControlFlow 0 81) 80) anon38_Else_correct)))))))))))))
(let ((anon37_Else_correct  (=> (and (< (LitInt 13) |a#0@0|) (= (ControlFlow 0 89) 81)) anon5_correct)))
(let ((anon37_Then_correct  (=> (<= |a#0@0| (LitInt 13)) (and (=> (= (ControlFlow 0 86) (- 0 88)) true) (and (=> (= (ControlFlow 0 86) (- 0 87)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 86) 81) anon5_correct))))))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 90) (- 0 94)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)))) (and (=> (= (ControlFlow 0 90) (- 0 93)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)) |Seq#Empty|)) (=> (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs))) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)) |Seq#Empty|)) (and (=> (= (ControlFlow 0 90) (- 0 92)) true) (and (=> (= (ControlFlow 0 90) (- 0 91)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (= |a#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.x)))) (and (=> (= (ControlFlow 0 90) 86) anon37_Then_correct) (=> (= (ControlFlow 0 90) 89) anon37_Else_correct)))))))))))
(let ((anon36_Else_correct  (=> (and (not (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)))) (= (ControlFlow 0 98) 90)) anon2_correct)))
(let ((anon36_Then_correct  (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs))) (and (=> (= (ControlFlow 0 95) (- 0 97)) true) (and (=> (= (ControlFlow 0 95) (- 0 96)) (or (not (= call3formal@this@0 null)) (not true))) (=> (= (ControlFlow 0 95) 90) anon2_correct))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |q##0@0| (LitInt 12))) (=> (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass._module.MyIter call0formal@_module.MyIter$T)) ($IsAlloc refType call3formal@this (Tclass._module.MyIter call0formal@_module.MyIter$T) $Heap))) (= |call1formal@q#0@0| ($Box intType (int_2_U |q##0@0|)))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass._module.MyIter TInt)) ($IsAlloc refType call3formal@this@0 (Tclass._module.MyIter TInt) $Heap@0)))) (and (and (= (_module.MyIter.q call3formal@this@0) |call1formal@q#0@0|) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.xs)) |Seq#Empty|)) (and (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.ys)) |Seq#Empty|) (|_module.MyIter.Valid#canCall| TInt $Heap@0 call3formal@this@0)))) (and (and (and (_module.MyIter.Valid TInt $Heap@0 call3formal@this@0) (|Set#Equal| (_module.MyIter.__reads call3formal@this@0) |Set#Empty|)) (and (|Set#Equal| (_module.MyIter.__modifies call3formal@this@0) |Set#Empty|) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call3formal@this@0) _module.MyIter.__new)) |Set#Empty|))) (and (and (= (_module.MyIter.__decreases0 call3formal@this@0) |call1formal@q#0@0|) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0) alloc))))) (and (forall (($o@@108 T@U) ) (!  (=> (and (or (not (= $o@@108 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@108) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@108) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@108)))
 :qid |Iteratorsdfy.4:10|
 :skolemid |4774|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@108))
)) ($HeapSucc $Heap $Heap@0))))) (and (=> (= (ControlFlow 0 99) (- 0 103)) true) (and (=> (= (ControlFlow 0 99) (- 0 102)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 99) (- 0 101)) true) (and (=> (= (ControlFlow 0 99) (- 0 100)) (or (not (= call3formal@this@0 null)) (not true))) (and (=> (= (ControlFlow 0 99) 95) anon36_Then_correct) (=> (= (ControlFlow 0 99) 98) anon36_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#m#0| (and ($Is refType |m#0| (Tclass._module.MyIter TInt)) ($IsAlloc refType |m#0| (Tclass._module.MyIter TInt) $Heap))) true) (and (=> |defass#n#0| (and ($Is refType |n#0| Tclass._module.MyIntIter) ($IsAlloc refType |n#0| Tclass._module.MyIntIter $Heap))) true)) (and (and (=> |defass#o#0| (and ($Is refType |o#0| Tclass._module.Naturals) ($IsAlloc refType |o#0| Tclass._module.Naturals $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 104) 99)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 71) (- 72))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
