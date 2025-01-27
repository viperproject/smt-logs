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
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun |##_module.Stream.Next| () T@U)
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
(declare-fun _module.Stream.Next_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Stream.Next| (Int T@U) T@U)
(declare-fun _module.__default.CoUp (T@U Int Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.CoUp#canCall| (Int Bool) Bool)
(declare-fun _module.Stream.shead (T@U) Int)
(declare-fun _module.Stream.stail (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._module.Stream |##_module.Stream.Next| tytagFamily$Stream)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.Stream) (_module.Stream.Next_q d))
 :qid |unknown.0:0|
 :skolemid |2095|
 :pattern ( (_module.Stream.Next_q d) ($Is DatatypeTypeType d Tclass._module.Stream))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1338|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1336|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Next_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Next|))
 :qid |unknown.0:0|
 :skolemid |2085|
 :pattern ( (_module.Stream.Next_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1347|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Next_q d@@1) (exists ((|a#12#0#0| Int) (|a#12#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Next| |a#12#0#0| |a#12#1#0|))
 :qid |Datatypedfy.83:26|
 :skolemid |2086|
)))
 :qid |unknown.0:0|
 :skolemid |2087|
 :pattern ( (_module.Stream.Next_q d@@1))
)))
(assert (forall (($ly T@U) (|n#0| Int) (|b#0| Bool) ) (! (= (_module.__default.CoUp ($LS $ly) |n#0| |b#0|) (_module.__default.CoUp $ly |n#0| |b#0|))
 :qid |Datatypedfy.85:10|
 :skolemid |2004|
 :pattern ( (_module.__default.CoUp ($LS $ly) |n#0| |b#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) (|n#0@@0| Int) (|b#0@@0| Bool) ) (!  (=> (or (|_module.__default.CoUp#canCall| |n#0@@0| |b#0@@0|) (< 1 $FunctionContextHeight)) (and (and (=> |b#0@@0| (|_module.__default.CoUp#canCall| |n#0@@0| (U_2_bool (Lit boolType (bool_2_U false))))) (=> (not |b#0@@0|) (|_module.__default.CoUp#canCall| (+ |n#0@@0| 1) (U_2_bool (Lit boolType (bool_2_U true)))))) (= (_module.__default.CoUp ($LS $ly@@0) |n#0@@0| |b#0@@0|) (ite |b#0@@0| (_module.__default.CoUp $ly@@0 |n#0@@0| (U_2_bool (Lit boolType (bool_2_U false)))) (|#_module.Stream.Next| |n#0@@0| (_module.__default.CoUp $ly@@0 (+ |n#0@@0| 1) (U_2_bool (Lit boolType (bool_2_U true)))))))))
 :qid |Datatypedfy.85:10|
 :skolemid |2008|
 :pattern ( (_module.__default.CoUp ($LS $ly@@0) |n#0@@0| |b#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|n#0@@1| Int) (|b#0@@1| Bool) ) (!  (=> (or (|_module.__default.CoUp#canCall| |n#0@@1| |b#0@@1|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (_module.__default.CoUp $ly@@1 |n#0@@1| |b#0@@1|) Tclass._module.Stream))
 :qid |Datatypedfy.85:10|
 :skolemid |2006|
 :pattern ( (_module.__default.CoUp $ly@@1 |n#0@@1| |b#0@@1|))
))))
(assert (forall ((|a#11#0#0| Int) (|a#11#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|)) |##_module.Stream.Next|)
 :qid |Datatypedfy.83:26|
 :skolemid |2084|
 :pattern ( (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#14#0#0| Int) (|a#14#1#0| T@U) ) (! (= (_module.Stream.shead (|#_module.Stream.Next| |a#14#0#0| |a#14#1#0|)) |a#14#0#0|)
 :qid |Datatypedfy.83:26|
 :skolemid |2091|
 :pattern ( (|#_module.Stream.Next| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#15#0#0| Int) (|a#15#1#0| T@U) ) (! (= (_module.Stream.stail (|#_module.Stream.Next| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Datatypedfy.83:26|
 :skolemid |2092|
 :pattern ( (|#_module.Stream.Next| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1346|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |2280|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@2 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Stream.Next_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass._module.Stream $h))) ($IsAlloc intType (int_2_U (_module.Stream.shead d@@2)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |2089|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Stream.shead d@@2)) TInt $h))
)))
(assert (forall ((d@@3 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@3 Tclass._module.Stream)) ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Stream $h@@0))
 :qid |unknown.0:0|
 :skolemid |2093|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass._module.Stream $h@@0))
)))
(assert (= (Tag Tclass._module.Stream) Tagclass._module.Stream))
(assert (= (TagFamily Tclass._module.Stream) tytagFamily$Stream))
(assert (forall ((d@@4 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Stream.Next_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Stream $h@@1))) ($IsAlloc DatatypeTypeType (_module.Stream.stail d@@4) Tclass._module.Stream $h@@1))
 :qid |unknown.0:0|
 :skolemid |2090|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream.stail d@@4) Tclass._module.Stream $h@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1339|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1337|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((|a#13#0#0| Int) (|a#13#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Next| |a#13#0#0| |a#13#1#0|) Tclass._module.Stream)  (and ($Is intType (int_2_U |a#13#0#0|) TInt) ($Is DatatypeTypeType |a#13#1#0| Tclass._module.Stream)))
 :qid |Datatypedfy.83:26|
 :skolemid |2088|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Next| |a#13#0#0| |a#13#1#0|) Tclass._module.Stream))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1382|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@0)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1384|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1361|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is boolType v@@2 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1363|
 :pattern ( ($Is boolType v@@2 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@@2| () Bool)
(declare-fun |n#0@@2| () Int)
(declare-fun $Heap () T@U)
(declare-fun |##b#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.CoUp)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (and |b#0@@2| ($IsAlloc intType (int_2_U |n#0@@2|) TInt $Heap)) (and (= |##b#0@0| (U_2_bool (Lit boolType (bool_2_U false)))) ($IsAlloc boolType (bool_2_U |##b#0@0|) TBool $Heap))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (<= 0 (LitInt 1)) (= (LitInt 1) (LitInt 1)))) (=> (or (<= 0 (LitInt 1)) (= (LitInt 1) (LitInt 1))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (or (<= 0 |n#0@@2|) (< (LitInt 1) (LitInt 1))) (= |n#0@@2| |n#0@@2|))) (=> (or (or (<= 0 |n#0@@2|) (< (LitInt 1) (LitInt 1))) (= |n#0@@2| |n#0@@2|)) (=> (= (ControlFlow 0 3) (- 0 2)) (or (< (LitInt 1) (LitInt 1)) (and (= (LitInt 1) (LitInt 1)) (or (< |n#0@@2| |n#0@@2|) (and (= |n#0@@2| |n#0@@2|) (and (not |##b#0@0|) |b#0@@2|)))))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 7) 1) anon7_Then_correct) (=> (= (ControlFlow 0 7) 3) anon8_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon8_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 7))) anon0_correct)))
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
