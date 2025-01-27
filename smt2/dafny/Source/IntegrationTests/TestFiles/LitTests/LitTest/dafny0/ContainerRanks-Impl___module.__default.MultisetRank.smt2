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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Def () T@U)
(declare-fun |##_module.Def.End| () T@U)
(declare-fun |##_module.Def.MultiWrapper| () T@U)
(declare-fun tytagFamily$Def () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Def.End| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Def () T@U)
(declare-fun |_module.Def#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Def.End_q (T@U) Bool)
(declare-fun _module.Def.MultiWrapper_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |#_module.Def.MultiWrapper| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun _module.Def._h1 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |$IsA#_module.Def| (T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TagMultiSet alloc Tagclass._module.Def |##_module.Def.End| |##_module.Def.MultiWrapper| tytagFamily$Def)
)
(assert (= (DatatypeCtorId |#_module.Def.End|) |##_module.Def.End|))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#_module.Def.End| Tclass._module.Def))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Def#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (|_module.Def#Equal| a b))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Def.End_q d) (= (DatatypeCtorId d) |##_module.Def.End|))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (_module.Def.End_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Def.MultiWrapper_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Def.MultiWrapper|))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (_module.Def.MultiWrapper_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((a@@0 T@U) (x@@4 T@U) (y T@U) ) (!  (=> (or (not (= x@@4 y)) (not true)) (= (|MultiSet#Multiplicity| a@@0 y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@0 x@@4) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@0 x@@4) (|MultiSet#Multiplicity| a@@0 y))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Def.End_q d@@1) (= d@@1 |#_module.Def.End|))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (_module.Def.End_q d@@1))
)))
(assert (forall ((a@@1 T@U) (x@@5 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@1 x@@5)) (+ (|MultiSet#Card| a@@1) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@1 x@@5)))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Def.MultiWrapper_q d@@2) (exists ((|a#16#0#0| T@U) ) (! (= d@@2 (|#_module.Def.MultiWrapper| |a#16#0#0|))
 :qid |ContainerRanksdfy.21:35|
 :skolemid |504|
)))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (_module.Def.MultiWrapper_q d@@2))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.Def) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._module.Def)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($IsBox bx Tclass._module.Def))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) ) (!  (=> (and (_module.Def.MultiWrapper_q a@@2) (_module.Def.MultiWrapper_q b@@0)) (= (|_module.Def#Equal| a@@2 b@@0) (|MultiSet#Equal| (_module.Def._h1 a@@2) (_module.Def._h1 b@@0))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (|_module.Def#Equal| a@@2 b@@0) (_module.Def.MultiWrapper_q a@@2))
 :pattern ( (|_module.Def#Equal| a@@2 b@@0) (_module.Def.MultiWrapper_q b@@0))
)))
(assert (forall ((|a#20#0#0| T@U) (d@@3 T@U) ) (!  (=> (> (|MultiSet#Multiplicity| |a#20#0#0| ($Box DatatypeTypeType d@@3)) 0) (< (DtRank d@@3) (DtRank (|#_module.Def.MultiWrapper| |a#20#0#0|))))
 :qid |ContainerRanksdfy.21:35|
 :skolemid |510|
 :pattern ( (|MultiSet#Multiplicity| |a#20#0#0| ($Box DatatypeTypeType d@@3)) (|#_module.Def.MultiWrapper| |a#20#0#0|))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (|$IsA#_module.Def| d@@4) (or (_module.Def.End_q d@@4) (_module.Def.MultiWrapper_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (|$IsA#_module.Def| d@@4))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Def.MultiWrapper| |a#17#0#0|) Tclass._module.Def) ($Is MultiSetType |a#17#0#0| (TMultiSet Tclass._module.Def)))
 :qid |ContainerRanksdfy.21:35|
 :skolemid |506|
 :pattern ( ($Is DatatypeTypeType (|#_module.Def.MultiWrapper| |a#17#0#0|) Tclass._module.Def))
)))
(assert (forall ((a@@3 T@U) (b@@1 T@U) ) (!  (=> (|MultiSet#Equal| a@@3 b@@1) (= a@@3 b@@1))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@3 b@@1))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx@@0)) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@0)))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass._module.Def) (or (_module.Def.End_q d@@5) (_module.Def.MultiWrapper_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( (_module.Def.MultiWrapper_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Def))
 :pattern ( (_module.Def.End_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Def))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@1 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@1)) (<= (|MultiSet#Multiplicity| ms bx@@1) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@1))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((a@@4 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Def.End_q a@@4) (_module.Def.End_q b@@2)) (|_module.Def#Equal| a@@4 b@@2))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( (|_module.Def#Equal| a@@4 b@@2) (_module.Def.End_q a@@4))
 :pattern ( (|_module.Def#Equal| a@@4 b@@2) (_module.Def.End_q b@@2))
)))
(assert (forall ((o T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o))
)))
(assert (forall ((a@@5 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@6) x@@6) (+ (|MultiSet#Multiplicity| a@@5 x@@6) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@6))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Def.MultiWrapper| |a#15#0#0|)) |##_module.Def.MultiWrapper|)
 :qid |ContainerRanksdfy.21:35|
 :skolemid |502|
 :pattern ( (|#_module.Def.MultiWrapper| |a#15#0#0|))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (= (_module.Def._h1 (|#_module.Def.MultiWrapper| |a#19#0#0|)) |a#19#0#0|)
 :qid |ContainerRanksdfy.21:35|
 :skolemid |509|
 :pattern ( (|#_module.Def.MultiWrapper| |a#19#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@7))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@8 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@8))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@8))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |534|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@2)) bx@@2) ($Is MultiSetType ($Unbox MultiSetType bx@@2) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@2 (TMultiSet t@@3)))
)))
(assert (forall ((d@@6 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@6 Tclass._module.Def)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Def $h))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Def $h))
)))
(assert (= (Tag Tclass._module.Def) Tagclass._module.Def))
(assert (= (TagFamily Tclass._module.Def) tytagFamily$Def))
(assert (= |#_module.Def.End| (Lit DatatypeTypeType |#_module.Def.End|)))
(assert (forall ((|a#18#0#0| T@U) ) (! (= (|#_module.Def.MultiWrapper| (Lit MultiSetType |a#18#0#0|)) (Lit DatatypeTypeType (|#_module.Def.MultiWrapper| |a#18#0#0|)))
 :qid |ContainerRanksdfy.21:35|
 :skolemid |508|
 :pattern ( (|#_module.Def.MultiWrapper| (Lit MultiSetType |a#18#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@9)) (Lit BoxType ($Box T@@4 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@9)))
)))
(assert (forall ((a@@6 T@U) (x@@10 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@6 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@10) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@10) (|MultiSet#Multiplicity| a@@6 y@@0))
)))
(assert (forall ((a@@7 T@U) (x@@11 T@U) (o@@0 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@11) o@@0))  (or (= o@@0 x@@11) (< 0 (|MultiSet#Multiplicity| a@@7 o@@0))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@7 x@@11) o@@0))
)))
(assert (forall ((d@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Def.MultiWrapper_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Def $h@@0))) ($IsAlloc MultiSetType (_module.Def._h1 d@@7) (TMultiSet Tclass._module.Def) $h@@0))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc MultiSetType (_module.Def._h1 d@@7) (TMultiSet Tclass._module.Def) $h@@0))
)))
(assert (forall ((a@@8 T@U) (b@@3 T@U) ) (! (= (|MultiSet#Equal| a@@8 b@@3) (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| a@@8 o@@1) (|MultiSet#Multiplicity| b@@3 o@@1))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@8 o@@1))
 :pattern ( (|MultiSet#Multiplicity| b@@3 o@@1))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@8 b@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MultisetRank)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (not (|_module.Def#Equal| |a#0| (|#_module.Def.MultiWrapper| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box DatatypeTypeType |a#0|))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |a#0| Tclass._module.Def) ($IsAlloc DatatypeTypeType |a#0| Tclass._module.Def $Heap)) (|$IsA#_module.Def| |a#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
