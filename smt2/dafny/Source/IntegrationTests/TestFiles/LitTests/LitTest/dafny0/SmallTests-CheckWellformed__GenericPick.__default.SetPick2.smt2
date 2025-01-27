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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
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
(declare-fun GenericPick.__default.SetPick2 (T@U T@U) T@U)
(declare-fun |GenericPick.__default.SetPick2#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |$let#6_x| (T@U T@U) T@U)
(declare-fun |$let#6$canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet alloc)
)
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericPick._default.SetPick2$U T@U) (|s#0| T@U) ) (!  (=> (or (|GenericPick.__default.SetPick2#canCall| GenericPick._default.SetPick2$U |s#0|) (and (< 0 $FunctionContextHeight) (and ($Is SetType |s#0| (TSet GenericPick._default.SetPick2$U)) (exists ((|x#0| T@U) ) (!  (and ($IsBox |x#0| GenericPick._default.SetPick2$U) (|Set#IsMember| |s#0| |x#0|))
 :qid |SmallTestsdfy.777:21|
 :skolemid |493|
 :pattern ( (|Set#IsMember| |s#0| |x#0|))
))))) ($IsBox (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U |s#0|) GenericPick._default.SetPick2$U))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U |s#0|))
))))
(assert (forall ((GenericPick._default.SetPick2$U@@0 T@U) (s T@U) ) (!  (=> (|$let#6$canCall| GenericPick._default.SetPick2$U@@0 s) (|Set#IsMember| s (|$let#6_x| GenericPick._default.SetPick2$U@@0 s)))
 :qid |SmallTestsdfy.779:5|
 :skolemid |498|
 :pattern ( (|$let#6_x| GenericPick._default.SetPick2$U@@0 s))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericPick._default.SetPick2$U@@1 T@U) ($Heap T@U) (|s#0@@0| T@U) ) (!  (=> (or (|GenericPick.__default.SetPick2#canCall| GenericPick._default.SetPick2$U@@1 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0@@0| (TSet GenericPick._default.SetPick2$U@@1))) (exists ((|x#1| T@U) ) (!  (and ($IsBox |x#1| GenericPick._default.SetPick2$U@@1) (|Set#IsMember| |s#0@@0| |x#1|))
 :qid |SmallTestsdfy.777:21|
 :skolemid |496|
 :pattern ( (|Set#IsMember| |s#0@@0| |x#1|))
))))) (and (|$let#6$canCall| GenericPick._default.SetPick2$U@@1 |s#0@@0|) (= (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@1 |s#0@@0|) (let ((|x#2| (|$let#6_x| GenericPick._default.SetPick2$U@@1 |s#0@@0|)))
|x#2|))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@1 |s#0@@0|) ($IsGoodHeap $Heap))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (GenericPick._default.SetPick2$U@@2 T@U) (|s#0@@1| T@U) ) (!  (=> (and (or (|GenericPick.__default.SetPick2#canCall| GenericPick._default.SetPick2$U@@2 |s#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($Is SetType |s#0@@1| (TSet GenericPick._default.SetPick2$U@@2)) ($IsAlloc SetType |s#0@@1| (TSet GenericPick._default.SetPick2$U@@2) $Heap@@0)) (exists ((|x#0@@0| T@U) ) (!  (and ($IsBox |x#0@@0| GenericPick._default.SetPick2$U@@2) (|Set#IsMember| |s#0@@1| |x#0@@0|))
 :qid |SmallTestsdfy.777:21|
 :skolemid |493|
 :pattern ( (|Set#IsMember| |s#0@@1| |x#0@@0|))
))))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@2 |s#0@@1|) GenericPick._default.SetPick2$U@@2 $Heap@@0))
 :qid |SmallTestsdfy.776:18|
 :skolemid |495|
 :pattern ( ($IsAllocBox (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@2 |s#0@@1|) GenericPick._default.SetPick2$U@@2 $Heap@@0))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((GenericPick._default.SetPick2$U@@3 T@U) ($Heap@@1 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|GenericPick.__default.SetPick2#canCall| GenericPick._default.SetPick2$U@@3 (Lit SetType |s#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is SetType |s#0@@2| (TSet GenericPick._default.SetPick2$U@@3))) (exists ((|x#3| T@U) ) (!  (and ($IsBox |x#3| GenericPick._default.SetPick2$U@@3) (|Set#IsMember| (Lit SetType |s#0@@2|) |x#3|))
 :qid |SmallTestsdfy.777:21|
 :skolemid |500|
 :pattern ( (|Set#IsMember| |s#0@@2| |x#3|))
))))) (and (|$let#6$canCall| GenericPick._default.SetPick2$U@@3 (Lit SetType |s#0@@2|)) (= (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@3 (Lit SetType |s#0@@2|)) (let ((|x#4| (|$let#6_x| GenericPick._default.SetPick2$U@@3 (Lit SetType |s#0@@2|))))
|x#4|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |501|
 :pattern ( (GenericPick.__default.SetPick2 GenericPick._default.SetPick2$U@@3 (Lit SetType |s#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@0) ($IsAllocBox bx@@0 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |3847|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@1)) bx@@1) ($Is SetType ($Unbox SetType bx@@1) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@1 (TSet t@@3)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun GenericPick._default.SetPick2$U@@4 () T@U)
(declare-fun |s#0@@3| () T@U)
(declare-fun |x#6@0| () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |x#5@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$GenericPick.__default.SetPick2)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon5_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (exists ((|x#7| T@U) ) (!  (and ($IsBox |x#7| GenericPick._default.SetPick2$U@@4) (|Set#IsMember| |s#0@@3| |x#7|))
 :qid |SmallTestsdfy.779:9|
 :skolemid |502|
)))))
(let ((anon8_Else_correct  (=> (and (not (and ($IsBox |x#6@0| GenericPick._default.SetPick2$U@@4) ($IsAllocBox |x#6@0| GenericPick._default.SetPick2$U@@4 $Heap@@2))) (= (ControlFlow 0 5) 3)) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (and ($IsBox |x#6@0| GenericPick._default.SetPick2$U@@4) ($IsAllocBox |x#6@0| GenericPick._default.SetPick2$U@@4 $Heap@@2)) (= (ControlFlow 0 4) 3)) anon5_correct)))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and (and ($IsBox |x#5@0| GenericPick._default.SetPick2$U@@4) ($IsAllocBox |x#5@0| GenericPick._default.SetPick2$U@@4 $Heap@@2)) (|Set#IsMember| |s#0@@3| |x#5@0|)) (and (and (=> (= (ControlFlow 0 6) 1) anon7_Then_correct) (=> (= (ControlFlow 0 6) 4) anon8_Then_correct)) (=> (= (ControlFlow 0 6) 5) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) ($Is SetType |s#0@@3| (TSet GenericPick._default.SetPick2$U@@4))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 7) 6))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
