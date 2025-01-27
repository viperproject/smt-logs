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
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M.D () T@U)
(declare-fun |##M.D.D_1| () T@U)
(declare-fun |##M.D.D_2| () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun M.D.D__1_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun M.D.D__2_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#M.D.D_1| (Bool) T@U)
(declare-fun |#M.D.D_2| (Bool) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun M.D.a (T@U) Bool)
(declare-fun M.D.b (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M.D () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass.M.D |##M.D.D_1| |##M.D.D_2| tytagFamily$D)
)
(assert (= (Tag TBool) TagBool))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |623|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |624|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |520|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (M.D.D__1_q d) (= (DatatypeCtorId d) |##M.D.D_1|))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( (M.D.D__1_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M.D.D__2_q d@@0) (= (DatatypeCtorId d@@0) |##M.D.D_2|))
 :qid |unknown.0:0|
 :skolemid |999|
 :pattern ( (M.D.D__2_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |531|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M.D.D__1_q d@@1) (exists ((|a#1#0#0| Bool) ) (! (= d@@1 (|#M.D.D_1| |a#1#0#0|))
 :qid |gitissue1607dfy.4:20|
 :skolemid |992|
)))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( (M.D.D__1_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M.D.D__2_q d@@2) (exists ((|a#6#0#0| Bool) ) (! (= d@@2 (|#M.D.D_2| |a#6#0#0|))
 :qid |gitissue1607dfy.4:35|
 :skolemid |1000|
)))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( (M.D.D__2_q d@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |615|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|a#4#0#0| Bool) ) (! (= (M.D.a (|#M.D.D_1| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue1607dfy.4:20|
 :skolemid |997|
 :pattern ( (|#M.D.D_1| |a#4#0#0|))
)))
(assert (forall ((|a#9#0#0| Bool) ) (! (= (M.D.b (|#M.D.D_2| |a#9#0#0|)) |a#9#0#0|)
 :qid |gitissue1607dfy.4:35|
 :skolemid |1005|
 :pattern ( (|#M.D.D_2| |a#9#0#0|))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.M.D) (or (M.D.D__1_q d@@3) (M.D.D__2_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1008|
 :pattern ( (M.D.D__2_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M.D))
 :pattern ( (M.D.D__1_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.M.D))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |622|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#0#0#0| Bool) ) (! (= (DatatypeCtorId (|#M.D.D_1| |a#0#0#0|)) |##M.D.D_1|)
 :qid |gitissue1607dfy.4:20|
 :skolemid |990|
 :pattern ( (|#M.D.D_1| |a#0#0#0|))
)))
(assert (forall ((|a#5#0#0| Bool) ) (! (= (DatatypeCtorId (|#M.D.D_2| |a#5#0#0|)) |##M.D.D_2|)
 :qid |gitissue1607dfy.4:35|
 :skolemid |998|
 :pattern ( (|#M.D.D_2| |a#5#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |530|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall ((|a#2#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#M.D.D_1| |a#2#0#0|) Tclass.M.D) ($Is boolType (bool_2_U |a#2#0#0|) TBool))
 :qid |gitissue1607dfy.4:20|
 :skolemid |994|
 :pattern ( ($Is DatatypeTypeType (|#M.D.D_1| |a#2#0#0|) Tclass.M.D))
)))
(assert (forall ((|a#7#0#0| Bool) ) (! (= ($Is DatatypeTypeType (|#M.D.D_2| |a#7#0#0|) Tclass.M.D) ($Is boolType (bool_2_U |a#7#0#0|) TBool))
 :qid |gitissue1607dfy.4:35|
 :skolemid |1002|
 :pattern ( ($Is DatatypeTypeType (|#M.D.D_2| |a#7#0#0|) Tclass.M.D))
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
 :skolemid |1013|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (M.D.D__1_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.M.D $h))) ($IsAlloc boolType (bool_2_U (M.D.a d@@4)) TBool $h))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( ($IsAlloc boolType (bool_2_U (M.D.a d@@4)) TBool $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (M.D.D__2_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.M.D $h@@0))) ($IsAlloc boolType (bool_2_U (M.D.b d@@5)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($IsAlloc boolType (bool_2_U (M.D.b d@@5)) TBool $h@@0))
)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@6 Tclass.M.D)) ($IsAlloc DatatypeTypeType d@@6 Tclass.M.D $h@@1))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass.M.D $h@@1))
)))
(assert (= (Tag Tclass.M.D) Tagclass.M.D))
(assert (= (TagFamily Tclass.M.D) tytagFamily$D))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#M.D.D_1| (U_2_bool (Lit boolType |a#3#0#0|))) (Lit DatatypeTypeType (|#M.D.D_1| (U_2_bool |a#3#0#0|))))
 :qid |gitissue1607dfy.4:20|
 :skolemid |996|
 :pattern ( (|#M.D.D_1| (U_2_bool (Lit boolType |a#3#0#0|))))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#M.D.D_2| (U_2_bool (Lit boolType |a#8#0#0|))) (Lit DatatypeTypeType (|#M.D.D_2| (U_2_bool |a#8#0#0|))))
 :qid |gitissue1607dfy.4:35|
 :skolemid |1004|
 :pattern ( (|#M.D.D_2| (U_2_bool (Lit boolType |a#8#0#0|))))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |521|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |568|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |547|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
