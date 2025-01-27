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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.CellX () T@U)
(declare-fun Tagclass._module.CellX? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$CellX () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.CellX (T@U) T@U)
(declare-fun Tclass._module.CellX? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.CellX.data (T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.CellX_0 (T@U) T@U)
(declare-fun Tclass._module.CellX?_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._module.CellX Tagclass._module.CellX? tytagFamily$nat tytagFamily$CellX)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |7655|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.CellX$X T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.CellX _module.CellX$X) $h@@0) ($IsAlloc refType |c#0| (Tclass._module.CellX? _module.CellX$X) $h@@0))
 :qid |unknown.0:0|
 :skolemid |7971|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.CellX _module.CellX$X) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.CellX? _module.CellX$X) $h@@0))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.CellX$X@@0 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.CellX? _module.CellX$X@@0) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7956|
 :pattern ( ($IsAlloc refType $o (Tclass._module.CellX? _module.CellX$X@@0) $h@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |7428|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |7429|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |7327|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |7325|
 :pattern ( (Lit T x@@3))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.CellX$X@@1 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.CellX? _module.CellX$X@@1))) ($IsBox (_module.CellX.data _module.CellX$X@@1 $o@@0) _module.CellX$X@@1))
 :qid |unknown.0:0|
 :skolemid |7960|
 :pattern ( (_module.CellX.data _module.CellX$X@@1 $o@@0))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |7336|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((_module.CellX$X@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.CellX? _module.CellX$X@@2)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (_module.CellX.data _module.CellX$X@@2 $o@@1) _module.CellX$X@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |7961|
 :pattern ( (_module.CellX.data _module.CellX$X@@2 $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |7654|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((_module.CellX$X@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.CellX _module.CellX$X@@3))  (and ($Is refType |c#0@@0| (Tclass._module.CellX? _module.CellX$X@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7970|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.CellX _module.CellX$X@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.CellX? _module.CellX$X@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |7349|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |7421|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |7420|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.CellX$X@@4 T@U) ) (!  (and (= (Tag (Tclass._module.CellX _module.CellX$X@@4)) Tagclass._module.CellX) (= (TagFamily (Tclass._module.CellX _module.CellX$X@@4)) tytagFamily$CellX))
 :qid |unknown.0:0|
 :skolemid |7891|
 :pattern ( (Tclass._module.CellX _module.CellX$X@@4))
)))
(assert (forall ((_module.CellX$X@@5 T@U) ) (!  (and (= (Tag (Tclass._module.CellX? _module.CellX$X@@5)) Tagclass._module.CellX?) (= (TagFamily (Tclass._module.CellX? _module.CellX$X@@5)) tytagFamily$CellX))
 :qid |unknown.0:0|
 :skolemid |7895|
 :pattern ( (Tclass._module.CellX? _module.CellX$X@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |7653|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((_module.CellX$X@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._module.CellX? _module.CellX$X@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._module.CellX? _module.CellX$X@@6))))
 :qid |unknown.0:0|
 :skolemid |7955|
 :pattern ( ($Is refType $o@@2 (Tclass._module.CellX? _module.CellX$X@@6)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |7427|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |7337|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |7348|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module.CellX$X@@7 T@U) ) (! (= (Tclass._module.CellX_0 (Tclass._module.CellX _module.CellX$X@@7)) _module.CellX$X@@7)
 :qid |unknown.0:0|
 :skolemid |7892|
 :pattern ( (Tclass._module.CellX _module.CellX$X@@7))
)))
(assert (forall ((_module.CellX$X@@8 T@U) ) (! (= (Tclass._module.CellX?_0 (Tclass._module.CellX? _module.CellX$X@@8)) _module.CellX$X@@8)
 :qid |unknown.0:0|
 :skolemid |7896|
 :pattern ( (Tclass._module.CellX? _module.CellX$X@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |7335|
 :pattern ( ($Box T@@4 x@@5))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8059|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((_module.CellX$X@@9 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.CellX _module.CellX$X@@9)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._module.CellX _module.CellX$X@@9))))
 :qid |unknown.0:0|
 :skolemid |7893|
 :pattern ( ($IsBox bx@@2 (Tclass._module.CellX _module.CellX$X@@9)))
)))
(assert (forall ((_module.CellX$X@@10 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.CellX? _module.CellX$X@@10)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.CellX? _module.CellX$X@@10))))
 :qid |unknown.0:0|
 :skolemid |7897|
 :pattern ( ($IsBox bx@@3 (Tclass._module.CellX? _module.CellX$X@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |7328|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |7326|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |7371|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |7350|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |defass#xx#0_0| () Bool)
(declare-fun |xx#0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@_module.CellX$X () T@U)
(declare-fun call0formal@_module.CellX$X@0 () T@U)
(declare-fun |call1formal@u#0@0| () T@U)
(declare-fun |n#0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |defass#xx#1_0| () Bool)
(declare-fun |xx#1_0@0| () T@U)
(declare-fun call3formal@this@@0 () T@U)
(declare-fun call0formal@_module.CellX$X@@0 () T@U)
(declare-fun |call1formal@u#0@0@@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call3formal@this@0@@0 () T@U)
(declare-fun call3formal@this@@1 () T@U)
(declare-fun call0formal@_module.CellX$X@@1 () T@U)
(declare-fun |call1formal@u#0@0@@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call3formal@this@0@@1 () T@U)
(declare-fun call3formal@this@@2 () T@U)
(declare-fun call0formal@_module.CellX$X@@2 () T@U)
(declare-fun call0formal@_module.CellX$X@0@@0 () T@U)
(declare-fun |call1formal@u#0@0@@2| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call3formal@this@0@@2 () T@U)
(declare-fun call3formal@this@@3 () T@U)
(declare-fun call0formal@_module.CellX$X@@3 () T@U)
(declare-fun call0formal@_module.CellX$X@0@@1 () T@U)
(declare-fun |call1formal@u#0@0@@3| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call3formal@this@0@@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |xx#0_0| () T@U)
(declare-fun |defass#cell#0_0| () Bool)
(declare-fun |cell#0_0| () T@U)
(declare-fun |xx#1_0| () T@U)
(declare-fun |defass#cell#1_0| () Bool)
(declare-fun |cell#1_0| () T@U)
(declare-fun |defass#cell#2_0| () Bool)
(declare-fun |cell#2_0| () T@U)
(declare-fun |defass#cell#3_0| () Bool)
(declare-fun |cell#3_0| () T@U)
(declare-fun |defass#cell#4_0| () Bool)
(declare-fun |cell#4_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.M9)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon11_Else_correct  (=> (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 20) (- 0 19))) false)))
(let ((anon11_Then_correct  (=> (=> |defass#xx#0_0| (and ($Is refType |xx#0_0@0| (Tclass._module.CellX TInt)) ($IsAlloc refType |xx#0_0@0| (Tclass._module.CellX TInt) $Heap))) (=> (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass._module.CellX call0formal@_module.CellX$X)) ($IsAlloc refType call3formal@this (Tclass._module.CellX call0formal@_module.CellX$X) $Heap))) (=> (and (and (= call0formal@_module.CellX$X@0 Tclass._System.nat) (= |call1formal@u#0@0| ($Box intType (int_2_U |n#0|)))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (=> (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass._module.CellX call0formal@_module.CellX$X@0)) ($IsAlloc refType call3formal@this@0 (Tclass._module.CellX call0formal@_module.CellX$X@0) $Heap@4))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0) alloc))))) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |TypeAdjustmentsdfy.172:3|
 :skolemid |7958|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
)) ($HeapSucc $Heap $Heap@4))) (and (=> (= (ControlFlow 0 17) (- 0 18)) true) (=> (= (ControlFlow 0 17) (- 0 16)) ($Is refType call3formal@this@0 (Tclass._module.CellX TInt))))))))))
(let ((anon10_Then_correct  (=> (=> |defass#xx#1_0| (and ($Is refType |xx#1_0@0| (Tclass._module.CellX Tclass._System.nat)) ($IsAlloc refType |xx#1_0@0| (Tclass._module.CellX Tclass._System.nat) $Heap))) (=> (and (and (and (and (or (not (= call3formal@this@@0 null)) (not true)) (and ($Is refType call3formal@this@@0 (Tclass._module.CellX call0formal@_module.CellX$X@@0)) ($IsAlloc refType call3formal@this@@0 (Tclass._module.CellX call0formal@_module.CellX$X@@0) $Heap))) (= |call1formal@u#0@0@@0| ($Box intType (int_2_U |n#0|)))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (and (or (not (= call3formal@this@0@@0 null)) (not true)) (and ($Is refType call3formal@this@0@@0 (Tclass._module.CellX TInt)) ($IsAlloc refType call3formal@this@0@@0 (Tclass._module.CellX TInt) $Heap@3))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0@@0) alloc))))) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@5)))
 :qid |TypeAdjustmentsdfy.172:3|
 :skolemid |7958|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap $Heap@3)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) true) (=> (= (ControlFlow 0 14) (- 0 13)) ($Is refType call3formal@this@0@@0 (Tclass._module.CellX Tclass._System.nat))))))))
(let ((anon9_Then_correct  (=> (and (and (and (and (or (not (= call3formal@this@@1 null)) (not true)) (and ($Is refType call3formal@this@@1 (Tclass._module.CellX call0formal@_module.CellX$X@@1)) ($IsAlloc refType call3formal@this@@1 (Tclass._module.CellX call0formal@_module.CellX$X@@1) $Heap))) (= |call1formal@u#0@0@@1| ($Box intType (int_2_U |n#0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (and (or (not (= call3formal@this@0@@1 null)) (not true)) (and ($Is refType call3formal@this@0@@1 (Tclass._module.CellX TInt)) ($IsAlloc refType call3formal@this@0@@1 (Tclass._module.CellX TInt) $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0@@1) alloc))))) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6)))
 :qid |TypeAdjustmentsdfy.172:3|
 :skolemid |7958|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6))
)) ($HeapSucc $Heap $Heap@2)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) true) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= call3formal@this@0@@1 null)) (not true))) (=> (= (ControlFlow 0 10) (- 0 9)) (<= (LitInt 0) (U_2_int ($Unbox intType (_module.CellX.data TInt call3formal@this@0@@1))))))))))
(let ((anon8_Then_correct  (=> (and (or (not (= call3formal@this@@2 null)) (not true)) (and ($Is refType call3formal@this@@2 (Tclass._module.CellX call0formal@_module.CellX$X@@2)) ($IsAlloc refType call3formal@this@@2 (Tclass._module.CellX call0formal@_module.CellX$X@@2) $Heap))) (=> (and (and (= call0formal@_module.CellX$X@0@@0 Tclass._System.nat) (= |call1formal@u#0@0@@2| ($Box intType (int_2_U |n#0|)))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and (or (not (= call3formal@this@0@@2 null)) (not true)) (and ($Is refType call3formal@this@0@@2 (Tclass._module.CellX call0formal@_module.CellX$X@0@@0)) ($IsAlloc refType call3formal@this@0@@2 (Tclass._module.CellX call0formal@_module.CellX$X@0@@0) $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0@@2) alloc))))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@7)))
 :qid |TypeAdjustmentsdfy.172:3|
 :skolemid |7958|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7))
)) ($HeapSucc $Heap $Heap@1))) (and (=> (= (ControlFlow 0 6) (- 0 8)) true) (and (=> (= (ControlFlow 0 6) (- 0 7)) (or (not (= call3formal@this@0@@2 null)) (not true))) (=> (= (ControlFlow 0 6) (- 0 5)) (<= (LitInt 0) (U_2_int ($Unbox intType (_module.CellX.data Tclass._System.nat call3formal@this@0@@2))))))))))))
(let ((anon7_Then_correct  (=> (and (or (not (= call3formal@this@@3 null)) (not true)) (and ($Is refType call3formal@this@@3 (Tclass._module.CellX call0formal@_module.CellX$X@@3)) ($IsAlloc refType call3formal@this@@3 (Tclass._module.CellX call0formal@_module.CellX$X@@3) $Heap))) (=> (and (and (= call0formal@_module.CellX$X@0@@1 Tclass._System.nat) (= |call1formal@u#0@0@@3| ($Box intType (int_2_U |n#0|)))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call3formal@this@0@@3 null)) (not true)) (and ($Is refType call3formal@this@0@@3 (Tclass._module.CellX call0formal@_module.CellX$X@0@@1)) ($IsAlloc refType call3formal@this@0@@3 (Tclass._module.CellX call0formal@_module.CellX$X@0@@1) $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0@@3) alloc))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |TypeAdjustmentsdfy.172:3|
 :skolemid |7958|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= call3formal@this@0@@3 null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= (LitInt 0) (U_2_int ($Unbox intType (_module.CellX.data Tclass._System.nat call3formal@this@0@@3))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 21) 2) anon7_Then_correct) (=> (= (ControlFlow 0 21) 6) anon8_Then_correct)) (=> (= (ControlFlow 0 21) 10) anon9_Then_correct)) (=> (= (ControlFlow 0 21) 14) anon10_Then_correct)) (=> (= (ControlFlow 0 21) 17) anon11_Then_correct)) (=> (= (ControlFlow 0 21) 20) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0|)) (=> (and (and (and (and (=> |defass#xx#0_0| (and ($Is refType |xx#0_0| (Tclass._module.CellX TInt)) ($IsAlloc refType |xx#0_0| (Tclass._module.CellX TInt) $Heap))) true) (and (=> |defass#cell#0_0| (and ($Is refType |cell#0_0| (Tclass._module.CellX Tclass._System.nat)) ($IsAlloc refType |cell#0_0| (Tclass._module.CellX Tclass._System.nat) $Heap))) true)) (and (and (=> |defass#xx#1_0| (and ($Is refType |xx#1_0| (Tclass._module.CellX Tclass._System.nat)) ($IsAlloc refType |xx#1_0| (Tclass._module.CellX Tclass._System.nat) $Heap))) true) (and (=> |defass#cell#1_0| (and ($Is refType |cell#1_0| (Tclass._module.CellX TInt)) ($IsAlloc refType |cell#1_0| (Tclass._module.CellX TInt) $Heap))) true))) (and (and (and (=> |defass#cell#2_0| (and ($Is refType |cell#2_0| (Tclass._module.CellX TInt)) ($IsAlloc refType |cell#2_0| (Tclass._module.CellX TInt) $Heap))) true) (and (=> |defass#cell#3_0| (and ($Is refType |cell#3_0| (Tclass._module.CellX Tclass._System.nat)) ($IsAlloc refType |cell#3_0| (Tclass._module.CellX Tclass._System.nat) $Heap))) true)) (and (and (=> |defass#cell#4_0| (and ($Is refType |cell#4_0| (Tclass._module.CellX Tclass._System.nat)) ($IsAlloc refType |cell#4_0| (Tclass._module.CellX Tclass._System.nat) $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 22) 21))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 17) (- 16))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 10) (- 9))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 14) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
