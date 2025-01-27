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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 tytagFamily$nat tytagFamily$object |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0|)
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
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |442|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@0))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |447|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@1))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@2) ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@2))
)))
(assert (forall ((t0@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) ) (! (= (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@0 heap))
 :qid |unknown.0:0|
 :skolemid |414|
 :pattern ( (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)))
)))
(assert (forall (($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@3))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@0 heap@@0) bx))
 :qid |unknown.0:0|
 :skolemid |416|
 :pattern ( (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Disjoint| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (or (not (|Set#IsMember| a@@7 o@@3)) (not (|Set#IsMember| b@@4 o@@3)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@7 b@@4))
)))
(assert (forall ((t0@@3 T@U) (heap@@1 T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap@@1 f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@3 heap@@1 f@@0))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType0Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@3 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@3) ($IsAlloc T@@1 v@@0 t h@@3))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@4 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@4) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@1 t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@5 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@5) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@5))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@1|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@1|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@1|))
)))
(assert (forall ((|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@2|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@2|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |438|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@3|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@3|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |443|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@3|))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@3 Tclass._System.nat))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) (o@@4 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4)  (or (|Set#IsMember| a@@8 o@@4) (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@8 b@@5) o@@4))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (!  (=> (|Set#Disjoint| a@@9 b@@6) (and (= (|Set#Difference| (|Set#Union| a@@9 b@@6) a@@9) b@@6) (= (|Set#Difference| (|Set#Union| a@@9 b@@6) b@@6) a@@9)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@9 b@@6))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#1| |l#0|) |$l#0#heap#0|) |l#0|)
 :qid |_6CallsVariableCapturedfy.20:29|
 :skolemid |985|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#1| |l#0|) |$l#0#heap#0|))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#heap#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#2| |l#0@@0|) |$l#0#heap#0@@0|))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |987|
 :pattern ( (MapType0Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#heap#0@@1| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@2|) |$l#0#heap#0@@1|) |l#0@@2|)
 :qid |_6CallsVariableCapturedfy.20:23|
 :skolemid |988|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#4| |l#0@@2|) |$l#0#heap#0@@1|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|) |l#0@@3|)
 :qid |_6CallsVariableCapturedfy.20:23|
 :skolemid |989|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@3|) |$l#0#ly#0|))
)))
(assert (forall ((t0@@5 T@U) (heap@@2 T@U) (f@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@5))) (= (|Set#Equal| (Reads0 t0@@5 $OneHeap f@@2) |Set#Empty|) (|Set#Equal| (Reads0 t0@@5 heap@@2 f@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@5 $OneHeap f@@2) ($IsGoodHeap heap@@2))
 :pattern ( (Reads0 t0@@5 heap@@2 f@@2))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Equal| a@@10 b@@7) (= a@@10 b@@7))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@10 b@@7))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@11 c)) (not true)) (=> (and ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@11 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@11 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((t0@@6 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@5 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@6 h0 f@@3) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@5) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@5) fld)))
 :qid |unknown.0:0|
 :skolemid |421|
))) (= (Requires0 t0@@6 h0 f@@3) (Requires0 t0@@6 h1 f@@3)))
 :qid |unknown.0:0|
 :skolemid |422|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@6 h1 f@@3))
)))
(assert (forall ((t0@@7 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@6 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h1@@0 f@@4) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@6) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@6) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |423|
))) (= (Requires0 t0@@7 h0@@0 f@@4) (Requires0 t0@@7 h1@@0 f@@4)))
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@7 h1@@0 f@@4))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@8 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@8) h@@6) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@8 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@8) h@@6))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (= (Ctor SeqType) 10))
(assert (forall ((v@@4 T@U) (t0@@9 T@U) (h@@7 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@9) h@@7) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@9 h@@7))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@9) h@@7))
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
(assert (forall ((|#$R@@4| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@4|))
)))
(assert (forall ((|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |439|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@5|))
)))
(assert (forall ((|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |444|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@6|))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((t0@@10 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@7 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h0@@1 f@@5) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@7) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@7) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |417|
))) (= (Reads0 t0@@10 h0@@1 f@@5) (Reads0 t0@@10 h1@@1 f@@5)))
 :qid |unknown.0:0|
 :skolemid |418|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@10 h1@@1 f@@5))
)))
(assert (forall ((t0@@11 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@11))) (forall ((o@@8 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads0 t0@@11 h1@@2 f@@6) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@8) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@8) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |419|
))) (= (Reads0 t0@@11 h0@@2 f@@6) (Reads0 t0@@11 h1@@2 f@@6)))
 :qid |unknown.0:0|
 :skolemid |420|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@11 h1@@2 f@@6))
)))
(assert (forall ((t0@@12 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@12))) (forall ((o@@9 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads0 t0@@12 h0@@3 f@@7) ($Box refType o@@9))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@9) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@9) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |425|
))) (= (Apply0 t0@@12 h0@@3 f@@7) (Apply0 t0@@12 h1@@3 f@@7)))
 :qid |unknown.0:0|
 :skolemid |426|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@12 h1@@3 f@@7))
)))
(assert (forall ((t0@@13 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@13))) (forall ((o@@10 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads0 t0@@13 h1@@4 f@@8) ($Box refType o@@10))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@10) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@10) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |427|
))) (= (Apply0 t0@@13 h0@@4 f@@8) (Apply0 t0@@13 h1@@4 f@@8)))
 :qid |unknown.0:0|
 :skolemid |428|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@13 h1@@4 f@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) ) (! (= (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)) (|Set#Union| a@@12 b@@9))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@12 (|Set#Union| a@@12 b@@9)))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert  (and (forall ((t0@@14 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@14 t1@@0 t2 (MapType1Store t0@@14 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |984|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
)))
(assert (forall ((f@@10 T@U) (t0@@15 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@15)) (forall ((h@@8 T@U) ) (!  (=> (and ($IsGoodHeap h@@8) (Requires0 t0@@15 h@@8 f@@10)) ($IsBox (Apply0 t0@@15 h@@8 f@@10) t0@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@15 h@@8 f@@10))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@15)))
)))
(assert (forall ((bx@@8 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@7)))
)))
(assert (forall ((bx@@9 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@9 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@9)) bx@@9) ($Is SeqType ($Unbox SeqType bx@@9) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@9 (TSeq t@@8)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@1 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@1) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@1))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@16) h@@9)) (=> (Requires0 t0@@16 h@@9 f@@11) ($IsAllocBox (Apply0 t0@@16 h@@9 f@@11) t0@@16 h@@9)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@16) h@@9))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Equal| a@@13 b@@10) (forall ((o@@11 T@U) ) (! (= (|Set#IsMember| a@@13 o@@11) (|Set#IsMember| b@@10 o@@11))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@13 o@@11))
 :pattern ( (|Set#IsMember| b@@10 o@@11))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@13 b@@10))
)))
(assert (forall ((f@@12 T@U) (t0@@17 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@17)) (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 t0@@17) ($IsBox bx@@13 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@13 t0@@17))
 :pattern ( ($IsBox bx@@13 u0@@2))
))) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@17)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((t0@@18 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@2 T@U) (rd@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@2 heap@@3)) (Requires0 t0@@18 heap@@3 (Handle0 h@@10 r@@2 rd@@1)))
 :qid |unknown.0:0|
 :skolemid |415|
 :pattern ( (Requires0 t0@@18 heap@@3 (Handle0 h@@10 r@@2 rd@@1)))
)))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@11))
)))
(assert (forall ((v@@6 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@19)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@0) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@6 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@19)))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@2|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |call2formal@f#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@f#0@0| () T@U)
(declare-fun |S##0@0| () T@U)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun |M##0@0| () T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |Map#Empty| () T@U)
(declare-fun |call2formal@r#0@@0| () T@U)
(declare-fun |call2formal@r#0@0@@0| () T@U)
(declare-fun |five#0@0| () Int)
(declare-fun |f#0@@3| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |v#0| () T@U)
(declare-fun |gimmieFive#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert (= (Ctor MapType) 11))
(set-info :boogie-vc-id Impl$$VariableCapture.__default.Test)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct true))
(let ((anon5_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@2 |$lambdaHeap#0@0|) ($HeapSucc $Heap@2 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 4) 2) anon6_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Else_correct)))))
(let ((anon5_Else_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (LitInt 15))) (=> (and (and (and ($Is HandleTypeType |call2formal@f#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |call2formal@f#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is HandleTypeType |call2formal@f#0@0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |call2formal@f#0@0| (Tclass._System.___hTotalFunc0 TInt) $Heap@0)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |_6CallsVariableCapturedfy.25:10|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 5) (- 0 13)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 12)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 11)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 10)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 9)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= |S##0@0| (|Set#Union| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 4)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 0)))) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 1)))))) (=> (and (and (and ($Is SeqType |call2formal@r#0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |call2formal@r#0| (TSeq Tclass._System.nat) $Heap)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is SeqType |call2formal@r#0@0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |call2formal@r#0@0| (TSeq Tclass._System.nat) $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |_6CallsVariableCapturedfy.30:10|
 :skolemid |489|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 7)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat) (=> (= |M##0@0| (Lit MapType (|Map#Build| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 4))) ($Box intType (int_2_U (LitInt 100)))) ($Box intType (int_2_U (LitInt 0))) ($Box intType (int_2_U (LitInt 300)))) ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 200)))))) (=> (and (and ($Is SeqType |call2formal@r#0@@0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |call2formal@r#0@@0| (TSeq Tclass._System.nat) $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (=> (and (and (and ($Is SeqType |call2formal@r#0@0@@0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |call2formal@r#0@0@@0| (TSeq Tclass._System.nat) $Heap@2)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |_6CallsVariableCapturedfy.54:10|
 :skolemid |495|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |five#0@0| (LitInt 5)))) (and (=> (= (ControlFlow 0 5) 4) anon5_Then_correct) (=> (= (ControlFlow 0 5) 1) anon5_Else_correct)))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (=> (and (and (and (and ($Is SeqType |u#0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |u#0| (TSeq Tclass._System.nat) $Heap)) true) (and (and ($Is SeqType |v#0| (TSeq Tclass._System.nat)) ($IsAlloc SeqType |v#0| (TSeq Tclass._System.nat) $Heap)) true)) (and (and (and ($Is HandleTypeType |gimmieFive#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |gimmieFive#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 14) 5)))) anon0_correct)))))
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
