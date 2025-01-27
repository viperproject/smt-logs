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
(declare-fun Tagclass._module.pos () T@U)
(declare-fun tytagFamily$pos () T@U)
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
(declare-fun _module.__default.IsFactor (Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |_module.__default.IsFactor#canCall| (Int Int) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun _module.__default.Factors (Int) T@U)
(declare-fun |_module.__default.Factors#canCall| (Int) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.pos () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TagSet alloc Tagclass._module.pos tytagFamily$pos)
)
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0| Int) (|x#0| Int) ) (!  (=> (or (|_module.__default.IsFactor#canCall| (LitInt |p#0|) (LitInt |x#0|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 1) |p#0|) (<= (LitInt 1) |x#0|)))) (= (_module.__default.IsFactor (LitInt |p#0|) (LitInt |x#0|)) (exists ((|q#1| Int) ) (! (= (Mul (LitInt |p#0|) |q#1|) (LitInt |x#0|))
 :qid |gcddfy.8:10|
 :skolemid |532|
 :pattern ( (Mul |p#0| |q#1|))
))))
 :qid |gcddfy.7:26|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.IsFactor (LitInt |p#0|) (LitInt |x#0|)))
))))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.Factors#canCall| |x#0@@0|) (and (< 2 $FunctionContextHeight) (<= (LitInt 1) |x#0@@0|))) ($Is SetType (_module.__default.Factors |x#0@@0|) (TSet Tclass._module.pos)))
 :qid |gcddfy.18:24|
 :skolemid |542|
 :pattern ( (_module.__default.Factors |x#0@@0|))
))))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|_module.__default.Factors#canCall| (LitInt |x#0@@1|)) (and (< 2 $FunctionContextHeight) (<= (LitInt 1) |x#0@@1|))) (and (forall ((|p#1| Int) ) (!  (=> (<= (LitInt 1) |p#1|) (=> (<= |p#1| (LitInt |x#0@@1|)) (|_module.__default.IsFactor#canCall| |p#1| (LitInt |x#0@@1|))))
 :qid |gcddfy.19:7|
 :skolemid |546|
 :pattern ( (_module.__default.IsFactor |p#1| |x#0@@1|))
)) (= (_module.__default.Factors (LitInt |x#0@@1|)) (|Set#FromBoogieMap| (|lambda#1| Tclass._module.pos (LitInt |x#0@@1|) (LitInt |x#0@@1|))))))
 :qid |gcddfy.18:24|
 :weight 3
 :skolemid |547|
 :pattern ( (_module.__default.Factors (LitInt |x#0@@1|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 4)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|p#0@@0| Int) (|x#0@@2| Int) ) (!  (=> (or (|_module.__default.IsFactor#canCall| |p#0@@0| |x#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 1) |p#0@@0|) (<= (LitInt 1) |x#0@@2|)))) (= (_module.__default.IsFactor |p#0@@0| |x#0@@2|) (exists ((|q#0| Int) ) (! (= (Mul |p#0@@0| |q#0|) |x#0@@2|)
 :qid |gcddfy.8:10|
 :skolemid |530|
 :pattern ( (Mul |p#0@@0| |q#0|))
))))
 :qid |gcddfy.7:26|
 :skolemid |531|
 :pattern ( (_module.__default.IsFactor |p#0@@0| |x#0@@2|))
))))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._module.pos) (<= (LitInt 1) (U_2_int |x#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($Is intType |x#0@@3| Tclass._module.pos))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.pos) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._module.pos)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@1 Tclass._module.pos))
)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (<= (U_2_int ($Unbox intType |$y#0|)) |l#1|) (_module.__default.IsFactor (U_2_int ($Unbox intType |$y#0|)) |l#2|))))
 :qid |gcddfy.5:6|
 :skolemid |704|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSet (TSet t@@0)) t@@0)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSet t@@1)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |703|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((bx@@2 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@2)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@2))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@2 (TSet t@@2)))
)))
(assert (= (Tag Tclass._module.pos) Tagclass._module.pos))
(assert (= (TagFamily Tclass._module.pos) tytagFamily$pos))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((|x#0@@4| Int) ) (!  (=> (or (|_module.__default.Factors#canCall| |x#0@@4|) (and (< 2 $FunctionContextHeight) (<= (LitInt 1) |x#0@@4|))) (and (forall ((|p#0@@1| Int) ) (!  (=> (<= (LitInt 1) |p#0@@1|) (=> (<= |p#0@@1| |x#0@@4|) (|_module.__default.IsFactor#canCall| |p#0@@1| |x#0@@4|)))
 :qid |gcddfy.19:7|
 :skolemid |544|
 :pattern ( (_module.__default.IsFactor |p#0@@1| |x#0@@4|))
)) (= (_module.__default.Factors |x#0@@4|) (|Set#FromBoogieMap| (|lambda#1| Tclass._module.pos |x#0@@4| |x#0@@4|)))))
 :qid |gcddfy.18:24|
 :skolemid |545|
 :pattern ( (_module.__default.Factors |x#0@@4|))
))))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@@5| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.FactorsContains1)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (Mul (LitInt 1) |x#0@@5|) |x#0@@5|)) (=> (= (Mul (LitInt 1) |x#0@@5|) |x#0@@5|) (=> (= (ControlFlow 0 2) (- 0 1)) (|Set#IsMember| (_module.__default.Factors |x#0@@5|) ($Box intType (int_2_U (LitInt 1))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 1) |x#0@@5|)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
