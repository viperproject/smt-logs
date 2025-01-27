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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.Datatypes.TheType () T@U)
(declare-fun |##Datatypes.TheType.TheType_builder| () T@U)
(declare-fun |##Datatypes.TheType.TheType_copier| () T@U)
(declare-fun tytagFamily$TheType () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Datatypes.TheType.TheType__builder_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Datatypes.TheType.TheType__copier_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#Datatypes.TheType.TheType_builder| (Int) T@U)
(declare-fun |#Datatypes.TheType.TheType_copier| (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Datatypes.TheType () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Datatypes.__default.test (T@U) Bool)
(declare-fun |Datatypes.__default.test#canCall| (T@U) Bool)
(declare-fun Datatypes.TheType.x (T@U) Int)
(declare-fun |Datatypes.__default.f1#canCall| (T@U) Bool)
(declare-fun Datatypes.__default.f1 (T@U) Bool)
(declare-fun Datatypes.TheType.t (T@U) T@U)
(declare-fun DtRank (T@U) Int)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.Datatypes.TheType |##Datatypes.TheType.TheType_builder| |##Datatypes.TheType.TheType_copier| tytagFamily$TheType)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4134|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (Datatypes.TheType.TheType__builder_q d) (= (DatatypeCtorId d) |##Datatypes.TheType.TheType_builder|))
 :qid |unknown.0:0|
 :skolemid |4710|
 :pattern ( (Datatypes.TheType.TheType__builder_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Datatypes.TheType.TheType__copier_q d@@0) (= (DatatypeCtorId d@@0) |##Datatypes.TheType.TheType_copier|))
 :qid |unknown.0:0|
 :skolemid |4718|
 :pattern ( (Datatypes.TheType.TheType__copier_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4145|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (Datatypes.TheType.TheType__builder_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#Datatypes.TheType.TheType_builder| |a#1#0#0|))
 :qid |AutoReqdfy.228:38|
 :skolemid |4711|
)))
 :qid |unknown.0:0|
 :skolemid |4712|
 :pattern ( (Datatypes.TheType.TheType__builder_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Datatypes.TheType.TheType__copier_q d@@2) (exists ((|a#6#0#0| T@U) ) (! (= d@@2 (|#Datatypes.TheType.TheType_copier| |a#6#0#0|))
 :qid |AutoReqdfy.228:62|
 :skolemid |4719|
)))
 :qid |unknown.0:0|
 :skolemid |4720|
 :pattern ( (Datatypes.TheType.TheType__copier_q d@@2))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#7#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#Datatypes.TheType.TheType_copier| |a#7#0#0|) Tclass.Datatypes.TheType) ($Is DatatypeTypeType |a#7#0#0| Tclass.Datatypes.TheType))
 :qid |AutoReqdfy.228:62|
 :skolemid |4721|
 :pattern ( ($Is DatatypeTypeType (|#Datatypes.TheType.TheType_copier| |a#7#0#0|) Tclass.Datatypes.TheType))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0| T@U) ) (!  (=> (or (|Datatypes.__default.test#canCall| |t#0|) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0| Tclass.Datatypes.TheType) (and (Datatypes.TheType.TheType__builder_q |t#0|) (> (Datatypes.TheType.x |t#0|) 3))))) (and (|Datatypes.__default.f1#canCall| |t#0|) (= (Datatypes.__default.test |t#0|) (Datatypes.__default.f1 |t#0|))))
 :qid |AutoReqdfy.233:34|
 :skolemid |4680|
 :pattern ( (Datatypes.__default.test |t#0|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass.Datatypes.TheType) (or (Datatypes.TheType.TheType__builder_q d@@3) (Datatypes.TheType.TheType__copier_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |4728|
 :pattern ( (Datatypes.TheType.TheType__copier_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.Datatypes.TheType))
 :pattern ( (Datatypes.TheType.TheType__builder_q d@@3) ($Is DatatypeTypeType d@@3 Tclass.Datatypes.TheType))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#Datatypes.TheType.TheType_builder| |a#0#0#0|)) |##Datatypes.TheType.TheType_builder|)
 :qid |AutoReqdfy.228:38|
 :skolemid |4709|
 :pattern ( (|#Datatypes.TheType.TheType_builder| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (Datatypes.TheType.x (|#Datatypes.TheType.TheType_builder| |a#4#0#0|)) |a#4#0#0|)
 :qid |AutoReqdfy.228:38|
 :skolemid |4716|
 :pattern ( (|#Datatypes.TheType.TheType_builder| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (= (DatatypeCtorId (|#Datatypes.TheType.TheType_copier| |a#5#0#0|)) |##Datatypes.TheType.TheType_copier|)
 :qid |AutoReqdfy.228:62|
 :skolemid |4717|
 :pattern ( (|#Datatypes.TheType.TheType_copier| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (Datatypes.TheType.t (|#Datatypes.TheType.TheType_copier| |a#9#0#0|)) |a#9#0#0|)
 :qid |AutoReqdfy.228:62|
 :skolemid |4724|
 :pattern ( (|#Datatypes.TheType.TheType_copier| |a#9#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4144|
 :pattern ( ($Box T@@1 x@@4))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#Datatypes.TheType.TheType_builder| |a#2#0#0|) Tclass.Datatypes.TheType) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |AutoReqdfy.228:38|
 :skolemid |4713|
 :pattern ( ($Is DatatypeTypeType (|#Datatypes.TheType.TheType_builder| |a#2#0#0|) Tclass.Datatypes.TheType))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (< (DtRank |a#10#0#0|) (DtRank (|#Datatypes.TheType.TheType_copier| |a#10#0#0|)))
 :qid |AutoReqdfy.228:62|
 :skolemid |4725|
 :pattern ( (|#Datatypes.TheType.TheType_copier| |a#10#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |7924|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@4 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (Datatypes.TheType.TheType__builder_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.Datatypes.TheType $h))) ($IsAlloc intType (int_2_U (Datatypes.TheType.x d@@4)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |4714|
 :pattern ( ($IsAlloc intType (int_2_U (Datatypes.TheType.x d@@4)) TInt $h))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass.Datatypes.TheType)) ($IsAlloc DatatypeTypeType d@@5 Tclass.Datatypes.TheType $h@@0))
 :qid |unknown.0:0|
 :skolemid |4726|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass.Datatypes.TheType $h@@0))
)))
(assert (= (Tag Tclass.Datatypes.TheType) Tagclass.Datatypes.TheType))
(assert (= (TagFamily Tclass.Datatypes.TheType) tytagFamily$TheType))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (Datatypes.TheType.TheType__copier_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass.Datatypes.TheType $h@@1))) ($IsAlloc DatatypeTypeType (Datatypes.TheType.t d@@6) Tclass.Datatypes.TheType $h@@1))
 :qid |unknown.0:0|
 :skolemid |4722|
 :pattern ( ($IsAlloc DatatypeTypeType (Datatypes.TheType.t d@@6) Tclass.Datatypes.TheType $h@@1))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (|#Datatypes.TheType.TheType_copier| (Lit DatatypeTypeType |a#8#0#0|)) (Lit DatatypeTypeType (|#Datatypes.TheType.TheType_copier| |a#8#0#0|)))
 :qid |AutoReqdfy.228:62|
 :skolemid |4723|
 :pattern ( (|#Datatypes.TheType.TheType_copier| (Lit DatatypeTypeType |a#8#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4135|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4180|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |4182|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|t#0@@0| T@U) ) (!  (=> (or (|Datatypes.__default.test#canCall| (Lit DatatypeTypeType |t#0@@0|)) (and (< 2 $FunctionContextHeight) (and ($Is DatatypeTypeType |t#0@@0| Tclass.Datatypes.TheType) (U_2_bool (Lit boolType (bool_2_U  (and (Datatypes.TheType.TheType__builder_q (Lit DatatypeTypeType |t#0@@0|)) (> (Datatypes.TheType.x (Lit DatatypeTypeType |t#0@@0|)) 3)))))))) (and (|Datatypes.__default.f1#canCall| (Lit DatatypeTypeType |t#0@@0|)) (= (Datatypes.__default.test (Lit DatatypeTypeType |t#0@@0|)) (Datatypes.__default.f1 (Lit DatatypeTypeType |t#0@@0|)))))
 :qid |AutoReqdfy.233:34|
 :weight 3
 :skolemid |4681|
 :pattern ( (Datatypes.__default.test (Lit DatatypeTypeType |t#0@@0|)))
))))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4159|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |4161|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |t#0@@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Datatypes.__default.test)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon8_Else_correct  (=> ($IsAlloc DatatypeTypeType |t#0@@1| Tclass.Datatypes.TheType $Heap) (and (=> (= (ControlFlow 0 3) (- 0 4)) (Datatypes.TheType.TheType__builder_q |t#0@@1|)) (=> (= (ControlFlow 0 3) (- 0 2)) (> (Datatypes.TheType.x |t#0@@1|) 3))))))
(let ((anon8_Then_correct true))
(let ((anon3_correct  (=> (and (Datatypes.TheType.TheType__builder_q |t#0@@1|) (> (Datatypes.TheType.x |t#0@@1|) 3)) (and (=> (= (ControlFlow 0 5) 1) anon8_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (not (Datatypes.TheType.TheType__builder_q |t#0@@1|)) (= (ControlFlow 0 8) 5)) anon3_correct)))
(let ((anon7_Then_correct  (=> (Datatypes.TheType.TheType__builder_q |t#0@@1|) (and (=> (= (ControlFlow 0 6) (- 0 7)) (Datatypes.TheType.TheType__builder_q |t#0@@1|)) (=> (Datatypes.TheType.TheType__builder_q |t#0@@1|) (=> (= (ControlFlow 0 6) 5) anon3_correct))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 9) 6) anon7_Then_correct) (=> (= (ControlFlow 0 9) 8) anon7_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |t#0@@1| Tclass.Datatypes.TheType)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 9))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
