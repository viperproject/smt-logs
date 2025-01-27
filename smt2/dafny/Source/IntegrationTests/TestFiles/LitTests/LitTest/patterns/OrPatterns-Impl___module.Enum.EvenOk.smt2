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
(declare-fun Tagclass._module.Enum () T@U)
(declare-fun |##_module.Enum.One| () T@U)
(declare-fun |##_module.Enum.Two| () T@U)
(declare-fun |##_module.Enum.Three| () T@U)
(declare-fun tytagFamily$Enum () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Enum.One| () T@U)
(declare-fun |#_module.Enum.Two| () T@U)
(declare-fun |#_module.Enum.Three| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Enum () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Enum.One_q (T@U) Bool)
(declare-fun _module.Enum.Two_q (T@U) Bool)
(declare-fun _module.Enum.Three_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Enum.Even_k (T@U) Bool)
(declare-fun |_module.Enum.Even_k#canCall| (T@U) Bool)
(declare-fun _module.Enum.Even_k_k (T@U) Bool)
(declare-fun |_module.Enum.Even_k_k#canCall| (T@U) Bool)
(declare-fun _module.Enum.Even (T@U) Bool)
(declare-fun |_module.Enum.Even#canCall| (T@U) Bool)
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
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.Enum |##_module.Enum.One| |##_module.Enum.Two| |##_module.Enum.Three| tytagFamily$Enum)
)
(assert (= (DatatypeCtorId |#_module.Enum.One|) |##_module.Enum.One|))
(assert (= (DatatypeCtorId |#_module.Enum.Two|) |##_module.Enum.Two|))
(assert (= (DatatypeCtorId |#_module.Enum.Three|) |##_module.Enum.Three|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.Enum.One| Tclass._module.Enum))
(assert ($Is DatatypeTypeType |#_module.Enum.Two| Tclass._module.Enum))
(assert ($Is DatatypeTypeType |#_module.Enum.Three| Tclass._module.Enum))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2046|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d T@U) ) (! (= (_module.Enum.One_q d) (= (DatatypeCtorId d) |##_module.Enum.One|))
 :qid |unknown.0:0|
 :skolemid |2523|
 :pattern ( (_module.Enum.One_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Enum.Two_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Enum.Two|))
 :qid |unknown.0:0|
 :skolemid |2525|
 :pattern ( (_module.Enum.Two_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Enum.Three_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Enum.Three|))
 :qid |unknown.0:0|
 :skolemid |2527|
 :pattern ( (_module.Enum.Three_q d@@1))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2057|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Enum.One_q d@@2) (= d@@2 |#_module.Enum.One|))
 :qid |unknown.0:0|
 :skolemid |2524|
 :pattern ( (_module.Enum.One_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.Enum.Two_q d@@3) (= d@@3 |#_module.Enum.Two|))
 :qid |unknown.0:0|
 :skolemid |2526|
 :pattern ( (_module.Enum.Two_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Enum.Three_q d@@4) (= d@@4 |#_module.Enum.Three|))
 :qid |unknown.0:0|
 :skolemid |2528|
 :pattern ( (_module.Enum.Three_q d@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|_module.Enum.Even_k#canCall| this) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this Tclass._module.Enum))) (= (_module.Enum.Even_k this) (ite (_module.Enum.One_q this) false (ite (_module.Enum.Two_q this) true false))))
 :qid |OrPatternsdfy.8:13|
 :skolemid |2542|
 :pattern ( (_module.Enum.Even_k this))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|_module.Enum.Even_k_k#canCall| this@@0) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@0 Tclass._module.Enum))) (= (_module.Enum.Even_k_k this@@0) (ite (_module.Enum.One_q this@@0) false (ite (_module.Enum.Two_q this@@0) true false))))
 :qid |OrPatternsdfy.14:13|
 :skolemid |2546|
 :pattern ( (_module.Enum.Even_k_k this@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.Enum.Even#canCall| this@@1) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass._module.Enum))) (= (_module.Enum.Even this@@1) (_module.Enum.Two_q this@@1)))
 :qid |OrPatternsdfy.4:13|
 :skolemid |2538|
 :pattern ( (_module.Enum.Even this@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.Enum.Even_k#canCall| (Lit DatatypeTypeType this@@2)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass._module.Enum))) (= (_module.Enum.Even_k (Lit DatatypeTypeType this@@2)) (ite (_module.Enum.One_q (Lit DatatypeTypeType this@@2)) false (ite (_module.Enum.Two_q (Lit DatatypeTypeType this@@2)) true false))))
 :qid |OrPatternsdfy.8:13|
 :weight 3
 :skolemid |2543|
 :pattern ( (_module.Enum.Even_k (Lit DatatypeTypeType this@@2)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|_module.Enum.Even_k_k#canCall| (Lit DatatypeTypeType this@@3)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@3 Tclass._module.Enum))) (= (_module.Enum.Even_k_k (Lit DatatypeTypeType this@@3)) (ite (_module.Enum.One_q (Lit DatatypeTypeType this@@3)) false (ite (_module.Enum.Two_q (Lit DatatypeTypeType this@@3)) true false))))
 :qid |OrPatternsdfy.14:13|
 :weight 3
 :skolemid |2547|
 :pattern ( (_module.Enum.Even_k_k (Lit DatatypeTypeType this@@3)))
))))
(assert (forall ((x@@4 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2056|
 :pattern ( ($Box T@@1 x@@4))
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
 :skolemid |2644|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> ($Is DatatypeTypeType d@@5 Tclass._module.Enum) (or (or (_module.Enum.One_q d@@5) (_module.Enum.Two_q d@@5)) (_module.Enum.Three_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |2531|
 :pattern ( (_module.Enum.Three_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Enum))
 :pattern ( (_module.Enum.Two_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Enum))
 :pattern ( (_module.Enum.One_q d@@5) ($Is DatatypeTypeType d@@5 Tclass._module.Enum))
)))
(assert (forall ((d@@6 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@6 Tclass._module.Enum)) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Enum $h))
 :qid |unknown.0:0|
 :skolemid |2529|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Enum $h))
)))
(assert (= (Tag Tclass._module.Enum) Tagclass._module.Enum))
(assert (= (TagFamily Tclass._module.Enum) tytagFamily$Enum))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@4 T@U) ) (!  (=> (or (|_module.Enum.Even#canCall| (Lit DatatypeTypeType this@@4)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@4 Tclass._module.Enum))) (= (_module.Enum.Even (Lit DatatypeTypeType this@@4)) (U_2_bool (Lit boolType (bool_2_U (_module.Enum.Two_q (Lit DatatypeTypeType this@@4)))))))
 :qid |OrPatternsdfy.4:13|
 :weight 3
 :skolemid |2539|
 :pattern ( (_module.Enum.Even (Lit DatatypeTypeType this@@4)))
))))
(assert (= |#_module.Enum.One| (Lit DatatypeTypeType |#_module.Enum.One|)))
(assert (= |#_module.Enum.Two| (Lit DatatypeTypeType |#_module.Enum.Two|)))
(assert (= |#_module.Enum.Three| (Lit DatatypeTypeType |#_module.Enum.Three|)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@5)) (Lit BoxType ($Box T@@2 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2047|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun StartFuel_Lists.List.Length () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun BaseFuel_Lists.List.Length () T@U)
(declare-fun StartFuelAssert_Lists.List.Length () T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@5 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.Enum.EvenOk)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= StartFuel_Lists.List.Length ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))) (= StartFuelAssert_Lists.List.Length ($LS ($LS ($LS ($LS ($LS ($LS BaseFuel_Lists.List.Length)))))))) (and (= (AsFuelBottom BaseFuel_Lists.List.Length) BaseFuel_Lists.List.Length) (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (_module.Enum.Even this@@5) (_module.Enum.Even_k this@@5))) (=> (= (_module.Enum.Even this@@5) (_module.Enum.Even_k this@@5)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (_module.Enum.Even_k this@@5) (_module.Enum.Even_k_k this@@5))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType this@@5 Tclass._module.Enum) ($IsAlloc DatatypeTypeType this@@5 Tclass._module.Enum $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
