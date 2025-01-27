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
(declare-fun TagBool () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Twostate? () T@U)
(declare-fun Tagclass._module.Twostate () T@U)
(declare-fun tytagFamily$Twostate () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Twostate? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Twostate () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Twostate.BadVariations0 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Twostate.BadVariations0#canCall| (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TBool TagBool alloc Tagclass._module.Twostate? Tagclass._module.Twostate tytagFamily$Twostate)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Twostate?)  (or (= $o null) (= (dtype $o) Tclass._module.Twostate?)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is refType $o Tclass._module.Twostate?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Twostate $h) ($IsAlloc refType |c#0| Tclass._module.Twostate? $h))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Twostate $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Twostate? $h))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Twostate? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Twostate? $h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) (|c#0@@0| T@U) (|d#0| T@U) (|e#0| T@U) (|f#0| T@U) ) (!  (=> (or (|_module.Twostate.BadVariations0#canCall| $prevHeap $Heap (Lit refType this) (Lit refType |c#0@@0|) (Lit refType |d#0|) (Lit refType |e#0|) (Lit refType |f#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Twostate) ($IsAlloc refType this Tclass._module.Twostate $prevHeap)))) ($Is refType |c#0@@0| Tclass._module.Twostate)) ($Is refType |d#0| Tclass._module.Twostate)) ($Is refType |e#0| Tclass._module.Twostate)) ($Is refType |f#0| Tclass._module.Twostate)))) (= (_module.Twostate.BadVariations0 $prevHeap $Heap (Lit refType this) (Lit refType |c#0@@0|) (Lit refType |d#0|) (Lit refType |e#0|) (Lit refType |f#0|)) (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (or (not (= $o@@1 null)) (not true)) (=> (or (= $o@@1 (Lit refType this)) (= $o@@1 (Lit refType |c#0@@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@1) $f))))
 :qid |gitissue2301dfy.38:5|
 :skolemid |584|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f))
))))
 :qid |gitissue2301dfy.36:22|
 :weight 3
 :skolemid |585|
 :pattern ( (_module.Twostate.BadVariations0 $prevHeap $Heap (Lit refType this) (Lit refType |c#0@@0|) (Lit refType |d#0|) (Lit refType |e#0|) (Lit refType |f#0|)) ($IsGoodHeap $Heap))
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
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Twostate)  (and ($Is refType |c#0@@1| Tclass._module.Twostate?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |665|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Twostate))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Twostate?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|c#0@@2| T@U) (|d#0@@0| T@U) (|e#0@@0| T@U) (|f#0@@0| T@U) ) (!  (=> (or (|_module.Twostate.BadVariations0#canCall| $prevHeap@@0 $Heap@@0 this@@0 |c#0@@2| |d#0@@0| |e#0@@0| |f#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@0 $Heap@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Twostate) ($IsAlloc refType this@@0 Tclass._module.Twostate $prevHeap@@0)))) ($Is refType |c#0@@2| Tclass._module.Twostate)) ($Is refType |d#0@@0| Tclass._module.Twostate)) ($Is refType |e#0@@0| Tclass._module.Twostate)) ($Is refType |f#0@@0| Tclass._module.Twostate)))) (= (_module.Twostate.BadVariations0 $prevHeap@@0 $Heap@@0 this@@0 |c#0@@2| |d#0@@0| |e#0@@0| |f#0@@0|) (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@2 null)) (not true)) (=> (or (= $o@@2 this@@0) (= $o@@2 |c#0@@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 $o@@2) $f@@0))))
 :qid |gitissue2301dfy.38:5|
 :skolemid |580|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@2) $f@@0))
))))
 :qid |gitissue2301dfy.36:22|
 :skolemid |581|
 :pattern ( (_module.Twostate.BadVariations0 $prevHeap@@0 $Heap@@0 this@@0 |c#0@@2| |d#0@@0| |e#0@@0| |f#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($prevHeap@@1 T@U) ($h0 T@U) ($h1 T@U) (this@@1 T@U) (|c#0@@3| T@U) (|d#0@@1| T@U) (|e#0@@1| T@U) (|f#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Twostate))) (or (|_module.Twostate.BadVariations0#canCall| $prevHeap@@1 $h0 this@@1 |c#0@@3| |d#0@@1| |e#0@@1| |f#0@@1|) (and (and (and ($Is refType |c#0@@3| Tclass._module.Twostate) ($Is refType |d#0@@1| Tclass._module.Twostate)) ($Is refType |e#0@@1| Tclass._module.Twostate)) ($Is refType |f#0@@1| Tclass._module.Twostate)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@3 T@U) ($f@@1 T@U) ) (! true
 :qid |unknown.0:0|
 :skolemid |576|
)) (= (_module.Twostate.BadVariations0 $prevHeap@@1 $h0 this@@1 |c#0@@3| |d#0@@1| |e#0@@1| |f#0@@1|) (_module.Twostate.BadVariations0 $prevHeap@@1 $h1 this@@1 |c#0@@3| |d#0@@1| |e#0@@1| |f#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |577|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Twostate.BadVariations0 $prevHeap@@1 $h1 this@@1 |c#0@@3| |d#0@@1| |e#0@@1| |f#0@@1|))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@2))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |668|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f@@2))
)))
(assert (= (Tag Tclass._module.Twostate?) Tagclass._module.Twostate?))
(assert (= (TagFamily Tclass._module.Twostate?) tytagFamily$Twostate))
(assert (= (Tag Tclass._module.Twostate) Tagclass._module.Twostate))
(assert (= (TagFamily Tclass._module.Twostate) tytagFamily$Twostate))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@2 T@U) ($Heap@@1 T@U) (this@@2 T@U) (|c#0@@4| T@U) (|d#0@@2| T@U) (|e#0@@2| T@U) (|f#0@@2| T@U) ) (!  (=> (or (|_module.Twostate.BadVariations0#canCall| $prevHeap@@2 $Heap@@1 this@@2 (Lit refType |c#0@@4|) (Lit refType |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |f#0@@2|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@2) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@2 $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Twostate) ($IsAlloc refType this@@2 Tclass._module.Twostate $prevHeap@@2)))) ($Is refType |c#0@@4| Tclass._module.Twostate)) ($Is refType |d#0@@2| Tclass._module.Twostate)) ($Is refType |e#0@@2| Tclass._module.Twostate)) ($Is refType |f#0@@2| Tclass._module.Twostate)))) (= (_module.Twostate.BadVariations0 $prevHeap@@2 $Heap@@1 this@@2 (Lit refType |c#0@@4|) (Lit refType |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |f#0@@2|)) (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@5 null)) (not true)) (=> (or (= $o@@5 this@@2) (= $o@@5 (Lit refType |c#0@@4|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@2 $o@@5) $f@@3))))
 :qid |gitissue2301dfy.38:5|
 :skolemid |582|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@5) $f@@3))
))))
 :qid |gitissue2301dfy.36:22|
 :weight 3
 :skolemid |583|
 :pattern ( (_module.Twostate.BadVariations0 $prevHeap@@2 $Heap@@1 this@@2 (Lit refType |c#0@@4|) (Lit refType |d#0@@2|) (Lit refType |e#0@@2|) (Lit refType |f#0@@2|)) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc boolType v@@0 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@0 TBool h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is boolType v@@1 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@1 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun current$Heap () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |d#0@@3| () T@U)
(declare-fun |e#0@@3| () T@U)
(declare-fun |f#0@@3| () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$_module.Twostate.BadVariations0)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 3) (- 0 6)) ($IsAlloc refType this@@3 Tclass._module.Twostate $Heap@@2)) (=> ($IsAlloc refType this@@3 Tclass._module.Twostate $Heap@@2) (=> (= |b$reqreads#0@0| (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@6) alloc)))) (= $o@@6 this@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@4)))
 :qid |gitissue2301dfy.39:7|
 :skolemid |586|
))) (and (=> (= (ControlFlow 0 3) (- 0 5)) ($IsAlloc refType |c#0@@5| Tclass._module.Twostate $Heap@@2)) (=> ($IsAlloc refType |c#0@@5| Tclass._module.Twostate $Heap@@2) (=> (= |b$reqreads#1@0| (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@7) alloc)))) (= $o@@7 |c#0@@5|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@7 $f@@5)))
 :qid |gitissue2301dfy.40:7|
 :skolemid |587|
))) (=> (and (= (_module.Twostate.BadVariations0 $Heap@@2 current$Heap this@@3 |c#0@@5| |d#0@@3| |e#0@@3| |f#0@@3|) (forall (($o@@8 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@8 null)) (not true)) (=> (or (= $o@@8 this@@3) (= $o@@8 |c#0@@5|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 $o@@8) $f@@6))))
 :qid |gitissue2301dfy.38:5|
 :skolemid |589|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@6))
))) ($Is boolType (bool_2_U (_module.Twostate.BadVariations0 $Heap@@2 current$Heap this@@3 |c#0@@5| |d#0@@3| |e#0@@3| |f#0@@3|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#1@0|))))))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#1| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 7) 1) anon5_Then_correct) (=> (= (ControlFlow 0 7) 3) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (=> (and (and (and (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Twostate) ($IsAlloc refType this@@3 Tclass._module.Twostate previous$Heap))) (and ($Is refType |c#0@@5| Tclass._module.Twostate) ($IsAlloc refType |c#0@@5| Tclass._module.Twostate previous$Heap))) (and (and ($Is refType |d#0@@3| Tclass._module.Twostate) ($IsAlloc refType |d#0@@3| Tclass._module.Twostate previous$Heap)) (and ($Is refType |e#0@@3| Tclass._module.Twostate) ($IsAlloc refType |e#0@@3| Tclass._module.Twostate previous$Heap)))) (and (and (and ($Is refType |f#0@@3| Tclass._module.Twostate) ($IsAlloc refType |f#0@@3| Tclass._module.Twostate previous$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@2) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 8) 7)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
