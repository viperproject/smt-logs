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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.HClass () T@U)
(declare-fun Tagclass._module.WClass () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun class._module.HTrait? () T@U)
(declare-fun Tagclass._module.HTrait? () T@U)
(declare-fun Tagclass._module.HTrait () T@U)
(declare-fun class._module.HClass? () T@U)
(declare-fun Tagclass._module.HClass? () T@U)
(declare-fun class._module.WClass? () T@U)
(declare-fun Tagclass._module.WClass? () T@U)
(declare-fun tytagFamily$HClass () T@U)
(declare-fun tytagFamily$WClass () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$HTrait () T@U)
(declare-fun field$h1 () T@U)
(declare-fun field$k1 () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.HClass.k0 (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.HClass? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass._module.WClass (T@U) T@U)
(declare-fun Tclass._module.WClass? (T@U) T@U)
(declare-fun implements$_module.HTrait (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.HTrait? () T@U)
(declare-fun Tclass._module.HTrait () T@U)
(declare-fun Tclass._module.HClass () T@U)
(declare-fun _module.HTrait.h1 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.HClass.k1 () T@U)
(declare-fun _module.WClass.k1 () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.WClass.k0 (T@U T@U) T@U)
(declare-fun _module.HTrait.h0 (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._module.WClass_0 (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun Tclass._module.WClass?_0 (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName Tagclass._module.HClass Tagclass._module.WClass Tagclass._module.Stream class._module.HTrait? Tagclass._module.HTrait? Tagclass._module.HTrait class._module.HClass? Tagclass._module.HClass? class._module.WClass? Tagclass._module.WClass? tytagFamily$HClass tytagFamily$WClass tytagFamily$Stream tytagFamily$HTrait field$h1 field$k1)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))) (= (Ctor DatatypeTypeType) 7)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass._module.HClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc DatatypeTypeType (_module.HClass.k0 $o) (Tclass._module.Stream TInt) $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |849|
 :pattern ( (_module.HClass.k0 $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert (forall ((_module.WClass$W T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h@@0) ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h@@0))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h@@0))
)))
(assert (implements$_module.HTrait Tclass._module.HClass?))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.HClass?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.HClass?)))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($Is refType $o@@0 Tclass._module.HClass?))
)))
(assert (forall ((bx T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.HClass? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx Tclass._module.HTrait? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( ($IsAllocBox bx Tclass._module.HClass? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.HTrait $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.HTrait? $h@@2))
 :qid |unknown.0:0|
 :skolemid |844|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.HTrait $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.HTrait? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.HClass $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.HClass? $h@@3))
 :qid |unknown.0:0|
 :skolemid |856|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.HClass $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.HClass? $h@@3))
)))
(assert (forall ((_module.WClass$W@@0 T@U) ($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.WClass? _module.WClass$W@@0) $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |861|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.WClass? _module.WClass$W@@0) $h@@4))
)))
(assert (= (FDim _module.HTrait.h1) 0))
(assert (= (FieldOfDecl class._module.HTrait? field$h1) _module.HTrait.h1))
(assert  (not ($IsGhostField _module.HTrait.h1)))
(assert (= (FDim _module.HClass.k1) 0))
(assert (= (FieldOfDecl class._module.HClass? field$k1) _module.HClass.k1))
(assert  (not ($IsGhostField _module.HClass.k1)))
(assert (= (FDim _module.WClass.k1) 0))
(assert (= (FieldOfDecl class._module.WClass? field$k1) _module.WClass.k1))
(assert  (not ($IsGhostField _module.WClass.k1)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.HTrait? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.HTrait? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.HClass? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |847|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.HClass? $h@@6))
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
(assert (forall (($h@@7 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass._module.HTrait?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) _module.HTrait.h1)) (Tclass._module.Stream TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |837|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@4) _module.HTrait.h1)))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@1 T@U) ($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.WClass? _module.WClass$W@@1))) ($Is DatatypeTypeType (_module.WClass.k0 _module.WClass$W@@1 $o@@5) (Tclass._module.Stream _module.WClass$W@@1)))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( (_module.WClass.k0 _module.WClass$W@@1 $o@@5))
))))
(assert ($IsGhostField alloc))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) ($Is refType $o@@6 Tclass._module.HTrait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))) ($IsAlloc DatatypeTypeType (_module.HTrait.h0 $o@@6) (Tclass._module.Stream TInt) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |836|
 :pattern ( (_module.HTrait.h0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))
))))
(assert (forall ((_module.WClass$W@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.WClass _module.WClass$W@@2))  (and ($Is refType |c#0@@2| (Tclass._module.WClass? _module.WClass$W@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |876|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.WClass _module.WClass$W@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.WClass? _module.WClass$W@@2)))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.HClass?)) ($Is DatatypeTypeType (_module.HClass.k0 $o@@7) (Tclass._module.Stream TInt)))
 :qid |unknown.0:0|
 :skolemid |848|
 :pattern ( (_module.HClass.k0 $o@@7))
))))
(assert (forall ((_module.WClass$W@@3 T@U) ) (!  (and (= (Tag (Tclass._module.WClass _module.WClass$W@@3)) Tagclass._module.WClass) (= (TagFamily (Tclass._module.WClass _module.WClass$W@@3)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@3))
)))
(assert (forall ((_module.Stream$G T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$G)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$G)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (Tclass._module.Stream _module.Stream$G))
)))
(assert (forall ((_module.WClass$W@@4 T@U) ) (!  (and (= (Tag (Tclass._module.WClass? _module.WClass$W@@4)) Tagclass._module.WClass?) (= (TagFamily (Tclass._module.WClass? _module.WClass$W@@4)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@4))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@5 T@U) ($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.WClass? _module.WClass$W@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc DatatypeTypeType (_module.WClass.k0 _module.WClass$W@@5 $o@@8) (Tclass._module.Stream _module.WClass$W@@5) $h@@9))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( (_module.WClass.k0 _module.WClass$W@@5 $o@@8) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))
))))
(assert (forall ((_module.WClass$W@@6 T@U) ($h@@10 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.WClass? _module.WClass$W@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.WClass.k1)) (Tclass._module.Stream _module.WClass$W@@6) $h@@10))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@9) _module.WClass.k1)) (Tclass._module.WClass? _module.WClass$W@@6))
)))
(assert (forall (($h@@11 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.HClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.HClass.k1)) (Tclass._module.Stream TInt) $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |851|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@10) _module.HClass.k1)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.HClass) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.HClass)))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsBox bx@@1 Tclass._module.HClass))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.HTrait?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.HTrait?)))
 :qid |unknown.0:0|
 :skolemid |832|
 :pattern ( ($IsBox bx@@2 Tclass._module.HTrait?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.HTrait) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.HTrait)))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( ($IsBox bx@@3 Tclass._module.HTrait))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.HClass?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.HClass?)))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsBox bx@@4 Tclass._module.HClass?))
)))
(assert (forall ((_module.WClass$W@@7 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.WClass? _module.WClass$W@@7))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.WClass? _module.WClass$W@@7))))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($Is refType $o@@11 (Tclass._module.WClass? _module.WClass$W@@7)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.HTrait)  (and ($Is refType |c#0@@3| Tclass._module.HTrait?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.HTrait))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.HTrait?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.HClass)  (and ($Is refType |c#0@@4| Tclass._module.HClass?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |855|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.HClass))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.HClass?))
)))
(assert (forall (($o@@12 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@12 Tclass._module.HClass? $heap) ($IsAlloc refType $o@@12 Tclass._module.HTrait? $heap))
 :qid |unknown.0:0|
 :skolemid |1004|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.HClass? $heap))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TBool) (and (= ($Box boolType ($Unbox boolType bx@@6)) bx@@6) ($Is boolType ($Unbox boolType bx@@6) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@6 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((_module.WClass$W@@8 T@U) ) (! (= (Tclass._module.WClass_0 (Tclass._module.WClass _module.WClass$W@@8)) _module.WClass$W@@8)
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@8))
)))
(assert (forall ((_module.Stream$G@@0 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$G@@0)) _module.Stream$G@@0)
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( (Tclass._module.Stream _module.Stream$G@@0))
)))
(assert (forall ((_module.WClass$W@@9 T@U) ) (! (= (Tclass._module.WClass?_0 (Tclass._module.WClass? _module.WClass$W@@9)) _module.WClass$W@@9)
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@9))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall (($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) ($Is refType $o@@13 Tclass._module.HTrait?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.HTrait.h1)) (Tclass._module.Stream TInt) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |838|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) _module.HTrait.h1)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1005|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f))
)))
(assert (forall ((_module.WClass$W@@10 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.WClass? _module.WClass$W@@10)))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.WClass.k1)) (Tclass._module.Stream _module.WClass$W@@10)))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.WClass.k1)) (Tclass._module.WClass? _module.WClass$W@@10))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) ($Is refType $o@@16 Tclass._module.HTrait?)) ($Is DatatypeTypeType (_module.HTrait.h0 $o@@16) (Tclass._module.Stream TInt)))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (_module.HTrait.h0 $o@@16))
))))
(assert (forall ((_module.WClass$W@@11 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.WClass _module.WClass$W@@11)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.WClass _module.WClass$W@@11))))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsBox bx@@7 (Tclass._module.WClass _module.WClass$W@@11)))
)))
(assert (forall ((_module.Stream$G@@1 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.Stream _module.Stream$G@@1)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass._module.Stream _module.Stream$G@@1))))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsBox bx@@8 (Tclass._module.Stream _module.Stream$G@@1)))
)))
(assert (forall ((_module.WClass$W@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.WClass? _module.WClass$W@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.WClass? _module.WClass$W@@12))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($IsBox bx@@9 (Tclass._module.WClass? _module.WClass$W@@12)))
)))
(assert (forall (($o@@17 T@U) ) (!  (=> ($Is refType $o@@17 Tclass._module.HClass?) ($Is refType $o@@17 Tclass._module.HTrait?))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($Is refType $o@@17 Tclass._module.HClass?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.HClass?) ($IsBox bx@@10 Tclass._module.HTrait?))
 :qid |unknown.0:0|
 :skolemid |1001|
 :pattern ( ($IsBox bx@@10 Tclass._module.HClass?))
)))
(assert (forall (($h@@14 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.HClass?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.HClass.k1)) (Tclass._module.Stream TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |850|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.HClass.k1)))
)))
(assert (= (Tag Tclass._module.HClass) Tagclass._module.HClass))
(assert (= (TagFamily Tclass._module.HClass) tytagFamily$HClass))
(assert (= (Tag Tclass._module.HTrait?) Tagclass._module.HTrait?))
(assert (= (TagFamily Tclass._module.HTrait?) tytagFamily$HTrait))
(assert (= (Tag Tclass._module.HTrait) Tagclass._module.HTrait))
(assert (= (TagFamily Tclass._module.HTrait) tytagFamily$HTrait))
(assert (= (Tag Tclass._module.HClass?) Tagclass._module.HClass?))
(assert (= (TagFamily Tclass._module.HClass?) tytagFamily$HClass))
(assert (forall (($o@@19 T@U) ) (! (= ($Is refType $o@@19 Tclass._module.HTrait?)  (or (= $o@@19 null) (implements$_module.HTrait (dtype $o@@19))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType $o@@19 Tclass._module.HTrait?))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun call1formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call1formal@this@0 () T@U)
(declare-fun |s##0@0| () T@U)
(declare-fun |call3formal@cadr#0| () T@U)
(declare-fun call0formal@_module.HTrait.Cadr$X () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call3formal@cadr#0@0| () T@U)
(declare-fun |$rhs##0@0| () Int)
(declare-fun |s##1@0| () T@U)
(declare-fun |call3formal@cadr#0@@0| () T@U)
(declare-fun call0formal@_module.HTrait.Cadr$X@@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@cadr#0@0@@0| () T@U)
(declare-fun |$rhs##1@0| () Int)
(declare-fun |s##2@0| () T@U)
(declare-fun |call3formal@cadr#0@@1| () T@U)
(declare-fun call0formal@_module.HTrait.Cadr$X@@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call3formal@cadr#0@0@@1| () T@U)
(declare-fun |$rhs##2@0| () Int)
(declare-fun |s##3@0| () T@U)
(declare-fun |call3formal@cadr#0@@2| () T@U)
(declare-fun call0formal@_module.HTrait.Cadr$X@@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call3formal@cadr#0@0@@2| () T@U)
(declare-fun |$rhs##3@0| () Int)
(declare-fun |w##0@0| () Bool)
(declare-fun call3formal@this () T@U)
(declare-fun call0formal@_module.WClass$W () T@U)
(declare-fun |call1formal@w#0@0| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call3formal@this@0 () T@U)
(declare-fun |s##4@0| () T@U)
(declare-fun |call3formal@cadr#0@@3| () T@U)
(declare-fun call0formal@_module.HTrait.Cadr$X@@3 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |call3formal@cadr#0@0@@3| () T@U)
(declare-fun |$rhs##4@0| () Bool)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(declare-fun |defass#b#0| () Bool)
(declare-fun |b#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.TraitClass)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (or (not (= call1formal@this null)) (not true)) (and ($Is refType call1formal@this Tclass._module.HClass) ($IsAlloc refType call1formal@this Tclass._module.HClass $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (or (not (= call1formal@this@0 null)) (not true)) (and ($Is refType call1formal@this@0 Tclass._module.HClass) ($IsAlloc refType call1formal@this@0 Tclass._module.HClass $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call1formal@this@0) alloc))))) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@20)))
 :qid |TypeParamsdfy.110:15|
 :skolemid |853|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@20))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |s##0@0| (_module.HTrait.h0 call1formal@this@0)) (=> (and (and ($IsBox |call3formal@cadr#0| call0formal@_module.HTrait.Cadr$X) ($IsAllocBox |call3formal@cadr#0| call0formal@_module.HTrait.Cadr$X $Heap)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (=> (and (and (and ($IsBox |call3formal@cadr#0@0| TInt) ($IsAllocBox |call3formal@cadr#0@0| TInt $Heap@1)) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@21)))
 :qid |TypeParamsdfy.102:17|
 :skolemid |840|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##0@0| (U_2_int ($Unbox intType |call3formal@cadr#0@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |s##1@0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call1formal@this@0) _module.HTrait.h1))) (=> (and (and ($IsBox |call3formal@cadr#0@@0| call0formal@_module.HTrait.Cadr$X@@0) ($IsAllocBox |call3formal@cadr#0@@0| call0formal@_module.HTrait.Cadr$X@@0 $Heap)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (=> (and (and (and ($IsBox |call3formal@cadr#0@0@@0| TInt) ($IsAllocBox |call3formal@cadr#0@0@@0| TInt $Heap@2)) (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22)))
 :qid |TypeParamsdfy.102:17|
 :skolemid |840|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@22))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |$rhs##1@0| (U_2_int ($Unbox intType |call3formal@cadr#0@0@@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |s##2@0| (_module.HClass.k0 call1formal@this@0)) (=> (and (and ($IsBox |call3formal@cadr#0@@1| call0formal@_module.HTrait.Cadr$X@@1) ($IsAllocBox |call3formal@cadr#0@@1| call0formal@_module.HTrait.Cadr$X@@1 $Heap)) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (=> (and (and (and ($IsBox |call3formal@cadr#0@0@@1| TInt) ($IsAllocBox |call3formal@cadr#0@0@@1| TInt $Heap@3)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23)))
 :qid |TypeParamsdfy.102:17|
 :skolemid |840|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@23))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |$rhs##2@0| (U_2_int ($Unbox intType |call3formal@cadr#0@0@@1|))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call1formal@this@0 null)) (not true))) (=> (or (not (= call1formal@this@0 null)) (not true)) (=> (= |s##3@0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call1formal@this@0) _module.HClass.k1))) (=> (and ($IsBox |call3formal@cadr#0@@2| call0formal@_module.HTrait.Cadr$X@@2) ($IsAllocBox |call3formal@cadr#0@@2| call0formal@_module.HTrait.Cadr$X@@2 $Heap)) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and ($IsBox |call3formal@cadr#0@0@@2| TInt) ($IsAllocBox |call3formal@cadr#0@0@@2| TInt $Heap@4))) (and (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@24)))
 :qid |TypeParamsdfy.102:17|
 :skolemid |840|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@24))
)) ($HeapSucc $Heap@3 $Heap@4)) (and (= |$rhs##3@0| (U_2_int ($Unbox intType |call3formal@cadr#0@0@@2|))) (= |w##0@0| (U_2_bool (Lit boolType (bool_2_U true))))))) (=> (and (and (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this (Tclass._module.WClass call0formal@_module.WClass$W)) ($IsAlloc refType call3formal@this (Tclass._module.WClass call0formal@_module.WClass$W) $Heap))) (= |call1formal@w#0@0| ($Box boolType (bool_2_U |w##0@0|)))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (and (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 (Tclass._module.WClass TBool)) ($IsAlloc refType call3formal@this@0 (Tclass._module.WClass TBool) $Heap@5))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0) alloc))))) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@25)))
 :qid |TypeParamsdfy.120:15|
 :skolemid |867|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@25))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= call3formal@this@0 null)) (not true))) (=> (or (not (= call3formal@this@0 null)) (not true)) (=> (= |s##4@0| (_module.WClass.k0 TBool call3formal@this@0)) (=> (and (and ($IsBox |call3formal@cadr#0@@3| call0formal@_module.HTrait.Cadr$X@@3) ($IsAllocBox |call3formal@cadr#0@@3| call0formal@_module.HTrait.Cadr$X@@3 $Heap)) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (=> (and (and (and ($IsBox |call3formal@cadr#0@0@@3| TBool) ($IsAllocBox |call3formal@cadr#0@0@@3| TBool $Heap@6)) (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@26)))
 :qid |TypeParamsdfy.102:17|
 :skolemid |840|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@26))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |$rhs##4@0| (U_2_bool ($Unbox boolType |call3formal@cadr#0@0@@3|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= call3formal@this@0 null)) (not true))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#a#0| (and ($Is refType |a#0| Tclass._module.HClass) ($IsAlloc refType |a#0| Tclass._module.HClass $Heap))) true)) (and (and (=> |defass#b#0| (and ($Is refType |b#0| (Tclass._module.WClass TBool)) ($IsAlloc refType |b#0| (Tclass._module.WClass TBool) $Heap))) true) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 14) 2)))) anon0_correct)))
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
