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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class._module.S? () T@U)
(declare-fun Tagclass._module.S? () T@U)
(declare-fun Tagclass._module.O () T@U)
(declare-fun Tagclass._module.S () T@U)
(declare-fun Tagclass._module.O? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$S () T@U)
(declare-fun tytagFamily$O () T@U)
(declare-fun field$obs () T@U)
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
(declare-fun _module.S.i0 (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.S.i0#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.S () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun _module.S.upCast (T@U T@U) T@U)
(declare-fun _module.O.s (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.S.obs () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tclass._module.O () T@U)
(declare-fun |_module.S.upCast#canCall| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun _module.O.admPre (T@U T@U T@U) Bool)
(declare-fun |_module.O.admPre#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |_module.O.i0#canCall| (T@U T@U) Bool)
(declare-fun _module.O.i0 (T@U T@U) Bool)
(declare-fun |_module.S.i#canCall| (T@U T@U) Bool)
(declare-fun _module.S.i (T@U T@U) Bool)
(declare-fun |_module.S.legal#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.S.legal (T@U T@U T@U) Bool)
(declare-fun _module.O.i (T@U T@U) Bool)
(declare-fun |_module.O.i#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.S? () T@U)
(declare-fun Tclass._module.O? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.S.legal0 (T@U T@U T@U) Bool)
(declare-fun _module.S.legal1 (T@U T@U T@U) Bool)
(declare-fun _module.O.i2 (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.S.legal0#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.S.legal1#canCall| (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |_module.O.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.S (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$_module.O (T@U) Bool)
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
(assert (distinct TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.S? Tagclass._module.S? Tagclass._module.O Tagclass._module.S Tagclass._module.O? tytagFamily$object tytagFamily$S tytagFamily$O field$obs)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.S.i0#canCall| $Heap this) (and (< 2 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.S) ($IsAlloc refType this Tclass._module.S $Heap)))))) (and (forall ((|o#0| T@U) ) (!  (=> ($Is refType |o#0| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.S.obs)) ($Box refType |o#0|)) (=> (= (_module.O.s |o#0|) this) (|_module.S.upCast#canCall| this |o#0|))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |497|
 :pattern ( (_module.S.upCast this |o#0|))
 :pattern ( (_module.O.s |o#0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.S.obs)) ($Box refType |o#0|)))
)) (= (_module.S.i0 $Heap this) (forall ((|o#0@@0| T@U) ) (!  (=> (and ($Is refType |o#0@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.S.obs)) ($Box refType |o#0@@0|))) (and (= (_module.O.s |o#0@@0|) this) (or (not (= (_module.S.upCast this |o#0@@0|) this)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |496|
 :pattern ( (_module.S.upCast this |o#0@@0|))
 :pattern ( (_module.O.s |o#0@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.S.obs)) ($Box refType |o#0@@0|)))
)))))
 :qid |_01InnerOuterdfy.18:19|
 :skolemid |498|
 :pattern ( (_module.S.i0 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert  (=> (<= 9 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.O.admPre#canCall| $prevHeap $Heap@@0 this@@0) (and (< 9 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap $Heap@@0)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.O) ($IsAlloc refType this@@0 Tclass._module.O $prevHeap)))))) (and (and (|_module.O.i0#canCall| $Heap@@0 this@@0) (=> (_module.O.i0 $Heap@@0 this@@0) (and (and (|_module.O.i0#canCall| $prevHeap this@@0) (=> (_module.O.i0 $prevHeap this@@0) (|_module.S.i#canCall| $prevHeap (_module.O.s this@@0)))) (=> (and (_module.O.i0 $prevHeap this@@0) (_module.S.i $prevHeap (_module.O.s this@@0))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (or (not (= $o null)) (not true)) (=> (= $o this@@0) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o) $f))))
 :qid |_01InnerOuterdfy.62:71|
 :skolemid |642|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o) $f))
)) (|_module.S.legal#canCall| $prevHeap $Heap@@0 (_module.O.s this@@0))))))) (= (_module.O.admPre $prevHeap $Heap@@0 this@@0)  (and (and (and (_module.O.i0 $Heap@@0 this@@0) (and (_module.O.i0 $prevHeap this@@0) (_module.S.i $prevHeap (_module.O.s this@@0)))) (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (or (not (= $o@@0 null)) (not true)) (=> (= $o@@0 this@@0) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o@@0) $f@@0))))
 :qid |_01InnerOuterdfy.62:71|
 :skolemid |641|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@0) $f@@0))
))) (_module.S.legal $prevHeap $Heap@@0 (_module.O.s this@@0))))))
 :qid |_01InnerOuterdfy.62:22|
 :skolemid |643|
 :pattern ( (_module.O.admPre $prevHeap $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.S.i#canCall| $Heap@@1 this@@1) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.S) ($IsAlloc refType this@@1 Tclass._module.S $Heap@@1)))))) (and (and (|_module.S.i0#canCall| $Heap@@1 this@@1) (=> (_module.S.i0 $Heap@@1 this@@1) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.S.obs)) ($Box refType |o#0@@1|)) (|_module.O.i#canCall| $Heap@@1 |o#0@@1|)))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |508|
 :pattern ( (_module.O.i $Heap@@1 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.S.obs)) ($Box refType |o#0@@1|)))
)))) (= (_module.S.i $Heap@@1 this@@1)  (and (_module.S.i0 $Heap@@1 this@@1) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.S.obs)) ($Box refType |o#0@@2|))) (_module.O.i $Heap@@1 |o#0@@2|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |507|
 :pattern ( (_module.O.i $Heap@@1 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.S.obs)) ($Box refType |o#0@@2|)))
))))))
 :qid |_01InnerOuterdfy.21:19|
 :skolemid |509|
 :pattern ( (_module.S.i $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.S $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.S? $h@@0))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.S $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.S? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.O $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.O? $h@@1))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.O $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.O? $h@@1))
)))
(assert (= (FDim _module.S.obs) 0))
(assert (= (FieldOfDecl class._module.S? field$obs) _module.S.obs))
(assert ($IsGhostField _module.S.obs))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.S) ($IsAlloc refType this@@2 Tclass._module.S $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |527|
)) (= (_module.S.legal0 $prevHeap@@0 $h0 this@@2) (_module.S.legal0 $prevHeap@@0 $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |528|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.S.legal0 $prevHeap@@0 $h1 this@@2))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.S) ($IsAlloc refType this@@3 Tclass._module.S $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |553|
)) (= (_module.S.legal1 $prevHeap@@1 $h0@@0 this@@3) (_module.S.legal1 $prevHeap@@1 $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |554|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.S.legal1 $prevHeap@@1 $h1@@0 this@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.S) ($IsAlloc refType this@@4 Tclass._module.S $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@3 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@3) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |564|
)) (= (_module.S.legal $prevHeap@@2 $h0@@1 this@@4) (_module.S.legal $prevHeap@@2 $h1@@1 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |565|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.S.legal $prevHeap@@2 $h1@@1 this@@4))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.O) ($IsAlloc refType this@@5 Tclass._module.O $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@4 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@4) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |637|
)) (= (_module.O.admPre $prevHeap@@3 $h0@@2 this@@5) (_module.O.admPre $prevHeap@@3 $h1@@2 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |638|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.O.admPre $prevHeap@@3 $h1@@2 this@@5))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.O) ($IsAlloc refType this@@6 Tclass._module.O $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |669|
)) (= (_module.O.i2 $prevHeap@@4 $h0@@3 this@@6) (_module.O.i2 $prevHeap@@4 $h1@@3 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |670|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.O.i2 $prevHeap@@4 $h1@@3 this@@6))
)))
(assert (forall (($o@@6 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._System.object? $h@@2)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@7 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.S? $h@@3)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.S? $h@@3))
)))
(assert (forall (($o@@8 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.O? $h@@4)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.O? $h@@4))
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
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@2 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.S.legal#canCall| $prevHeap@@5 $Heap@@2 this@@7) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@5 $Heap@@2)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.S) ($IsAlloc refType this@@7 Tclass._module.S $prevHeap@@5)))))) (and (and (|_module.S.i#canCall| $prevHeap@@5 this@@7) (=> (_module.S.i $prevHeap@@5 this@@7) (and (|_module.S.i0#canCall| $Heap@@2 this@@7) (=> (_module.S.i0 $Heap@@2 this@@7) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@7) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.S.obs))) (and (|_module.S.legal0#canCall| $prevHeap@@5 $Heap@@2 this@@7) (=> (_module.S.legal0 $prevHeap@@5 $Heap@@2 this@@7) (|_module.S.legal1#canCall| $prevHeap@@5 $Heap@@2 this@@7)))))))) (= (_module.S.legal $prevHeap@@5 $Heap@@2 this@@7)  (and (and (and (and (_module.S.i $prevHeap@@5 this@@7) (_module.S.i0 $Heap@@2 this@@7)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@7) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@7) _module.S.obs)))) (_module.S.legal0 $prevHeap@@5 $Heap@@2 this@@7)) (_module.S.legal1 $prevHeap@@5 $Heap@@2 this@@7)))))
 :qid |_01InnerOuterdfy.33:22|
 :skolemid |568|
 :pattern ( (_module.S.legal $prevHeap@@5 $Heap@@2 this@@7) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@3 T@U) (this@@8 T@U) ) (!  (=> (or (|_module.S.legal1#canCall| $prevHeap@@6 $Heap@@3 this@@8) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@3)) ($HeapSucc $prevHeap@@6 $Heap@@3)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.S) ($IsAlloc refType this@@8 Tclass._module.S $prevHeap@@6)))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.O) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.S.obs)) ($Box refType |o#0@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@8) _module.S.obs)) ($Box refType |o#0@@3|)))) (|_module.O.i#canCall| $Heap@@3 |o#0@@3|)))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |558|
 :pattern ( (_module.O.i $Heap@@3 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@8) _module.S.obs)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.S.obs)) ($Box refType |o#0@@3|)))
)) (= (_module.S.legal1 $prevHeap@@6 $Heap@@3 this@@8) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.O) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.S.obs)) ($Box refType |o#0@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@8) _module.S.obs)) ($Box refType |o#0@@4|))))) (_module.O.i $Heap@@3 |o#0@@4|))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |557|
 :pattern ( (_module.O.i $Heap@@3 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@8) _module.S.obs)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@8) _module.S.obs)) ($Box refType |o#0@@4|)))
)))))
 :qid |_01InnerOuterdfy.30:22|
 :skolemid |559|
 :pattern ( (_module.S.legal1 $prevHeap@@6 $Heap@@3 this@@8) ($IsGoodHeap $Heap@@3))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@9 T@U) (|o#0@@5| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| (Lit refType this@@9) (Lit refType |o#0@@5|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 Tclass._module.S)) ($Is refType |o#0@@5| Tclass._System.object)))) (= (_module.S.upCast (Lit refType this@@9) (Lit refType |o#0@@5|)) (Lit refType |o#0@@5|)))
 :qid |_01InnerOuterdfy.12:18|
 :weight 3
 :skolemid |491|
 :pattern ( (_module.S.upCast (Lit refType this@@9) (Lit refType |o#0@@5|)))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@5 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@9 null)) (not true)) ($Is refType $o@@9 Tclass._module.O?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@9) alloc)))) ($IsAlloc refType (_module.O.s $o@@9) Tclass._module.S $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |619|
 :pattern ( (_module.O.s $o@@9) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@9) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) ($Is refType $o@@10 Tclass._module.O?)) ($Is refType (_module.O.s $o@@10) Tclass._module.S))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (_module.O.s $o@@10))
))))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.S?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.S?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass._module.S?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.O) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.O)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@4 Tclass._module.O))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.S) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.S)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@5 Tclass._module.S))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.O?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.O?)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsBox bx@@6 Tclass._module.O?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.S)  (and ($Is refType |c#0@@3| Tclass._module.S?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.S))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.S?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.O)  (and ($Is refType |c#0@@4| Tclass._module.O?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.O))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.O?))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.O.i0#canCall| $Heap@@4 this@@10) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.O) ($IsAlloc refType this@@10 Tclass._module.O $Heap@@4)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.O.s this@@10)) _module.S.obs)) ($Box refType this@@10)) (|_module.S.i0#canCall| $Heap@@4 (_module.O.s this@@10))) (= (_module.O.i0 $Heap@@4 this@@10)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 (_module.O.s this@@10)) _module.S.obs)) ($Box refType this@@10)) (_module.S.i0 $Heap@@4 (_module.O.s this@@10))))))
 :qid |_01InnerOuterdfy.49:19|
 :skolemid |624|
 :pattern ( (_module.O.i0 $Heap@@4 this@@10) ($IsGoodHeap $Heap@@4))
))))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@5 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.S.legal0#canCall| $prevHeap@@7 $Heap@@5 this@@11) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@7 $Heap@@5)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.S) ($IsAlloc refType this@@11 Tclass._module.S $prevHeap@@7)))))) (and (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@6|)) (and (=> (not (forall (($o@@11 T@U) ($f@@6 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (= $o@@11 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@11) $f@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 $o@@11) $f@@6))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |534|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@11) $f@@6))
))) (|_module.O.i2#canCall| $prevHeap@@7 $Heap@@5 |o#0@@6|)) (=> (or (forall (($o@@12 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@12 null)) (not true)) (=> (= $o@@12 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@12) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 $o@@12) $f@@7))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@12) $f@@7))
)) (_module.O.i2 $prevHeap@@7 $Heap@@5 |o#0@@6|)) (=> (not (forall (($o@@13 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@13 null)) (not true)) (=> (= $o@@13 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@13) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 $o@@13) $f@@8))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |535|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@13) $f@@8))
))) (|_module.O.i#canCall| $Heap@@5 |o#0@@6|))))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |537|
 :pattern ( (_module.O.i $Heap@@5 |o#0@@6|))
 :pattern ( (_module.O.i2 $prevHeap@@7 $Heap@@5 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@6|)))
)) (= (_module.S.legal0 $prevHeap@@7 $Heap@@5 this@@11) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@7|))) (and (or (forall (($o@@14 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@14 null)) (not true)) (=> (= $o@@14 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@14) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 $o@@14) $f@@9))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |531|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@14) $f@@9))
)) (_module.O.i2 $prevHeap@@7 $Heap@@5 |o#0@@7|)) (or (forall (($o@@15 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@15 null)) (not true)) (=> (= $o@@15 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@15) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 $o@@15) $f@@10))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |532|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@15) $f@@10))
)) (_module.O.i $Heap@@5 |o#0@@7|))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |533|
 :pattern ( (_module.O.i $Heap@@5 |o#0@@7|))
 :pattern ( (_module.O.i2 $prevHeap@@7 $Heap@@5 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@7|)))
)))))
 :qid |_01InnerOuterdfy.27:22|
 :skolemid |538|
 :pattern ( (_module.S.legal0 $prevHeap@@7 $Heap@@5 this@@11) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@7) ($IsAllocBox bx@@7 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@12 T@U) (|o#0@@8| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@12 |o#0@@8|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.S)) ($Is refType |o#0@@8| Tclass._System.object)))) (= (_module.S.upCast this@@12 |o#0@@8|) |o#0@@8|))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |489|
 :pattern ( (_module.S.upCast this@@12 |o#0@@8|))
))))
(assert (forall (($o@@16 T@U) ) (! ($Is refType $o@@16 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@16 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@6 T@U) (this@@13 T@U) (|o#0@@9| T@U) ) (!  (=> (and (or (|_module.S.upCast#canCall| this@@13 |o#0@@9|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@13 null)) (not true)) ($IsAlloc refType this@@13 Tclass._module.S $Heap@@6)) (and ($Is refType |o#0@@9| Tclass._System.object) ($IsAlloc refType |o#0@@9| Tclass._System.object $Heap@@6))))) ($IsGoodHeap $Heap@@6)) ($IsAlloc refType (_module.S.upCast this@@13 |o#0@@9|) Tclass._System.object $Heap@@6))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |487|
 :pattern ( ($IsAlloc refType (_module.S.upCast this@@13 |o#0@@9|) Tclass._System.object $Heap@@6))
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
(assert (forall (($h0@@4 T@U) ($h1@@4 T@U) (this@@14 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.S))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@17 T@U) ($f@@11 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (or (= $o@@17 this@@14) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 this@@14) _module.S.obs)) ($Box refType $o@@17)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@17) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@17) $f@@11)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.S.i0 $h0@@4 this@@14) (_module.S.i0 $h1@@4 this@@14))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.S.i0 $h1@@4 this@@14))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@18 T@U) ($f@@12 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@12))  (=> (and (or (not (= $o@@18 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@18) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |965|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@12))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@15 T@U) (|o#0@@10| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@15 |o#0@@10|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.S)) ($Is refType |o#0@@10| Tclass._System.object)))) ($Is refType (_module.S.upCast this@@15 |o#0@@10|) Tclass._System.object))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |486|
 :pattern ( (_module.S.upCast this@@15 |o#0@@10|))
))))
(assert (forall (($h0@@5 T@U) ($h1@@5 T@U) (this@@16 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.S) ($IsAlloc refType this@@16 Tclass._module.S $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@19 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@19) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@19) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@19) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |503|
)) (= (_module.S.i $h0@@5 this@@16) (_module.S.i $h1@@5 this@@16))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |504|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.S.i $h1@@5 this@@16))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@17 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.O) ($IsAlloc refType this@@17 Tclass._module.O $h0@@6)))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@20 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@20) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@20) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@20) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.O.i0 $h0@@6 this@@17) (_module.O.i0 $h1@@6 this@@17))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.O.i0 $h1@@6 this@@17))
)))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@18 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@18 null)) (not true)) (and ($Is refType this@@18 Tclass._module.O) ($IsAlloc refType this@@18 Tclass._module.O $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@21 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@21) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@21) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@21) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.O.i $h0@@7 this@@18) (_module.O.i $h1@@7 this@@18))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.O.i $h1@@7 this@@18))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@8 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.S?) Tagclass._module.S?))
(assert (= (TagFamily Tclass._module.S?) tytagFamily$S))
(assert (= (Tag Tclass._module.O) Tagclass._module.O))
(assert (= (TagFamily Tclass._module.O) tytagFamily$O))
(assert (= (Tag Tclass._module.S) Tagclass._module.S))
(assert (= (TagFamily Tclass._module.S) tytagFamily$S))
(assert (= (Tag Tclass._module.O?) Tagclass._module.O?))
(assert (= (TagFamily Tclass._module.O?) tytagFamily$O))
(assert (forall (($o@@22 T@U) ) (! (= ($Is refType $o@@22 Tclass._module.S?)  (or (= $o@@22 null) (implements$_module.S (dtype $o@@22))))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o@@22 Tclass._module.S?))
)))
(assert (forall (($o@@23 T@U) ) (! (= ($Is refType $o@@23 Tclass._module.O?)  (or (= $o@@23 null) (implements$_module.O (dtype $o@@23))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($Is refType $o@@23 Tclass._module.O?))
)))
(assert (forall (($h@@6 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@24 null)) (not true)) ($Is refType $o@@24 Tclass._module.S?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@24) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@24) _module.S.obs)) (TSet Tclass._module.O) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |484|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@24) _module.S.obs)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@19 T@U) (|o#0@@11| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@19 (Lit refType |o#0@@11|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@19 null)) (not true)) ($Is refType this@@19 Tclass._module.S)) ($Is refType |o#0@@11| Tclass._System.object)))) (= (_module.S.upCast this@@19 (Lit refType |o#0@@11|)) (Lit refType |o#0@@11|)))
 :qid |_01InnerOuterdfy.12:18|
 :weight 3
 :skolemid |490|
 :pattern ( (_module.S.upCast this@@19 (Lit refType |o#0@@11|)))
))))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert (forall (($h@@7 T@U) ($o@@25 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@25 null)) (not true)) ($Is refType $o@@25 Tclass._module.S?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@25) _module.S.obs)) (TSet Tclass._module.O)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@25) _module.S.obs)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@20 () T@U)
(declare-fun $Heap@@7 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.O.adm)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#6| null current$Heap alloc false)) ($IsAllocBox ($Box refType this@@20) Tclass._module.O? current$Heap)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@20 Tclass._module.O $Heap@@7)) (=> ($IsAlloc refType this@@20 Tclass._module.O $Heap@@7) (=> (and (and (|_module.O.admPre#canCall| $Heap@@7 current$Heap this@@20) (_module.O.admPre $Heap@@7 current$Heap this@@20)) (and ($IsAllocBox ($Box refType this@@20) Tclass._module.O? current$Heap) (= (ControlFlow 0 2) (- 0 1)))) ($IsAlloc refType this@@20 Tclass._module.O $Heap@@7)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@7) ($IsHeapAnchor $Heap@@7)) (=> (and (and (and (or (not (= this@@20 null)) (not true)) (and ($Is refType this@@20 Tclass._module.O) ($IsAlloc refType this@@20 Tclass._module.O previous$Heap))) (= 11 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@7) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
