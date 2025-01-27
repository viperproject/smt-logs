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
(declare-fun _module.__default.RogerThat (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.RogerThat#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun _module.__default.Rockin_k (T@U T@U) T@U)
(declare-fun |_module.__default.Rockin_k#canCall| (T@U T@U) Bool)
(declare-fun _module.__default.Groovy (T@U T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.Groovy#canCall| (T@U T@U Int) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.__default.Cool (Bool) Bool)
(declare-fun |_module.__default.Cool#canCall| (Bool) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
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
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TBool TInt TagBool TagInt alloc)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RogerThat$G T@U) (|g#0| T@U) ) (!  (=> (or (|_module.__default.RogerThat#canCall| _module._default.RogerThat$G (Lit BoxType |g#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |g#0| _module._default.RogerThat$G))) (= (_module.__default.RogerThat _module._default.RogerThat$G (Lit BoxType |g#0|)) (Lit BoxType |g#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4073|
 :pattern ( (_module.__default.RogerThat _module._default.RogerThat$G (Lit BoxType |g#0|)))
))))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|_module._default.Rockin'$G| T@U) (|g#0@@0| T@U) ) (!  (=> (or (|_module.__default.Rockin_k#canCall| |_module._default.Rockin'$G| |g#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@0| |_module._default.Rockin'$G|))) (= (_module.__default.Rockin_k |_module._default.Rockin'$G| |g#0@@0|) (let ((|h#0| |g#0@@0|))
|h#0|)))
 :qid |unknown.0:0|
 :skolemid |4081|
 :pattern ( (_module.__default.Rockin_k |_module._default.Rockin'$G| |g#0@@0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Groovy$G T@U) (|g#0@@1| T@U) (|x#0| Int) ) (!  (=> (or (|_module.__default.Groovy#canCall| _module._default.Groovy$G |g#0@@1| (LitInt |x#0|)) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@1| _module._default.Groovy$G))) (and (let ((|h#1| |g#0@@1|))
 (=> (= (LitInt |x#0|) (LitInt 80)) (|_module.__default.RogerThat#canCall| _module._default.Groovy$G |h#1|))) (= (_module.__default.Groovy _module._default.Groovy$G |g#0@@1| (LitInt |x#0|)) (let ((|h#1@@0| |g#0@@1|))
(ite (= (LitInt |x#0|) (LitInt 80)) (_module.__default.RogerThat _module._default.Groovy$G |h#1@@0|) (|Seq#Index| (|Seq#Build| |Seq#Empty| |h#1@@0|) (LitInt 0)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4087|
 :pattern ( (_module.__default.Groovy _module._default.Groovy$G |g#0@@1| (LitInt |x#0|)))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RogerThat$G@@0 T@U) (|g#0@@2| T@U) ) (!  (=> (or (|_module.__default.RogerThat#canCall| _module._default.RogerThat$G@@0 |g#0@@2|) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@2| _module._default.RogerThat$G@@0))) ($IsBox (_module.__default.RogerThat _module._default.RogerThat$G@@0 |g#0@@2|) _module._default.RogerThat$G@@0))
 :qid |unknown.0:0|
 :skolemid |4069|
 :pattern ( (_module.__default.RogerThat _module._default.RogerThat$G@@0 |g#0@@2|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|_module._default.Rockin'$G@@0| T@U) (|g#0@@3| T@U) ) (!  (=> (or (|_module.__default.Rockin_k#canCall| |_module._default.Rockin'$G@@0| |g#0@@3|) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@3| |_module._default.Rockin'$G@@0|))) ($IsBox (_module.__default.Rockin_k |_module._default.Rockin'$G@@0| |g#0@@3|) |_module._default.Rockin'$G@@0|))
 :qid |unknown.0:0|
 :skolemid |4078|
 :pattern ( (_module.__default.Rockin_k |_module._default.Rockin'$G@@0| |g#0@@3|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Groovy$G@@0 T@U) (|g#0@@4| T@U) (|x#0@@0| Int) ) (!  (=> (or (|_module.__default.Groovy#canCall| _module._default.Groovy$G@@0 |g#0@@4| |x#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@4| _module._default.Groovy$G@@0))) (and (let ((|h#0@@0| |g#0@@4|))
 (=> (= |x#0@@0| (LitInt 80)) (|_module.__default.RogerThat#canCall| _module._default.Groovy$G@@0 |h#0@@0|))) (= (_module.__default.Groovy _module._default.Groovy$G@@0 |g#0@@4| |x#0@@0|) (let ((|h#0@@1| |g#0@@4|))
(ite (= |x#0@@0| (LitInt 80)) (_module.__default.RogerThat _module._default.Groovy$G@@0 |h#0@@1|) (|Seq#Index| (|Seq#Build| |Seq#Empty| |h#0@@1|) (LitInt 0)))))))
 :qid |unknown.0:0|
 :skolemid |4086|
 :pattern ( (_module.__default.Groovy _module._default.Groovy$G@@0 |g#0@@4| |x#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|_module._default.Rockin'$G@@1| T@U) (|g#0@@5| T@U) ) (!  (=> (or (|_module.__default.Rockin_k#canCall| |_module._default.Rockin'$G@@1| (Lit BoxType |g#0@@5|)) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@5| |_module._default.Rockin'$G@@1|))) (= (_module.__default.Rockin_k |_module._default.Rockin'$G@@1| (Lit BoxType |g#0@@5|)) (let ((|h#1@@1| (Lit BoxType |g#0@@5|)))
|h#1@@1|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4082|
 :pattern ( (_module.__default.Rockin_k |_module._default.Rockin'$G@@1| (Lit BoxType |g#0@@5|)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3462|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3660|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3475|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((s@@0 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@0)) (= (|Seq#Index| (|Seq#Build| s@@0 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@0))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@0 v@@1) i) (|Seq#Index| s@@0 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3661|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@0 v@@1) i))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Groovy$G@@1 T@U) (|g#0@@6| T@U) (|x#0@@1| Int) ) (!  (=> (or (|_module.__default.Groovy#canCall| _module._default.Groovy$G@@1 |g#0@@6| |x#0@@1|) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@6| _module._default.Groovy$G@@1))) ($IsBox (_module.__default.Groovy _module._default.Groovy$G@@1 |g#0@@6| |x#0@@1|) _module._default.Groovy$G@@1))
 :qid |unknown.0:0|
 :skolemid |4083|
 :pattern ( (_module.__default.Groovy _module._default.Groovy$G@@1 |g#0@@6| |x#0@@1|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|b#0| Bool) ) (!  (=> (or (|_module.__default.Cool#canCall| |b#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.Cool |b#0|) |b#0|))
 :qid |TypeParametersdfy.129:21|
 :skolemid |4076|
 :pattern ( (_module.__default.Cool |b#0|))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3463|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TBool) (and (= ($Box boolType ($Unbox boolType bx@@0)) bx@@0) ($Is boolType ($Unbox boolType bx@@0) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |3465|
 :pattern ( ($IsBox bx@@0 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@0) ($Is T@@2 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3474|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@0))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3657|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3461|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Groovy$G@@2 T@U) (|g#0@@7| T@U) (|x#0@@2| Int) ) (!  (=> (or (|_module.__default.Groovy#canCall| _module._default.Groovy$G@@2 (Lit BoxType |g#0@@7|) (LitInt |x#0@@2|)) (and (< 1 $FunctionContextHeight) ($IsBox |g#0@@7| _module._default.Groovy$G@@2))) (and (let ((|h#2| (Lit BoxType |g#0@@7|)))
 (=> (= (LitInt |x#0@@2|) (LitInt 80)) (|_module.__default.RogerThat#canCall| _module._default.Groovy$G@@2 |h#2|))) (= (_module.__default.Groovy _module._default.Groovy$G@@2 (Lit BoxType |g#0@@7|) (LitInt |x#0@@2|)) (let ((|h#2@@0| (Lit BoxType |g#0@@7|)))
(ite (= (LitInt |x#0@@2|) (LitInt 80)) (_module.__default.RogerThat _module._default.Groovy$G@@2 |h#2@@0|) (|Seq#Index| (Lit SeqType (|Seq#Build| |Seq#Empty| |h#2@@0|)) (LitInt 0)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |4088|
 :pattern ( (_module.__default.Groovy _module._default.Groovy$G@@2 (Lit BoxType |g#0@@7|) (LitInt |x#0@@2|)))
))))
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
 :skolemid |4659|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.RogerThat$G@@1 T@U) (|g#0@@8| T@U) ) (!  (=> (or (|_module.__default.RogerThat#canCall| _module._default.RogerThat$G@@1 |g#0@@8|) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@8| _module._default.RogerThat$G@@1))) (= (_module.__default.RogerThat _module._default.RogerThat$G@@1 |g#0@@8|) |g#0@@8|))
 :qid |unknown.0:0|
 :skolemid |4072|
 :pattern ( (_module.__default.RogerThat _module._default.RogerThat$G@@1 |g#0@@8|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|b#0@@0| T@U) ) (!  (=> (or (|_module.__default.Cool#canCall| (U_2_bool (Lit boolType |b#0@@0|))) (< 0 $FunctionContextHeight)) (= (_module.__default.Cool (U_2_bool (Lit boolType |b#0@@0|))) (U_2_bool (Lit boolType |b#0@@0|))))
 :qid |TypeParametersdfy.129:21|
 :weight 3
 :skolemid |4077|
 :pattern ( (_module.__default.Cool (U_2_bool (Lit boolType |b#0@@0|))))
))))
(assert (forall ((s@@2 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@2 val@@4)) s@@2) (= (|Seq#Build_inv1| (|Seq#Build| s@@2 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3659|
 :pattern ( (|Seq#Build| s@@2 val@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.RogerThat$G@@2 T@U) (|g#0@@9| T@U) ) (!  (=> (and (or (|_module.__default.RogerThat#canCall| _module._default.RogerThat$G@@2 |g#0@@9|) (and (< 0 $FunctionContextHeight) (and ($IsBox |g#0@@9| _module._default.RogerThat$G@@2) ($IsAllocBox |g#0@@9| _module._default.RogerThat$G@@2 $Heap)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.RogerThat _module._default.RogerThat$G@@2 |g#0@@9|) _module._default.RogerThat$G@@2 $Heap))
 :qid |TypeParametersdfy.124:16|
 :skolemid |4070|
 :pattern ( ($IsAllocBox (_module.__default.RogerThat _module._default.RogerThat$G@@2 |g#0@@9|) _module._default.RogerThat$G@@2 $Heap))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|_module._default.Rockin'$G@@2| T@U) (|g#0@@10| T@U) ) (!  (=> (and (or (|_module.__default.Rockin_k#canCall| |_module._default.Rockin'$G@@2| |g#0@@10|) (and (< 0 $FunctionContextHeight) (and ($IsBox |g#0@@10| |_module._default.Rockin'$G@@2|) ($IsAllocBox |g#0@@10| |_module._default.Rockin'$G@@2| $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAllocBox (_module.__default.Rockin_k |_module._default.Rockin'$G@@2| |g#0@@10|) |_module._default.Rockin'$G@@2| $Heap@@0))
 :qid |TypeParametersdfy.134:16|
 :skolemid |4079|
 :pattern ( ($IsAllocBox (_module.__default.Rockin_k |_module._default.Rockin'$G@@2| |g#0@@10|) |_module._default.Rockin'$G@@2| $Heap@@0))
))))
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
(assert (forall ((s@@3 T@U) ) (!  (=> (= (|Seq#Length| s@@3) 0) (= s@@3 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3658|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((h@@0 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3497|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |3499|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@1))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (_module._default.Groovy$G@@3 T@U) (|g#0@@11| T@U) (|x#0@@3| Int) ) (!  (=> (and (or (|_module.__default.Groovy#canCall| _module._default.Groovy$G@@3 |g#0@@11| |x#0@@3|) (and (< 1 $FunctionContextHeight) (and ($IsBox |g#0@@11| _module._default.Groovy$G@@3) ($IsAllocBox |g#0@@11| _module._default.Groovy$G@@3 $Heap@@1)))) ($IsGoodHeap $Heap@@1)) ($IsAllocBox (_module.__default.Groovy _module._default.Groovy$G@@3 |g#0@@11| |x#0@@3|) _module._default.Groovy$G@@3 $Heap@@1))
 :qid |TypeParametersdfy.140:16|
 :skolemid |4084|
 :pattern ( ($IsAllocBox (_module.__default.Groovy _module._default.Groovy$G@@3 |g#0@@11| |x#0@@3|) _module._default.Groovy$G@@3 $Heap@@1))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |##g#1_1_1_1_0_0@0| () Bool)
(declare-fun |n#0| () Int)
(declare-fun $Heap@@2 () T@U)
(declare-fun |##x#1_1_1_1_0_0@0| () Int)
(declare-fun |##g#1_1_1_0_0@0| () Bool)
(declare-fun |##x#1_1_1_0_0@0| () Int)
(declare-fun |##g#1_1_0_0@0| () Bool)
(declare-fun |##g#1_0_0@0| () Bool)
(declare-fun |##b#0_0@0| () Bool)
(declare-fun StartFuel_ParseGenerics._default.Many () T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun BaseFuel_ParseGenerics._default.Many () T@U)
(declare-fun StartFuelAssert_ParseGenerics._default.Many () T@U)
(declare-fun AsFuelBottom (T@U) T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.IsRogerCool)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon27_Then_correct  (=> (and (= |##g#1_1_1_1_0_0@0| (<= (+ |n#0| 1) |n#0|)) ($IsAlloc boolType (bool_2_U |##g#1_1_1_1_0_0@0|) TBool $Heap@@2)) (=> (and (and (= |##x#1_1_1_1_0_0@0| (LitInt 81)) ($IsAlloc intType (int_2_U |##x#1_1_1_1_0_0@0|) TInt $Heap@@2)) (and (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)) (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (=> (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)) (or (U_2_bool ($Unbox boolType (_module.__default.Groovy TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)))) (let ((|h#1_1_1_1_0_0| (<= (+ |n#0| 1) |n#0|)))
 (=> (= (LitInt 81) (LitInt 80)) (=> (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U |h#1_1_1_1_0_0|))) (or (U_2_bool ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (bool_2_U |h#1_1_1_1_0_0|))))) |h#1_1_1_1_0_0|))))))) (=> (= (ControlFlow 0 23) (- 0 22)) (=> (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)) (or (U_2_bool ($Unbox boolType (_module.__default.Groovy TBool ($Box boolType (bool_2_U (<= (+ |n#0| 1) |n#0|))) (LitInt 81)))) (let ((|h#1_1_1_1_0_0@@0| (<= (+ |n#0| 1) |n#0|)))
 (=> (or (not (= (LitInt 81) (LitInt 80))) (not true)) (U_2_bool ($Unbox boolType (|Seq#Index| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U |h#1_1_1_1_0_0@@0|))) (LitInt 0))))))))))))))
(let ((anon26_Else_correct  (=> (= (ControlFlow 0 25) 23) anon27_Then_correct)))
(let ((anon26_Then_correct  (=> (and (= |##g#1_1_1_0_0@0| (< |n#0| |n#0|)) ($IsAlloc boolType (bool_2_U |##g#1_1_1_0_0@0|) TBool $Heap@@2)) (=> (and (and (= |##x#1_1_1_0_0@0| (LitInt 80)) ($IsAlloc intType (int_2_U |##x#1_1_1_0_0@0|) TInt $Heap@@2)) (and (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)) (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (=> (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)) (or (U_2_bool ($Unbox boolType (_module.__default.Groovy TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)))) (let ((|h#1_1_1_0_0| (< |n#0| |n#0|)))
 (=> (= (LitInt 80) (LitInt 80)) (=> (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U |h#1_1_1_0_0|))) (or (U_2_bool ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (bool_2_U |h#1_1_1_0_0|))))) |h#1_1_1_0_0|))))))) (=> (= (ControlFlow 0 20) (- 0 19)) (=> (|_module.__default.Groovy#canCall| TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)) (or (U_2_bool ($Unbox boolType (_module.__default.Groovy TBool ($Box boolType (bool_2_U (< |n#0| |n#0|))) (LitInt 80)))) (let ((|h#1_1_1_0_0@@0| (< |n#0| |n#0|)))
 (=> (or (not (= (LitInt 80) (LitInt 80))) (not true)) (U_2_bool ($Unbox boolType (|Seq#Index| (|Seq#Build| |Seq#Empty| ($Box boolType (bool_2_U |h#1_1_1_0_0@@0|))) (LitInt 0))))))))))))))
(let ((anon25_Else_correct  (and (=> (= (ControlFlow 0 26) 20) anon26_Then_correct) (=> (= (ControlFlow 0 26) 25) anon26_Else_correct))))
(let ((anon25_Then_correct  (=> (= |##g#1_1_0_0@0| (U_2_bool (Lit boolType (bool_2_U false)))) (=> (and ($IsAlloc boolType (bool_2_U |##g#1_1_0_0@0|) TBool $Heap@@2) (|_module.__default.Rockin_k#canCall| TBool ($Box boolType (Lit boolType (bool_2_U false))))) (=> (and (and (|_module.__default.Rockin_k#canCall| TBool ($Box boolType (Lit boolType (bool_2_U false)))) (= (ControlFlow 0 18) (- 0 17))) (|_module.__default.Rockin_k#canCall| TBool ($Box boolType (Lit boolType (bool_2_U false))))) (or (U_2_bool (Lit boolType ($Unbox boolType (_module.__default.Rockin_k TBool ($Box boolType (Lit boolType (bool_2_U false))))))) (let ((|h#1_1_0_0| (U_2_bool (Lit boolType (bool_2_U false)))))
|h#1_1_0_0|)))))))
(let ((anon22_Else_correct  (and (=> (= (ControlFlow 0 27) 18) anon25_Then_correct) (=> (= (ControlFlow 0 27) 26) anon25_Else_correct))))
(let ((anon11_correct  (=> (and (and (= |##g#1_0_0@0|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) ($IsAlloc boolType (bool_2_U |##g#1_0_0@0|) TBool $Heap@@2)) (and (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))) (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (=> (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))) (or (U_2_bool ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))))) (U_2_bool (Lit boolType (bool_2_U (< 2 3))))))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (=> (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))) (or (U_2_bool ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))))) (< |n#0| |n#0|)))) (=> (= (ControlFlow 0 10) (- 0 9)) (=> (|_module.__default.RogerThat#canCall| TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))) (or (U_2_bool ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (bool_2_U  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))))) (< |n#0| (+ |n#0| 1))))))))))
(let ((anon24_Else_correct  (=> (and (not (and (< 2 3) (< |n#0| |n#0|))) (= (ControlFlow 0 14) 10)) anon11_correct)))
(let ((anon24_Then_correct  (=> (and (and (< 2 3) (< |n#0| |n#0|)) (= (ControlFlow 0 13) 10)) anon11_correct)))
(let ((anon23_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U (< 2 3))))) (and (=> (= (ControlFlow 0 16) 13) anon24_Then_correct) (=> (= (ControlFlow 0 16) 14) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U (< 2 3)))) (and (=> (= (ControlFlow 0 15) 13) anon24_Then_correct) (=> (= (ControlFlow 0 15) 14) anon24_Else_correct)))))
(let ((anon19_Else_correct  (and (and (=> (= (ControlFlow 0 28) 27) anon22_Else_correct) (=> (= (ControlFlow 0 28) 15) anon23_Then_correct)) (=> (= (ControlFlow 0 28) 16) anon23_Else_correct))))
(let ((anon5_correct  (=> (and (and (= |##b#0_0@0|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) ($IsAlloc boolType (bool_2_U |##b#0_0@0|) TBool $Heap@@2)) (and (|_module.__default.Cool#canCall|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (|_module.__default.Cool#canCall|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.__default.Cool#canCall|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (or (_module.__default.Cool  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (U_2_bool (Lit boolType (bool_2_U (< 2 3))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.__default.Cool#canCall|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (or (_module.__default.Cool  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (< |n#0| |n#0|)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.__default.Cool#canCall|  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (or (_module.__default.Cool  (and (and (< 2 3) (< |n#0| |n#0|)) (< |n#0| (+ |n#0| 1)))) (< |n#0| (+ |n#0| 1))))))))))
(let ((anon21_Else_correct  (=> (and (not (and (< 2 3) (< |n#0| |n#0|))) (= (ControlFlow 0 6) 2)) anon5_correct)))
(let ((anon21_Then_correct  (=> (and (and (< 2 3) (< |n#0| |n#0|)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon20_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U (< 2 3))))) (and (=> (= (ControlFlow 0 8) 5) anon21_Then_correct) (=> (= (ControlFlow 0 8) 6) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U (< 2 3)))) (and (=> (= (ControlFlow 0 7) 5) anon21_Then_correct) (=> (= (ControlFlow 0 7) 6) anon21_Else_correct)))))
(let ((anon0_correct  (=> (and (and (= StartFuel_ParseGenerics._default.Many ($LS BaseFuel_ParseGenerics._default.Many)) (= StartFuelAssert_ParseGenerics._default.Many ($LS ($LS BaseFuel_ParseGenerics._default.Many)))) (and (= (AsFuelBottom BaseFuel_ParseGenerics._default.Many) BaseFuel_ParseGenerics._default.Many) (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)))) (and (and (=> (= (ControlFlow 0 29) 28) anon19_Else_correct) (=> (= (ControlFlow 0 29) 7) anon20_Then_correct)) (=> (= (ControlFlow 0 29) 8) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (= 2 $FunctionContextHeight)) (and (and (|_module.__default.RogerThat#canCall| TBool ($Box boolType (Lit boolType (bool_2_U true)))) (and (U_2_bool (Lit boolType ($Unbox boolType (_module.__default.RogerThat TBool ($Box boolType (Lit boolType (bool_2_U true))))))) (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 30) 29))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 11))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 18) (- 17))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 20) (- 21))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
