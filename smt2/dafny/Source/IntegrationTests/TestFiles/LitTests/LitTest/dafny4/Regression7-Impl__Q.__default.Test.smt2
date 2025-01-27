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
(declare-fun Tagclass.ListLibrary.List () T@U)
(declare-fun Tagclass.Q.Queue () T@U)
(declare-fun |##Q.Queue.FQ| () T@U)
(declare-fun |##ListLibrary.List.Nil| () T@U)
(declare-fun |##ListLibrary.List.Cons| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Queue () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#Q.Queue.FQ| (T@U T@U) T@U)
(declare-fun Tclass.Q.Queue (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.ListLibrary.List (T@U) T@U)
(declare-fun |$IsA#Q.Queue| (T@U) Bool)
(declare-fun Q.Queue.FQ_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#ListLibrary.List.Nil| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Q.__default.MyCons (T@U T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Q.__default.MyCons#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#ListLibrary.List.Cons| (T@U T@U) T@U)
(declare-fun |ListLibrary.List#Equal| (T@U T@U) Bool)
(declare-fun ListLibrary.List.Cons_q (T@U) Bool)
(declare-fun ListLibrary.List.head (T@U) T@U)
(declare-fun ListLibrary.List.tail (T@U) T@U)
(declare-fun ListLibrary.List.Nil_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#ListLibrary.List| (T@U) Bool)
(declare-fun Q.Queue.front (T@U) T@U)
(declare-fun Q.Queue.rear (T@U) T@U)
(declare-fun Tclass.ListLibrary.List_0 (T@U) T@U)
(declare-fun Tclass.Q.Queue_0 (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct alloc Tagclass.ListLibrary.List Tagclass.Q.Queue |##Q.Queue.FQ| |##ListLibrary.List.Nil| |##ListLibrary.List.Cons| tytagFamily$List tytagFamily$Queue)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((Q.Queue$T T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#Q.Queue.FQ| |a#2#0#0| |a#2#1#0|) (Tclass.Q.Queue Q.Queue$T) $h)  (and ($IsAlloc DatatypeTypeType |a#2#0#0| (Tclass.ListLibrary.List Q.Queue$T) $h) ($IsAlloc DatatypeTypeType |a#2#1#0| (Tclass.ListLibrary.List Q.Queue$T) $h))))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( ($IsAlloc DatatypeTypeType (|#Q.Queue.FQ| |a#2#0#0| |a#2#1#0|) (Tclass.Q.Queue Q.Queue$T) $h))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#Q.Queue| d) (Q.Queue.FQ_q d))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( (|$IsA#Q.Queue| d))
)))
(assert (= (DatatypeCtorId |#ListLibrary.List.Nil|) |##ListLibrary.List.Nil|))
(assert (forall ((Q.Queue$T@@0 T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.Q.Queue Q.Queue$T@@0)) (Q.Queue.FQ_q d@@0))
 :qid |unknown.0:0|
 :skolemid |1110|
 :pattern ( (Q.Queue.FQ_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.Q.Queue Q.Queue$T@@0)))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Q._default.MyCons$W T@U) (|w#0| T@U) (|ws#0| T@U) ) (!  (=> (or (|Q.__default.MyCons#canCall| Q._default.MyCons$W (Lit BoxType |w#0|) (Lit DatatypeTypeType |ws#0|)) (and (< 0 $FunctionContextHeight) (and ($IsBox |w#0| Q._default.MyCons$W) ($Is DatatypeTypeType |ws#0| (Tclass.ListLibrary.List Q._default.MyCons$W))))) (= (Q.__default.MyCons Q._default.MyCons$W (Lit BoxType |w#0|) (Lit DatatypeTypeType |ws#0|)) (Lit DatatypeTypeType (|#ListLibrary.List.Cons| (Lit BoxType |w#0|) (Lit DatatypeTypeType |ws#0|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1089|
 :pattern ( (Q.__default.MyCons Q._default.MyCons$W (Lit BoxType |w#0|) (Lit DatatypeTypeType |ws#0|)))
))))
(assert (forall ((ListLibrary.List$B T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$B) $h@@0))
 :qid |unknown.0:0|
 :skolemid |1116|
 :pattern ( ($IsAlloc DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$B) $h@@0))
)))
(assert (forall ((ListLibrary.List$B@@0 T@U) ) (! ($Is DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$B@@0))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( ($Is DatatypeTypeType |#ListLibrary.List.Nil| (Tclass.ListLibrary.List ListLibrary.List$B@@0)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|ListLibrary.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1134|
 :pattern ( (|ListLibrary.List#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (ListLibrary.List.Cons_q a@@0) (ListLibrary.List.Cons_q b@@0)) (= (|ListLibrary.List#Equal| a@@0 b@@0)  (and (= (ListLibrary.List.head a@@0) (ListLibrary.List.head b@@0)) (|ListLibrary.List#Equal| (ListLibrary.List.tail a@@0) (ListLibrary.List.tail b@@0)))))
 :qid |unknown.0:0|
 :skolemid |1133|
 :pattern ( (|ListLibrary.List#Equal| a@@0 b@@0) (ListLibrary.List.Cons_q a@@0))
 :pattern ( (|ListLibrary.List#Equal| a@@0 b@@0) (ListLibrary.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |568|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((ListLibrary.List$B@@1 T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#ListLibrary.List.Cons| |a#14#0#0| |a#14#1#0|) (Tclass.ListLibrary.List ListLibrary.List$B@@1))  (and ($IsBox |a#14#0#0| ListLibrary.List$B@@1) ($Is DatatypeTypeType |a#14#1#0| (Tclass.ListLibrary.List ListLibrary.List$B@@1))))
 :qid |unknown.0:0|
 :skolemid |1121|
 :pattern ( ($Is DatatypeTypeType (|#ListLibrary.List.Cons| |a#14#0#0| |a#14#1#0|) (Tclass.ListLibrary.List ListLibrary.List$B@@1)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Q._default.MyCons$W@@0 T@U) (|w#0@@0| T@U) (|ws#0@@0| T@U) ) (!  (=> (or (|Q.__default.MyCons#canCall| Q._default.MyCons$W@@0 |w#0@@0| |ws#0@@0|) (and (< 0 $FunctionContextHeight) (and ($IsBox |w#0@@0| Q._default.MyCons$W@@0) ($Is DatatypeTypeType |ws#0@@0| (Tclass.ListLibrary.List Q._default.MyCons$W@@0))))) (= (Q.__default.MyCons Q._default.MyCons$W@@0 |w#0@@0| |ws#0@@0|) (|#ListLibrary.List.Cons| |w#0@@0| |ws#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1087|
 :pattern ( (Q.__default.MyCons Q._default.MyCons$W@@0 |w#0@@0| |ws#0@@0|))
))))
(assert (forall ((d@@1 T@U) ) (! (= (Q.Queue.FQ_q d@@1) (= (DatatypeCtorId d@@1) |##Q.Queue.FQ|))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( (Q.Queue.FQ_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (ListLibrary.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##ListLibrary.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1113|
 :pattern ( (ListLibrary.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (ListLibrary.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##ListLibrary.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1118|
 :pattern ( (ListLibrary.List.Cons_q d@@3))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |579|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Q.Queue.FQ_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#Q.Queue.FQ| |a#1#0#0| |a#1#1#0|))
 :qid |Regression7dfy.10:26|
 :skolemid |1098|
)))
 :qid |unknown.0:0|
 :skolemid |1099|
 :pattern ( (Q.Queue.FQ_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (ListLibrary.List.Cons_q d@@5) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= d@@5 (|#ListLibrary.List.Cons| |a#13#0#0| |a#13#1#0|))
 :qid |Regression7dfy.4:33|
 :skolemid |1119|
)))
 :qid |unknown.0:0|
 :skolemid |1120|
 :pattern ( (ListLibrary.List.Cons_q d@@5))
)))
(assert (forall ((Q.Queue$T@@1 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#Q.Queue.FQ| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.Q.Queue Q.Queue$T@@1))  (and ($Is DatatypeTypeType |a#2#0#0@@0| (Tclass.ListLibrary.List Q.Queue$T@@1)) ($Is DatatypeTypeType |a#2#1#0@@0| (Tclass.ListLibrary.List Q.Queue$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1100|
 :pattern ( ($Is DatatypeTypeType (|#Q.Queue.FQ| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.Q.Queue Q.Queue$T@@1)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (ListLibrary.List.Nil_q d@@6) (= d@@6 |#ListLibrary.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1114|
 :pattern ( (ListLibrary.List.Nil_q d@@6))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |592|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((ListLibrary.List$B@@2 T@U) ) (!  (and (= (Tag (Tclass.ListLibrary.List ListLibrary.List$B@@2)) Tagclass.ListLibrary.List) (= (TagFamily (Tclass.ListLibrary.List ListLibrary.List$B@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |1081|
 :pattern ( (Tclass.ListLibrary.List ListLibrary.List$B@@2))
)))
(assert (forall ((Q.Queue$T@@2 T@U) ) (!  (and (= (Tag (Tclass.Q.Queue Q.Queue$T@@2)) Tagclass.Q.Queue) (= (TagFamily (Tclass.Q.Queue Q.Queue$T@@2)) tytagFamily$Queue))
 :qid |unknown.0:0|
 :skolemid |1090|
 :pattern ( (Tclass.Q.Queue Q.Queue$T@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Q._default.MyCons$W@@1 T@U) (|w#0@@1| T@U) (|ws#0@@1| T@U) ) (!  (=> (or (|Q.__default.MyCons#canCall| Q._default.MyCons$W@@1 |w#0@@1| (Lit DatatypeTypeType |ws#0@@1|)) (and (< 0 $FunctionContextHeight) (and ($IsBox |w#0@@1| Q._default.MyCons$W@@1) ($Is DatatypeTypeType |ws#0@@1| (Tclass.ListLibrary.List Q._default.MyCons$W@@1))))) (= (Q.__default.MyCons Q._default.MyCons$W@@1 |w#0@@1| (Lit DatatypeTypeType |ws#0@@1|)) (|#ListLibrary.List.Cons| |w#0@@1| (Lit DatatypeTypeType |ws#0@@1|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1088|
 :pattern ( (Q.__default.MyCons Q._default.MyCons$W@@1 |w#0@@1| (Lit DatatypeTypeType |ws#0@@1|)))
))))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#ListLibrary.List| d@@7) (or (ListLibrary.List.Nil_q d@@7) (ListLibrary.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( (|$IsA#ListLibrary.List| d@@7))
)))
(assert (forall ((ListLibrary.List$B@@3 T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass.ListLibrary.List ListLibrary.List$B@@3)) (or (ListLibrary.List.Nil_q d@@8) (ListLibrary.List.Cons_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( (ListLibrary.List.Cons_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.ListLibrary.List ListLibrary.List$B@@3)))
 :pattern ( (ListLibrary.List.Nil_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass.ListLibrary.List ListLibrary.List$B@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |591|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (ListLibrary.List.Nil_q a@@1) (ListLibrary.List.Nil_q b@@1)) (|ListLibrary.List#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( (|ListLibrary.List#Equal| a@@1 b@@1) (ListLibrary.List.Nil_q a@@1))
 :pattern ( (|ListLibrary.List#Equal| a@@1 b@@1) (ListLibrary.List.Nil_q b@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#Q.Queue.FQ| |a#0#0#0| |a#0#1#0|)) |##Q.Queue.FQ|)
 :qid |Regression7dfy.10:26|
 :skolemid |1096|
 :pattern ( (|#Q.Queue.FQ| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (Q.Queue.front (|#Q.Queue.FQ| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |Regression7dfy.10:26|
 :skolemid |1105|
 :pattern ( (|#Q.Queue.FQ| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (Q.Queue.rear (|#Q.Queue.FQ| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |Regression7dfy.10:26|
 :skolemid |1107|
 :pattern ( (|#Q.Queue.FQ| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (DatatypeCtorId (|#ListLibrary.List.Cons| |a#12#0#0| |a#12#1#0|)) |##ListLibrary.List.Cons|)
 :qid |Regression7dfy.4:33|
 :skolemid |1117|
 :pattern ( (|#ListLibrary.List.Cons| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (= (ListLibrary.List.head (|#ListLibrary.List.Cons| |a#16#0#0| |a#16#1#0|)) |a#16#0#0|)
 :qid |Regression7dfy.4:33|
 :skolemid |1126|
 :pattern ( (|#ListLibrary.List.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) ) (! (= (ListLibrary.List.tail (|#ListLibrary.List.Cons| |a#18#0#0| |a#18#1#0|)) |a#18#1#0|)
 :qid |Regression7dfy.4:33|
 :skolemid |1128|
 :pattern ( (|#ListLibrary.List.Cons| |a#18#0#0| |a#18#1#0|))
)))
(assert (forall ((ListLibrary.List$B@@4 T@U) ) (! (= (Tclass.ListLibrary.List_0 (Tclass.ListLibrary.List ListLibrary.List$B@@4)) ListLibrary.List$B@@4)
 :qid |unknown.0:0|
 :skolemid |1082|
 :pattern ( (Tclass.ListLibrary.List ListLibrary.List$B@@4))
)))
(assert (forall ((Q.Queue$T@@3 T@U) ) (! (= (Tclass.Q.Queue_0 (Tclass.Q.Queue Q.Queue$T@@3)) Q.Queue$T@@3)
 :qid |unknown.0:0|
 :skolemid |1091|
 :pattern ( (Tclass.Q.Queue Q.Queue$T@@3))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |578|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((Q._default.MyCons$W@@2 T@U) (|w#0@@2| T@U) (|ws#0@@2| T@U) ) (!  (=> (or (|Q.__default.MyCons#canCall| Q._default.MyCons$W@@2 |w#0@@2| |ws#0@@2|) (and (< 0 $FunctionContextHeight) (and ($IsBox |w#0@@2| Q._default.MyCons$W@@2) ($Is DatatypeTypeType |ws#0@@2| (Tclass.ListLibrary.List Q._default.MyCons$W@@2))))) ($Is DatatypeTypeType (Q.__default.MyCons Q._default.MyCons$W@@2 |w#0@@2| |ws#0@@2|) (Tclass.ListLibrary.List Q._default.MyCons$W@@2)))
 :qid |unknown.0:0|
 :skolemid |1084|
 :pattern ( (Q.__default.MyCons Q._default.MyCons$W@@2 |w#0@@2| |ws#0@@2|))
))))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (DtRank |a#5#0#0|) (DtRank (|#Q.Queue.FQ| |a#5#0#0| |a#5#1#0|)))
 :qid |Regression7dfy.10:26|
 :skolemid |1106|
 :pattern ( (|#Q.Queue.FQ| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (DtRank |a#7#1#0|) (DtRank (|#Q.Queue.FQ| |a#7#0#0| |a#7#1#0|)))
 :qid |Regression7dfy.10:26|
 :skolemid |1108|
 :pattern ( (|#Q.Queue.FQ| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#ListLibrary.List.Cons| |a#17#0#0| |a#17#1#0|)))
 :qid |Regression7dfy.4:33|
 :skolemid |1127|
 :pattern ( (|#ListLibrary.List.Cons| |a#17#0#0| |a#17#1#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) ) (! (< (DtRank |a#19#1#0|) (DtRank (|#ListLibrary.List.Cons| |a#19#0#0| |a#19#1#0|)))
 :qid |Regression7dfy.4:33|
 :skolemid |1129|
 :pattern ( (|#ListLibrary.List.Cons| |a#19#0#0| |a#19#1#0|))
)))
(assert (forall ((d@@9 T@U) (ListLibrary.List$B@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (ListLibrary.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass.ListLibrary.List ListLibrary.List$B@@5) $h@@1))) ($IsAllocBox (ListLibrary.List.head d@@9) ListLibrary.List$B@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |1123|
 :pattern ( ($IsAllocBox (ListLibrary.List.head d@@9) ListLibrary.List$B@@5 $h@@1))
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
 :skolemid |1719|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |637|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((ListLibrary.List$B@@6 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.ListLibrary.List ListLibrary.List$B@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass.ListLibrary.List ListLibrary.List$B@@6))))
 :qid |unknown.0:0|
 :skolemid |1083|
 :pattern ( ($IsBox bx (Tclass.ListLibrary.List ListLibrary.List$B@@6)))
)))
(assert (forall ((Q.Queue$T@@4 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.Q.Queue Q.Queue$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.Q.Queue Q.Queue$T@@4))))
 :qid |unknown.0:0|
 :skolemid |1092|
 :pattern ( ($IsBox bx@@0 (Tclass.Q.Queue Q.Queue$T@@4)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (Q._default.MyCons$W@@3 T@U) (|w#0@@3| T@U) (|ws#0@@3| T@U) ) (!  (=> (and (or (|Q.__default.MyCons#canCall| Q._default.MyCons$W@@3 |w#0@@3| |ws#0@@3|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |w#0@@3| Q._default.MyCons$W@@3) ($IsAllocBox |w#0@@3| Q._default.MyCons$W@@3 $Heap)) (and ($Is DatatypeTypeType |ws#0@@3| (Tclass.ListLibrary.List Q._default.MyCons$W@@3)) ($IsAlloc DatatypeTypeType |ws#0@@3| (Tclass.ListLibrary.List Q._default.MyCons$W@@3) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (Q.__default.MyCons Q._default.MyCons$W@@3 |w#0@@3| |ws#0@@3|) (Tclass.ListLibrary.List Q._default.MyCons$W@@3) $Heap))
 :qid |Regression7dfy.12:12|
 :skolemid |1085|
 :pattern ( ($IsAlloc DatatypeTypeType (Q.__default.MyCons Q._default.MyCons$W@@3 |w#0@@3| |ws#0@@3|) (Tclass.ListLibrary.List Q._default.MyCons$W@@3) $Heap))
))))
(assert (forall ((d@@11 T@U) (Q.Queue$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (Q.Queue.FQ_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass.Q.Queue Q.Queue$T@@5) $h@@2))) ($IsAlloc DatatypeTypeType (Q.Queue.front d@@11) (Tclass.ListLibrary.List Q.Queue$T@@5) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($IsAlloc DatatypeTypeType (Q.Queue.front d@@11) (Tclass.ListLibrary.List Q.Queue$T@@5) $h@@2))
)))
(assert (forall ((d@@12 T@U) (Q.Queue$T@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (Q.Queue.FQ_q d@@12) ($IsAlloc DatatypeTypeType d@@12 (Tclass.Q.Queue Q.Queue$T@@6) $h@@3))) ($IsAlloc DatatypeTypeType (Q.Queue.rear d@@12) (Tclass.ListLibrary.List Q.Queue$T@@6) $h@@3))
 :qid |unknown.0:0|
 :skolemid |1103|
 :pattern ( ($IsAlloc DatatypeTypeType (Q.Queue.rear d@@12) (Tclass.ListLibrary.List Q.Queue$T@@6) $h@@3))
)))
(assert (forall ((d@@13 T@U) (ListLibrary.List$B@@7 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (ListLibrary.List.Cons_q d@@13) ($IsAlloc DatatypeTypeType d@@13 (Tclass.ListLibrary.List ListLibrary.List$B@@7) $h@@4))) ($IsAlloc DatatypeTypeType (ListLibrary.List.tail d@@13) (Tclass.ListLibrary.List ListLibrary.List$B@@7) $h@@4))
 :qid |unknown.0:0|
 :skolemid |1124|
 :pattern ( ($IsAlloc DatatypeTypeType (ListLibrary.List.tail d@@13) (Tclass.ListLibrary.List ListLibrary.List$B@@7) $h@@4))
)))
(assert (= |#ListLibrary.List.Nil| (Lit DatatypeTypeType |#ListLibrary.List.Nil|)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#Q.Queue.FQ| (Lit DatatypeTypeType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)) (Lit DatatypeTypeType (|#Q.Queue.FQ| |a#3#0#0| |a#3#1#0|)))
 :qid |Regression7dfy.10:26|
 :skolemid |1104|
 :pattern ( (|#Q.Queue.FQ| (Lit DatatypeTypeType |a#3#0#0|) (Lit DatatypeTypeType |a#3#1#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (|#ListLibrary.List.Cons| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)) (Lit DatatypeTypeType (|#ListLibrary.List.Cons| |a#15#0#0| |a#15#1#0|)))
 :qid |Regression7dfy.4:33|
 :skolemid |1125|
 :pattern ( (|#ListLibrary.List.Cons| (Lit BoxType |a#15#0#0|) (Lit DatatypeTypeType |a#15#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |569|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((ListLibrary.List$B@@8 T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#ListLibrary.List.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass.ListLibrary.List ListLibrary.List$B@@8) $h@@5)  (and ($IsAllocBox |a#14#0#0@@0| ListLibrary.List$B@@8 $h@@5) ($IsAlloc DatatypeTypeType |a#14#1#0@@0| (Tclass.ListLibrary.List ListLibrary.List$B@@8) $h@@5))))
 :qid |unknown.0:0|
 :skolemid |1122|
 :pattern ( ($IsAlloc DatatypeTypeType (|#ListLibrary.List.Cons| |a#14#0#0@@0| |a#14#1#0@@0|) (Tclass.ListLibrary.List ListLibrary.List$B@@8) $h@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |r0#0@0| () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun |r2#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |x#0| () T@U)
(declare-fun Q._default.Test$A () T@U)
(declare-fun |q#0| () T@U)
(declare-fun |##ws#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |qr#Z#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () T@U)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |r2#0| () T@U)
(set-info :boogie-vc-id Impl$$Q.__default.Test)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon2_correct  (=> (and (and (|$IsA#ListLibrary.List| (ListLibrary.List.tail |r0#0@0|)) (|$IsA#ListLibrary.List| (ListLibrary.List.tail |r1#0@0|))) (=> (|ListLibrary.List#Equal| (ListLibrary.List.tail |r0#0@0|) (ListLibrary.List.tail |r1#0@0|)) (and (|$IsA#ListLibrary.List| (ListLibrary.List.tail |r1#0@0|)) (|$IsA#ListLibrary.List| (ListLibrary.List.tail |r2#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|ListLibrary.List#Equal| (ListLibrary.List.tail |r0#0@0|) (ListLibrary.List.tail |r1#0@0|))) (=> (= (ControlFlow 0 2) (- 0 1)) (|ListLibrary.List#Equal| (ListLibrary.List.tail |r1#0@0|) (ListLibrary.List.tail |r2#0@0|)))))))
(let ((anon3_Else_correct  (=> (and (not (|ListLibrary.List#Equal| (ListLibrary.List.tail |r0#0@0|) (ListLibrary.List.tail |r1#0@0|))) (= (ControlFlow 0 7) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (|ListLibrary.List#Equal| (ListLibrary.List.tail |r0#0@0|) (ListLibrary.List.tail |r1#0@0|)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (ListLibrary.List.Cons_q |r1#0@0|)) (=> (ListLibrary.List.Cons_q |r1#0@0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (ListLibrary.List.Cons_q |r2#0@0|)) (=> (ListLibrary.List.Cons_q |r2#0@0|) (=> (= (ControlFlow 0 4) 2) anon2_correct))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) ($IsAllocBox |x#0| Q._default.Test$A $Heap@@0)) (=> (and (and (Q.Queue.FQ_q |q#0|) (= |##ws#0@0| (Q.Queue.rear |q#0|))) (and ($IsAlloc DatatypeTypeType |##ws#0@0| (Tclass.ListLibrary.List Q._default.Test$A) $Heap@@0) (|Q.__default.MyCons#canCall| Q._default.Test$A |x#0| (Q.Queue.rear |q#0|)))) (=> (and (and (and (and (Q.Queue.FQ_q |q#0|) (|Q.__default.MyCons#canCall| Q._default.Test$A |x#0| (Q.Queue.rear |q#0|))) (= |r0#0@0| (Q.__default.MyCons Q._default.Test$A |x#0| (Q.Queue.rear |q#0|)))) (and (Q.Queue.FQ_q |q#0|) (= |let#0#0#0| (Q.Queue.rear |q#0|)))) (and (and (and (Q.Queue.FQ_q |q#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass.ListLibrary.List Q._default.Test$A))) (and (= |qr#Z#0@0| |let#0#0#0|) (Q.Queue.FQ_q |q#0|))) (and (and (= |r1#0@0| (let ((|qr#0| (Q.Queue.rear |q#0|)))
(|#ListLibrary.List.Cons| |x#0| |qr#0|))) (Q.Queue.FQ_q |q#0|)) (and (Q.Queue.FQ_q |q#0|) (= |r2#0@0| (|#ListLibrary.List.Cons| |x#0| (Q.Queue.rear |q#0|))))))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (ListLibrary.List.Cons_q |r0#0@0|)) (=> (ListLibrary.List.Cons_q |r0#0@0|) (and (=> (= (ControlFlow 0 8) (- 0 9)) (ListLibrary.List.Cons_q |r1#0@0|)) (=> (ListLibrary.List.Cons_q |r1#0@0|) (and (=> (= (ControlFlow 0 8) 4) anon3_Then_correct) (=> (= (ControlFlow 0 8) 7) anon3_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is DatatypeTypeType |q#0| (Tclass.Q.Queue Q._default.Test$A)) ($IsAlloc DatatypeTypeType |q#0| (Tclass.Q.Queue Q._default.Test$A) $Heap@@0)) (|$IsA#Q.Queue| |q#0|)) (and (and ($IsBox |x#0| Q._default.Test$A) ($IsAllocBox |x#0| Q._default.Test$A $Heap@@0)) (and ($Is DatatypeTypeType |r#0| (Tclass.ListLibrary.List Q._default.Test$A)) ($IsAlloc DatatypeTypeType |r#0| (Tclass.ListLibrary.List Q._default.Test$A) $Heap@@0)))) (=> (and (and (and (and ($Is DatatypeTypeType |r0#0| (Tclass.ListLibrary.List Q._default.Test$A)) ($IsAlloc DatatypeTypeType |r0#0| (Tclass.ListLibrary.List Q._default.Test$A) $Heap@@0)) true) (and (and ($Is DatatypeTypeType |r1#0| (Tclass.ListLibrary.List Q._default.Test$A)) ($IsAlloc DatatypeTypeType |r1#0| (Tclass.ListLibrary.List Q._default.Test$A) $Heap@@0)) true)) (and (and (and ($Is DatatypeTypeType |r2#0| (Tclass.ListLibrary.List Q._default.Test$A)) ($IsAlloc DatatypeTypeType |r2#0| (Tclass.ListLibrary.List Q._default.Test$A) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 11) 8)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
