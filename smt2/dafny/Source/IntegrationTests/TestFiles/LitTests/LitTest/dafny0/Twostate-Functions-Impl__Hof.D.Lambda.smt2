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
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun class.Hof.D? () T@U)
(declare-fun Tagclass.Hof.D? () T@U)
(declare-fun Tagclass.Hof.D () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun tytagFamily$D () T@U)
(declare-fun field$data () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Hof.D? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.Hof.D () T@U)
(declare-fun Hof.D.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#6| (Bool) T@U)
(declare-fun |lambda#7| (Bool) T@U)
(declare-fun |lambda#8| (T@U) T@U)
(declare-fun |lambda#9| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 class.Hof.D? Tagclass.Hof.D? Tagclass.Hof.D tytagFamily$object |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| tytagFamily$D field$data)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |2387|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |2388|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |2394|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2399|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2077|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.Hof.D?)  (or (= $o null) (= (dtype $o) Tclass.Hof.D?)))
 :qid |unknown.0:0|
 :skolemid |2534|
 :pattern ( ($Is refType $o Tclass.Hof.D?))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2303|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Hof.D $h@@2) ($IsAlloc refType |c#0@@0| Tclass.Hof.D? $h@@2))
 :qid |unknown.0:0|
 :skolemid |2567|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Hof.D $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Hof.D? $h@@2))
)))
(assert (= (FDim Hof.D.data) 0))
(assert (= (FieldOfDecl class.Hof.D? field$data) Hof.D.data))
(assert  (not ($IsGhostField Hof.D.data)))
(assert (forall ((t0@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) ) (! (= (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@0 heap))
 :qid |unknown.0:0|
 :skolemid |2366|
 :pattern ( (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2300|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Hof.D? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2535|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Hof.D? $h@@4))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#0#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#5| |l#0| |l#1|) |$l#0#heap#0|) ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#0#heap#0| |l#0|) |l#1|))))
 :qid |TwostateFunctionsdfy.192:12|
 :skolemid |2570|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#5| |l#0| |l#1|) |$l#0#heap#0|))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2070|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2071|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1969|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1967|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@0 heap@@0) bx))
 :qid |unknown.0:0|
 :skolemid |2368|
 :pattern ( (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1978|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@3 T@U) (heap@@1 T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap@@1 f@@0)))
 :qid |unknown.0:0|
 :skolemid |2382|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@3 heap@@1 f@@0))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1998|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1999|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType0Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |2053|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@5 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Hof.D?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) Hof.D.data)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2537|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) Hof.D.data)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@3 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@3) ($IsAlloc T@@1 v@@0 t h@@3))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1991|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@4 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@4) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2063|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@1 t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@5 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@5) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2062|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@5))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@1|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@1|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |2363|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@1|))
)))
(assert (forall ((|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@2|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@2|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |2390|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@3|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@3|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |2395|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@3|))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@0 t2 (MapType1Store t0@@5 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2568|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |2034|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2298|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2301|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Hof.D?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.Hof.D?)))
 :qid |unknown.0:0|
 :skolemid |2533|
 :pattern ( ($IsBox bx@@5 Tclass.Hof.D?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Hof.D) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.Hof.D)))
 :qid |unknown.0:0|
 :skolemid |2539|
 :pattern ( ($IsBox bx@@6 Tclass.Hof.D))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2302|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Hof.D)  (and ($Is refType |c#0@@2| Tclass.Hof.D?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2566|
 :pattern ( ($Is refType |c#0@@2| Tclass.Hof.D))
 :pattern ( ($Is refType |c#0@@2| Tclass.Hof.D?))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#heap#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#6| |l#0@@1|) |$l#0#heap#0@@0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |2571|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#6| |l#0@@1|) |$l#0#heap#0@@0|))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#7| |l#0@@2|) |$l#0#o#0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |2572|
 :pattern ( (MapType0Select refType boolType (|lambda#7| |l#0@@2|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#8| |l#0@@3|) |$l#0#heap#0@@1|) |l#0@@3|)
 :qid |TwostateFunctionsdfy.197:33|
 :skolemid |2573|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#8| |l#0@@3|) |$l#0#heap#0@@1|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@4|) |$l#0#ly#0|) |l#0@@4|)
 :qid |TwostateFunctionsdfy.197:33|
 :skolemid |2574|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#9| |l#0@@4|) |$l#0#ly#0|))
)))
(assert (forall ((t0@@6 T@U) (heap@@2 T@U) (f@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@6))) (= (|Set#Equal| (Reads0 t0@@6 $OneHeap f@@2) |Set#Empty|) (|Set#Equal| (Reads0 t0@@6 heap@@2 f@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2381|
 :pattern ( (Reads0 t0@@6 $OneHeap f@@2) ($IsGoodHeap heap@@2))
 :pattern ( (Reads0 t0@@6 heap@@2 f@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2102|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2069|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((t0@@7 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h0 f@@3) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |2373|
))) (= (Requires0 t0@@7 h0 f@@3) (Requires0 t0@@7 h1 f@@3)))
 :qid |unknown.0:0|
 :skolemid |2374|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@7 h1 f@@3))
)))
(assert (forall ((t0@@8 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@8))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@8 h1@@0 f@@4) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |2375|
))) (= (Requires0 t0@@8 h0@@0 f@@4) (Requires0 t0@@8 h1@@0 f@@4)))
 :qid |unknown.0:0|
 :skolemid |2376|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@8 h1@@0 f@@4))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2059|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1990|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@9 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@8) ($IsAllocBox bx@@8 t0@@9 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2019|
 :pattern ( (|Set#IsMember| v@@3 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2020|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2299|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1953|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1954|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((|#$R@@4| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |2364|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@4|))
)))
(assert (forall ((|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |2391|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@5|))
)))
(assert (forall ((|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |2396|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@6|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1977|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@10 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h0@@1 f@@5) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |2369|
))) (= (Reads0 t0@@10 h0@@1 f@@5) (Reads0 t0@@10 h1@@1 f@@5)))
 :qid |unknown.0:0|
 :skolemid |2370|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@10 h1@@1 f@@5))
)))
(assert (forall ((t0@@11 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@11))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@11 h1@@2 f@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |2371|
))) (= (Reads0 t0@@11 h0@@2 f@@6) (Reads0 t0@@11 h1@@2 f@@6)))
 :qid |unknown.0:0|
 :skolemid |2372|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@11 h1@@2 f@@6))
)))
(assert (forall ((t0@@12 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@12))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@12 h0@@3 f@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |2377|
))) (= (Apply0 t0@@12 h0@@3 f@@7) (Apply0 t0@@12 h1@@3 f@@7)))
 :qid |unknown.0:0|
 :skolemid |2378|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@12 h1@@3 f@@7))
)))
(assert (forall ((t0@@13 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@13))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@13 h1@@4 f@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |2379|
))) (= (Apply0 t0@@13 h0@@4 f@@8) (Apply0 t0@@13 h1@@4 f@@8)))
 :qid |unknown.0:0|
 :skolemid |2380|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@13 h1@@4 f@@8))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.Hof.D?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) Hof.D.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2536|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) Hof.D.data)))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |2054|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert (forall ((|l#0@@5| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@6 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@5| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@6 $f@@0))  (=> (and (or (not (= $o@@6 |l#0@@5|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@6) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2569|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@5| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@6 $f@@0))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |2398|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)) (forall ((h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) (Requires0 t0@@14 h@@7 f@@10)) ($IsBox (Apply0 t0@@14 h@@7 f@@10) t0@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2383|
 :pattern ( (Apply0 t0@@14 h@@7 f@@10))
)))
 :qid |unknown.0:0|
 :skolemid |2384|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)))
)))
(assert (forall ((bx@@9 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@9 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@9)) bx@@9) ($Is SetType ($Unbox SetType bx@@9) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1984|
 :pattern ( ($IsBox bx@@9 (TSet t@@5)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |2365|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |2392|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |2397|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (forall ((h@@8 T@U) (r@@2 T@U) (f@@11 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6))) ($HeapSucc h@@8 (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2068|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.Hof.D?) Tagclass.Hof.D?))
(assert (= (TagFamily Tclass.Hof.D?) tytagFamily$D))
(assert (= (Tag Tclass.Hof.D) Tagclass.Hof.D))
(assert (= (TagFamily Tclass.Hof.D) tytagFamily$D))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |2035|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((f@@12 T@U) (t0@@15 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@15) h@@9)) (=> (Requires0 t0@@15 h@@9 f@@12) ($IsAllocBox (Apply0 t0@@15 h@@9 f@@12) t0@@15 h@@9)))
 :qid |unknown.0:0|
 :skolemid |2389|
 :pattern ( ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@15) h@@9))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2100|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2101|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((f@@13 T@U) (t0@@16 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@16)) (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 t0@@16) ($IsBox bx@@13 u0@@2))
 :qid |unknown.0:0|
 :skolemid |2385|
 :pattern ( ($IsBox bx@@13 t0@@16))
 :pattern ( ($IsBox bx@@13 u0@@2))
))) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |2386|
 :pattern ( ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@16)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1970|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1968|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((t0@@17 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@3 T@U) (rd@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@3 heap@@3)) (Requires0 t0@@17 heap@@3 (Handle0 h@@10 r@@3 rd@@1)))
 :qid |unknown.0:0|
 :skolemid |2367|
 :pattern ( (Requires0 t0@@17 heap@@3 (Handle0 h@@10 r@@3 rd@@1)))
)))
(assert (forall ((h@@11 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2013|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@11))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@2|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2393|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1992|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f#0@@3| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Hof.D.Lambda)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (and (= |$_Frame#l0@0| (|lambda#1| null |$lambdaHeap#0@0| alloc false)) (= (ControlFlow 0 4) (- 0 3))) ($IsAlloc refType this Tclass.Hof.D |$lambdaHeap#0@0|))))
(let ((anon5_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@0 |$lambdaHeap#0@0|) ($HeapSucc $Heap@0 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 6) 4) anon6_Then_correct) (=> (= (ControlFlow 0 6) 5) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (and (= |f#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#9| (Handle0 (|lambda#5| this Hof.D.data) (|lambda#6| true) (|lambda#8| (SetRef_to_SetBox (|lambda#7| false))))) ($LS $LZ)))) (= (ControlFlow 0 2) (- 0 1))) (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@0 |f#0@0|))) (LitInt 10)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc this)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this Hof.D.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this Hof.D.data)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Hof.D.data))) 8)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Hof.D.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 7) 6) anon5_Then_correct) (=> (= (ControlFlow 0 7) 2) anon5_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.Hof.D) ($IsAlloc refType this Tclass.Hof.D $Heap)))) (=> (and (and (and (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (= 0 $FunctionContextHeight)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) Hof.D.data))) (LitInt 10)) (= (ControlFlow 0 9) 7))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
