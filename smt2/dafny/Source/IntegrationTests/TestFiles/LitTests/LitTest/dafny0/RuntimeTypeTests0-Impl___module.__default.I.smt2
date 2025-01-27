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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Class0 () T@U)
(declare-fun Tagclass._module.Class0? () T@U)
(declare-fun Tagclass._module.Dt () T@U)
(declare-fun Tagclass._module.Tr () T@U)
(declare-fun Tagclass._module.Tr? () T@U)
(declare-fun |##_module.Dt.Atom| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Class0 () T@U)
(declare-fun tytagFamily$Dt () T@U)
(declare-fun tytagFamily$Tr () T@U)
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
(declare-fun implements$_module.Tr (T@U) Bool)
(declare-fun Tclass._module.Class0? () T@U)
(declare-fun _module.Dt.Atom_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Dt (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tr? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Tr () T@U)
(declare-fun Tclass._module.Class0 () T@U)
(declare-fun |#_module.Dt.Atom| (T@U Int) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun _module.Dt.more (T@U) Int)
(declare-fun _module.Dt.get (T@U) T@U)
(declare-fun Tclass._module.Dt_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Class0 Tagclass._module.Class0? Tagclass._module.Dt Tagclass._module.Tr Tagclass._module.Tr? |##_module.Dt.Atom| tytagFamily$object tytagFamily$Class0 tytagFamily$Dt tytagFamily$Tr)
)
(assert (= (Tag TInt) TagInt))
(assert (implements$_module.Tr Tclass._module.Class0?))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Dt$A T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Dt _module.Dt$A)) (_module.Dt.Atom_q d))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( (_module.Dt.Atom_q d) ($Is DatatypeTypeType d (Tclass._module.Dt _module.Dt$A)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Class0?)  (or (= $o null) (= (dtype $o) Tclass._module.Class0?)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is refType $o Tclass._module.Class0?))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Class0? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.Tr? $h))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsAllocBox bx Tclass._module.Class0? $h))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Tr $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Tr? $h@@1))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Tr $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Tr? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Class0 $h@@2) ($IsAlloc refType |c#0@@1| Tclass._module.Class0? $h@@2))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Class0 $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Class0? $h@@2))
)))
(assert (forall ((_module.Dt$A@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Dt.Atom| |a#2#0#0| |a#2#1#0|) (Tclass._module.Dt _module.Dt$A@@0))  (and ($IsBox |a#2#0#0| _module.Dt$A@@0) ($Is intType (int_2_U |a#2#1#0|) TInt)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($Is DatatypeTypeType (|#_module.Dt.Atom| |a#2#0#0| |a#2#1#0|) (Tclass._module.Dt _module.Dt$A@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Tr? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Tr? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Class0? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Class0? $h@@5))
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
(assert (forall ((d@@0 T@U) ) (! (= (_module.Dt.Atom_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Dt.Atom|))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.Dt.Atom_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Dt.Atom_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| Int) ) (! (= d@@1 (|#_module.Dt.Atom| |a#1#0#0| |a#1#1#0|))
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |543|
)))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( (_module.Dt.Atom_q d@@1))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Dt$A@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Dt _module.Dt$A@@1)) Tagclass._module.Dt) (= (TagFamily (Tclass._module.Dt _module.Dt$A@@1)) tytagFamily$Dt))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.Dt _module.Dt$A@@1))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Class0) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Class0)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@3 Tclass._module.Class0))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Class0?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Class0?)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@4 Tclass._module.Class0?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Tr) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Tr)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsBox bx@@5 Tclass._module.Tr))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Tr?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Tr?)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsBox bx@@6 Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Tr)  (and ($Is refType |c#0@@3| Tclass._module.Tr?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Tr))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Tr?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Class0)  (and ($Is refType |c#0@@4| Tclass._module.Class0?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Class0))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Class0?))
)))
(assert (forall ((d@@2 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Dt.Atom_q d@@2) (exists ((_module.Dt$A@@2 T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Dt _module.Dt$A@@2) $h@@6)
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Dt _module.Dt$A@@2) $h@@6))
)))) ($IsAlloc intType (int_2_U (_module.Dt.more d@@2)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Dt.more d@@2)) TInt $h@@6))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass._module.Class0? $heap) ($IsAlloc refType $o@@3 Tclass._module.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Class0? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Dt.Atom| |a#0#0#0| |a#0#1#0|)) |##_module.Dt.Atom|)
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |541|
 :pattern ( (|#_module.Dt.Atom| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| Int) ) (! (= (_module.Dt.get (|#_module.Dt.Atom| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |551|
 :pattern ( (|#_module.Dt.Atom| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| Int) ) (! (= (_module.Dt.more (|#_module.Dt.Atom| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |553|
 :pattern ( (|#_module.Dt.Atom| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((_module.Dt$A@@3 T@U) ) (! (= (Tclass._module.Dt_0 (Tclass._module.Dt _module.Dt$A@@3)) _module.Dt$A@@3)
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass._module.Dt _module.Dt$A@@3))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| Int) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Dt.Atom| |a#5#0#0| |a#5#1#0|)))
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |552|
 :pattern ( (|#_module.Dt.Atom| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((d@@3 T@U) (_module.Dt$A@@4 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.Dt.Atom_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Dt _module.Dt$A@@4) $h@@7))) ($IsAllocBox (_module.Dt.get d@@3) _module.Dt$A@@4 $h@@7))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsAllocBox (_module.Dt.get d@@3) _module.Dt$A@@4 $h@@7))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |566|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((d@@4 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@4)) (DtRank d@@4))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@4)))
)))
(assert (forall ((_module.Dt$A@@5 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Dt _module.Dt$A@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.Dt _module.Dt$A@@5))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Dt _module.Dt$A@@5)))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.Class0?) ($Is refType $o@@6 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is refType $o@@6 Tclass._module.Class0?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Class0?) ($IsBox bx@@9 Tclass._module.Tr?))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsBox bx@@9 Tclass._module.Class0?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Class0) Tagclass._module.Class0))
(assert (= (TagFamily Tclass._module.Class0) tytagFamily$Class0))
(assert (= (Tag Tclass._module.Class0?) Tagclass._module.Class0?))
(assert (= (TagFamily Tclass._module.Class0?) tytagFamily$Class0))
(assert (= (Tag Tclass._module.Tr) Tagclass._module.Tr))
(assert (= (TagFamily Tclass._module.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass._module.Tr?) Tagclass._module.Tr?))
(assert (= (TagFamily Tclass._module.Tr?) tytagFamily$Tr))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Tr?)  (or (= $o@@7 null) (implements$_module.Tr (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( ($Is refType $o@@7 Tclass._module.Tr?))
)))
(assert (forall ((_module.Dt$A@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| Int) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.Dt.Atom| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Dt _module.Dt$A@@6) $h@@8)  (and ($IsAllocBox |a#2#0#0@@0| _module.Dt$A@@6 $h@@8) ($IsAlloc intType (int_2_U |a#2#1#0@@0|) TInt $h@@8))))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Dt.Atom| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._module.Dt _module.Dt$A@@6) $h@@8))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| Int) ) (! (= (|#_module.Dt.Atom| (Lit BoxType |a#3#0#0|) (LitInt |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.Dt.Atom| |a#3#0#0| |a#3#1#0|)))
 :qid |RuntimeTypeTests0dfy.32:24|
 :skolemid |550|
 :pattern ( (|#_module.Dt.Atom| (Lit BoxType |a#3#0#0|) (LitInt |a#3#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0@0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0@0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@5| () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.I)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Class0?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (and (= |a#0@0| (|#_module.Dt.Atom| ($Box refType $nw@0) (LitInt 10))) (=> |defass#b#0| (and ($Is DatatypeTypeType |b#0@0| (Tclass._module.Dt Tclass._System.object)) ($IsAlloc DatatypeTypeType |b#0@0| (Tclass._module.Dt Tclass._System.object) $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (=> |defass#c#0| (and ($Is refType |c#0@@5| Tclass._module.Class0) ($IsAlloc refType |c#0@@5| Tclass._module.Class0 $Heap))) true) (and (=> |defass#a#0| (and ($Is DatatypeTypeType |a#0| (Tclass._module.Dt Tclass._module.Class0)) ($IsAlloc DatatypeTypeType |a#0| (Tclass._module.Dt Tclass._module.Class0) $Heap))) true)) (and (and (=> |defass#b#0| (and ($Is DatatypeTypeType |b#0| (Tclass._module.Dt Tclass._System.object)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.Dt Tclass._System.object) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct))))
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
