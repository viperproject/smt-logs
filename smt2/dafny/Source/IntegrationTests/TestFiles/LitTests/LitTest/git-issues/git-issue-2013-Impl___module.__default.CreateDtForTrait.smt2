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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Cl () T@U)
(declare-fun Tagclass._module.Dt () T@U)
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun |##_module.Dt.Dt| () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun Tagclass._module.Cl? () T@U)
(declare-fun tytagFamily$Cl () T@U)
(declare-fun tytagFamily$Dt () T@U)
(declare-fun tytagFamily$Tr () T@U)
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
(declare-fun |$IsA#_module.Dt| (T@U) Bool)
(declare-fun _module.Dt.Dt_q (T@U) Bool)
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.Cl? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dt (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.Cl () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Dt.Dt| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Dt_0 (T@U) T@U)
(declare-fun _module.Dt.u (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct alloc Tagclass._module.Cl Tagclass._module.Dt Tagclass._module.Tr |##_module.Dt.Dt| Tagclass._module.Tr? Tagclass._module.Cl? tytagFamily$Cl tytagFamily$Dt tytagFamily$Tr)
)
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Dt| d) (_module.Dt.Dt_q d))
 :qid |unknown.0:0|
 :skolemid |2934|
 :pattern ( (|$IsA#_module.Dt| d))
)))
(assert (implements$_module.Tr Tclass._module.Cl?))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Dt$U T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass._module.Dt _module.Dt$U)) (_module.Dt.Dt_q d@@0))
 :qid |unknown.0:0|
 :skolemid |2935|
 :pattern ( (_module.Dt.Dt_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass._module.Dt _module.Dt$U)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cl?)  (or (= $o null) (= (dtype $o) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |2946|
 :pattern ( ($Is refType $o Tclass._module.Cl?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Cl? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Tr? $h))
 :qid |unknown.0:0|
 :skolemid |3219|
 :pattern ( ($IsAllocBox bx Tclass._module.Cl? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0) ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2944|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Tr? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Cl $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Cl? $h@@1))
 :qid |unknown.0:0|
 :skolemid |2952|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cl $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cl? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2940|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Tr? $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Cl? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2947|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Cl? $h@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Dt.Dt_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Dt.Dt|))
 :qid |unknown.0:0|
 :skolemid |2925|
 :pattern ( (_module.Dt.Dt_q d@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2385|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Dt.Dt_q d@@2) (exists ((|a#1#0#0| T@U) ) (! (= d@@2 (|#_module.Dt.Dt| |a#1#0#0|))
 :qid |gitissue2013dfy.15:22|
 :skolemid |2926|
)))
 :qid |unknown.0:0|
 :skolemid |2927|
 :pattern ( (_module.Dt.Dt_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h) ($IsAlloc T@@0 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2398|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h))
)))
(assert (forall ((_module.Dt$U@@0 T@U) ) (!  (and (= (Tag (Tclass._module.Dt _module.Dt$U@@0)) Tagclass._module.Dt) (= (TagFamily (Tclass._module.Dt _module.Dt$U@@0)) tytagFamily$Dt))
 :qid |unknown.0:0|
 :skolemid |2897|
 :pattern ( (Tclass._module.Dt _module.Dt$U@@0))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Cl) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Cl)))
 :qid |unknown.0:0|
 :skolemid |2896|
 :pattern ( ($IsBox bx@@0 Tclass._module.Cl))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Tr) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Tr)))
 :qid |unknown.0:0|
 :skolemid |2903|
 :pattern ( ($IsBox bx@@1 Tclass._module.Tr))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Tr?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Tr?)))
 :qid |unknown.0:0|
 :skolemid |2938|
 :pattern ( ($IsBox bx@@2 Tclass._module.Tr?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Cl?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Cl?)))
 :qid |unknown.0:0|
 :skolemid |2945|
 :pattern ( ($IsBox bx@@3 Tclass._module.Cl?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Tr)  (and ($Is refType |c#0@@1| Tclass._module.Tr?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2943|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Cl)  (and ($Is refType |c#0@@2| Tclass._module.Cl?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2951|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Cl?))
)))
(assert (forall ((_module.Dt$U@@1 T@U) (|a#2#0#0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.Dt| |a#2#0#0|) (Tclass._module.Dt _module.Dt$U@@1) $h@@4) ($IsAllocBox |a#2#0#0| _module.Dt$U@@1 $h@@4)))
 :qid |unknown.0:0|
 :skolemid |2929|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.Dt| |a#2#0#0|) (Tclass._module.Dt _module.Dt$U@@1) $h@@4))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.Cl? $heap) ($IsAlloc refType $o@@2 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |3221|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Cl? $heap))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2397|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((_module.Dt$U@@2 T@U) ) (! (= (Tclass._module.Dt_0 (Tclass._module.Dt _module.Dt$U@@2)) _module.Dt$U@@2)
 :qid |unknown.0:0|
 :skolemid |2898|
 :pattern ( (Tclass._module.Dt _module.Dt$U@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Dt.Dt| |a#0#0#0|)) |##_module.Dt.Dt|)
 :qid |gitissue2013dfy.15:22|
 :skolemid |2924|
 :pattern ( (|#_module.Dt.Dt| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (_module.Dt.u (|#_module.Dt.Dt| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue2013dfy.15:22|
 :skolemid |2932|
 :pattern ( (|#_module.Dt.Dt| |a#4#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2384|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((_module.Dt$U@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.Dt| |a#2#0#0@@0|) (Tclass._module.Dt _module.Dt$U@@3)) ($IsBox |a#2#0#0@@0| _module.Dt$U@@3))
 :qid |unknown.0:0|
 :skolemid |2928|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.Dt| |a#2#0#0@@0|) (Tclass._module.Dt _module.Dt$U@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Dt.Dt| |a#5#0#0|)))
 :qid |gitissue2013dfy.15:22|
 :skolemid |2933|
 :pattern ( (|#_module.Dt.Dt| |a#5#0#0|))
)))
(assert (forall ((d@@3 T@U) (_module.Dt$U@@4 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Dt.Dt_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Dt _module.Dt$U@@4) $h@@5))) ($IsAllocBox (_module.Dt.u d@@3) _module.Dt$U@@4 $h@@5))
 :qid |unknown.0:0|
 :skolemid |2930|
 :pattern ( ($IsAllocBox (_module.Dt.u d@@3) _module.Dt$U@@4 $h@@5))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3229|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2443|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((_module.Dt$U@@5 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._module.Dt _module.Dt$U@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._module.Dt _module.Dt$U@@5))))
 :qid |unknown.0:0|
 :skolemid |2899|
 :pattern ( ($IsBox bx@@4 (Tclass._module.Dt _module.Dt$U@@5)))
)))
(assert (forall (($o@@4 T@U) ) (!  (=> ($Is refType $o@@4 Tclass._module.Cl?) ($Is refType $o@@4 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |3220|
 :pattern ( ($Is refType $o@@4 Tclass._module.Cl?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Cl?) ($IsBox bx@@5 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |3218|
 :pattern ( ($IsBox bx@@5 Tclass._module.Cl?))
)))
(assert (= (Tag Tclass._module.Cl) Tagclass._module.Cl))
(assert (= (TagFamily Tclass._module.Cl) tytagFamily$Cl))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Cl?) Tagclass._module.Cl?))
(assert (= (TagFamily Tclass._module.Cl?) tytagFamily$Cl))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass._module.Tr?)  (or (= $o@@5 null) (implements$_module.Tr (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |2939|
 :pattern ( ($Is refType $o@@5 Tclass._module.Tr?))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |e#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#d#0| () Bool)
(declare-fun |d#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.CreateDtForTrait)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($Unbox refType (_module.Dt.u |e#0|)) ($Unbox refType (_module.Dt.u |e#0|))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |e#0| (Tclass._module.Dt Tclass._module.Cl)) ($IsAlloc DatatypeTypeType |e#0| (Tclass._module.Dt Tclass._module.Cl) $Heap)) (|$IsA#_module.Dt| |e#0|)) (=> |defass#d#0| (and ($Is DatatypeTypeType |d#0| (Tclass._module.Dt Tclass._module.Tr)) ($IsAlloc DatatypeTypeType |d#0| (Tclass._module.Dt Tclass._module.Tr) $Heap)))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
