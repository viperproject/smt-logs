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
(declare-fun Tagclass.WithoutWarning.Colors () T@U)
(declare-fun Tagclass.WithoutWarning.Identity () T@U)
(declare-fun Tagclass.WithoutWarning.Color () T@U)
(declare-fun |##WithoutWarning.Color.Green| () T@U)
(declare-fun |##WithoutWarning.Identity.Identity| () T@U)
(declare-fun |##WithoutWarning.Colors.Blue| () T@U)
(declare-fun tytagFamily$Colors () T@U)
(declare-fun tytagFamily$Identity () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun |#WithoutWarning.Color.Green| () T@U)
(declare-fun |#WithoutWarning.Colors.Blue| () T@U)
(declare-fun WithoutWarning.Identity.Identity_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.WithoutWarning.Identity (T@U) T@U)
(declare-fun Tclass.WithoutWarning.Color () T@U)
(declare-fun Tclass.WithoutWarning.Colors () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#WithoutWarning.Identity.Identity| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.WithoutWarning.Identity_0 (T@U) T@U)
(declare-fun WithoutWarning.Identity.value (T@U) T@U)
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
(assert (distinct alloc Tagclass.WithoutWarning.Colors Tagclass.WithoutWarning.Identity Tagclass.WithoutWarning.Color |##WithoutWarning.Color.Green| |##WithoutWarning.Identity.Identity| |##WithoutWarning.Colors.Blue| tytagFamily$Colors tytagFamily$Identity tytagFamily$Color)
)
(assert (= (DatatypeCtorId |#WithoutWarning.Color.Green|) |##WithoutWarning.Color.Green|))
(assert (= (DatatypeCtorId |#WithoutWarning.Colors.Blue|) |##WithoutWarning.Colors.Blue|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((WithoutWarning.Identity$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T)) (WithoutWarning.Identity.Identity_q d))
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (WithoutWarning.Identity.Identity_q d) ($Is DatatypeTypeType d (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T)))
)))
(assert ($Is DatatypeTypeType |#WithoutWarning.Color.Green| Tclass.WithoutWarning.Color))
(assert ($Is DatatypeTypeType |#WithoutWarning.Colors.Blue| Tclass.WithoutWarning.Colors))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |675|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |676|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |572|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (WithoutWarning.Identity.Identity_q d@@0) (= (DatatypeCtorId d@@0) |##WithoutWarning.Identity.Identity|))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( (WithoutWarning.Identity.Identity_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |583|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (WithoutWarning.Identity.Identity_q d@@1) (exists ((|a#14#0#0| T@U) ) (! (= d@@1 (|#WithoutWarning.Identity.Identity| |a#14#0#0|))
 :qid |constructorCaseWithoutParenthesesdfy.48:35|
 :skolemid |1087|
)))
 :qid |unknown.0:0|
 :skolemid |1088|
 :pattern ( (WithoutWarning.Identity.Identity_q d@@1))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |596|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |668|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |667|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((WithoutWarning.Identity$T@@0 T@U) ) (!  (and (= (Tag (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@0)) Tagclass.WithoutWarning.Identity) (= (TagFamily (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@0)) tytagFamily$Identity))
 :qid |unknown.0:0|
 :skolemid |1041|
 :pattern ( (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@0))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.WithoutWarning.Colors) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.WithoutWarning.Colors)))
 :qid |unknown.0:0|
 :skolemid |1040|
 :pattern ( ($IsBox bx@@0 Tclass.WithoutWarning.Colors))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.WithoutWarning.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.WithoutWarning.Color)))
 :qid |unknown.0:0|
 :skolemid |1048|
 :pattern ( ($IsBox bx@@1 Tclass.WithoutWarning.Color))
)))
(assert (forall ((WithoutWarning.Identity$T@@1 T@U) (|a#15#0#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#WithoutWarning.Identity.Identity| |a#15#0#0|) (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@1) $h) ($IsAllocBox |a#15#0#0| WithoutWarning.Identity$T@@1 $h)))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( ($IsAlloc DatatypeTypeType (|#WithoutWarning.Identity.Identity| |a#15#0#0|) (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@1) $h))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |674|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |595|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((WithoutWarning.Identity$T@@2 T@U) ) (! (= (Tclass.WithoutWarning.Identity_0 (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@2)) WithoutWarning.Identity$T@@2)
 :qid |unknown.0:0|
 :skolemid |1042|
 :pattern ( (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@2))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (DatatypeCtorId (|#WithoutWarning.Identity.Identity| |a#13#0#0|)) |##WithoutWarning.Identity.Identity|)
 :qid |constructorCaseWithoutParenthesesdfy.48:35|
 :skolemid |1085|
 :pattern ( (|#WithoutWarning.Identity.Identity| |a#13#0#0|))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (= (WithoutWarning.Identity.value (|#WithoutWarning.Identity.Identity| |a#17#0#0|)) |a#17#0#0|)
 :qid |constructorCaseWithoutParenthesesdfy.48:35|
 :skolemid |1093|
 :pattern ( (|#WithoutWarning.Identity.Identity| |a#17#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |582|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall ((WithoutWarning.Identity$T@@3 T@U) (|a#15#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#WithoutWarning.Identity.Identity| |a#15#0#0@@0|) (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@3)) ($IsBox |a#15#0#0@@0| WithoutWarning.Identity$T@@3))
 :qid |unknown.0:0|
 :skolemid |1089|
 :pattern ( ($Is DatatypeTypeType (|#WithoutWarning.Identity.Identity| |a#15#0#0@@0|) (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@3)))
)))
(assert (forall ((|a#18#0#0| T@U) ) (! (< (BoxRank |a#18#0#0|) (DtRank (|#WithoutWarning.Identity.Identity| |a#18#0#0|)))
 :qid |constructorCaseWithoutParenthesesdfy.48:35|
 :skolemid |1094|
 :pattern ( (|#WithoutWarning.Identity.Identity| |a#18#0#0|))
)))
(assert (forall ((d@@2 T@U) (WithoutWarning.Identity$T@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (WithoutWarning.Identity.Identity_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@4) $h@@0))) ($IsAllocBox (WithoutWarning.Identity.value d@@2) WithoutWarning.Identity$T@@4 $h@@0))
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( ($IsAllocBox (WithoutWarning.Identity.value d@@2) WithoutWarning.Identity$T@@4 $h@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1119|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |641|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((WithoutWarning.Identity$T@@5 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@5))))
 :qid |unknown.0:0|
 :skolemid |1043|
 :pattern ( ($IsBox bx@@2 (Tclass.WithoutWarning.Identity WithoutWarning.Identity$T@@5)))
)))
(assert (forall ((d@@4 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@4 Tclass.WithoutWarning.Color)) ($IsAlloc DatatypeTypeType d@@4 Tclass.WithoutWarning.Color $h@@1))
 :qid |unknown.0:0|
 :skolemid |1078|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass.WithoutWarning.Color $h@@1))
)))
(assert (forall ((d@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@5 Tclass.WithoutWarning.Colors)) ($IsAlloc DatatypeTypeType d@@5 Tclass.WithoutWarning.Colors $h@@2))
 :qid |unknown.0:0|
 :skolemid |1103|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.WithoutWarning.Colors $h@@2))
)))
(assert (= (Tag Tclass.WithoutWarning.Colors) Tagclass.WithoutWarning.Colors))
(assert (= (TagFamily Tclass.WithoutWarning.Colors) tytagFamily$Colors))
(assert (= (Tag Tclass.WithoutWarning.Color) Tagclass.WithoutWarning.Color))
(assert (= (TagFamily Tclass.WithoutWarning.Color) tytagFamily$Color))
(assert (= |#WithoutWarning.Color.Green| (Lit DatatypeTypeType |#WithoutWarning.Color.Green|)))
(assert (= |#WithoutWarning.Colors.Blue| (Lit DatatypeTypeType |#WithoutWarning.Colors.Blue|)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (|#WithoutWarning.Identity.Identity| (Lit BoxType |a#16#0#0|)) (Lit DatatypeTypeType (|#WithoutWarning.Identity.Identity| |a#16#0#0|)))
 :qid |constructorCaseWithoutParenthesesdfy.48:35|
 :skolemid |1092|
 :pattern ( (|#WithoutWarning.Identity.Identity| (Lit BoxType |a#16#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |573|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$WithoutWarning.__default.Main)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
