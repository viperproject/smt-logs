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
(declare-fun Tagclass.MatchExpressionsInArbitraryPositions.AList () T@U)
(declare-fun |##MatchExpressionsInArbitraryPositions.AList.ANil| () T@U)
(declare-fun |##MatchExpressionsInArbitraryPositions.AList.ACons| () T@U)
(declare-fun |##MatchExpressionsInArbitraryPositions.AList.Appendix| () T@U)
(declare-fun tytagFamily$AList () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#MatchExpressionsInArbitraryPositions.AList.ANil| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.MatchExpressionsInArbitraryPositions.AList (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#MatchExpressionsInArbitraryPositions.AList.ACons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.AList.ANil_q (T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.AList.ACons_q (T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.AList.Appendix_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#MatchExpressionsInArbitraryPositions.AList.Appendix| (Bool) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MatchExpressionsInArbitraryPositions.AList.b (T@U) Bool)
(declare-fun MatchExpressionsInArbitraryPositions.AList.head (T@U) T@U)
(declare-fun MatchExpressionsInArbitraryPositions.AList.tail (T@U) T@U)
(declare-fun Tclass.MatchExpressionsInArbitraryPositions.AList_0 (T@U) T@U)
(declare-fun |$IsA#MatchExpressionsInArbitraryPositions.AList| (T@U) Bool)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass.MatchExpressionsInArbitraryPositions.AList |##MatchExpressionsInArbitraryPositions.AList.ANil| |##MatchExpressionsInArbitraryPositions.AList.ACons| |##MatchExpressionsInArbitraryPositions.AList.Appendix| tytagFamily$AList)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DatatypeCtorId |#MatchExpressionsInArbitraryPositions.AList.ANil|) |##MatchExpressionsInArbitraryPositions.AList.ANil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#MatchExpressionsInArbitraryPositions.AList.ANil| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T) $h))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( ($IsAlloc DatatypeTypeType |#MatchExpressionsInArbitraryPositions.AList.ANil| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T) $h))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@0 T@U) ) (! ($Is DatatypeTypeType |#MatchExpressionsInArbitraryPositions.AList.ANil| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@0))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( ($Is DatatypeTypeType |#MatchExpressionsInArbitraryPositions.AList.ANil| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@0)))
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
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@1 T@U) (|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#18#0#0| |a#18#1#0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@1))  (and ($IsBox |a#18#0#0| MatchExpressionsInArbitraryPositions.AList$T@@1) ($Is DatatypeTypeType |a#18#1#0| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@1))))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#18#0#0| |a#18#1#0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (MatchExpressionsInArbitraryPositions.AList.ANil_q d) (= (DatatypeCtorId d) |##MatchExpressionsInArbitraryPositions.AList.ANil|))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ANil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@0) (= (DatatypeCtorId d@@0) |##MatchExpressionsInArbitraryPositions.AList.ACons|))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@1) (= (DatatypeCtorId d@@1) |##MatchExpressionsInArbitraryPositions.AList.Appendix|))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@2) (exists ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (= d@@2 (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#17#0#0| |a#17#1#0|))
 :qid |Datatypesdfy.292:36|
 :skolemid |639|
)))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (MatchExpressionsInArbitraryPositions.AList.ANil_q d@@3) (= d@@3 |#MatchExpressionsInArbitraryPositions.AList.ANil|))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ANil_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@4) (exists ((|a#25#0#0| Bool) ) (! (= d@@4 (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#25#0#0|))
 :qid |Datatypesdfy.292:69|
 :skolemid |652|
)))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@2 T@U) ) (!  (and (= (Tag (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@2)) Tagclass.MatchExpressionsInArbitraryPositions.AList) (= (TagFamily (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@2)) tytagFamily$AList))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@2))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@5) (exists ((MatchExpressionsInArbitraryPositions.AList$T@@3 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@3) $h@@0)
 :qid |unknown.0:0|
 :skolemid |656|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@3) $h@@0))
)))) ($IsAlloc boolType (bool_2_U (MatchExpressionsInArbitraryPositions.AList.b d@@5)) TBool $h@@0))
 :qid |unknown.0:0|
 :skolemid |657|
 :pattern ( ($IsAlloc boolType (bool_2_U (MatchExpressionsInArbitraryPositions.AList.b d@@5)) TBool $h@@0))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@4 T@U) (|a#26#0#0| Bool) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#26#0#0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@4) $h@@1) ($IsAlloc boolType (bool_2_U |a#26#0#0|) TBool $h@@1)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#26#0#0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@4) $h@@1))
)))
(assert (forall ((|a#28#0#0| Bool) ) (! (= (MatchExpressionsInArbitraryPositions.AList.b (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#28#0#0|)) |a#28#0#0|)
 :qid |Datatypesdfy.292:69|
 :skolemid |659|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#28#0#0|))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#16#0#0| |a#16#1#0|)) |##MatchExpressionsInArbitraryPositions.AList.ACons|)
 :qid |Datatypesdfy.292:36|
 :skolemid |637|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) ) (! (= (MatchExpressionsInArbitraryPositions.AList.head (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |Datatypesdfy.292:36|
 :skolemid |646|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= (MatchExpressionsInArbitraryPositions.AList.tail (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#22#0#0| |a#22#1#0|)) |a#22#1#0|)
 :qid |Datatypesdfy.292:36|
 :skolemid |648|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@5 T@U) ) (! (= (Tclass.MatchExpressionsInArbitraryPositions.AList_0 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@5)) MatchExpressionsInArbitraryPositions.AList$T@@5)
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@5))
)))
(assert (forall ((|a#24#0#0| Bool) ) (! (= (DatatypeCtorId (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#24#0#0|)) |##MatchExpressionsInArbitraryPositions.AList.Appendix|)
 :qid |Datatypesdfy.292:69|
 :skolemid |650|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#24#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#MatchExpressionsInArbitraryPositions.AList| d@@6) (or (or (MatchExpressionsInArbitraryPositions.AList.ANil_q d@@6) (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@6)) (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( (|$IsA#MatchExpressionsInArbitraryPositions.AList| d@@6))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@6 T@U) (|a#26#0#0@@0| Bool) ) (! (= ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#26#0#0@@0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@6)) ($Is boolType (bool_2_U |a#26#0#0@@0|) TBool))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($Is DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#26#0#0@@0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@6)))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) ) (! (< (BoxRank |a#21#0#0|) (DtRank (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#21#0#0| |a#21#1#0|)))
 :qid |Datatypesdfy.292:36|
 :skolemid |647|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (< (DtRank |a#23#1#0|) (DtRank (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#23#0#0| |a#23#1#0|)))
 :qid |Datatypesdfy.292:36|
 :skolemid |649|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#23#0#0| |a#23#1#0|))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@7 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@7)) (or (or (MatchExpressionsInArbitraryPositions.AList.ANil_q d@@7) (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@7)) (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |661|
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.Appendix_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@7)))
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@7)))
 :pattern ( (MatchExpressionsInArbitraryPositions.AList.ANil_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@7)))
)))
(assert (forall ((d@@8 T@U) (MatchExpressionsInArbitraryPositions.AList$T@@8 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@8) $h@@2))) ($IsAllocBox (MatchExpressionsInArbitraryPositions.AList.head d@@8) MatchExpressionsInArbitraryPositions.AList$T@@8 $h@@2))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAllocBox (MatchExpressionsInArbitraryPositions.AList.head d@@8) MatchExpressionsInArbitraryPositions.AList$T@@8 $h@@2))
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
 :skolemid |2848|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@9 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@9)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@9))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsBox bx@@1 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@9)))
)))
(assert (forall ((d@@10 T@U) (MatchExpressionsInArbitraryPositions.AList$T@@10 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (MatchExpressionsInArbitraryPositions.AList.ACons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@10) $h@@3))) ($IsAlloc DatatypeTypeType (MatchExpressionsInArbitraryPositions.AList.tail d@@10) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@10) $h@@3))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($IsAlloc DatatypeTypeType (MatchExpressionsInArbitraryPositions.AList.tail d@@10) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@10) $h@@3))
)))
(assert (= |#MatchExpressionsInArbitraryPositions.AList.ANil| (Lit DatatypeTypeType |#MatchExpressionsInArbitraryPositions.AList.ANil|)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| (Lit BoxType |a#19#0#0|) (Lit DatatypeTypeType |a#19#1#0|)) (Lit DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#19#0#0| |a#19#1#0|)))
 :qid |Datatypesdfy.292:36|
 :skolemid |645|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| (Lit BoxType |a#19#0#0|) (Lit DatatypeTypeType |a#19#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#27#0#0| T@U) ) (! (= (|#MatchExpressionsInArbitraryPositions.AList.Appendix| (U_2_bool (Lit boolType |a#27#0#0|))) (Lit DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.Appendix| (U_2_bool |a#27#0#0|))))
 :qid |Datatypesdfy.292:69|
 :skolemid |658|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.Appendix| (U_2_bool (Lit boolType |a#27#0#0|))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((MatchExpressionsInArbitraryPositions.AList$T@@11 T@U) (|a#18#0#0@@0| T@U) (|a#18#1#0@@0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@11) $h@@4)  (and ($IsAllocBox |a#18#0#0@@0| MatchExpressionsInArbitraryPositions.AList$T@@11 $h@@4) ($IsAlloc DatatypeTypeType |a#18#1#0@@0| (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@11) $h@@4))))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MatchExpressionsInArbitraryPositions.AList.ACons| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.MatchExpressionsInArbitraryPositions.AList MatchExpressionsInArbitraryPositions.AList$T@@11) $h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |xs#0| () T@U)
(declare-fun |a#0_0#0#0@0| () Bool)
(declare-fun |_mcc#0#0_0| () Int)
(declare-fun |_mcc#1#0_0| () T@U)
(declare-fun |tl#1_1@0| () T@U)
(declare-fun |a#1_1#0#0@0| () Bool)
(declare-fun |_mcc#3#1_0| () Int)
(declare-fun |_mcc#4#1_0| () T@U)
(declare-fun |y#0@2| () Int)
(declare-fun |y#0@1| () Int)
(declare-fun |let#0_0#0#0| () Int)
(declare-fun |x#Z#0_0@0| () Int)
(declare-fun |b#1_0@0| () Bool)
(declare-fun |y#0@0| () Int)
(declare-fun |let#1_0#0#0| () Int)
(declare-fun |w#Z#1_0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$MatchExpressionsInArbitraryPositions.__default.M)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon17_Else_correct true))
(let ((anon17_Then_correct  (=> (and (= |xs#0| (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#0_0#0#0@0|)) (= (ControlFlow 0 17) (- 0 16))) false)))
(let ((anon16_Else_correct  (=> (or (not (= |xs#0| (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U |_mcc#0#0_0|)) |_mcc#1#0_0|))) (not true)) (and (=> (= (ControlFlow 0 19) 17) anon17_Then_correct) (=> (= (ControlFlow 0 19) 18) anon17_Else_correct)))))
(let ((anon21_Else_correct true))
(let ((anon21_Then_correct  (=> (and (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_1@0|) |#MatchExpressionsInArbitraryPositions.AList.ANil|) (= (ControlFlow 0 10) (- 0 9))) false)))
(let ((anon20_Else_correct  (=> (or (not (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_1@0|) (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#1_1#0#0@0|))) (not true)) (and (=> (= (ControlFlow 0 12) 10) anon21_Then_correct) (=> (= (ControlFlow 0 12) 11) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_1@0|) (|#MatchExpressionsInArbitraryPositions.AList.Appendix| |a#1_1#0#0@0|)) (= (ControlFlow 0 8) (- 0 7))) false)))
(let ((anon19_Else_correct  (=> (or (not (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_1@0|) (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U |_mcc#3#1_0|)) |_mcc#4#1_0|))) (not true)) (and (=> (= (ControlFlow 0 13) 8) anon20_Then_correct) (=> (= (ControlFlow 0 13) 12) anon20_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (<= (LitInt 0) |y#0@2|))))
(let ((anon6_correct  (=> (= |y#0@1| (ite (MatchExpressionsInArbitraryPositions.AList.ANil_q |xs#0|) 0 (let ((|x#0_0| (U_2_int ($Unbox intType (MatchExpressionsInArbitraryPositions.AList.head |xs#0|)))))
|x#0_0|))) (=> (and (= |y#0@2| |y#0@1|) (= (ControlFlow 0 20) 2)) GeneratedUnifiedExit_correct))))
(let ((anon16_Then_correct  (=> (and (= |xs#0| (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U |_mcc#0#0_0|)) |_mcc#1#0_0|)) ($Is DatatypeTypeType |_mcc#1#0_0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt))) (=> (and (and (= |let#0_0#0#0| |_mcc#0#0_0|) ($Is intType (int_2_U |let#0_0#0#0|) TInt)) (and (= |x#Z#0_0@0| |let#0_0#0#0|) (= (ControlFlow 0 22) 20))) anon6_correct))))
(let ((anon15_Else_correct  (=> (or (not (= |xs#0| |#MatchExpressionsInArbitraryPositions.AList.ANil|)) (not true)) (and (=> (= (ControlFlow 0 23) 22) anon16_Then_correct) (=> (= (ControlFlow 0 23) 19) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (and (= |xs#0| |#MatchExpressionsInArbitraryPositions.AList.ANil|) (= (ControlFlow 0 21) 20)) anon6_correct)))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 24) 21) anon15_Then_correct) (=> (= (ControlFlow 0 24) 23) anon15_Else_correct))))
(let ((anon13_correct  (=> (= |b#1_0@0| (forall ((|tl#1_0| T@U) ) (!  (=> ($Is DatatypeTypeType |tl#1_0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt)) (let ((|w#1_0| (U_2_int ($Unbox intType (MatchExpressionsInArbitraryPositions.AList.head (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_0|))))))
(<= |w#1_0| (LitInt 16))))
 :qid |Datatypesdfy.303:29|
 :skolemid |587|
 :pattern ( (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U 8)) |tl#1_0|))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b#1_0@0|) (=> |b#1_0@0| (=> (and (= |y#0@2| |y#0@0|) (= (ControlFlow 0 3) 2)) GeneratedUnifiedExit_correct))))))
(let ((anon19_Then_correct  (=> (and (= (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U (LitInt 8))) |tl#1_1@0|) (|#MatchExpressionsInArbitraryPositions.AList.ACons| ($Box intType (int_2_U |_mcc#3#1_0|)) |_mcc#4#1_0|)) ($Is DatatypeTypeType |_mcc#4#1_0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt))) (=> (and (and (= |let#1_0#0#0| |_mcc#3#1_0|) ($Is intType (int_2_U |let#1_0#0#0|) TInt)) (and (= |w#Z#1_0@0| |let#1_0#0#0|) (= (ControlFlow 0 6) 3))) anon13_correct))))
(let ((anon18_Then_correct  (=> (and ($Is DatatypeTypeType |tl#1_1@0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt)) ($IsAlloc DatatypeTypeType |tl#1_1@0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt) $Heap)) (and (=> (= (ControlFlow 0 14) 6) anon19_Then_correct) (=> (= (ControlFlow 0 14) 13) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |tl#1_1@0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt)) ($IsAlloc DatatypeTypeType |tl#1_1@0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt) $Heap))) (= (ControlFlow 0 5) 3)) anon13_correct)))
(let ((anon14_Else_correct  (=> (= |y#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 15) 14) anon18_Then_correct) (=> (= (ControlFlow 0 15) 5) anon18_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 25) 24) anon14_Then_correct) (=> (= (ControlFlow 0 25) 15) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |xs#0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt)) ($IsAlloc DatatypeTypeType |xs#0| (Tclass.MatchExpressionsInArbitraryPositions.AList TInt) $Heap)) (|$IsA#MatchExpressionsInArbitraryPositions.AList| |xs#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 25))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 16))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
