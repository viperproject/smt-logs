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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun _module.__default.ff (T@U T@U) T@U)
(declare-fun |_module.__default.ff#canCall| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.C () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.__default.g (T@U) T@U)
(declare-fun |_module.__default.g#canCall| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSet alloc Tagclass._module.C Tagclass._module.C? tytagFamily$C)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|c#0| T@U) ) (!  (=> (or (|_module.__default.ff#canCall| $Heap |c#0|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and ($Is refType |c#0| Tclass._module.C) ($IsAlloc refType |c#0| Tclass._module.C $Heap))))) ($Is refType (_module.__default.ff $Heap |c#0|) Tclass._module.C))
 :qid |oldisaspecialcasefortriggersdfy.34:16|
 :skolemid |568|
 :pattern ( (_module.__default.ff $Heap |c#0|))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((|c#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.C $h) ($IsAlloc refType |c#0@@0| Tclass._module.C? $h))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C $h))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.C? $h))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (|c#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|_module.__default.ff#canCall| $h0 |c#0@@1|) ($Is refType |c#0@@1| Tclass._module.C))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 |c#0@@1|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |566|
)) (= (_module.__default.ff $h0 |c#0@@1|) (_module.__default.ff $h1 |c#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |567|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.__default.ff $h1 |c#0@@1|))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
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
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@1 Tclass._module.C))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsBox bx@@2 Tclass._module.C?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.C)  (and ($Is refType |c#0@@2| Tclass._module.C?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.C?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|c#0@@3| T@U) ) (!  (=> (or (|_module.__default.g#canCall| |c#0@@3|) (and (< 1 $FunctionContextHeight) ($Is refType |c#0@@3| Tclass._module.C))) ($Is refType (_module.__default.g |c#0@@3|) Tclass._module.C))
 :qid |oldisaspecialcasefortriggersdfy.10:18|
 :skolemid |532|
 :pattern ( (_module.__default.g |c#0@@3|))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|c#0@@4| T@U) ) (!  (=> (and (or (|_module.__default.g#canCall| |c#0@@4|) (and (< 1 $FunctionContextHeight) (and ($Is refType |c#0@@4| Tclass._module.C) ($IsAlloc refType |c#0@@4| Tclass._module.C $Heap@@0)))) ($IsGoodHeap $Heap@@0)) ($IsAlloc refType (_module.__default.g |c#0@@4|) Tclass._module.C $Heap@@0))
 :qid |oldisaspecialcasefortriggersdfy.10:16|
 :skolemid |533|
 :pattern ( ($IsAlloc refType (_module.__default.g |c#0@@4|) Tclass._module.C $Heap@@0))
))))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@2 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f@@0))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |604|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f@@0))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@1 T@U) (|c#0@@5| T@U) ) (!  (=> (or (|_module.__default.ff#canCall| $Heap@@1 |c#0@@5|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and ($Is refType |c#0@@5| Tclass._module.C) ($IsAlloc refType |c#0@@5| Tclass._module.C $Heap@@1))))) ($IsAlloc refType (_module.__default.ff $Heap@@1 |c#0@@5|) Tclass._module.C $Heap@@1))
 :qid |oldisaspecialcasefortriggersdfy.34:16|
 :skolemid |569|
 :pattern ( ($IsAlloc refType (_module.__default.ff $Heap@@1 |c#0@@5|) Tclass._module.C $Heap@@1))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#8@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |##c#21@0| () T@U)
(declare-fun |##c#23@0| () T@U)
(declare-fun |sc#0| () T@U)
(declare-fun |c#6@0| () T@U)
(declare-fun |##c#17@0| () T@U)
(declare-fun |c#4@0| () T@U)
(declare-fun |##c#4@0| () T@U)
(declare-fun |##c#6@0| () T@U)
(declare-fun |##c#8@0| () T@U)
(declare-fun |##c#10@0| () T@U)
(declare-fun |##c#12@0| () T@U)
(declare-fun |##c#14@0| () T@U)
(declare-fun |c#2@0| () T@U)
(declare-fun |##c#2@0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.MM)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon32_correct true))
(let ((anon45_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@0) (|_module.__default.ff#canCall| $Heap@0 |c#8@0|)) (and (=> (= (ControlFlow 0 7) (- 0 8)) ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@@2) (=> (|_module.__default.ff#canCall| $Heap@@2 |c#8@0|) (=> (and (= (_module.__default.ff $Heap@0 |c#8@0|) (_module.__default.ff $Heap@@2 |c#8@0|)) (= (ControlFlow 0 7) 1)) anon32_correct))))))))
(let ((anon45_Then_correct  (=> (= (ControlFlow 0 6) 1) anon32_correct)))
(let ((anon44_Else_correct  (=> (not (or true (= (_module.__default.ff $Heap@0 |c#8@0|) (_module.__default.ff $Heap@@2 |c#8@0|)))) (and (=> (= (ControlFlow 0 3) (- 0 5)) ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.ff#canCall| $Heap@@2 |c#8@0|) (= |##c#21@0| (_module.__default.ff $Heap@@2 |c#8@0|))) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#8@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#8@0|) Tclass._module.C $Heap@@2) (=> (and (and (and (|_module.__default.g#canCall| (_module.__default.ff $Heap@@2 |c#8@0|)) ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@0)) (and (|_module.__default.ff#canCall| $Heap@0 |c#8@0|) (= |##c#23@0| (_module.__default.ff $Heap@0 |c#8@0|)))) (and (and ($IsAlloc refType |##c#23@0| Tclass._module.C $Heap@0) (|_module.__default.g#canCall| (_module.__default.ff $Heap@0 |c#8@0|))) (and (= (_module.__default.g (_module.__default.ff $Heap@@2 |c#8@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#8@0|))) (= (ControlFlow 0 3) 1)))) anon32_correct)))))))))
(let ((anon43_Then_correct  (=> (|Set#IsMember| |sc#0| ($Box refType |c#8@0|)) (and (and (=> (= (ControlFlow 0 9) 3) anon44_Else_correct) (=> (= (ControlFlow 0 9) 6) anon45_Then_correct)) (=> (= (ControlFlow 0 9) 7) anon45_Else_correct)))))
(let ((anon43_Else_correct  (=> (and (=> (|Set#IsMember| |sc#0| ($Box refType |c#8@0|)) (or (or true (= (_module.__default.ff $Heap@0 |c#8@0|) (_module.__default.ff $Heap@@2 |c#8@0|))) (= (_module.__default.g (_module.__default.ff $Heap@@2 |c#8@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#8@0|))))) (= (ControlFlow 0 2) 1)) anon32_correct)))
(let ((anon25_correct  (=> (forall ((|c#7| T@U) ) (!  (=> (and ($Is refType |c#7| Tclass._module.C) (|Set#IsMember| |sc#0| ($Box refType |c#7|))) (or true (= (_module.__default.ff $Heap@0 |c#7|) (_module.__default.g (_module.__default.ff $Heap@@2 |c#7|)))))
 :qid |oldisaspecialcasefortriggersdfy.48:18|
 :skolemid |575|
 :pattern ( (_module.__default.ff $Heap@@2 |c#7|))
 :pattern ( (_module.__default.ff $Heap@0 |c#7|))
 :pattern ( (|Set#IsMember| |sc#0| ($Box refType |c#7|)))
)) (=> (and ($Is refType |c#8@0| Tclass._module.C) ($IsAlloc refType |c#8@0| Tclass._module.C $Heap@0)) (and (=> (= (ControlFlow 0 10) 9) anon43_Then_correct) (=> (= (ControlFlow 0 10) 2) anon43_Else_correct))))))
(let ((anon42_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($IsAlloc refType |c#6@0| Tclass._module.C $Heap@0) (|_module.__default.ff#canCall| $Heap@0 |c#6@0|)) (and (=> (= (ControlFlow 0 13) (- 0 15)) ($IsAlloc refType |c#6@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#6@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.ff#canCall| $Heap@@2 |c#6@0|) (= |##c#17@0| (_module.__default.ff $Heap@@2 |c#6@0|))) (and (=> (= (ControlFlow 0 13) (- 0 14)) ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#6@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#6@0|) Tclass._module.C $Heap@@2) (=> (|_module.__default.g#canCall| (_module.__default.ff $Heap@@2 |c#6@0|)) (=> (and (= (_module.__default.ff $Heap@0 |c#6@0|) (_module.__default.g (_module.__default.ff $Heap@@2 |c#6@0|))) (= (ControlFlow 0 13) 10)) anon25_correct)))))))))))
(let ((anon42_Then_correct  (=> (= (ControlFlow 0 12) 10) anon25_correct)))
(let ((anon41_Then_correct  (=> (|Set#IsMember| |sc#0| ($Box refType |c#6@0|)) (and (=> (= (ControlFlow 0 16) 12) anon42_Then_correct) (=> (= (ControlFlow 0 16) 13) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (and (=> (|Set#IsMember| |sc#0| ($Box refType |c#6@0|)) (or true (= (_module.__default.ff $Heap@0 |c#6@0|) (_module.__default.g (_module.__default.ff $Heap@@2 |c#6@0|))))) (= (ControlFlow 0 11) 10)) anon25_correct)))
(let ((anon20_correct  (=> (forall ((|c#5| T@U) ) (!  (=> (and ($Is refType |c#5| Tclass._module.C) (|Set#IsMember| |sc#0| ($Box refType |c#5|))) (or (or (or true (= (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#5|)) (_module.__default.g (_module.__default.ff $Heap@@2 |c#5|)))) (= (_module.__default.ff $Heap@@2 (_module.__default.g |c#5|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#5|)))) (= (_module.__default.ff $Heap@0 (_module.__default.g |c#5|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#5|)))))
 :qid |oldisaspecialcasefortriggersdfy.44:18|
 :skolemid |574|
 :pattern ( (_module.__default.ff $Heap@0 (_module.__default.g |c#5|)))
 :pattern ( (_module.__default.g (_module.__default.ff $Heap@0 |c#5|)))
 :pattern ( (_module.__default.ff $Heap@@2 (_module.__default.g |c#5|)))
 :pattern ( (_module.__default.g (_module.__default.ff $Heap@@2 |c#5|)))
 :pattern ( (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#5|)))
 :pattern ( (|Set#IsMember| |sc#0| ($Box refType |c#5|)))
)) (=> (and ($Is refType |c#6@0| Tclass._module.C) ($IsAlloc refType |c#6@0| Tclass._module.C $Heap@0)) (and (=> (= (ControlFlow 0 17) 16) anon41_Then_correct) (=> (= (ControlFlow 0 17) 11) anon41_Else_correct))))))
(let ((anon40_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 24) (- 0 28)) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.ff#canCall| $Heap@@2 |c#4@0|) (= |##c#4@0| (_module.__default.ff $Heap@@2 |c#4@0|))) (and (=> (= (ControlFlow 0 24) (- 0 27)) ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#4@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#4@0|) Tclass._module.C $Heap@@2) (=> (|_module.__default.ff#canCall| $Heap@@2 (_module.__default.ff $Heap@@2 |c#4@0|)) (and (=> (= (ControlFlow 0 24) (- 0 26)) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.ff#canCall| $Heap@@2 |c#4@0|) (= |##c#6@0| (_module.__default.ff $Heap@@2 |c#4@0|))) (and (=> (= (ControlFlow 0 24) (- 0 25)) ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#4@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#4@0|) Tclass._module.C $Heap@@2) (=> (|_module.__default.g#canCall| (_module.__default.ff $Heap@@2 |c#4@0|)) (=> (and (= (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@@2 |c#4@0|))) (= (ControlFlow 0 24) 17)) anon20_correct))))))))))))))))
(let ((anon40_Then_correct  (=> (= (ControlFlow 0 23) 17) anon20_correct)))
(let ((anon39_Else_correct  (=> (not (or true (= (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@@2 |c#4@0|))))) (and (=> (= (ControlFlow 0 20) (- 0 22)) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.g#canCall| |c#4@0|) (= |##c#8@0| (_module.__default.g |c#4@0|))) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType (_module.__default.g |c#4@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.g |c#4@0|) Tclass._module.C $Heap@@2) (=> (and (and (and (|_module.__default.ff#canCall| $Heap@@2 (_module.__default.g |c#4@0|)) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@0)) (and (|_module.__default.ff#canCall| $Heap@0 |c#4@0|) (= |##c#10@0| (_module.__default.ff $Heap@0 |c#4@0|)))) (and (and ($IsAlloc refType |##c#10@0| Tclass._module.C $Heap@0) (|_module.__default.g#canCall| (_module.__default.ff $Heap@0 |c#4@0|))) (and (= (_module.__default.ff $Heap@@2 (_module.__default.g |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#4@0|))) (= (ControlFlow 0 20) 17)))) anon20_correct)))))))))
(let ((anon38_Else_correct  (=> (not (or (or true (= (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@@2 |c#4@0|)))) (= (_module.__default.ff $Heap@@2 (_module.__default.g |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#4@0|))))) (=> (and (and ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@0) (|_module.__default.g#canCall| |c#4@0|)) (and (= |##c#12@0| (_module.__default.g |c#4@0|)) ($IsAlloc refType |##c#12@0| Tclass._module.C $Heap@0))) (=> (and (and (and (|_module.__default.ff#canCall| $Heap@0 (_module.__default.g |c#4@0|)) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@0)) (and (|_module.__default.ff#canCall| $Heap@0 |c#4@0|) (= |##c#14@0| (_module.__default.ff $Heap@0 |c#4@0|)))) (and (and ($IsAlloc refType |##c#14@0| Tclass._module.C $Heap@0) (|_module.__default.g#canCall| (_module.__default.ff $Heap@0 |c#4@0|))) (and (= (_module.__default.ff $Heap@0 (_module.__default.g |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#4@0|))) (= (ControlFlow 0 19) 17)))) anon20_correct)))))
(let ((anon37_Then_correct  (=> (|Set#IsMember| |sc#0| ($Box refType |c#4@0|)) (and (and (and (=> (= (ControlFlow 0 29) 19) anon38_Else_correct) (=> (= (ControlFlow 0 29) 20) anon39_Else_correct)) (=> (= (ControlFlow 0 29) 23) anon40_Then_correct)) (=> (= (ControlFlow 0 29) 24) anon40_Else_correct)))))
(let ((anon37_Else_correct  (=> (and (=> (|Set#IsMember| |sc#0| ($Box refType |c#4@0|)) (or (or (or true (= (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@@2 |c#4@0|)))) (= (_module.__default.ff $Heap@@2 (_module.__default.g |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#4@0|)))) (= (_module.__default.ff $Heap@0 (_module.__default.g |c#4@0|)) (_module.__default.g (_module.__default.ff $Heap@0 |c#4@0|))))) (= (ControlFlow 0 18) 17)) anon20_correct)))
(let ((anon11_correct  (=> (forall ((|c#3| T@U) ) (!  (=> (and ($Is refType |c#3| Tclass._module.C) (|Set#IsMember| |sc#0| ($Box refType |c#3|))) (or true (= (_module.__default.ff $Heap@0 |c#3|) (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#3|)))))
 :qid |oldisaspecialcasefortriggersdfy.43:18|
 :skolemid |573|
 :pattern ( (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#3|)))
 :pattern ( (_module.__default.ff $Heap@0 |c#3|))
 :pattern ( (|Set#IsMember| |sc#0| ($Box refType |c#3|)))
)) (=> (and ($Is refType |c#4@0| Tclass._module.C) ($IsAlloc refType |c#4@0| Tclass._module.C $Heap@0)) (and (=> (= (ControlFlow 0 30) 29) anon37_Then_correct) (=> (= (ControlFlow 0 30) 18) anon37_Else_correct))))))
(let ((anon36_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and ($IsAlloc refType |c#2@0| Tclass._module.C $Heap@0) (|_module.__default.ff#canCall| $Heap@0 |c#2@0|)) (and (=> (= (ControlFlow 0 33) (- 0 35)) ($IsAlloc refType |c#2@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#2@0| Tclass._module.C $Heap@@2) (=> (and (|_module.__default.ff#canCall| $Heap@@2 |c#2@0|) (= |##c#2@0| (_module.__default.ff $Heap@@2 |c#2@0|))) (and (=> (= (ControlFlow 0 33) (- 0 34)) ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#2@0|) Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType (_module.__default.ff $Heap@@2 |c#2@0|) Tclass._module.C $Heap@@2) (=> (|_module.__default.ff#canCall| $Heap@@2 (_module.__default.ff $Heap@@2 |c#2@0|)) (=> (and (= (_module.__default.ff $Heap@0 |c#2@0|) (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#2@0|))) (= (ControlFlow 0 33) 30)) anon11_correct)))))))))))
(let ((anon36_Then_correct  (=> (= (ControlFlow 0 32) 30) anon11_correct)))
(let ((anon35_Then_correct  (=> (|Set#IsMember| |sc#0| ($Box refType |c#2@0|)) (and (=> (= (ControlFlow 0 36) 32) anon36_Then_correct) (=> (= (ControlFlow 0 36) 33) anon36_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (=> (|Set#IsMember| |sc#0| ($Box refType |c#2@0|)) (or true (= (_module.__default.ff $Heap@0 |c#2@0|) (_module.__default.ff $Heap@@2 (_module.__default.ff $Heap@@2 |c#2@0|))))) (= (ControlFlow 0 31) 30)) anon11_correct)))
(let ((anon6_correct  (=> (forall ((|c#1| T@U) ) (!  (=> (and ($Is refType |c#1| Tclass._module.C) (|Set#IsMember| |sc#0| ($Box refType |c#1|))) (or true (= |c#1| (_module.__default.ff $Heap@@2 |c#1|))))
 :qid |oldisaspecialcasefortriggersdfy.38:18|
 :skolemid |572|
 :pattern ( (_module.__default.ff $Heap@@2 |c#1|))
 :pattern ( (|Set#IsMember| |sc#0| ($Box refType |c#1|)))
)) (=> (and ($Is refType |c#2@0| Tclass._module.C) ($IsAlloc refType |c#2@0| Tclass._module.C $Heap@0)) (and (=> (= (ControlFlow 0 37) 36) anon35_Then_correct) (=> (= (ControlFlow 0 37) 31) anon35_Else_correct))))))
(let ((anon34_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 40) (- 0 41)) ($IsAlloc refType |c#0@0| Tclass._module.C $Heap@@2)) (=> ($IsAlloc refType |c#0@0| Tclass._module.C $Heap@@2) (=> (|_module.__default.ff#canCall| $Heap@@2 |c#0@0|) (=> (and (= |c#0@0| (_module.__default.ff $Heap@@2 |c#0@0|)) (= (ControlFlow 0 40) 37)) anon6_correct)))))))
(let ((anon34_Then_correct  (=> (= (ControlFlow 0 39) 37) anon6_correct)))
(let ((anon33_Then_correct  (=> (|Set#IsMember| |sc#0| ($Box refType |c#0@0|)) (and (=> (= (ControlFlow 0 42) 39) anon34_Then_correct) (=> (= (ControlFlow 0 42) 40) anon34_Else_correct)))))
(let ((anon33_Else_correct  (=> (and (=> (|Set#IsMember| |sc#0| ($Box refType |c#0@0|)) (or true (= |c#0@0| (_module.__default.ff $Heap@@2 |c#0@0|)))) (= (ControlFlow 0 38) 37)) anon6_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@3)))
 :qid |oldisaspecialcasefortriggersdfy.36:8|
 :skolemid |571|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3))
)) ($HeapSucc $Heap@@2 $Heap@0)) (and ($Is refType |c#0@0| Tclass._module.C) ($IsAlloc refType |c#0@0| Tclass._module.C $Heap@0))) (and (=> (= (ControlFlow 0 43) 42) anon33_Then_correct) (=> (= (ControlFlow 0 43) 38) anon33_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and ($Is SetType |sc#0| (TSet Tclass._module.C)) ($IsAlloc SetType |sc#0| (TSet Tclass._module.C) $Heap@@2)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 44) 43))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
