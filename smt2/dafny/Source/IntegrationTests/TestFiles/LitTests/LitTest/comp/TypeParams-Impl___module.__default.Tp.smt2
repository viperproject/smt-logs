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
(declare-fun TBool () T@U)
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Color () T@U)
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass._module.NonemptyList () T@U)
(declare-fun Tagclass._module.Cl? () T@U)
(declare-fun tytagFamily$Color () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$NonemptyList () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv12Type () T@T)
(declare-fun bv12_2_U ((_ BitVec 12)) T@U)
(declare-fun U_2_bv12 (T@U) (_ BitVec 12))
(declare-fun bv20Type () T@T)
(declare-fun bv20_2_U ((_ BitVec 20)) T@U)
(declare-fun U_2_bv20 (T@U) (_ BitVec 20))
(declare-fun Tclass._module.Cl (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Cl_0 (T@U) T@U)
(declare-fun Tclass._module.Cl_1 (T@U) T@U)
(declare-fun Tclass._module.Cl_2 (T@U) T@U)
(declare-fun Tclass._module.Cl? (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Cl?_0 (T@U) T@U)
(declare-fun Tclass._module.Cl?_1 (T@U) T@U)
(declare-fun Tclass._module.Cl?_2 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun null () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.NonemptyList (T@U) T@U)
(declare-fun Tclass._module.Color () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun charType () T@T)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.NonemptyList_0 (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TBool TChar TInt TagBool TagChar TagInt TagSeq alloc Tagclass._module.Color Tagclass._module.Cl Tagclass._module.NonemptyList Tagclass._module.Cl? tytagFamily$Color tytagFamily$Cl tytagFamily$NonemptyList)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert  (and (and (= (Ctor bv7Type) 3) (forall ((arg0@@2 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@2)) x@@2)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@2))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv7Type v@@0 (TBitvector 7) heap)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( ($IsAlloc bv7Type v@@0 (TBitvector 7) heap))
)))
(assert  (and (and (= (Ctor bv12Type) 4) (forall ((arg0@@3 (_ BitVec 12)) ) (! (= (U_2_bv12 (bv12_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv12|
 :pattern ( (bv12_2_U arg0@@3))
))) (forall ((x@@3 T@U) ) (! (= (bv12_2_U (U_2_bv12 x@@3)) x@@3)
 :qid |cast:U_2_bv12|
 :pattern ( (U_2_bv12 x@@3))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv12Type v@@1 (TBitvector 12) heap@@0)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv12Type v@@1 (TBitvector 12) heap@@0))
)))
(assert  (and (and (= (Ctor bv20Type) 5) (forall ((arg0@@4 (_ BitVec 20)) ) (! (= (U_2_bv20 (bv20_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv20|
 :pattern ( (bv20_2_U arg0@@4))
))) (forall ((x@@4 T@U) ) (! (= (bv20_2_U (U_2_bv20 x@@4)) x@@4)
 :qid |cast:U_2_bv20|
 :pattern ( (U_2_bv20 x@@4))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv20Type v@@2 (TBitvector 20) heap@@1)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc bv20Type v@@2 (TBitvector 20) heap@@1))
)))
(assert (forall ((_module.Cl$X T@U) (_module.Cl$Y T@U) (_module.Cl$Z T@U) ) (! (= (Tclass._module.Cl_0 (Tclass._module.Cl _module.Cl$X _module.Cl$Y _module.Cl$Z)) _module.Cl$X)
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( (Tclass._module.Cl _module.Cl$X _module.Cl$Y _module.Cl$Z))
)))
(assert (forall ((_module.Cl$X@@0 T@U) (_module.Cl$Y@@0 T@U) (_module.Cl$Z@@0 T@U) ) (! (= (Tclass._module.Cl_1 (Tclass._module.Cl _module.Cl$X@@0 _module.Cl$Y@@0 _module.Cl$Z@@0)) _module.Cl$Y@@0)
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( (Tclass._module.Cl _module.Cl$X@@0 _module.Cl$Y@@0 _module.Cl$Z@@0))
)))
(assert (forall ((_module.Cl$X@@1 T@U) (_module.Cl$Y@@1 T@U) (_module.Cl$Z@@1 T@U) ) (! (= (Tclass._module.Cl_2 (Tclass._module.Cl _module.Cl$X@@1 _module.Cl$Y@@1 _module.Cl$Z@@1)) _module.Cl$Z@@1)
 :qid |unknown.0:0|
 :skolemid |667|
 :pattern ( (Tclass._module.Cl _module.Cl$X@@1 _module.Cl$Y@@1 _module.Cl$Z@@1))
)))
(assert (forall ((_module.Cl$X@@2 T@U) (_module.Cl$Y@@2 T@U) (_module.Cl$Z@@2 T@U) ) (! (= (Tclass._module.Cl?_0 (Tclass._module.Cl? _module.Cl$X@@2 _module.Cl$Y@@2 _module.Cl$Z@@2)) _module.Cl$X@@2)
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (Tclass._module.Cl? _module.Cl$X@@2 _module.Cl$Y@@2 _module.Cl$Z@@2))
)))
(assert (forall ((_module.Cl$X@@3 T@U) (_module.Cl$Y@@3 T@U) (_module.Cl$Z@@3 T@U) ) (! (= (Tclass._module.Cl?_1 (Tclass._module.Cl? _module.Cl$X@@3 _module.Cl$Y@@3 _module.Cl$Z@@3)) _module.Cl$Y@@3)
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (Tclass._module.Cl? _module.Cl$X@@3 _module.Cl$Y@@3 _module.Cl$Z@@3))
)))
(assert (forall ((_module.Cl$X@@4 T@U) (_module.Cl$Y@@4 T@U) (_module.Cl$Z@@4 T@U) ) (! (= (Tclass._module.Cl?_2 (Tclass._module.Cl? _module.Cl$X@@4 _module.Cl$Y@@4 _module.Cl$Z@@4)) _module.Cl$Z@@4)
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( (Tclass._module.Cl? _module.Cl$X@@4 _module.Cl$Y@@4 _module.Cl$Z@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@3 (TBitvector 0)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is bv7Type v@@4 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($Is bv7Type v@@4 (TBitvector 7)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is bv12Type v@@5 (TBitvector 12))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv12Type v@@5 (TBitvector 12)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is bv20Type v@@6 (TBitvector 20))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is bv20Type v@@6 (TBitvector 20)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.Cl$X@@5 T@U) (_module.Cl$Y@@5 T@U) (_module.Cl$Z@@5 T@U) ) (!  (and (= (Tag (Tclass._module.Cl _module.Cl$X@@5 _module.Cl$Y@@5 _module.Cl$Z@@5)) Tagclass._module.Cl) (= (TagFamily (Tclass._module.Cl _module.Cl$X@@5 _module.Cl$Y@@5 _module.Cl$Z@@5)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |664|
 :pattern ( (Tclass._module.Cl _module.Cl$X@@5 _module.Cl$Y@@5 _module.Cl$Z@@5))
)))
(assert (forall ((_module.Cl$X@@6 T@U) (_module.Cl$Y@@6 T@U) (_module.Cl$Z@@6 T@U) ) (!  (and (= (Tag (Tclass._module.Cl? _module.Cl$X@@6 _module.Cl$Y@@6 _module.Cl$Z@@6)) Tagclass._module.Cl?) (= (TagFamily (Tclass._module.Cl? _module.Cl$X@@6 _module.Cl$Y@@6 _module.Cl$Z@@6)) tytagFamily$Cl))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (Tclass._module.Cl? _module.Cl$X@@6 _module.Cl$Y@@6 _module.Cl$Z@@6))
)))
(assert (= (Ctor refType) 6))
(assert (forall ((_module.Cl$X@@7 T@U) (_module.Cl$Y@@7 T@U) (_module.Cl$Z@@7 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Cl _module.Cl$X@@7 _module.Cl$Y@@7 _module.Cl$Z@@7)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass._module.Cl _module.Cl$X@@7 _module.Cl$Y@@7 _module.Cl$Z@@7))))
 :qid |unknown.0:0|
 :skolemid |668|
 :pattern ( ($IsBox bx (Tclass._module.Cl _module.Cl$X@@7 _module.Cl$Y@@7 _module.Cl$Z@@7)))
)))
(assert (forall ((_module.Cl$X@@8 T@U) (_module.Cl$Y@@8 T@U) (_module.Cl$Z@@8 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Cl? _module.Cl$X@@8 _module.Cl$Y@@8 _module.Cl$Z@@8)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass._module.Cl? _module.Cl$X@@8 _module.Cl$Y@@8 _module.Cl$Z@@8))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Cl? _module.Cl$X@@8 _module.Cl$Y@@8 _module.Cl$Z@@8)))
)))
(assert (forall ((_module.Cl$X@@9 T@U) (_module.Cl$Y@@9 T@U) (_module.Cl$Z@@9 T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass._module.Cl _module.Cl$X@@9 _module.Cl$Y@@9 _module.Cl$Z@@9))  (and ($Is refType |c#0| (Tclass._module.Cl? _module.Cl$X@@9 _module.Cl$Y@@9 _module.Cl$Z@@9)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |830|
 :pattern ( ($Is refType |c#0| (Tclass._module.Cl _module.Cl$X@@9 _module.Cl$Y@@9 _module.Cl$Z@@9)))
 :pattern ( ($Is refType |c#0| (Tclass._module.Cl? _module.Cl$X@@9 _module.Cl$Y@@9 _module.Cl$Z@@9)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 7)) (= (Ctor BoxType) 8)) (forall ((arg0@@5 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@5 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@6 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@6 arg1@@0)) arg0@@6)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@6 arg1@@0))
))) (forall ((arg0@@7 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@7 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@7 arg1@@1))
))))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
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
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((v@@7 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@7) t h@@1) ($IsAlloc T@@1 v@@7 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@7) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@2) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@1 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@8 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@8 t@@1 h@@3) ($IsAlloc T@@2 v@@8 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@8 t@@1 h@@3))
)))
(assert (forall ((_module.NonemptyList$G T@U) ) (!  (and (= (Tag (Tclass._module.NonemptyList _module.NonemptyList$G)) Tagclass._module.NonemptyList) (= (TagFamily (Tclass._module.NonemptyList _module.NonemptyList$G)) tytagFamily$NonemptyList))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( (Tclass._module.NonemptyList _module.NonemptyList$G))
)))
(assert (= (Ctor DatatypeTypeType) 10))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.Color)))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsBox bx@@2 Tclass._module.Color))
)))
(assert (forall ((_module.Cl$X@@10 T@U) (_module.Cl$Y@@10 T@U) (_module.Cl$Z@@10 T@U) ($o T@U) ($h T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.Cl? _module.Cl$X@@10 _module.Cl$Y@@10 _module.Cl$Z@@10) $h)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAlloc refType $o (Tclass._module.Cl? _module.Cl$X@@10 _module.Cl$Y@@10 _module.Cl$Z@@10) $h))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TBool) (and (= ($Box boolType ($Unbox boolType bx@@4)) bx@@4) ($Is boolType ($Unbox boolType bx@@4) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@4 TBool))
)))
(assert (= (Ctor charType) 11))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TChar) (and (= ($Box charType ($Unbox charType bx@@5)) bx@@5) ($Is charType ($Unbox charType bx@@5) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@5 TChar))
)))
(assert (forall ((v@@9 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@9) t@@2) ($Is T@@3 v@@9 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@9) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (= (Ctor SeqType) 12))
(assert (forall ((v@@10 T@U) (t0@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@10 (TSeq t0@@0) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@10))) ($IsAllocBox (|Seq#Index| v@@10 i) t0@@0 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@10 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@10 (TSeq t0@@0) h@@4))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((_module.NonemptyList$G@@0 T@U) ) (! (= (Tclass._module.NonemptyList_0 (Tclass._module.NonemptyList _module.NonemptyList$G@@0)) _module.NonemptyList$G@@0)
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( (Tclass._module.NonemptyList _module.NonemptyList$G@@0))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1005|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((_module.Cl$X@@11 T@U) (_module.Cl$Y@@11 T@U) (_module.Cl$Z@@11 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass._module.Cl? _module.Cl$X@@11 _module.Cl$Y@@11 _module.Cl$Z@@11))  (or (= $o@@1 null) (= (dtype $o@@1) (Tclass._module.Cl? _module.Cl$X@@11 _module.Cl$Y@@11 _module.Cl$Z@@11))))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($Is refType $o@@1 (Tclass._module.Cl? _module.Cl$X@@11 _module.Cl$Y@@11 _module.Cl$Z@@11)))
)))
(assert (forall ((_module.Cl$X@@12 T@U) (_module.Cl$Y@@12 T@U) (_module.Cl$Z@@12 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Cl _module.Cl$X@@12 _module.Cl$Y@@12 _module.Cl$Z@@12) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.Cl? _module.Cl$X@@12 _module.Cl$Y@@12 _module.Cl$Z@@12) $h@@0))
 :qid |unknown.0:0|
 :skolemid |831|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Cl _module.Cl$X@@12 _module.Cl$Y@@12 _module.Cl$Z@@12) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Cl? _module.Cl$X@@12 _module.Cl$Y@@12 _module.Cl$Z@@12) $h@@0))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@6 (TBitvector 0)))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@5)))
)))
(assert (forall ((_module.NonemptyList$G@@1 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.NonemptyList _module.NonemptyList$G@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.NonemptyList _module.NonemptyList$G@@1))))
 :qid |unknown.0:0|
 :skolemid |675|
 :pattern ( ($IsBox bx@@8 (Tclass._module.NonemptyList _module.NonemptyList$G@@1)))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TBitvector 7)) (and (= ($Box bv7Type ($Unbox bv7Type bx@@9)) bx@@9) ($Is bv7Type ($Unbox bv7Type bx@@9) (TBitvector 7))))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsBox bx@@9 (TBitvector 7)))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (TBitvector 12)) (and (= ($Box bv12Type ($Unbox bv12Type bx@@10)) bx@@10) ($Is bv12Type ($Unbox bv12Type bx@@10) (TBitvector 12))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@10 (TBitvector 12)))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (TBitvector 20)) (and (= ($Box bv20Type ($Unbox bv20Type bx@@11)) bx@@11) ($Is bv20Type ($Unbox bv20Type bx@@11) (TBitvector 20))))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@11 (TBitvector 20)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((d T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d Tclass._module.Color)) ($IsAlloc DatatypeTypeType d Tclass._module.Color $h@@1))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass._module.Color $h@@1))
)))
(assert (= (Tag Tclass._module.Color) Tagclass._module.Color))
(assert (= (TagFamily Tclass._module.Color) tytagFamily$Color))
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
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@5 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@12 T@U) ) (! ($IsAlloc boolType v@@12 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@12 TBool h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@13 T@U) ) (! ($IsAlloc charType v@@13 TChar h@@7)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@13 TChar h@@7))
)))
(assert (forall ((v@@14 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@14 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@14))) ($IsBox (|Seq#Index| v@@14 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@14 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@14 (TSeq t0@@2)))
)))
(assert (forall ((v@@15 T@U) ) (! ($Is intType v@@15 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@15 TInt))
)))
(assert (forall ((v@@16 T@U) ) (! ($Is boolType v@@16 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@16 TBool))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is charType v@@17 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@17 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |zed##0@0| () T@U)
(declare-fun call5formal@this () T@U)
(declare-fun call0formal@_module.Cl$X () T@U)
(declare-fun call1formal@_module.Cl$Y () T@U)
(declare-fun call2formal@_module.Cl$Z () T@U)
(declare-fun call1formal@_module.Cl$Y@0 () T@U)
(declare-fun |call3formal@zed#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call5formal@this@0 () T@U)
(declare-fun call1formal@_module.Cl$Y@0@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |zed##1@0| () Int)
(declare-fun call5formal@this@@0 () T@U)
(declare-fun call0formal@_module.Cl$X@@0 () T@U)
(declare-fun call1formal@_module.Cl$Y@@0 () T@U)
(declare-fun call2formal@_module.Cl$Z@@0 () T@U)
(declare-fun call1formal@_module.Cl$Y@0@@1 () T@U)
(declare-fun |call3formal@zed#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call5formal@this@0@@0 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun |n#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Tp)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |zed##0@0| (Lit charType (|char#FromInt| 81)))) (and (or (not (= call5formal@this null)) (not true)) (and ($Is refType call5formal@this (Tclass._module.Cl call0formal@_module.Cl$X call1formal@_module.Cl$Y call2formal@_module.Cl$Z)) ($IsAlloc refType call5formal@this (Tclass._module.Cl call0formal@_module.Cl$X call1formal@_module.Cl$Y call2formal@_module.Cl$Z) $Heap)))) (and (and (= call1formal@_module.Cl$Y@0 (TSeq TBool)) (= |call3formal@zed#0@0| ($Box charType |zed##0@0|))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and (or (not (= call5formal@this@0 null)) (not true)) (and ($Is refType call5formal@this@0 (Tclass._module.Cl TInt call1formal@_module.Cl$Y@0 TChar)) ($IsAlloc refType call5formal@this@0 (Tclass._module.Cl TInt call1formal@_module.Cl$Y@0 TChar) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call5formal@this@0) alloc))))) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |TypeParamsdfy.86:3|
 :skolemid |825|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call5formal@this@0 null)) (not true))) (=> (or (not (= call5formal@this@0 null)) (not true)) (=> (= call1formal@_module.Cl$Y@0@@0 (TSeq TBool)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |TypeParamsdfy.90:10|
 :skolemid |828|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
))) (=> (and (and (and (and ($HeapSucc $Heap@0 $Heap@1) (= |zed##1@0| (LitInt 42))) (and (or (not (= call5formal@this@@0 null)) (not true)) (and ($Is refType call5formal@this@@0 (Tclass._module.Cl call0formal@_module.Cl$X@@0 call1formal@_module.Cl$Y@@0 call2formal@_module.Cl$Z@@0)) ($IsAlloc refType call5formal@this@@0 (Tclass._module.Cl call0formal@_module.Cl$X@@0 call1formal@_module.Cl$Y@@0 call2formal@_module.Cl$Z@@0) $Heap)))) (and (and (= call1formal@_module.Cl$Y@0@@1 Tclass._module.Color) (= |call3formal@zed#0@0@@0| ($Box intType (int_2_U |zed##1@0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (or (not (= call5formal@this@0@@0 null)) (not true)) (and ($Is refType call5formal@this@0@@0 (Tclass._module.Cl TBool call1formal@_module.Cl$Y@0@@1 TInt)) ($IsAlloc refType call5formal@this@0@@0 (Tclass._module.Cl TBool call1formal@_module.Cl$Y@0@@1 TInt) $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call5formal@this@0@@0) alloc))))) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |TypeParamsdfy.86:3|
 :skolemid |825|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call5formal@this@0@@0 null)) (not true)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| (Tclass._module.Cl TInt (TSeq TBool) TChar)) ($IsAlloc refType |c#0@@1| (Tclass._module.Cl TInt (TSeq TBool) TChar) $Heap))) true) (and (=> |defass#d#0| (and ($Is refType |d#0| (Tclass._module.Cl TBool Tclass._module.Color TInt)) ($IsAlloc refType |d#0| (Tclass._module.Cl TBool Tclass._module.Color TInt) $Heap))) true)) (=> (and (and (and ($Is DatatypeTypeType |n#0| (Tclass._module.NonemptyList (TBitvector 7))) ($IsAlloc DatatypeTypeType |n#0| (Tclass._module.NonemptyList (TBitvector 7)) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2))) anon0_correct)))))
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
