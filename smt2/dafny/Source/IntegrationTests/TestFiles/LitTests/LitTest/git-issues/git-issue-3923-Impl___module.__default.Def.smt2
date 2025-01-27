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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Fruit () T@U)
(declare-fun |##_module.Fruit.Apple| () T@U)
(declare-fun |##_module.Fruit.Pear| () T@U)
(declare-fun tytagFamily$Fruit () T@U)
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
(declare-fun _module.Fruit.Apple_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Fruit.Pear_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Fruit.Apple| (Int) T@U)
(declare-fun |#_module.Fruit.Pear| (Int) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |$IsA#_module.Fruit| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Fruit () T@U)
(declare-fun _module.Fruit.u (T@U) Int)
(declare-fun _module.Fruit.t (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._module.Fruit |##_module.Fruit.Apple| |##_module.Fruit.Pear| tytagFamily$Fruit)
)
(assert (= (Tag TInt) TagInt))
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((d T@U) ) (! (= (_module.Fruit.Apple_q d) (= (DatatypeCtorId d) |##_module.Fruit.Apple|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.Fruit.Apple_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Fruit.Pear_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Fruit.Pear|))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( (_module.Fruit.Pear_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Fruit.Apple_q d@@1) (exists ((|a#1#0#0| Int) ) (! (= d@@1 (|#_module.Fruit.Apple| |a#1#0#0|))
 :qid |gitissue3923dfy.7:24|
 :skolemid |517|
)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (_module.Fruit.Apple_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Fruit.Pear_q d@@2) (exists ((|a#6#0#0| Int) ) (! (= d@@2 (|#_module.Fruit.Pear| |a#6#0#0|))
 :qid |gitissue3923dfy.7:39|
 :skolemid |525|
)))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.Fruit.Pear_q d@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.Fruit| d@@3) (or (_module.Fruit.Apple_q d@@3) (_module.Fruit.Pear_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (|$IsA#_module.Fruit| d@@3))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.Fruit) (or (_module.Fruit.Apple_q d@@4) (_module.Fruit.Pear_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (_module.Fruit.Pear_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Fruit))
 :pattern ( (_module.Fruit.Apple_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.Fruit))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#0#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Fruit.Apple| |a#0#0#0|)) |##_module.Fruit.Apple|)
 :qid |gitissue3923dfy.7:24|
 :skolemid |515|
 :pattern ( (|#_module.Fruit.Apple| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| Int) ) (! (= (_module.Fruit.u (|#_module.Fruit.Apple| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue3923dfy.7:24|
 :skolemid |522|
 :pattern ( (|#_module.Fruit.Apple| |a#4#0#0|))
)))
(assert (forall ((|a#5#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Fruit.Pear| |a#5#0#0|)) |##_module.Fruit.Pear|)
 :qid |gitissue3923dfy.7:39|
 :skolemid |523|
 :pattern ( (|#_module.Fruit.Pear| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (_module.Fruit.t (|#_module.Fruit.Pear| |a#9#0#0|)) |a#9#0#0|)
 :qid |gitissue3923dfy.7:39|
 :skolemid |530|
 :pattern ( (|#_module.Fruit.Pear| |a#9#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall ((|a#2#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Fruit.Apple| |a#2#0#0|) Tclass._module.Fruit) ($Is intType (int_2_U |a#2#0#0|) TInt))
 :qid |gitissue3923dfy.7:24|
 :skolemid |519|
 :pattern ( ($Is DatatypeTypeType (|#_module.Fruit.Apple| |a#2#0#0|) Tclass._module.Fruit))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Fruit.Pear| |a#7#0#0|) Tclass._module.Fruit) ($Is intType (int_2_U |a#7#0#0|) TInt))
 :qid |gitissue3923dfy.7:39|
 :skolemid |527|
 :pattern ( ($Is DatatypeTypeType (|#_module.Fruit.Pear| |a#7#0#0|) Tclass._module.Fruit))
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
 :skolemid |537|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Fruit.Apple_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Fruit $h))) ($IsAlloc intType (int_2_U (_module.Fruit.u d@@5)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Fruit.u d@@5)) TInt $h))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Fruit.Pear_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Fruit $h@@0))) ($IsAlloc intType (int_2_U (_module.Fruit.t d@@6)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Fruit.t d@@6)) TInt $h@@0))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@7 Tclass._module.Fruit)) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Fruit $h@@1))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Fruit $h@@1))
)))
(assert (= (Tag Tclass._module.Fruit) Tagclass._module.Fruit))
(assert (= (TagFamily Tclass._module.Fruit) tytagFamily$Fruit))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$_module.__default.Def)
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
 (=> (= (ControlFlow 0 0) 6) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
