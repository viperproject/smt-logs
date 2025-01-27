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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun $OneHeap () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 tytagFamily$object |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0|)
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
 :skolemid |1656|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |1657|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |1663|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1668|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1346|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1572|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((t0@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) ) (! (= (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@0 heap))
 :qid |unknown.0:0|
 :skolemid |1635|
 :pattern ( (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)))
)))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1569|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1339|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1340|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1238|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1236|
 :pattern ( (Lit T x@@3))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@0 heap@@0) bx))
 :qid |unknown.0:0|
 :skolemid |1637|
 :pattern ( (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1247|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@3 T@U) (heap@@1 T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap@@1 f@@0)))
 :qid |unknown.0:0|
 :skolemid |1651|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@3 heap@@1 f@@0))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1267|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1268|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType0Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |1322|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@3 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@3) ($IsAlloc T@@1 v@@0 t h@@3))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1260|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@4 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@4) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1332|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@1 t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@5 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@5) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1331|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@5))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@1|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@1|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |1632|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@1|))
)))
(assert (forall ((|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@2|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@2|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |1659|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@3|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@3|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |1664|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@3|))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |1303|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1567|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1570|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1571|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#1| |l#0|) |$l#0#heap#0|) |l#0|)
 :qid |unknown.0:0|
 :skolemid |8040|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#1| |l#0|) |$l#0#heap#0|))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#heap#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0|)) |l#0@@0|)
 :qid |TypeAdjustmentsdfy.492:22|
 :skolemid |8041|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0|))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |8042|
 :pattern ( (MapType0Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#heap#0@@1| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@2|) |$l#0#heap#0@@1|) |l#0@@2|)
 :qid |TypeAdjustmentsdfy.492:10|
 :skolemid |8043|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@2|) |$l#0#heap#0@@1|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|) |l#0@@3|)
 :qid |TypeAdjustmentsdfy.492:10|
 :skolemid |8044|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|))
)))
(assert (forall ((t0@@5 T@U) (heap@@2 T@U) (f@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@5))) (= (|Set#Equal| (Reads0 t0@@5 $OneHeap f@@2) |Set#Empty|) (|Set#Equal| (Reads0 t0@@5 heap@@2 f@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1650|
 :pattern ( (Reads0 t0@@5 $OneHeap f@@2) ($IsGoodHeap heap@@2))
 :pattern ( (Reads0 t0@@5 heap@@2 f@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1371|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1338|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((t0@@6 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads0 t0@@6 h0 f@@3) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |1642|
))) (= (Requires0 t0@@6 h0 f@@3) (Requires0 t0@@6 h1 f@@3)))
 :qid |unknown.0:0|
 :skolemid |1643|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@6 h1 f@@3))
)))
(assert (forall ((t0@@7 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h1@@0 f@@4) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |1644|
))) (= (Requires0 t0@@7 h0@@0 f@@4) (Requires0 t0@@7 h1@@0 f@@4)))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@7 h1@@0 f@@4))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1248|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1259|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@8 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@8) h@@6) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@8 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1288|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1289|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@8) h@@6))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1568|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1222|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1223|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((|#$R@@4| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |1633|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@4|))
)))
(assert (forall ((|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |1660|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@5|))
)))
(assert (forall ((|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |1665|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@6|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1246|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@9 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@9))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads0 t0@@9 h0@@1 f@@5) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |1638|
))) (= (Reads0 t0@@9 h0@@1 f@@5) (Reads0 t0@@9 h1@@1 f@@5)))
 :qid |unknown.0:0|
 :skolemid |1639|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@9 h1@@1 f@@5))
)))
(assert (forall ((t0@@10 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h1@@2 f@@6) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |1640|
))) (= (Reads0 t0@@10 h0@@2 f@@6) (Reads0 t0@@10 h1@@2 f@@6)))
 :qid |unknown.0:0|
 :skolemid |1641|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@10 h1@@2 f@@6))
)))
(assert (forall ((t0@@11 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@11))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@11 h0@@3 f@@7) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |1646|
))) (= (Apply0 t0@@11 h0@@3 f@@7) (Apply0 t0@@11 h1@@3 f@@7)))
 :qid |unknown.0:0|
 :skolemid |1647|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@11 h1@@3 f@@7))
)))
(assert (forall ((t0@@12 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@12))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@12 h1@@4 f@@8) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |1648|
))) (= (Apply0 t0@@12 h0@@4 f@@8) (Apply0 t0@@12 h1@@4 f@@8)))
 :qid |unknown.0:0|
 :skolemid |1649|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@12 h1@@4 f@@8))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |1323|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert  (and (forall ((t0@@13 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@13 t1@@0 t2 (MapType1Store t0@@13 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@4| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8039|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |1667|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)) (forall ((h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) (Requires0 t0@@14 h@@7 f@@10)) ($IsBox (Apply0 t0@@14 h@@7 f@@10) t0@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1652|
 :pattern ( (Apply0 t0@@14 h@@7 f@@10))
)))
 :qid |unknown.0:0|
 :skolemid |1653|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1253|
 :pattern ( ($IsBox bx@@7 (TSet t@@5)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |1634|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |1661|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |1666|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |1304|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((f@@11 T@U) (t0@@15 T@U) (h@@8 T@U) ) (!  (=> (and ($IsGoodHeap h@@8) ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@15) h@@8)) (=> (Requires0 t0@@15 h@@8 f@@11) ($IsAllocBox (Apply0 t0@@15 h@@8 f@@11) t0@@15 h@@8)))
 :qid |unknown.0:0|
 :skolemid |1658|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@15) h@@8))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1369|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1370|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((f@@12 T@U) (t0@@16 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@16)) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 t0@@16) ($IsBox bx@@11 u0@@2))
 :qid |unknown.0:0|
 :skolemid |1654|
 :pattern ( ($IsBox bx@@11 t0@@16))
 :pattern ( ($IsBox bx@@11 u0@@2))
))) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |1655|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@16)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1239|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1237|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((t0@@17 T@U) (heap@@3 T@U) (h@@9 T@U) (r@@2 T@U) (rd@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@2 heap@@3)) (Requires0 t0@@17 heap@@3 (Handle0 h@@9 r@@2 rd@@1)))
 :qid |unknown.0:0|
 :skolemid |1636|
 :pattern ( (Requires0 t0@@17 heap@@3 (Handle0 h@@9 r@@2 rd@@1)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1282|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@2|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1662|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1261|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |lambdaResult#0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |k#0@2| () T@U)
(declare-fun |k#0@1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |k#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f#0@@3| () T@U)
(declare-fun |g#0| () T@U)
(declare-fun |h#0| () T@U)
(declare-fun |k#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Arrows.__default.TestGeneralArrow)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon4_correct true))
(let ((anon12_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 12) 10)) anon4_correct)))
(let ((anon12_Then_correct  (=> (and (and (U_2_bool (Lit boolType (bool_2_U true))) (= |lambdaResult#0| (LitInt 3))) (and ($Is intType (int_2_U |lambdaResult#0|) TInt) (= (ControlFlow 0 11) 10))) anon4_correct)))
(let ((anon11_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 13) 11) anon12_Then_correct) (=> (= (ControlFlow 0 13) 12) anon12_Else_correct)))))
(let ((anon11_Else_correct true))
(let ((anon10_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 14) 13) anon11_Then_correct) (=> (= (ControlFlow 0 14) 9) anon11_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 7) (- 0 6))) false)))
(let ((anon15_Then_correct  (=> (= (ControlFlow 0 5) (- 0 4)) ($Is HandleTypeType |k#0@2| (Tclass._System.___hTotalFunc0 TInt)))))
(let ((anon14_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) ($Is HandleTypeType |k#0@2| (Tclass._System.___hPartialFunc0 TInt)))))
(let ((anon13_Then_correct true))
(let ((anon10_Else_correct  (=> (= |k#0@1| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle0 (|lambda#1| ($Box intType (int_2_U (LitInt 3)))) (|lambda#2| (U_2_bool (Lit boolType (bool_2_U true)))) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ)))) (=> (and ($Is HandleTypeType |k#0@2| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |k#0@2| (Tclass._System.___hFunc0 TInt) $Heap)) (and (and (and (=> (= (ControlFlow 0 8) 1) anon13_Then_correct) (=> (= (ControlFlow 0 8) 3) anon14_Then_correct)) (=> (= (ControlFlow 0 8) 5) anon15_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon15_Else_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($Is HandleTypeType |k#0@0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |k#0@0| (Tclass._System.___hFunc0 TInt) $Heap)) (and (=> (= (ControlFlow 0 15) 14) anon10_Then_correct) (=> (= (ControlFlow 0 15) 8) anon10_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc0 TInt) $Heap))) (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hPartialFunc0 TInt)) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hPartialFunc0 TInt) $Heap)) (and ($Is HandleTypeType |h#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |h#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)))) (and (and (and ($Is HandleTypeType |k#0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |k#0| (Tclass._System.___hFunc0 TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 5) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
