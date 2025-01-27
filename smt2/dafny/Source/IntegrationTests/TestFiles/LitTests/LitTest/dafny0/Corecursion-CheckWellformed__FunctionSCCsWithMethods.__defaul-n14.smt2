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
(declare-fun Tagclass.FunctionSCCsWithMethods.Stream () T@U)
(declare-fun |##FunctionSCCsWithMethods.Stream.Cons| () T@U)
(declare-fun tytagFamily$Stream () T@U)
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
(declare-fun FunctionSCCsWithMethods.__default.G (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |FunctionSCCsWithMethods.__default.G#canCall| () Bool)
(declare-fun |FunctionSCCsWithMethods.__default.H#canCall| () Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun FunctionSCCsWithMethods.__default.H (T@U) T@U)
(declare-fun FunctionSCCsWithMethods.Stream.Cons_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.FunctionSCCsWithMethods.Stream (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |#FunctionSCCsWithMethods.Stream.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun FunctionSCCsWithMethods.Stream.head (T@U) T@U)
(declare-fun FunctionSCCsWithMethods.Stream.tail (T@U) T@U)
(declare-fun Tclass.FunctionSCCsWithMethods.Stream_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass.FunctionSCCsWithMethods.Stream |##FunctionSCCsWithMethods.Stream.Cons| tytagFamily$Stream)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.G#canCall| (< 1 $FunctionContextHeight)) (and |FunctionSCCsWithMethods.__default.H#canCall| (= (FunctionSCCsWithMethods.__default.G ($LS $ly)) (Lit DatatypeTypeType (FunctionSCCsWithMethods.__default.H $ly)))))
 :qid |Corecursiondfy.151:18|
 :skolemid |2888|
 :pattern ( (FunctionSCCsWithMethods.__default.G ($LS $ly)))
))))
(assert (forall ((FunctionSCCsWithMethods.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T)) (FunctionSCCsWithMethods.Stream.Cons_q d))
 :qid |unknown.0:0|
 :skolemid |2910|
 :pattern ( (FunctionSCCsWithMethods.Stream.Cons_q d) ($Is DatatypeTypeType d (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.G#canCall| (< 1 $FunctionContextHeight)) (and |FunctionSCCsWithMethods.__default.H#canCall| (= (FunctionSCCsWithMethods.__default.G ($LS $ly@@0)) (Lit DatatypeTypeType (FunctionSCCsWithMethods.__default.H ($LS $ly@@0))))))
 :qid |Corecursiondfy.151:18|
 :weight 3
 :skolemid |2889|
 :pattern ( (FunctionSCCsWithMethods.__default.G ($LS $ly@@0)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.G#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (FunctionSCCsWithMethods.__default.G $ly@@1) (Tclass.FunctionSCCsWithMethods.Stream TInt)))
 :qid |Corecursiondfy.151:18|
 :skolemid |2886|
 :pattern ( (FunctionSCCsWithMethods.__default.G $ly@@1))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.H#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (FunctionSCCsWithMethods.__default.H $ly@@2) (Tclass.FunctionSCCsWithMethods.Stream TInt)))
 :qid |Corecursiondfy.157:18|
 :skolemid |2894|
 :pattern ( (FunctionSCCsWithMethods.__default.H $ly@@2))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2362|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2360|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((FunctionSCCsWithMethods.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#FunctionSCCsWithMethods.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@0))  (and ($IsBox |a#2#0#0| FunctionSCCsWithMethods.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |2903|
 :pattern ( ($Is DatatypeTypeType (|#FunctionSCCsWithMethods.Stream.Cons| |a#2#0#0| |a#2#1#0|) (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@0)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (FunctionSCCsWithMethods.Stream.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##FunctionSCCsWithMethods.Stream.Cons|))
 :qid |unknown.0:0|
 :skolemid |2900|
 :pattern ( (FunctionSCCsWithMethods.Stream.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2371|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (FunctionSCCsWithMethods.Stream.Cons_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#FunctionSCCsWithMethods.Stream.Cons| |a#1#0#0| |a#1#1#0|))
 :qid |Corecursiondfy.133:31|
 :skolemid |2901|
)))
 :qid |unknown.0:0|
 :skolemid |2902|
 :pattern ( (FunctionSCCsWithMethods.Stream.Cons_q d@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.H#canCall| (< 1 $FunctionContextHeight)) (and |FunctionSCCsWithMethods.__default.G#canCall| (= (FunctionSCCsWithMethods.__default.H ($LS $ly@@3)) (Lit DatatypeTypeType (|#FunctionSCCsWithMethods.Stream.Cons| ($Box intType (int_2_U (LitInt 5))) (Lit DatatypeTypeType (FunctionSCCsWithMethods.__default.G $ly@@3)))))))
 :qid |Corecursiondfy.157:18|
 :skolemid |2896|
 :pattern ( (FunctionSCCsWithMethods.__default.H ($LS $ly@@3)))
))))
(assert (forall ((FunctionSCCsWithMethods.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@1)) Tagclass.FunctionSCCsWithMethods.Stream) (= (TagFamily (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |2873|
 :pattern ( (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@4 T@U) ) (!  (=> (or |FunctionSCCsWithMethods.__default.H#canCall| (< 1 $FunctionContextHeight)) (and |FunctionSCCsWithMethods.__default.G#canCall| (= (FunctionSCCsWithMethods.__default.H ($LS $ly@@4)) (Lit DatatypeTypeType (|#FunctionSCCsWithMethods.Stream.Cons| ($Box intType (int_2_U (LitInt 5))) (Lit DatatypeTypeType (FunctionSCCsWithMethods.__default.G ($LS $ly@@4))))))))
 :qid |Corecursiondfy.157:18|
 :weight 3
 :skolemid |2897|
 :pattern ( (FunctionSCCsWithMethods.__default.H ($LS $ly@@4)))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2372|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2383|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#FunctionSCCsWithMethods.Stream.Cons| |a#0#0#0| |a#0#1#0|)) |##FunctionSCCsWithMethods.Stream.Cons|)
 :qid |Corecursiondfy.133:31|
 :skolemid |2899|
 :pattern ( (|#FunctionSCCsWithMethods.Stream.Cons| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (FunctionSCCsWithMethods.Stream.head (|#FunctionSCCsWithMethods.Stream.Cons| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Corecursiondfy.133:31|
 :skolemid |2907|
 :pattern ( (|#FunctionSCCsWithMethods.Stream.Cons| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (FunctionSCCsWithMethods.Stream.tail (|#FunctionSCCsWithMethods.Stream.Cons| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Corecursiondfy.133:31|
 :skolemid |2908|
 :pattern ( (|#FunctionSCCsWithMethods.Stream.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((FunctionSCCsWithMethods.Stream$T@@2 T@U) ) (! (= (Tclass.FunctionSCCsWithMethods.Stream_0 (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@2)) FunctionSCCsWithMethods.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |2874|
 :pattern ( (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@2))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2370|
 :pattern ( ($Box T@@2 x@@5))
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
 :skolemid |3515|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall (($ly@@5 T@U) ) (! (= (FunctionSCCsWithMethods.__default.G ($LS $ly@@5)) (FunctionSCCsWithMethods.__default.G $ly@@5))
 :qid |Corecursiondfy.151:18|
 :skolemid |2884|
 :pattern ( (FunctionSCCsWithMethods.__default.G ($LS $ly@@5)))
)))
(assert (forall (($ly@@6 T@U) ) (! (= (FunctionSCCsWithMethods.__default.H ($LS $ly@@6)) (FunctionSCCsWithMethods.__default.H $ly@@6))
 :qid |Corecursiondfy.157:18|
 :skolemid |2892|
 :pattern ( (FunctionSCCsWithMethods.__default.H ($LS $ly@@6)))
)))
(assert (forall ((FunctionSCCsWithMethods.Stream$T@@3 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@3))))
 :qid |unknown.0:0|
 :skolemid |2875|
 :pattern ( ($IsBox bx@@0 (Tclass.FunctionSCCsWithMethods.Stream FunctionSCCsWithMethods.Stream$T@@3)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2363|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2361|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((v@@0 T@U) ) (! ($Is intType v@@0 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2385|
 :pattern ( ($Is intType v@@0 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$FunctionSCCsWithMethods.__default.G)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) (= (ControlFlow 0 3) (- 0 2)))) true))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 5))) anon0_correct)))
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
