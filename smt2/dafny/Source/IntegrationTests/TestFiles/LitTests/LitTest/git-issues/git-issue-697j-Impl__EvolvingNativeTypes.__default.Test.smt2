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
(declare-fun Tagclass.EvolvingNativeTypes.byte () T@U)
(declare-fun Tagclass.EvolvingNativeTypes.Not7Either () T@U)
(declare-fun tytagFamily$byte () T@U)
(declare-fun tytagFamily$Not7Either () T@U)
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
(declare-fun Tclass.EvolvingNativeTypes.byte () T@U)
(declare-fun Tclass.EvolvingNativeTypes.Not7Either () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun EvolvingNativeTypes.__default.R (Int) Bool)
(declare-fun |EvolvingNativeTypes.__default.R#canCall| (Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass.EvolvingNativeTypes.byte Tagclass.EvolvingNativeTypes.Not7Either tytagFamily$byte tytagFamily$Not7Either)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.EvolvingNativeTypes.byte $h)
 :qid |unknown.0:0|
 :skolemid |4602|
 :pattern ( ($IsAlloc intType |x#0| Tclass.EvolvingNativeTypes.byte $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.EvolvingNativeTypes.Not7Either $h@@0)
 :qid |unknown.0:0|
 :skolemid |4604|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.EvolvingNativeTypes.Not7Either $h@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |4122|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |4120|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |4131|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|EvolvingNativeTypes.__default.R#canCall| |x#0@@1|) (< 0 $FunctionContextHeight)) (= (EvolvingNativeTypes.__default.R |x#0@@1|) (ite (= |x#0@@1| (LitInt 5)) true (ite (= |x#0@@1| (LitInt 1)) true (ite (= |x#0@@1| (LitInt 3)) true (ite (= |x#0@@1| (LitInt 7)) true (ite (= |x#0@@1| (LitInt 9)) true false)))))))
 :qid |gitissue697jdfy.291:15|
 :skolemid |4586|
 :pattern ( (EvolvingNativeTypes.__default.R |x#0@@1|))
))))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.EvolvingNativeTypes.Not7Either)  (and (and (and (and (<= (LitInt 0) (U_2_int |x#0@@2|)) (or (not (= (U_2_int |x#0@@2|) 1)) (not true))) (and (< (U_2_int |x#0@@2|) 4294967296) (or (not (= (U_2_int |x#0@@2|) 3)) (not true)))) (and (< (U_2_int |x#0@@2|) 256) (or (not (= (U_2_int |x#0@@2|) 5)) (not true)))) (or (not (= (U_2_int |x#0@@2|) 7)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4603|
 :pattern ( ($Is intType |x#0@@2| Tclass.EvolvingNativeTypes.Not7Either))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |4130|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass.EvolvingNativeTypes.byte)  (and (and (and (<= (LitInt 0) (U_2_int |x#0@@3|)) (or (not (= (U_2_int |x#0@@3|) 1)) (not true))) (and (< (U_2_int |x#0@@3|) 4294967296) (or (not (= (U_2_int |x#0@@3|) 3)) (not true)))) (and (< (U_2_int |x#0@@3|) 256) (or (not (= (U_2_int |x#0@@3|) 5)) (not true)))))
 :qid |unknown.0:0|
 :skolemid |4601|
 :pattern ( ($Is intType |x#0@@3| Tclass.EvolvingNativeTypes.byte))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@4| Int) ) (!  (=> (or (|EvolvingNativeTypes.__default.R#canCall| (LitInt |x#0@@4|)) (< 0 $FunctionContextHeight)) (= (EvolvingNativeTypes.__default.R (LitInt |x#0@@4|)) (ite (= (LitInt |x#0@@4|) (LitInt 5)) true (ite (= (LitInt |x#0@@4|) (LitInt 1)) true (ite (= (LitInt |x#0@@4|) (LitInt 3)) true (ite (= (LitInt |x#0@@4|) (LitInt 7)) true (ite (= (LitInt |x#0@@4|) (LitInt 9)) true false)))))))
 :qid |gitissue697jdfy.291:15|
 :weight 3
 :skolemid |4587|
 :pattern ( (EvolvingNativeTypes.__default.R (LitInt |x#0@@4|)))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
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
 :skolemid |5354|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (= (Tag Tclass.EvolvingNativeTypes.byte) Tagclass.EvolvingNativeTypes.byte))
(assert (= (TagFamily Tclass.EvolvingNativeTypes.byte) tytagFamily$byte))
(assert (= (Tag Tclass.EvolvingNativeTypes.Not7Either) Tagclass.EvolvingNativeTypes.Not7Either))
(assert (= (TagFamily Tclass.EvolvingNativeTypes.Not7Either) tytagFamily$Not7Either))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |4123|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |4121|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |4166|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |4145|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |v#1@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |u#0@0| () Int)
(declare-fun |##x#2@0| () Int)
(declare-fun |u#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |##x#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |u#0| () Int)
(declare-fun |v#0| () Int)
(set-info :boogie-vc-id Impl$$EvolvingNativeTypes.__default.Test)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon6_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (and ($Is intType (int_2_U (LitInt (- 256 1))) Tclass.EvolvingNativeTypes.Not7Either) (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt (- 256 1))))))) (or (and ($Is intType (int_2_U (LitInt (- 4294967296 1))) Tclass.EvolvingNativeTypes.Not7Either) (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt (- 4294967296 1))))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.Not7Either) (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 0)))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.Not7Either) (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 0)))))) (exists ((|$as#v0#0| Int) ) (!  (and (and (and (and (and (<= (LitInt 0) |$as#v0#0|) (or (not (= |$as#v0#0| 1)) (not true))) (and (< |$as#v0#0| 4294967296) (or (not (= |$as#v0#0| 3)) (not true)))) (and (< |$as#v0#0| 256) (or (not (= |$as#v0#0| 5)) (not true)))) (or (not (= |$as#v0#0| 7)) (not true))) (EvolvingNativeTypes.__default.R |$as#v0#0|))
 :qid |gitissue697jdfy.302:9|
 :skolemid |4593|
)))))))))
(let ((anon9_Else_correct  (=> (and (not (and (and (and (and (<= (LitInt 0) |v#1@0|) (or (not (= |v#1@0| 1)) (not true))) (and (< |v#1@0| 4294967296) (or (not (= |v#1@0| 3)) (not true)))) (and (< |v#1@0| 256) (or (not (= |v#1@0| 5)) (not true)))) (or (not (= |v#1@0| 7)) (not true)))) (= (ControlFlow 0 4) 2)) anon6_correct)))
(let ((anon9_Then_correct  (=> (and (and (and (and (and (<= (LitInt 0) |v#1@0|) (or (not (= |v#1@0| 1)) (not true))) (and (< |v#1@0| 4294967296) (or (not (= |v#1@0| 3)) (not true)))) (and (< |v#1@0| 256) (or (not (= |v#1@0| 5)) (not true)))) (or (not (= |v#1@0| 7)) (not true))) (and (and ($IsAlloc intType (int_2_U |v#1@0|) TInt $Heap) (|EvolvingNativeTypes.__default.R#canCall| |v#1@0|)) (and (|EvolvingNativeTypes.__default.R#canCall| |v#1@0|) (= (ControlFlow 0 3) 2)))) anon6_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 5) (- 0 12)) (or (and ($Is intType (int_2_U (LitInt (- 256 1))) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt (- 256 1))) (or (not (= (- 256 1) 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt (- 4294967296 1))) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt (- 4294967296 1))) (or (not (= (- 4294967296 1) 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt 0)) (or (not (= 0 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt 0)) (or (not (= 0 9)) (not true))))))) (exists ((|$as#u0#0| Int) ) (!  (and (and (and (and (<= (LitInt 0) |$as#u0#0|) (or (not (= |$as#u0#0| 1)) (not true))) (and (< |$as#u0#0| 4294967296) (or (not (= |$as#u0#0| 3)) (not true)))) (and (< |$as#u0#0| 256) (or (not (= |$as#u0#0| 5)) (not true)))) (and (EvolvingNativeTypes.__default.R |$as#u0#0|) (or (not (= |$as#u0#0| 9)) (not true))))
 :qid |gitissue697jdfy.300:9|
 :skolemid |4591|
))))))) (=> (or (and ($Is intType (int_2_U (LitInt (- 256 1))) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt (- 256 1))) (or (not (= (- 256 1) 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt (- 4294967296 1))) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt (- 4294967296 1))) (or (not (= (- 4294967296 1) 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt 0)) (or (not (= 0 9)) (not true))))))) (or (and ($Is intType (int_2_U (LitInt 0)) Tclass.EvolvingNativeTypes.byte) (U_2_bool (Lit boolType (bool_2_U  (and (EvolvingNativeTypes.__default.R (LitInt 0)) (or (not (= 0 9)) (not true))))))) (exists ((|$as#u0#0@@0| Int) ) (!  (and (and (and (and (<= (LitInt 0) |$as#u0#0@@0|) (or (not (= |$as#u0#0@@0| 1)) (not true))) (and (< |$as#u0#0@@0| 4294967296) (or (not (= |$as#u0#0@@0| 3)) (not true)))) (and (< |$as#u0#0@@0| 256) (or (not (= |$as#u0#0@@0| 5)) (not true)))) (and (EvolvingNativeTypes.__default.R |$as#u0#0@@0|) (or (not (= |$as#u0#0@@0| 9)) (not true))))
 :qid |gitissue697jdfy.300:9|
 :skolemid |4591|
)))))) (=> (and (and (and (and (and (<= (LitInt 0) |u#0@0|) (or (not (= |u#0@0| 1)) (not true))) (and (< |u#0@0| 4294967296) (or (not (= |u#0@0| 3)) (not true)))) (and (< |u#0@0| 256) (or (not (= |u#0@0| 5)) (not true)))) (and (EvolvingNativeTypes.__default.R |u#0@0|) (or (not (= |u#0@0| 9)) (not true)))) (and (and (= |##x#2@0| (LitInt 9)) ($IsAlloc intType (int_2_U |##x#2@0|) TInt $Heap)) (and (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9))))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (= (LitInt 9) (LitInt 5)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (or (not (= (LitInt 9) (LitInt 5))) (not true)) (=> (= (LitInt 9) (LitInt 1)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (or (not (= (LitInt 9) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 1))) (not true)) (=> (= (LitInt 9) (LitInt 3)) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (or (not (= (LitInt 9) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 3))) (not true)) (=> (= (LitInt 9) (LitInt 7)) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (or (not (= (LitInt 9) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 3))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 7))) (not true)) (=> (= (LitInt 9) (LitInt 9)) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 9)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (=> (or (not (= (LitInt 9) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 3))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 7))) (not true)) (=> (or (not (= (LitInt 9) (LitInt 9))) (not true)) (U_2_bool (Lit boolType (bool_2_U false))))))))))) (=> (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 9))))) (and (=> (= (ControlFlow 0 5) 3) anon9_Then_correct) (=> (= (ControlFlow 0 5) 4) anon9_Else_correct))))))))))))))
(let ((anon3_correct  (=> (and (|EvolvingNativeTypes.__default.R#canCall| |u#1@0|) (= (ControlFlow 0 14) 5)) anon4_correct)))
(let ((anon8_Else_correct  (=> (and (not (EvolvingNativeTypes.__default.R |u#1@0|)) (= (ControlFlow 0 19) 14)) anon3_correct)))
(let ((anon8_Then_correct  (=> (and (EvolvingNativeTypes.__default.R |u#1@0|) (= |newtype$check#0@0| (LitInt 9))) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (<= (LitInt 0) |newtype$check#0@0|) (or (not (= |newtype$check#0@0| 1)) (not true)))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (or (not (= |newtype$check#0@0| 1)) (not true))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (< |newtype$check#0@0| 4294967296) (or (not (= |newtype$check#0@0| 3)) (not true)))) (=> (and (< |newtype$check#0@0| 4294967296) (or (not (= |newtype$check#0@0| 3)) (not true))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (< |newtype$check#0@0| 256) (or (not (= |newtype$check#0@0| 5)) (not true)))) (=> (and (< |newtype$check#0@0| 256) (or (not (= |newtype$check#0@0| 5)) (not true))) (=> (= (ControlFlow 0 15) 14) anon3_correct))))))))))
(let ((anon7_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |u#1@0|) (or (not (= |u#1@0| 1)) (not true))) (and (< |u#1@0| 4294967296) (or (not (= |u#1@0| 3)) (not true)))) (and (< |u#1@0| 256) (or (not (= |u#1@0| 5)) (not true)))) (and ($IsAlloc intType (int_2_U |u#1@0|) TInt $Heap) (|EvolvingNativeTypes.__default.R#canCall| |u#1@0|))) (and (=> (= (ControlFlow 0 20) 15) anon8_Then_correct) (=> (= (ControlFlow 0 20) 19) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (not (and (and (and (<= (LitInt 0) |u#1@0|) (or (not (= |u#1@0| 1)) (not true))) (and (< |u#1@0| 4294967296) (or (not (= |u#1@0| 3)) (not true)))) (and (< |u#1@0| 256) (or (not (= |u#1@0| 5)) (not true))))) (= (ControlFlow 0 13) 5)) anon4_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (= |##x#0@0| (LitInt 7)) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap)) (and (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)))) (and (=> (= (ControlFlow 0 21) (- 0 27)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (= (LitInt 7) (LitInt 5)) (U_2_bool (Lit boolType (bool_2_U true))))))) (and (=> (= (ControlFlow 0 21) (- 0 26)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (or (not (= (LitInt 7) (LitInt 5))) (not true)) (=> (= (LitInt 7) (LitInt 1)) (U_2_bool (Lit boolType (bool_2_U true)))))))) (and (=> (= (ControlFlow 0 21) (- 0 25)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (or (not (= (LitInt 7) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 1))) (not true)) (=> (= (LitInt 7) (LitInt 3)) (U_2_bool (Lit boolType (bool_2_U true))))))))) (and (=> (= (ControlFlow 0 21) (- 0 24)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (or (not (= (LitInt 7) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 3))) (not true)) (=> (= (LitInt 7) (LitInt 7)) (U_2_bool (Lit boolType (bool_2_U true)))))))))) (and (=> (= (ControlFlow 0 21) (- 0 23)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (or (not (= (LitInt 7) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 3))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 7))) (not true)) (=> (= (LitInt 7) (LitInt 9)) (U_2_bool (Lit boolType (bool_2_U true))))))))))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (=> (|EvolvingNativeTypes.__default.R#canCall| (LitInt 7)) (or (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (=> (or (not (= (LitInt 7) (LitInt 5))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 1))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 3))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 7))) (not true)) (=> (or (not (= (LitInt 7) (LitInt 9))) (not true)) (U_2_bool (Lit boolType (bool_2_U false))))))))))) (=> (U_2_bool (Lit boolType (bool_2_U (EvolvingNativeTypes.__default.R (LitInt 7))))) (and (=> (= (ControlFlow 0 21) 20) anon7_Then_correct) (=> (= (ControlFlow 0 21) 13) anon7_Else_correct)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (<= (LitInt 0) |u#0|) (or (not (= |u#0| 1)) (not true))) (and (< |u#0| 4294967296) (or (not (= |u#0| 3)) (not true)))) (and (< |u#0| 256) (or (not (= |u#0| 5)) (not true)))) true) (=> (and (and (and (and (and (and (<= (LitInt 0) |v#0|) (or (not (= |v#0| 1)) (not true))) (and (< |v#0| 4294967296) (or (not (= |v#0| 3)) (not true)))) (and (< |v#0| 256) (or (not (= |v#0| 5)) (not true)))) (or (not (= |v#0| 7)) (not true))) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 28) 21))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
