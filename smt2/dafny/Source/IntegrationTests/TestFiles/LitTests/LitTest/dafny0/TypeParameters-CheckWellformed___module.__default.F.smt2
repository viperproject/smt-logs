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
(declare-fun Tag (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.F (Int T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun |_module.__default.F#canCall| (Int T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun _module.__default.IsCelebrity (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |_module.__default.IsCelebrity#canCall| (T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|c#0| Int) (|people#0| T@U) ) (!  (=> (or (|_module.__default.F#canCall| (LitInt |c#0|) (Lit SetType |people#0|)) (and (< 1 $FunctionContextHeight) (and ($Is SetType |people#0| (TSet TInt)) (U_2_bool (Lit boolType (bool_2_U (_module.__default.IsCelebrity TInt ($Box intType (int_2_U (LitInt |c#0|))) (Lit SetType |people#0|)))))))) (= (_module.__default.F (LitInt |c#0|) (Lit SetType |people#0|)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |TypeParametersdfy.119:18|
 :weight 3
 :skolemid |4067|
 :pattern ( (_module.__default.F (LitInt |c#0|) (Lit SetType |people#0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.IsCelebrity$Person T@U) (|c#0@@0| T@U) (|people#0@@0| T@U) ) (!  (=> (or (|_module.__default.IsCelebrity#canCall| _module._default.IsCelebrity$Person |c#0@@0| |people#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |c#0@@0| _module._default.IsCelebrity$Person) ($Is SetType |people#0@@0| (TSet _module._default.IsCelebrity$Person))) (or (= |c#0@@0| |c#0@@0|) (|Set#IsMember| |people#0@@0| |c#0@@0|))))) (= (_module.__default.IsCelebrity _module._default.IsCelebrity$Person |c#0@@0| |people#0@@0|) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |unknown.0:0|
 :skolemid |4058|
 :pattern ( (_module.__default.IsCelebrity _module._default.IsCelebrity$Person |c#0@@0| |people#0@@0|))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3453|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3451|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.IsCelebrity$Person@@0 T@U) (|c#0@@1| T@U) (|people#0@@1| T@U) ) (!  (=> (or (|_module.__default.IsCelebrity#canCall| _module._default.IsCelebrity$Person@@0 |c#0@@1| (Lit SetType |people#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |c#0@@1| _module._default.IsCelebrity$Person@@0) ($Is SetType |people#0@@1| (TSet _module._default.IsCelebrity$Person@@0))) (or (= |c#0@@1| |c#0@@1|) (|Set#IsMember| (Lit SetType |people#0@@1|) |c#0@@1|))))) (= (_module.__default.IsCelebrity _module._default.IsCelebrity$Person@@0 |c#0@@1| (Lit SetType |people#0@@1|)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4059|
 :pattern ( (_module.__default.IsCelebrity _module._default.IsCelebrity$Person@@0 |c#0@@1| (Lit SetType |people#0@@1|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3462|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor BoxType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.IsCelebrity$Person@@1 T@U) (|c#0@@2| T@U) (|people#0@@2| T@U) ) (!  (=> (or (|_module.__default.IsCelebrity#canCall| _module._default.IsCelebrity$Person@@1 (Lit BoxType |c#0@@2|) (Lit SetType |people#0@@2|)) (and (< 0 $FunctionContextHeight) (and (and ($IsBox |c#0@@2| _module._default.IsCelebrity$Person@@1) ($Is SetType |people#0@@2| (TSet _module._default.IsCelebrity$Person@@1))) (or (= (Lit BoxType |c#0@@2|) (Lit BoxType |c#0@@2|)) (|Set#IsMember| (Lit SetType |people#0@@2|) (Lit BoxType |c#0@@2|)))))) (= (_module.__default.IsCelebrity _module._default.IsCelebrity$Person@@1 (Lit BoxType |c#0@@2|) (Lit SetType |people#0@@2|)) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4060|
 :pattern ( (_module.__default.IsCelebrity _module._default.IsCelebrity$Person@@1 (Lit BoxType |c#0@@2|) (Lit SetType |people#0@@2|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|c#0@@3| Int) (|people#0@@3| T@U) ) (!  (=> (or (|_module.__default.F#canCall| |c#0@@3| |people#0@@3|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |people#0@@3| (TSet TInt)) (_module.__default.IsCelebrity TInt ($Box intType (int_2_U |c#0@@3|)) |people#0@@3|)))) (= (_module.__default.F |c#0@@3| |people#0@@3|) (U_2_bool (Lit boolType (bool_2_U false)))))
 :qid |TypeParametersdfy.119:18|
 :skolemid |4066|
 :pattern ( (_module.__default.F |c#0@@3| |people#0@@3|))
))))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3482|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3483|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3475|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3463|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |3465|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3474|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3503|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3504|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3437|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3438|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3461|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |4659|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3468|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3454|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3452|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3497|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3499|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3476|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |3478|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun StartFuel_ParseGenerics._default.Many () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun BaseFuel_ParseGenerics._default.Many () T@U)
(declare-fun StartFuelAssert_ParseGenerics._default.Many () T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun |c#0@@4| () Int)
(declare-fun |people#0@@4| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.F)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon5_Else_correct true))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (= StartFuel_ParseGenerics._default.Many ($LS BaseFuel_ParseGenerics._default.Many))) (=> (and (and (= StartFuelAssert_ParseGenerics._default.Many ($LS ($LS BaseFuel_ParseGenerics._default.Many))) (= (AsFuelBottom BaseFuel_ParseGenerics._default.Many) BaseFuel_ParseGenerics._default.Many)) (and ($IsAlloc intType (int_2_U |c#0@@4|) TInt $Heap) ($IsAlloc SetType |people#0@@4| (TSet TInt) $Heap))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (= |c#0@@4| |c#0@@4|) (|Set#IsMember| |people#0@@4| ($Box intType (int_2_U |c#0@@4|))))) (=> (or (= |c#0@@4| |c#0@@4|) (|Set#IsMember| |people#0@@4| ($Box intType (int_2_U |c#0@@4|)))) (=> (and (|_module.__default.IsCelebrity#canCall| TInt ($Box intType (int_2_U |c#0@@4|)) |people#0@@4|) (_module.__default.IsCelebrity TInt ($Box intType (int_2_U |c#0@@4|)) |people#0@@4|)) (and (=> (= (ControlFlow 0 3) 1) anon5_Then_correct) (=> (= (ControlFlow 0 3) 2) anon5_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SetType |people#0@@4| (TSet TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 3))) anon0_correct)))
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
