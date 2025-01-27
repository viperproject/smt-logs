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
(declare-fun Tagclass.Std_mWrappers.Result () T@U)
(declare-fun |##Std.Wrappers.Result.Success| () T@U)
(declare-fun |##Std.Wrappers.Result.Failure| () T@U)
(declare-fun tytagFamily$Result () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Std_mWrappers.Result.Extract (T@U T@U T@U) T@U)
(declare-fun |Std_mWrappers.Result.Extract#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Std_mWrappers.Result (T@U T@U) T@U)
(declare-fun Std_mWrappers.Result.Success_q (T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun Std_mWrappers.Result.value (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Std_mWrappers.Result.Failure_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#Std.Wrappers.Result.Success| (T@U) T@U)
(declare-fun |#Std.Wrappers.Result.Failure| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.Std_mWrappers.Result_0 (T@U) T@U)
(declare-fun Tclass.Std_mWrappers.Result_1 (T@U) T@U)
(declare-fun Std_mWrappers.Result.error (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass.Std_mWrappers.Result |##Std.Wrappers.Result.Success| |##Std.Wrappers.Result.Failure| tytagFamily$Result)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Std.Wrappers.Result$R T@U) (Std.Wrappers.Result$E T@U) (this T@U) ) (!  (=> (or (|Std_mWrappers.Result.Extract#canCall| Std.Wrappers.Result$R Std.Wrappers.Result$E this) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R Std.Wrappers.Result$E)) (Std_mWrappers.Result.Success_q this)))) ($IsBox (Std_mWrappers.Result.Extract Std.Wrappers.Result$R Std.Wrappers.Result$E this) Std.Wrappers.Result$R))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (Std_mWrappers.Result.Extract Std.Wrappers.Result$R Std.Wrappers.Result$E this))
))))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Std.Wrappers.Result$R@@0 T@U) (Std.Wrappers.Result$E@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|Std_mWrappers.Result.Extract#canCall| Std.Wrappers.Result$R@@0 Std.Wrappers.Result$E@@0 (Lit DatatypeTypeType this@@0)) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@0 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@0 Std.Wrappers.Result$E@@0)) (U_2_bool (Lit boolType (bool_2_U (Std_mWrappers.Result.Success_q (Lit DatatypeTypeType this@@0)))))))) (= (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@0 Std.Wrappers.Result$E@@0 (Lit DatatypeTypeType this@@0)) (Lit BoxType (Std_mWrappers.Result.value (Lit DatatypeTypeType this@@0)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |644|
 :pattern ( (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@0 Std.Wrappers.Result$E@@0 (Lit DatatypeTypeType this@@0)))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (Std_mWrappers.Result.Success_q d) (= (DatatypeCtorId d) |##Std.Wrappers.Result.Success|))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Std_mWrappers.Result.Success_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Std_mWrappers.Result.Failure_q d@@0) (= (DatatypeCtorId d@@0) |##Std.Wrappers.Result.Failure|))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( (Std_mWrappers.Result.Failure_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Std_mWrappers.Result.Success_q d@@1) (exists ((|a#1#0#0| T@U) ) (! (= d@@1 (|#Std.Wrappers.Result.Success| |a#1#0#0|))
 :qid |wrappersdfy.70:39|
 :skolemid |606|
)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (Std_mWrappers.Result.Success_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Std_mWrappers.Result.Failure_q d@@2) (exists ((|a#7#0#0| T@U) ) (! (= d@@2 (|#Std.Wrappers.Result.Failure| |a#7#0#0|))
 :qid |wrappersdfy.70:59|
 :skolemid |617|
)))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (Std_mWrappers.Result.Failure_q d@@2))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (Std.Wrappers.Result$R@@1 T@U) (Std.Wrappers.Result$E@@1 T@U) (this@@1 T@U) ) (!  (=> (and (or (|Std_mWrappers.Result.Extract#canCall| Std.Wrappers.Result$R@@1 Std.Wrappers.Result$E@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsAlloc DatatypeTypeType this@@1 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@1 Std.Wrappers.Result$E@@1) $Heap) (Std_mWrappers.Result.Success_q this@@1)))) ($IsGoodHeap $Heap)) ($IsAllocBox (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@1 Std.Wrappers.Result$E@@1 this@@1) Std.Wrappers.Result$R@@1 $Heap))
 :qid |wrappersdfy.85:14|
 :skolemid |641|
 :pattern ( ($IsAllocBox (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@1 Std.Wrappers.Result$E@@1 this@@1) Std.Wrappers.Result$R@@1 $Heap))
))))
(assert (forall ((Std.Wrappers.Result$R@@2 T@U) (Std.Wrappers.Result$E@@2 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@2 Std.Wrappers.Result$E@@2)) (or (Std_mWrappers.Result.Success_q d@@3) (Std_mWrappers.Result.Failure_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( (Std_mWrappers.Result.Failure_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@2 Std.Wrappers.Result$E@@2)))
 :pattern ( (Std_mWrappers.Result.Success_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@2 Std.Wrappers.Result$E@@2)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((Std.Wrappers.Result$R@@3 T@U) (Std.Wrappers.Result$E@@3 T@U) ) (! (= (Tclass.Std_mWrappers.Result_0 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@3 Std.Wrappers.Result$E@@3)) Std.Wrappers.Result$R@@3)
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@3 Std.Wrappers.Result$E@@3))
)))
(assert (forall ((Std.Wrappers.Result$R@@4 T@U) (Std.Wrappers.Result$E@@4 T@U) ) (! (= (Tclass.Std_mWrappers.Result_1 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@4 Std.Wrappers.Result$E@@4)) Std.Wrappers.Result$E@@4)
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@4 Std.Wrappers.Result$E@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Std.Wrappers.Result$R@@5 T@U) (Std.Wrappers.Result$E@@5 T@U) (this@@2 T@U) ) (!  (=> (or (|Std_mWrappers.Result.Extract#canCall| Std.Wrappers.Result$R@@5 Std.Wrappers.Result$E@@5 this@@2) (and (< 0 $FunctionContextHeight) (and ($Is DatatypeTypeType this@@2 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@5 Std.Wrappers.Result$E@@5)) (Std_mWrappers.Result.Success_q this@@2)))) (= (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@5 Std.Wrappers.Result$E@@5 this@@2) (Std_mWrappers.Result.value this@@2)))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (Std_mWrappers.Result.Extract Std.Wrappers.Result$R@@5 Std.Wrappers.Result$E@@5 this@@2))
))))
(assert (forall ((Std.Wrappers.Result$R@@6 T@U) (Std.Wrappers.Result$E@@6 T@U) (|a#2#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Std.Wrappers.Result.Success| |a#2#0#0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@6 Std.Wrappers.Result$E@@6)) ($IsBox |a#2#0#0| Std.Wrappers.Result$R@@6))
 :qid |unknown.0:0|
 :skolemid |608|
 :pattern ( ($Is DatatypeTypeType (|#Std.Wrappers.Result.Success| |a#2#0#0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@6 Std.Wrappers.Result$E@@6)))
)))
(assert (forall ((Std.Wrappers.Result$R@@7 T@U) (Std.Wrappers.Result$E@@7 T@U) (|a#8#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Std.Wrappers.Result.Failure| |a#8#0#0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@7 Std.Wrappers.Result$E@@7)) ($IsBox |a#8#0#0| Std.Wrappers.Result$E@@7))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( ($Is DatatypeTypeType (|#Std.Wrappers.Result.Failure| |a#8#0#0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@7 Std.Wrappers.Result$E@@7)))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#Std.Wrappers.Result.Success| |a#0#0#0|)) |##Std.Wrappers.Result.Success|)
 :qid |wrappersdfy.70:39|
 :skolemid |604|
 :pattern ( (|#Std.Wrappers.Result.Success| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (Std_mWrappers.Result.value (|#Std.Wrappers.Result.Success| |a#4#0#0|)) |a#4#0#0|)
 :qid |wrappersdfy.70:39|
 :skolemid |613|
 :pattern ( (|#Std.Wrappers.Result.Success| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#Std.Wrappers.Result.Failure| |a#6#0#0|)) |##Std.Wrappers.Result.Failure|)
 :qid |wrappersdfy.70:59|
 :skolemid |615|
 :pattern ( (|#Std.Wrappers.Result.Failure| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (Std_mWrappers.Result.error (|#Std.Wrappers.Result.Failure| |a#10#0#0|)) |a#10#0#0|)
 :qid |wrappersdfy.70:59|
 :skolemid |624|
 :pattern ( (|#Std.Wrappers.Result.Failure| |a#10#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((Std.Wrappers.Result$R@@8 T@U) (Std.Wrappers.Result$E@@8 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@8 Std.Wrappers.Result$E@@8)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@8 Std.Wrappers.Result$E@@8))))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($IsBox bx (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@8 Std.Wrappers.Result$E@@8)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#Std.Wrappers.Result.Success| |a#5#0#0|)))
 :qid |wrappersdfy.70:39|
 :skolemid |614|
 :pattern ( (|#Std.Wrappers.Result.Success| |a#5#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (BoxRank |a#11#0#0|) (DtRank (|#Std.Wrappers.Result.Failure| |a#11#0#0|)))
 :qid |wrappersdfy.70:59|
 :skolemid |625|
 :pattern ( (|#Std.Wrappers.Result.Failure| |a#11#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |760|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((Std.Wrappers.Result$R@@9 T@U) (Std.Wrappers.Result$E@@9 T@U) ) (!  (and (= (Tag (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@9 Std.Wrappers.Result$E@@9)) Tagclass.Std_mWrappers.Result) (= (TagFamily (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@9 Std.Wrappers.Result$E@@9)) tytagFamily$Result))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@9 Std.Wrappers.Result$E@@9))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((d@@5 T@U) (Std.Wrappers.Result$R@@10 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (Std_mWrappers.Result.Success_q d@@5) (exists ((Std.Wrappers.Result$E@@10 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@10 Std.Wrappers.Result$E@@10) $h)
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@10 Std.Wrappers.Result$E@@10) $h))
)))) ($IsAllocBox (Std_mWrappers.Result.value d@@5) Std.Wrappers.Result$R@@10 $h))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAllocBox (Std_mWrappers.Result.value d@@5) Std.Wrappers.Result$R@@10 $h))
)))
(assert (forall ((d@@6 T@U) (Std.Wrappers.Result$E@@11 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (Std_mWrappers.Result.Failure_q d@@6) (exists ((Std.Wrappers.Result$R@@11 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@11 Std.Wrappers.Result$E@@11) $h@@0)
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@11 Std.Wrappers.Result$E@@11) $h@@0))
)))) ($IsAllocBox (Std_mWrappers.Result.error d@@6) Std.Wrappers.Result$E@@11 $h@@0))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($IsAllocBox (Std_mWrappers.Result.error d@@6) Std.Wrappers.Result$E@@11 $h@@0))
)))
(assert (forall ((Std.Wrappers.Result$R@@12 T@U) (Std.Wrappers.Result$E@@12 T@U) (|a#2#0#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#Std.Wrappers.Result.Success| |a#2#0#0@@0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@12 Std.Wrappers.Result$E@@12) $h@@1) ($IsAllocBox |a#2#0#0@@0| Std.Wrappers.Result$R@@12 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |609|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Std.Wrappers.Result.Success| |a#2#0#0@@0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@12 Std.Wrappers.Result$E@@12) $h@@1))
)))
(assert (forall ((Std.Wrappers.Result$R@@13 T@U) (Std.Wrappers.Result$E@@13 T@U) (|a#8#0#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Std.Wrappers.Result.Failure| |a#8#0#0@@0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@13 Std.Wrappers.Result$E@@13) $h@@2) ($IsAllocBox |a#8#0#0@@0| Std.Wrappers.Result$E@@13 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Std.Wrappers.Result.Failure| |a#8#0#0@@0|) (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@13 Std.Wrappers.Result$E@@13) $h@@2))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Std.Wrappers.Result.Success| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#Std.Wrappers.Result.Success| |a#3#0#0|)))
 :qid |wrappersdfy.70:39|
 :skolemid |612|
 :pattern ( (|#Std.Wrappers.Result.Success| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#Std.Wrappers.Result.Failure| (Lit BoxType |a#9#0#0|)) (Lit DatatypeTypeType (|#Std.Wrappers.Result.Failure| |a#9#0#0|)))
 :qid |wrappersdfy.70:59|
 :skolemid |623|
 :pattern ( (|#Std.Wrappers.Result.Failure| (Lit BoxType |a#9#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Std.Wrappers.Result$R@@14 () T@U)
(declare-fun Std.Wrappers.Result$E@@14 () T@U)
(set-info :boogie-vc-id CheckWellformed$$Std_mWrappers.Result.Extract)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (Std_mWrappers.Result.Success_q this@@3))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (Std_mWrappers.Result.Success_q this@@3)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is DatatypeTypeType this@@3 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@14 Std.Wrappers.Result$E@@14)) ($IsAlloc DatatypeTypeType this@@3 (Tclass.Std_mWrappers.Result Std.Wrappers.Result$R@@14 Std.Wrappers.Result$E@@14) $Heap@@0)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
