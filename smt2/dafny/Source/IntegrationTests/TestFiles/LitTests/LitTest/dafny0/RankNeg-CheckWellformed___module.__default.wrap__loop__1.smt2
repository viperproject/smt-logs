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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.wrap () T@U)
(declare-fun |##_module.wrap.X| () T@U)
(declare-fun |##_module.wrap.WS| () T@U)
(declare-fun tytagFamily$wrap () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.wrap__loop__3 (T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.wrap__loop__3#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._module.wrap () T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.wrap.X| () T@U)
(declare-fun |_module.__default.wrap__loop__1#canCall| (T@U) Bool)
(declare-fun |#_module.wrap.WS| (T@U) T@U)
(declare-fun _module.__default.wrap__loop__1 (T@U T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |_module.__default.wrap__loop__2#canCall| (T@U) Bool)
(declare-fun _module.__default.wrap__loop__2 (T@U T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |_module.wrap#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.wrap.X_q (T@U) Bool)
(declare-fun _module.wrap.WS_q (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.wrap.ds (T@U) T@U)
(declare-fun |$IsA#_module.wrap| (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._module.wrap |##_module.wrap.X| |##_module.wrap.WS| tytagFamily$wrap)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (= (Ctor SeqType) 3) (= (Ctor DatatypeTypeType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__3#canCall| |xs#0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |xs#0| (TSeq Tclass._module.wrap)))) (and (=> (|Seq#Equal| |xs#0| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))) (|_module.__default.wrap__loop__1#canCall| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))))) (= (_module.__default.wrap__loop__3 ($LS $ly) |xs#0|) (ite (|Seq#Equal| |xs#0| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))) (_module.__default.wrap__loop__1 $ly (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))))))) 0))))
 :qid |RankNegdfy.30:16|
 :skolemid |512|
 :pattern ( (_module.__default.wrap__loop__3 ($LS $ly) |xs#0|))
))))
(assert (forall ((|a#9#0#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#9#0#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#9#0#0| i))) (DtRank (|#_module.wrap.WS| |a#9#0#0|))))
 :qid |RankNegdfy.19:24|
 :skolemid |525|
 :pattern ( (|Seq#Index| |a#9#0#0| i) (|#_module.wrap.WS| |a#9#0#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|xs#0@@0| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__1#canCall| |xs#0@@0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |xs#0@@0| (TSeq Tclass._module.wrap)))) (and (=> (|Seq#Equal| |xs#0@@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))) (|_module.__default.wrap__loop__2#canCall| (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))))) (= (_module.__default.wrap__loop__1 ($LS $ly@@0) |xs#0@@0|) (ite (|Seq#Equal| |xs#0@@0| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))) (_module.__default.wrap__loop__2 $ly@@0 (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))) 0))))
 :qid |RankNegdfy.20:16|
 :skolemid |498|
 :pattern ( (_module.__default.wrap__loop__1 ($LS $ly@@0) |xs#0@@0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.wrap.X|) |##_module.wrap.X|))
(assert ($Is DatatypeTypeType |#_module.wrap.X| Tclass._module.wrap))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__3#canCall| (Lit SeqType |xs#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |xs#0@@1| (TSeq Tclass._module.wrap)))) (and (=> (|Seq#Equal| |xs#0@@1| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))) (|_module.__default.wrap__loop__1#canCall| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))))) (= (_module.__default.wrap__loop__3 ($LS $ly@@1) (Lit SeqType |xs#0@@1|)) (ite (|Seq#Equal| |xs#0@@1| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))) (_module.__default.wrap__loop__1 ($LS $ly@@1) (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))))))) 0))))
 :qid |RankNegdfy.30:16|
 :weight 3
 :skolemid |513|
 :pattern ( (_module.__default.wrap__loop__3 ($LS $ly@@1) (Lit SeqType |xs#0@@1|)))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.wrap#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (|_module.wrap#Equal| a b))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__1#canCall| (Lit SeqType |xs#0@@2|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |xs#0@@2| (TSeq Tclass._module.wrap)))) (and (=> (|Seq#Equal| |xs#0@@2| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))) (|_module.__default.wrap__loop__2#canCall| (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))))) (= (_module.__default.wrap__loop__1 ($LS $ly@@2) (Lit SeqType |xs#0@@2|)) (ite (|Seq#Equal| |xs#0@@2| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))) (_module.__default.wrap__loop__2 ($LS $ly@@2) (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))) 0))))
 :qid |RankNegdfy.20:16|
 :weight 3
 :skolemid |499|
 :pattern ( (_module.__default.wrap__loop__1 ($LS $ly@@2) (Lit SeqType |xs#0@@2|)))
))))
(assert (forall ((d T@U) ) (! (= (_module.wrap.X_q d) (= (DatatypeCtorId d) |##_module.wrap.X|))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (_module.wrap.X_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.wrap.WS_q d@@0) (= (DatatypeCtorId d@@0) |##_module.wrap.WS|))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (_module.wrap.WS_q d@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.wrap.X_q d@@1) (= d@@1 |#_module.wrap.X|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (_module.wrap.X_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.wrap.WS_q d@@2) (exists ((|a#5#0#0| T@U) ) (! (= d@@2 (|#_module.wrap.WS| |a#5#0#0|))
 :qid |RankNegdfy.19:24|
 :skolemid |519|
)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (_module.wrap.WS_q d@@2))
)))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.wrap) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.wrap)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsBox bx@@0 Tclass._module.wrap))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@1 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) v@@1)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.wrap.WS_q a@@0) (_module.wrap.WS_q b@@0)) (= (|_module.wrap#Equal| a@@0 b@@0) (|Seq#Equal| (_module.wrap.ds a@@0) (_module.wrap.ds b@@0))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (|_module.wrap#Equal| a@@0 b@@0) (_module.wrap.WS_q a@@0))
 :pattern ( (|_module.wrap#Equal| a@@0 b@@0) (_module.wrap.WS_q b@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__2#canCall| |xs#0@@3|) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@3| Tclass._module.wrap))) (and (and (|$IsA#_module.wrap| |xs#0@@3|) (=> (|_module.wrap#Equal| |xs#0@@3| (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))) (|_module.__default.wrap__loop__3#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))) (= (_module.__default.wrap__loop__2 ($LS $ly@@3) |xs#0@@3|) (ite (|_module.wrap#Equal| |xs#0@@3| (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))) (_module.__default.wrap__loop__3 $ly@@3 (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))) 0))))
 :qid |RankNegdfy.25:16|
 :skolemid |505|
 :pattern ( (_module.__default.wrap__loop__2 ($LS $ly@@3) |xs#0@@3|))
))))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.wrap| d@@3) (or (_module.wrap.X_q d@@3) (_module.wrap.WS_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (|$IsA#_module.wrap| d@@3))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.wrap.WS| |a#6#0#0|) Tclass._module.wrap) ($Is SeqType |a#6#0#0| (TSeq Tclass._module.wrap)))
 :qid |RankNegdfy.19:24|
 :skolemid |521|
 :pattern ( ($Is DatatypeTypeType (|#_module.wrap.WS| |a#6#0#0|) Tclass._module.wrap))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.wrap) (or (_module.wrap.X_q d@@4) (_module.wrap.WS_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (_module.wrap.WS_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.wrap))
 :pattern ( (_module.wrap.X_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.wrap))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.wrap.X_q a@@2) (_module.wrap.X_q b@@2)) (|_module.wrap#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (|_module.wrap#Equal| a@@2 b@@2) (_module.wrap.X_q a@@2))
 :pattern ( (|_module.wrap#Equal| a@@2 b@@2) (_module.wrap.X_q b@@2))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@1) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.wrap.WS| |a#4#0#0|)) |##_module.wrap.WS|)
 :qid |RankNegdfy.19:24|
 :skolemid |517|
 :pattern ( (|#_module.wrap.WS| |a#4#0#0|))
)))
(assert (forall ((|a#8#0#0| T@U) ) (! (= (_module.wrap.ds (|#_module.wrap.WS| |a#8#0#0|)) |a#8#0#0|)
 :qid |RankNegdfy.19:24|
 :skolemid |524|
 :pattern ( (|#_module.wrap.WS| |a#8#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) (|xs#0@@4| T@U) ) (!  (=> (or (|_module.__default.wrap__loop__2#canCall| (Lit DatatypeTypeType |xs#0@@4|)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType |xs#0@@4| Tclass._module.wrap))) (and (and (|$IsA#_module.wrap| (Lit DatatypeTypeType |xs#0@@4|)) (=> (|_module.wrap#Equal| |xs#0@@4| (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))) (|_module.__default.wrap__loop__3#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))) (= (_module.__default.wrap__loop__2 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|)) (ite (|_module.wrap#Equal| |xs#0@@4| (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))) (_module.__default.wrap__loop__3 ($LS $ly@@4) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))) 0))))
 :qid |RankNegdfy.25:16|
 :weight 3
 :skolemid |506|
 :pattern ( (_module.__default.wrap__loop__2 ($LS $ly@@4) (Lit DatatypeTypeType |xs#0@@4|)))
))))
(assert (forall (($ly@@5 T@U) (|xs#0@@5| T@U) ) (! (= (_module.__default.wrap__loop__1 ($LS $ly@@5) |xs#0@@5|) (_module.__default.wrap__loop__1 $ly@@5 |xs#0@@5|))
 :qid |RankNegdfy.20:16|
 :skolemid |493|
 :pattern ( (_module.__default.wrap__loop__1 ($LS $ly@@5) |xs#0@@5|))
)))
(assert (forall (($ly@@6 T@U) (|xs#0@@6| T@U) ) (! (= (_module.__default.wrap__loop__2 ($LS $ly@@6) |xs#0@@6|) (_module.__default.wrap__loop__2 $ly@@6 |xs#0@@6|))
 :qid |RankNegdfy.25:16|
 :skolemid |501|
 :pattern ( (_module.__default.wrap__loop__2 ($LS $ly@@6) |xs#0@@6|))
)))
(assert (forall (($ly@@7 T@U) (|xs#0@@7| T@U) ) (! (= (_module.__default.wrap__loop__3 ($LS $ly@@7) |xs#0@@7|) (_module.__default.wrap__loop__3 $ly@@7 |xs#0@@7|))
 :qid |RankNegdfy.30:16|
 :skolemid |508|
 :pattern ( (_module.__default.wrap__loop__3 ($LS $ly@@7) |xs#0@@7|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (< (|Seq#Rank| |a#10#0#0|) (DtRank (|#_module.wrap.WS| |a#10#0#0|)))
 :qid |RankNegdfy.19:24|
 :skolemid |526|
 :pattern ( (|#_module.wrap.WS| |a#10#0#0|))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |533|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@2 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@4)))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.wrap)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.wrap $h))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.wrap $h))
)))
(assert (= (Tag Tclass._module.wrap) Tagclass._module.wrap))
(assert (= (TagFamily Tclass._module.wrap) tytagFamily$wrap))
(assert (= |#_module.wrap.X| (Lit DatatypeTypeType |#_module.wrap.X|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#7#0#0| T@U) ) (! (= (|#_module.wrap.WS| (Lit SeqType |a#7#0#0|)) (Lit DatatypeTypeType (|#_module.wrap.WS| |a#7#0#0|)))
 :qid |RankNegdfy.19:24|
 :skolemid |523|
 :pattern ( (|#_module.wrap.WS| (Lit SeqType |a#7#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((d@@6 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.wrap.WS_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.wrap $h@@0))) ($IsAlloc SeqType (_module.wrap.ds d@@6) (TSeq Tclass._module.wrap) $h@@0))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc SeqType (_module.wrap.ds d@@6) (TSeq Tclass._module.wrap) $h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((s@@5 T@U) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| s@@5))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))) (|Seq#Rank| s@@5)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@5 i@@3))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0@@8| () T@U)
(declare-fun |##xs#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.wrap__loop__1)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (and (|Seq#Equal| |xs#0@@8| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))))))))) (= |##xs#0@0| (Lit DatatypeTypeType (|#_module.wrap.WS| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|))) ($Box DatatypeTypeType (Lit DatatypeTypeType |#_module.wrap.X|)))))))) (and ($IsAlloc DatatypeTypeType |##xs#0@0| Tclass._module.wrap $Heap) (= (ControlFlow 0 3) (- 0 2)))) (< (DtRank |##xs#0@0|) (|Seq#Rank| |xs#0@@8|)))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 5) 1) anon7_Then_correct) (=> (= (ControlFlow 0 5) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 5) 4) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SeqType |xs#0@@8| (TSeq Tclass._module.wrap))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
