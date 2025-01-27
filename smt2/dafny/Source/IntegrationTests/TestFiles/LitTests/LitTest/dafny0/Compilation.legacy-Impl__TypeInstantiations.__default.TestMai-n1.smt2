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
(declare-fun TChar () T@U)
(declare-fun TReal () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.TypeInstantiations.GenCl () T@U)
(declare-fun Tagclass.TypeInstantiations.GenCl? () T@U)
(declare-fun tytagFamily$GenCl () T@U)
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
(declare-fun TypeInstantiations.__default.H (T@U T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |TypeInstantiations.__default.H#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TypeInstantiations.GenCl (T@U) T@U)
(declare-fun Tclass.TypeInstantiations.GenCl? (T@U) T@U)
(declare-fun TypeInstantiations.GenCl.Static (T@U T@U) Int)
(declare-fun |TypeInstantiations.GenCl.Static#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TypeInstantiations.GenCl.Inst (T@U T@U T@U) Int)
(declare-fun |TypeInstantiations.GenCl.Inst#canCall| (T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass.TypeInstantiations.GenCl_0 (T@U) T@U)
(declare-fun Tclass.TypeInstantiations.GenCl?_0 (T@U) T@U)
(declare-fun TypeInstantiations.__default.F (T@U) Int)
(declare-fun |TypeInstantiations.__default.F#canCall| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TReal TagChar TagReal alloc Tagclass.TypeInstantiations.GenCl Tagclass.TypeInstantiations.GenCl? tytagFamily$GenCl)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations._default.H$G T@U) (|g#0| T@U) ) (!  (=> (or (|TypeInstantiations.__default.H#canCall| TypeInstantiations._default.H$G (Lit BoxType |g#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |g#0| TypeInstantiations._default.H$G))) (= (TypeInstantiations.__default.H TypeInstantiations._default.H$G (Lit BoxType |g#0|)) (LitInt 57)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |8225|
 :pattern ( (TypeInstantiations.__default.H TypeInstantiations._default.H$G (Lit BoxType |g#0|)))
))))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TReal) TagReal))
(assert (= (Ctor refType) 4))
(assert (forall ((TypeInstantiations.GenCl$U T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U) $h) ($IsAlloc refType |c#0| (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U) $h))
 :qid |unknown.0:0|
 :skolemid |8262|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U) $h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations.GenCl$U@@0 T@U) (TypeInstantiations.GenCl.Static$G T@U) ) (!  (=> (or (|TypeInstantiations.GenCl.Static#canCall| TypeInstantiations.GenCl$U@@0 TypeInstantiations.GenCl.Static$G) (< 0 $FunctionContextHeight)) (= (TypeInstantiations.GenCl.Static TypeInstantiations.GenCl$U@@0 TypeInstantiations.GenCl.Static$G) (LitInt 58)))
 :qid |unknown.0:0|
 :skolemid |8249|
 :pattern ( (TypeInstantiations.GenCl.Static TypeInstantiations.GenCl$U@@0 TypeInstantiations.GenCl.Static$G))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations.GenCl$U@@1 T@U) (TypeInstantiations.GenCl.Static$G@@0 T@U) ) (!  (=> (or (|TypeInstantiations.GenCl.Static#canCall| TypeInstantiations.GenCl$U@@1 TypeInstantiations.GenCl.Static$G@@0) (< 0 $FunctionContextHeight)) (= (TypeInstantiations.GenCl.Static TypeInstantiations.GenCl$U@@1 TypeInstantiations.GenCl.Static$G@@0) (LitInt 58)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |8250|
 :pattern ( (TypeInstantiations.GenCl.Static TypeInstantiations.GenCl$U@@1 TypeInstantiations.GenCl.Static$G@@0))
))))
(assert  (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((TypeInstantiations.GenCl$U@@2 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@2) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |8246|
 :pattern ( ($IsAlloc refType $o (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@2) $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |7808|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |7809|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |7707|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |7705|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |7716|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@3))  (and ($Is refType |c#0@@0| (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |8261|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |7729|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |7801|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |7800|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@4 T@U) ) (!  (and (= (Tag (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@4)) Tagclass.TypeInstantiations.GenCl) (= (TagFamily (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@4)) tytagFamily$GenCl))
 :qid |unknown.0:0|
 :skolemid |8235|
 :pattern ( (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@4))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@5 T@U) ) (!  (and (= (Tag (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@5)) Tagclass.TypeInstantiations.GenCl?) (= (TagFamily (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@5)) tytagFamily$GenCl))
 :qid |unknown.0:0|
 :skolemid |8238|
 :pattern ( (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@5))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@6 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@6))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@6))))
 :qid |unknown.0:0|
 :skolemid |8245|
 :pattern ( ($Is refType $o@@0 (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations.GenCl$U@@7 T@U) (TypeInstantiations.GenCl.Inst$G T@U) (this T@U) ) (!  (=> (or (|TypeInstantiations.GenCl.Inst#canCall| TypeInstantiations.GenCl$U@@7 TypeInstantiations.GenCl.Inst$G this) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@7))))) (= (TypeInstantiations.GenCl.Inst TypeInstantiations.GenCl$U@@7 TypeInstantiations.GenCl.Inst$G this) (LitInt 59)))
 :qid |unknown.0:0|
 :skolemid |8253|
 :pattern ( (TypeInstantiations.GenCl.Inst TypeInstantiations.GenCl$U@@7 TypeInstantiations.GenCl.Inst$G this))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |7807|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TReal) (and (= ($Box realType ($Unbox realType bx@@0)) bx@@0) ($Is realType ($Unbox realType bx@@0) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |7718|
 :pattern ( ($IsBox bx@@0 TReal))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TChar) (and (= ($Box charType ($Unbox charType bx@@1)) bx@@1) ($Is charType ($Unbox charType bx@@1) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |7720|
 :pattern ( ($IsBox bx@@1 TChar))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |7728|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations.GenCl$U@@8 T@U) (TypeInstantiations.GenCl.Inst$G@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|TypeInstantiations.GenCl.Inst#canCall| TypeInstantiations.GenCl$U@@8 TypeInstantiations.GenCl.Inst$G@@0 (Lit refType this@@0)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@8))))) (= (TypeInstantiations.GenCl.Inst TypeInstantiations.GenCl$U@@8 TypeInstantiations.GenCl.Inst$G@@0 (Lit refType this@@0)) (LitInt 59)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |8254|
 :pattern ( (TypeInstantiations.GenCl.Inst TypeInstantiations.GenCl$U@@8 TypeInstantiations.GenCl.Inst$G@@0 (Lit refType this@@0)))
))))
(assert (forall ((TypeInstantiations.GenCl$U@@9 T@U) ) (! (= (Tclass.TypeInstantiations.GenCl_0 (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@9)) TypeInstantiations.GenCl$U@@9)
 :qid |unknown.0:0|
 :skolemid |8236|
 :pattern ( (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@9))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@10 T@U) ) (! (= (Tclass.TypeInstantiations.GenCl?_0 (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@10)) TypeInstantiations.GenCl$U@@10)
 :qid |unknown.0:0|
 :skolemid |8239|
 :pattern ( (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |7715|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations._default.F$G T@U) ) (!  (=> (or (|TypeInstantiations.__default.F#canCall| TypeInstantiations._default.F$G) (< 0 $FunctionContextHeight)) (= (TypeInstantiations.__default.F TypeInstantiations._default.F$G) (LitInt 56)))
 :qid |unknown.0:0|
 :skolemid |8220|
 :pattern ( (TypeInstantiations.__default.F TypeInstantiations._default.F$G))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations._default.F$G@@0 T@U) ) (!  (=> (or (|TypeInstantiations.__default.F#canCall| TypeInstantiations._default.F$G@@0) (< 0 $FunctionContextHeight)) (= (TypeInstantiations.__default.F TypeInstantiations._default.F$G@@0) (LitInt 56)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |8221|
 :pattern ( (TypeInstantiations.__default.F TypeInstantiations._default.F$G@@0))
))))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |11309|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@11 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@11)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@11))))
 :qid |unknown.0:0|
 :skolemid |8237|
 :pattern ( ($IsBox bx@@2 (Tclass.TypeInstantiations.GenCl TypeInstantiations.GenCl$U@@11)))
)))
(assert (forall ((TypeInstantiations.GenCl$U@@12 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@12)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@12))))
 :qid |unknown.0:0|
 :skolemid |8240|
 :pattern ( ($IsBox bx@@3 (Tclass.TypeInstantiations.GenCl? TypeInstantiations.GenCl$U@@12)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |7806|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeInstantiations._default.H$G@@0 T@U) (|g#0@@0| T@U) ) (!  (=> (or (|TypeInstantiations.__default.H#canCall| TypeInstantiations._default.H$G@@0 |g#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |g#0@@0| TypeInstantiations._default.H$G@@0))) (= (TypeInstantiations.__default.H TypeInstantiations._default.H$G@@0 |g#0@@0|) (LitInt 57)))
 :qid |unknown.0:0|
 :skolemid |8224|
 :pattern ( (TypeInstantiations.__default.H TypeInstantiations._default.H$G@@0 |g#0@@0|))
))))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |7708|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |7706|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc realType v@@2 TReal h@@4)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |7752|
 :pattern ( ($IsAlloc realType v@@2 TReal h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc charType v@@3 TChar h@@5)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |7754|
 :pattern ( ($IsAlloc charType v@@3 TChar h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is realType v@@4 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |7731|
 :pattern ( ($Is realType v@@4 TReal))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |7733|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#0@0| () Int)
(declare-fun |ch#0@0| () T@U)
(declare-fun |y#0@0| () Int)
(declare-fun |a0#0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a1#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |call1formal@g#0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |ch#0| () T@U)
(declare-fun |defass#cl#0| () Bool)
(declare-fun |cl#0| () T@U)
(set-info :boogie-vc-id Impl$$TypeInstantiations.__default.TestMain)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (|TypeInstantiations.__default.F#canCall| TChar)) (=> (and (and (and (and (|TypeInstantiations.__default.F#canCall| TChar) (= |x#0@0| (LitInt (TypeInstantiations.__default.F TChar)))) (and ($Is charType |ch#0@0| TChar) ($IsAlloc charType |ch#0@0| TChar $Heap))) (and (and (|TypeInstantiations.__default.H#canCall| TChar ($Box charType |ch#0@0|)) (|TypeInstantiations.__default.H#canCall| TChar ($Box charType |ch#0@0|))) (and (= |y#0@0| (TypeInstantiations.__default.H TChar ($Box charType |ch#0@0|))) (|TypeInstantiations.GenCl.Static#canCall| TChar TReal)))) (and (and (and (|TypeInstantiations.GenCl.Static#canCall| TChar TReal) (= |a0#0@0| (LitInt (TypeInstantiations.GenCl.Static TChar TReal)))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass.TypeInstantiations.GenCl? TChar)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType $nw@0) (Tclass.TypeInstantiations.GenCl? TChar) $Heap@0) (|TypeInstantiations.GenCl.Inst#canCall| TChar TReal $nw@0)) (and (|TypeInstantiations.GenCl.Inst#canCall| TChar TReal $nw@0) (= |a1#0@0| (TypeInstantiations.GenCl.Inst TChar TReal $nw@0)))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2)))
 :qid |Compilationlegacydfy.398:10|
 :skolemid |8227|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |call1formal@g#0@0| ($Box charType |ch#0@0|)))) (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3)))
 :qid |Compilationlegacydfy.399:10|
 :skolemid |8230|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4)))
 :qid |Compilationlegacydfy.404:19|
 :skolemid |8256|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4))
)) ($HeapSucc $Heap@2 $Heap@3))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true)))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is charType |ch#0| TChar) true)) (and (and (=> |defass#cl#0| (and ($Is refType |cl#0| (Tclass.TypeInstantiations.GenCl TChar)) ($IsAlloc refType |cl#0| (Tclass.TypeInstantiations.GenCl TChar) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct)))
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
