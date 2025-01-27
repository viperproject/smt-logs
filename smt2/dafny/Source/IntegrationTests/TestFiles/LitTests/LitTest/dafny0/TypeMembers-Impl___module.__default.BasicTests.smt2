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
(declare-fun Tagclass._module.DaTy () T@U)
(declare-fun Tagclass._module.Pos () T@U)
(declare-fun |##_module.DaTy.Yes| () T@U)
(declare-fun tytagFamily$DaTy () T@U)
(declare-fun tytagFamily$Pos () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Pos () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.DaTy.Yes| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.DaTy () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.DaTy.Q#canCall| () Bool)
(declare-fun _module.DaTy.Q () Int)
(declare-fun LitInt (Int) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Pos.Gittit (Int) Int)
(declare-fun |_module.Pos.Gittit#canCall| (Int) Bool)
(declare-fun _module.Pos.Func (Int) Int)
(declare-fun |_module.Pos.Func#canCall| (Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.DaTy.W (T@U) Int)
(declare-fun |_module.DaTy.W#canCall| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._module.DaTy Tagclass._module.Pos |##_module.DaTy.Yes| tytagFamily$DaTy tytagFamily$Pos)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._module.Pos $h)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc intType |x#0| Tclass._module.Pos $h))
)))
(assert (= (DatatypeCtorId |#_module.DaTy.Yes|) |##_module.DaTy.Yes|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#_module.DaTy.Yes| Tclass._module.DaTy))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.DaTy.Q#canCall| (< 0 $FunctionContextHeight)) (= _module.DaTy.Q (LitInt 13)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.DaTy.Q#canCall| (< 0 $FunctionContextHeight)) (= _module.DaTy.Q (LitInt 13)))))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this Int) ) (!  (=> (or (|_module.Pos.Gittit#canCall| this) (and (< 0 $FunctionContextHeight) (< 0 this))) (= (_module.Pos.Gittit this) (+ this 2)))
 :qid |TypeMembersdfy.32:12|
 :skolemid |539|
 :pattern ( (_module.Pos.Gittit this))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|y#0| Int) ) (!  (=> (or (|_module.Pos.Func#canCall| |y#0|) (and (< 1 $FunctionContextHeight) (< 0 |y#0|))) (= (_module.Pos.Func |y#0|) (+ |y#0| 3)))
 :qid |TypeMembersdfy.31:24|
 :skolemid |535|
 :pattern ( (_module.Pos.Func |y#0|))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._module.Pos) (< 0 (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is intType |x#0@@0| Tclass._module.Pos))
)))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 Int) ) (!  (=> (or (|_module.Pos.Gittit#canCall| (LitInt this@@0)) (and (< 0 $FunctionContextHeight) (< 0 this@@0))) (= (_module.Pos.Gittit (LitInt this@@0)) (LitInt (+ this@@0 2))))
 :qid |TypeMembersdfy.32:12|
 :weight 3
 :skolemid |540|
 :pattern ( (_module.Pos.Gittit (LitInt this@@0)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|y#0@@0| Int) ) (!  (=> (or (|_module.Pos.Func#canCall| (LitInt |y#0@@0|)) (and (< 1 $FunctionContextHeight) (< 0 |y#0@@0|))) (= (_module.Pos.Func (LitInt |y#0@@0|)) (LitInt (+ |y#0@@0| 3))))
 :qid |TypeMembersdfy.31:24|
 :weight 3
 :skolemid |536|
 :pattern ( (_module.Pos.Func (LitInt |y#0@@0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|_module.DaTy.W#canCall| this@@1) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass._module.DaTy))) (= (_module.DaTy.W this@@1) (LitInt 10)))
 :qid |TypeMembersdfy.25:12|
 :skolemid |529|
 :pattern ( (_module.DaTy.W this@@1))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 T@U) ) (!  (=> (or (|_module.DaTy.W#canCall| (Lit DatatypeTypeType this@@2)) (and (< 0 $FunctionContextHeight) ($Is DatatypeTypeType this@@2 Tclass._module.DaTy))) (= (_module.DaTy.W (Lit DatatypeTypeType this@@2)) (LitInt 10)))
 :qid |TypeMembersdfy.25:12|
 :weight 3
 :skolemid |530|
 :pattern ( (_module.DaTy.W (Lit DatatypeTypeType this@@2)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |785|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d Tclass._module.DaTy)) ($IsAlloc DatatypeTypeType d Tclass._module.DaTy $h@@0))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass._module.DaTy $h@@0))
)))
(assert (= (Tag Tclass._module.DaTy) Tagclass._module.DaTy))
(assert (= (TagFamily Tclass._module.DaTy) tytagFamily$DaTy))
(assert (= (Tag Tclass._module.Pos) Tagclass._module.Pos))
(assert (= (TagFamily Tclass._module.Pos) tytagFamily$Pos))
(assert (= |#_module.DaTy.Yes| (Lit DatatypeTypeType |#_module.DaTy.Yes|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |t#0@0| () T@U)
(declare-fun |r#0@0| () Int)
(declare-fun |q#0@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |p#0@0| () Int)
(declare-fun |u#0@0| () Int)
(declare-fun |v#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@r#0@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@r#0@0@@0| () Int)
(declare-fun |t#0| () T@U)
(declare-fun |p#0| () Int)
(set-info :boogie-vc-id Impl$$_module.__default.BasicTests)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |t#0@0| (Lit DatatypeTypeType |#_module.DaTy.Yes|))) (and ($IsAllocBox ($Box DatatypeTypeType |t#0@0|) Tclass._module.DaTy $Heap) (|_module.DaTy.W#canCall| |t#0@0|))) (=> (and (and (and (|_module.DaTy.W#canCall| |t#0@0|) (= |r#0@0| (_module.DaTy.W |t#0@0|))) (and |_module.DaTy.Q#canCall| |_module.DaTy.Q#canCall|)) (and (and |_module.DaTy.Q#canCall| |_module.DaTy.Q#canCall|) (and (= |q#0@0| (LitInt (+ _module.DaTy.Q _module.DaTy.Q))) (= |newtype$check#0@0| (LitInt 8))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< 0 |newtype$check#0@0|)) (=> (< 0 |newtype$check#0@0|) (=> (= |p#0@0| (LitInt 8)) (=> (and (and ($IsAlloc intType (int_2_U |p#0@0|) Tclass._module.Pos $Heap) (|_module.Pos.Func#canCall| |p#0@0|)) (and (|_module.Pos.Func#canCall| |p#0@0|) (= |u#0@0| (_module.Pos.Func |p#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= |u#0@0| (LitInt 11))) (=> (= |u#0@0| (LitInt 11)) (=> (and (and ($IsAllocBox ($Box intType (int_2_U |p#0@0|)) Tclass._module.Pos $Heap) (|_module.Pos.Gittit#canCall| |p#0@0|)) (and (|_module.Pos.Gittit#canCall| |p#0@0|) (= |v#0@0| (_module.Pos.Gittit |p#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= |v#0@0| (LitInt 10))) (=> (= |v#0@0| (LitInt 10)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= |call2formal@r#0@0| (+ |p#0@0| 3))) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |TypeMembersdfy.33:17|
 :skolemid |542|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |call2formal@r#0@0| (LitInt 11))) (=> (= |call2formal@r#0@0| (LitInt 11)) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (= |call2formal@r#0@0@@0| (+ |p#0@0| 2)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |TypeMembersdfy.34:10|
 :skolemid |545|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= (ControlFlow 0 2) (- 0 1)))) (= |call2formal@r#0@0@@0| (LitInt 10))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |t#0| Tclass._module.DaTy) ($IsAlloc DatatypeTypeType |t#0| Tclass._module.DaTy $Heap)) true) (and (and (< 0 |p#0|) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 2)))) anon0_correct))))
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
