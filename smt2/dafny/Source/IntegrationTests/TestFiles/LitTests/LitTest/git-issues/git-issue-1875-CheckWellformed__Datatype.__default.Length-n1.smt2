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
(declare-fun Tagclass.Datatype.List () T@U)
(declare-fun Tagclass.Datatype.Box () T@U)
(declare-fun |##Datatype.Box_.Box| () T@U)
(declare-fun Tagclass.Datatype.Box__ () T@U)
(declare-fun |##Datatype.List.Nil| () T@U)
(declare-fun |##Datatype.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Box () T@U)
(declare-fun tytagFamily$Box_ () T@U)
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
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#Datatype.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass.Datatype.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.Datatype.Box (T@U) T@U)
(declare-fun Tclass.Datatype.Box__ (T@U) T@U)
(declare-fun Datatype.__default.Length (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Datatype.List.Nil| () T@U)
(declare-fun Datatype.Box__.Box_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Datatype.List.Nil_q (T@U) Bool)
(declare-fun Datatype.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#Datatype.Box_.Box| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Datatype.__default.Length#canCall| (T@U T@U) Bool)
(declare-fun Datatype.List._h0 (T@U) T@U)
(declare-fun Datatype.Box__.t (T@U) T@U)
(declare-fun Datatype.List.t (T@U) T@U)
(declare-fun Tclass.Datatype.List_0 (T@U) T@U)
(declare-fun Tclass.Datatype.Box_0 (T@U) T@U)
(declare-fun Tclass.Datatype.Box___0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.Datatype.List Tagclass.Datatype.Box |##Datatype.Box_.Box| Tagclass.Datatype.Box__ |##Datatype.List.Nil| |##Datatype.List.Cons| tytagFamily$List tytagFamily$Box tytagFamily$Box_)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((Datatype.List$T T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#Datatype.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Datatype.List Datatype.List$T) $h)  (and ($IsAllocBox |a#6#0#0| Datatype.List$T $h) ($IsAlloc DatatypeTypeType |a#6#1#0| (Tclass.Datatype.Box (Tclass.Datatype.List Datatype.List$T)) $h))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Datatype.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass.Datatype.List Datatype.List$T) $h))
)))
(assert (forall ((Datatype.Box$T T@U) (|b#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc DatatypeTypeType |b#0| (Tclass.Datatype.Box Datatype.Box$T) $h@@0) ($IsAlloc DatatypeTypeType |b#0| (Tclass.Datatype.Box__ Datatype.Box$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsAlloc DatatypeTypeType |b#0| (Tclass.Datatype.Box Datatype.Box$T) $h@@0))
)))
(assert (forall ((Datatype._default.Length$T T@U) ($ly T@U) (|l#0| T@U) ) (! (= (Datatype.__default.Length Datatype._default.Length$T ($LS $ly) |l#0|) (Datatype.__default.Length Datatype._default.Length$T $ly |l#0|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Datatype.__default.Length Datatype._default.Length$T ($LS $ly) |l#0|))
)))
(assert (= (DatatypeCtorId |#Datatype.List.Nil|) |##Datatype.List.Nil|))
(assert (forall ((Datatype.Box_$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.Datatype.Box__ Datatype.Box_$T)) (Datatype.Box__.Box_q d))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (Datatype.Box__.Box_q d) ($Is DatatypeTypeType d (Tclass.Datatype.Box__ Datatype.Box_$T)))
)))
(assert (forall ((Datatype.List$T@@0 T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#Datatype.List.Nil| (Tclass.Datatype.List Datatype.List$T@@0) $h@@1))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc DatatypeTypeType |#Datatype.List.Nil| (Tclass.Datatype.List Datatype.List$T@@0) $h@@1))
)))
(assert (forall ((Datatype.List$T@@1 T@U) ) (! ($Is DatatypeTypeType |#Datatype.List.Nil| (Tclass.Datatype.List Datatype.List$T@@1))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is DatatypeTypeType |#Datatype.List.Nil| (Tclass.Datatype.List Datatype.List$T@@1)))
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
(assert (forall ((d@@0 T@U) ) (! (= (Datatype.Box__.Box_q d@@0) (= (DatatypeCtorId d@@0) |##Datatype.Box_.Box|))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( (Datatype.Box__.Box_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Datatype.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##Datatype.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (Datatype.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Datatype.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##Datatype.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (Datatype.List.Cons_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Datatype.List.Cons_q d@@3) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@3 (|#Datatype.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |gitissue1875dfy.11:33|
 :skolemid |517|
)))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( (Datatype.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Datatype.List.Nil_q d@@4) (= d@@4 |#Datatype.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( (Datatype.List.Nil_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (Datatype.Box__.Box_q d@@5) (exists ((|a#1#0#0| T@U) ) (! (= d@@5 (|#Datatype.Box_.Box| |a#1#0#0|))
 :qid |gitissue1875dfy.8:26|
 :skolemid |494|
)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Datatype.Box__.Box_q d@@5))
)))
(assert (forall ((Datatype.List$T@@2 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Datatype.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Datatype.List Datatype.List$T@@2))  (and ($IsBox |a#6#0#0@@0| Datatype.List$T@@2) ($Is DatatypeTypeType |a#6#1#0@@0| (Tclass.Datatype.Box (Tclass.Datatype.List Datatype.List$T@@2)))))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($Is DatatypeTypeType (|#Datatype.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass.Datatype.List Datatype.List$T@@2)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((Datatype.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass.Datatype.List Datatype.List$T@@3)) Tagclass.Datatype.List) (= (TagFamily (Tclass.Datatype.List Datatype.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass.Datatype.List Datatype.List$T@@3))
)))
(assert (forall ((Datatype.Box$T@@0 T@U) ) (!  (and (= (Tag (Tclass.Datatype.Box Datatype.Box$T@@0)) Tagclass.Datatype.Box) (= (TagFamily (Tclass.Datatype.Box Datatype.Box$T@@0)) tytagFamily$Box))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass.Datatype.Box Datatype.Box$T@@0))
)))
(assert (forall ((Datatype.Box_$T@@0 T@U) ) (!  (and (= (Tag (Tclass.Datatype.Box__ Datatype.Box_$T@@0)) Tagclass.Datatype.Box__) (= (TagFamily (Tclass.Datatype.Box__ Datatype.Box_$T@@0)) tytagFamily$Box_))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (Tclass.Datatype.Box__ Datatype.Box_$T@@0))
)))
(assert (forall ((Datatype.Box_$T@@1 T@U) (|a#2#0#0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#Datatype.Box_.Box| |a#2#0#0|) (Tclass.Datatype.Box__ Datatype.Box_$T@@1) $h@@2) ($IsAllocBox |a#2#0#0| Datatype.Box_$T@@1 $h@@2)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Datatype.Box_.Box| |a#2#0#0|) (Tclass.Datatype.Box__ Datatype.Box_$T@@1) $h@@2))
)))
(assert (forall ((Datatype.List$T@@4 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.Datatype.List Datatype.List$T@@4)) (or (Datatype.List.Nil_q d@@6) (Datatype.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( (Datatype.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.Datatype.List Datatype.List$T@@4)))
 :pattern ( (Datatype.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.Datatype.List Datatype.List$T@@4)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Datatype._default.Length$T@@0 T@U) ($ly@@0 T@U) (|l#0@@0| T@U) ) (!  (=> (or (|Datatype.__default.Length#canCall| Datatype._default.Length$T@@0 |l#0@@0|) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@0| (Tclass.Datatype.List Datatype._default.Length$T@@0)))) (and (=> (not (Datatype.List.Nil_q |l#0@@0|)) (let ((|q#1| (Datatype.List._h0 |l#0@@0|)))
 (and (Datatype.Box__.Box_q |q#1|) (|Datatype.__default.Length#canCall| Datatype._default.Length$T@@0 ($Unbox DatatypeTypeType (Datatype.Box__.t |q#1|)))))) (= (Datatype.__default.Length Datatype._default.Length$T@@0 ($LS $ly@@0) |l#0@@0|) (ite (Datatype.List.Nil_q |l#0@@0|) 0 (let ((|q#0| (Datatype.List._h0 |l#0@@0|)))
(+ 1 (Datatype.__default.Length Datatype._default.Length$T@@0 $ly@@0 ($Unbox DatatypeTypeType (Datatype.Box__.t |q#0|)))))))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Datatype.__default.Length Datatype._default.Length$T@@0 ($LS $ly@@0) |l#0@@0|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#Datatype.List.Cons| |a#4#0#0| |a#4#1#0|)) |##Datatype.List.Cons|)
 :qid |gitissue1875dfy.11:33|
 :skolemid |515|
 :pattern ( (|#Datatype.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (Datatype.List.t (|#Datatype.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |gitissue1875dfy.11:33|
 :skolemid |524|
 :pattern ( (|#Datatype.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (Datatype.List._h0 (|#Datatype.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |gitissue1875dfy.11:33|
 :skolemid |526|
 :pattern ( (|#Datatype.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((Datatype.List$T@@5 T@U) ) (! (= (Tclass.Datatype.List_0 (Tclass.Datatype.List Datatype.List$T@@5)) Datatype.List$T@@5)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass.Datatype.List Datatype.List$T@@5))
)))
(assert (forall ((Datatype.Box$T@@1 T@U) ) (! (= (Tclass.Datatype.Box_0 (Tclass.Datatype.Box Datatype.Box$T@@1)) Datatype.Box$T@@1)
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (Tclass.Datatype.Box Datatype.Box$T@@1))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#Datatype.Box_.Box| |a#0#0#0|)) |##Datatype.Box_.Box|)
 :qid |gitissue1875dfy.8:26|
 :skolemid |492|
 :pattern ( (|#Datatype.Box_.Box| |a#0#0#0|))
)))
(assert (forall ((Datatype.Box_$T@@2 T@U) ) (! (= (Tclass.Datatype.Box___0 (Tclass.Datatype.Box__ Datatype.Box_$T@@2)) Datatype.Box_$T@@2)
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (Tclass.Datatype.Box__ Datatype.Box_$T@@2))
)))
(assert (forall ((|a#4#0#0@@0| T@U) ) (! (= (Datatype.Box__.t (|#Datatype.Box_.Box| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |gitissue1875dfy.8:26|
 :skolemid |503|
 :pattern ( (|#Datatype.Box_.Box| |a#4#0#0@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((Datatype.Box_$T@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Datatype.Box_.Box| |a#2#0#0@@0|) (Tclass.Datatype.Box__ Datatype.Box_$T@@3)) ($IsBox |a#2#0#0@@0| Datatype.Box_$T@@3))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is DatatypeTypeType (|#Datatype.Box_.Box| |a#2#0#0@@0|) (Tclass.Datatype.Box__ Datatype.Box_$T@@3)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#Datatype.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |gitissue1875dfy.11:33|
 :skolemid |525|
 :pattern ( (|#Datatype.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#Datatype.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |gitissue1875dfy.11:33|
 :skolemid |527|
 :pattern ( (|#Datatype.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#Datatype.Box_.Box| |a#5#0#0@@0|)))
 :qid |gitissue1875dfy.8:26|
 :skolemid |504|
 :pattern ( (|#Datatype.Box_.Box| |a#5#0#0@@0|))
)))
(assert (forall ((d@@7 T@U) (Datatype.Box_$T@@4 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Datatype.Box__.Box_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.Datatype.Box__ Datatype.Box_$T@@4) $h@@3))) ($IsAllocBox (Datatype.Box__.t d@@7) Datatype.Box_$T@@4 $h@@3))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsAllocBox (Datatype.Box__.t d@@7) Datatype.Box_$T@@4 $h@@3))
)))
(assert (forall ((d@@8 T@U) (Datatype.List$T@@6 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (Datatype.List.Cons_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.Datatype.List Datatype.List$T@@6) $h@@4))) ($IsAllocBox (Datatype.List.t d@@8) Datatype.List$T@@6 $h@@4))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAllocBox (Datatype.List.t d@@8) Datatype.List$T@@6 $h@@4))
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
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2609|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((Datatype.List$T@@7 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Datatype.List Datatype.List$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.Datatype.List Datatype.List$T@@7))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass.Datatype.List Datatype.List$T@@7)))
)))
(assert (forall ((Datatype.Box$T@@2 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass.Datatype.Box Datatype.Box$T@@2)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass.Datatype.Box Datatype.Box$T@@2))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@1 (Tclass.Datatype.Box Datatype.Box$T@@2)))
)))
(assert (forall ((Datatype.Box_$T@@5 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.Datatype.Box__ Datatype.Box_$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass.Datatype.Box__ Datatype.Box_$T@@5))))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsBox bx@@2 (Tclass.Datatype.Box__ Datatype.Box_$T@@5)))
)))
(assert (forall ((Datatype.Box$T@@3 T@U) (|b#0@@0| T@U) ) (! (= ($Is DatatypeTypeType |b#0@@0| (Tclass.Datatype.Box Datatype.Box$T@@3))  (and ($Is DatatypeTypeType |b#0@@0| (Tclass.Datatype.Box__ Datatype.Box$T@@3)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($Is DatatypeTypeType |b#0@@0| (Tclass.Datatype.Box Datatype.Box$T@@3)))
)))
(assert (= |#Datatype.List.Nil| (Lit DatatypeTypeType |#Datatype.List.Nil|)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((Datatype._default.Length$T@@1 T@U) ($ly@@1 T@U) (|l#0@@2| T@U) ) (!  (=> (or (|Datatype.__default.Length#canCall| Datatype._default.Length$T@@1 (Lit DatatypeTypeType |l#0@@2|)) (and (< 3 $FunctionContextHeight) ($Is DatatypeTypeType |l#0@@2| (Tclass.Datatype.List Datatype._default.Length$T@@1)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (Datatype.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)))))) (let ((|q#3| (Lit DatatypeTypeType (Datatype.List._h0 (Lit DatatypeTypeType |l#0@@2|)))))
 (and (Datatype.Box__.Box_q |q#3|) (|Datatype.__default.Length#canCall| Datatype._default.Length$T@@1 ($Unbox DatatypeTypeType (Datatype.Box__.t |q#3|)))))) (= (Datatype.__default.Length Datatype._default.Length$T@@1 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)) (ite (Datatype.List.Nil_q (Lit DatatypeTypeType |l#0@@2|)) 0 (let ((|q#2| (Lit DatatypeTypeType (Datatype.List._h0 (Lit DatatypeTypeType |l#0@@2|)))))
(LitInt (+ 1 (Datatype.__default.Length Datatype._default.Length$T@@1 ($LS $ly@@1) (Lit DatatypeTypeType ($Unbox DatatypeTypeType (Datatype.Box__.t |q#2|)))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |487|
 :pattern ( (Datatype.__default.Length Datatype._default.Length$T@@1 ($LS $ly@@1) (Lit DatatypeTypeType |l#0@@2|)))
))))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#Datatype.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#Datatype.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |gitissue1875dfy.11:33|
 :skolemid |523|
 :pattern ( (|#Datatype.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((d@@10 T@U) (Datatype.List$T@@8 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (Datatype.List.Cons_q d@@10) ($IsAlloc DatatypeTypeType d@@10 (Tclass.Datatype.List Datatype.List$T@@8) $h@@5))) ($IsAlloc DatatypeTypeType (Datatype.List._h0 d@@10) (Tclass.Datatype.Box (Tclass.Datatype.List Datatype.List$T@@8)) $h@@5))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc DatatypeTypeType (Datatype.List._h0 d@@10) (Tclass.Datatype.Box (Tclass.Datatype.List Datatype.List$T@@8)) $h@@5))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#Datatype.Box_.Box| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#Datatype.Box_.Box| |a#3#0#0|)))
 :qid |gitissue1875dfy.8:26|
 :skolemid |502|
 :pattern ( (|#Datatype.Box_.Box| (Lit BoxType |a#3#0#0|)))
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
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l#0@@3| () T@U)
(declare-fun |_mcc#0#0| () T@U)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun Datatype._default.Length$T@@2 () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |q#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |t#Z#0@0| () T@U)
(declare-fun |##l#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Datatype.__default.Length)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon10_Else_correct true))
(let ((anon10_Then_correct  (=> (= |l#0@@3| (|#Datatype.List.Cons| |_mcc#0#0| |_mcc#1#0|)) (=> (and (and ($IsBox |_mcc#0#0| Datatype._default.Length$T@@2) ($Is DatatypeTypeType |_mcc#1#0| (Tclass.Datatype.Box (Tclass.Datatype.List Datatype._default.Length$T@@2)))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.Datatype.Box (Tclass.Datatype.List Datatype._default.Length$T@@2))))) (=> (and (and (and (= |q#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($IsBox |let#1#0#0| Datatype._default.Length$T@@2) (= |t#Z#0@0| |let#1#0#0|))) (and (and (Datatype.Box__.Box_q |q#Z#0@0|) (= |##l#0@0| ($Unbox DatatypeTypeType (Datatype.Box__.t |q#Z#0@0|)))) (and ($IsAlloc DatatypeTypeType |##l#0@0| (Tclass.Datatype.List Datatype._default.Length$T@@2) $Heap) (= (ControlFlow 0 4) (- 0 3))))) (< (DtRank |##l#0@0|) (DtRank |l#0@@3|)))))))
(let ((anon9_Else_correct  (=> (or (not (= |l#0@@3| |#Datatype.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 6) 4) anon10_Then_correct) (=> (= (ControlFlow 0 6) 5) anon10_Else_correct)))))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon8_Then_correct) (=> (= (ControlFlow 0 7) 2) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is DatatypeTypeType |l#0@@3| (Tclass.Datatype.List Datatype._default.Length$T@@2))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
