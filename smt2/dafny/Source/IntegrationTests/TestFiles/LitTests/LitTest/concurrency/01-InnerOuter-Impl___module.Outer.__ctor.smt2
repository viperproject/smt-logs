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
(declare-fun class._module.Inner? () T@U)
(declare-fun Tagclass._module.Inner? () T@U)
(declare-fun Tagclass._module.Inner () T@U)
(declare-fun class._module.Outer? () T@U)
(declare-fun Tagclass._module.Outer? () T@U)
(declare-fun Tagclass._module.Outer () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$S () T@U)
(declare-fun tytagFamily$O () T@U)
(declare-fun tytagFamily$Inner () T@U)
(declare-fun tytagFamily$Outer () T@U)
(declare-fun field$obs () T@U)
(declare-fun field$data () T@U)
(declare-fun field$inner () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun implements$_module.O (T@U) Bool)
(declare-fun Tclass._module.Inner? () T@U)
(declare-fun Tclass._module.Outer? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.S.i (T@U T@U) Bool)
(declare-fun |_module.S.i#canCall| (T@U T@U) Bool)
(declare-fun _module.O.i (T@U T@U) Bool)
(declare-fun |_module.O.i#canCall| (T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.O? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.S? () T@U)
(declare-fun Tclass._module.Inner () T@U)
(declare-fun Tclass._module.Outer () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Inner.i (T@U T@U) Bool)
(declare-fun |_module.Inner.i#canCall| (T@U T@U) Bool)
(declare-fun _module.Outer.i (T@U T@U) Bool)
(declare-fun |_module.Outer.i#canCall| (T@U T@U) Bool)
(declare-fun _module.Inner.data () T@U)
(declare-fun _module.Outer.inner () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.S.i2 (T@U T@U T@U) Bool)
(declare-fun _module.S.legal0 (T@U T@U T@U) Bool)
(declare-fun _module.S.legal1 (T@U T@U T@U) Bool)
(declare-fun _module.S.legal (T@U T@U T@U) Bool)
(declare-fun _module.O.i2 (T@U T@U T@U) Bool)
(declare-fun _module.Inner.i2 (T@U T@U T@U) Bool)
(declare-fun _module.Outer.i2 (T@U T@U T@U) Bool)
(declare-fun |_module.S.legal#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.S.legal0#canCall| (T@U T@U T@U) Bool)
(declare-fun |_module.S.legal1#canCall| (T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |_module.Inner.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#9| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Outer.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.O.i0 (T@U T@U) Bool)
(declare-fun |_module.O.i0#canCall| (T@U T@U) Bool)
(declare-fun |_module.O.i2#canCall| (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.S (T@U) Bool)
(declare-fun |_module.S.i2#canCall| (T@U T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class._module.S? Tagclass._module.S? Tagclass._module.O Tagclass._module.S Tagclass._module.O? class._module.Inner? Tagclass._module.Inner? Tagclass._module.Inner class._module.Outer? Tagclass._module.Outer? Tagclass._module.Outer tytagFamily$object tytagFamily$S tytagFamily$O tytagFamily$Inner tytagFamily$Outer field$obs field$data field$inner)
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
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 y@@0) (|Set#IsMember| (|Set#Union| a@@1 b) y@@0))
 :qid |DafnyPreludebpl.708:15|
 :skolemid |134|
 :pattern ( (|Set#Union| a@@1 b) (|Set#IsMember| a@@1 y@@0))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (y@@1 T@U) ) (!  (=> (|Set#IsMember| b@@0 y@@1) (|Set#IsMember| (|Set#Union| a@@2 b@@0) y@@1))
 :qid |DafnyPreludebpl.712:15|
 :skolemid |135|
 :pattern ( (|Set#Union| a@@2 b@@0) (|Set#IsMember| b@@0 y@@1))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (implements$_module.O Tclass._module.Inner?))
(assert (implements$_module.O Tclass._module.Outer?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.S.i#canCall| $Heap@@0 this@@0) (and (< 7 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.S) ($IsAlloc refType this@@0 Tclass._module.S $Heap@@0)))))) (and (and (|_module.S.i0#canCall| $Heap@@0 this@@0) (=> (_module.S.i0 $Heap@@0 this@@0) (forall ((|o#0@@1| T@U) ) (!  (=> ($Is refType |o#0@@1| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.S.obs)) ($Box refType |o#0@@1|)) (|_module.O.i#canCall| $Heap@@0 |o#0@@1|)))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |508|
 :pattern ( (_module.O.i $Heap@@0 |o#0@@1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.S.obs)) ($Box refType |o#0@@1|)))
)))) (= (_module.S.i $Heap@@0 this@@0)  (and (_module.S.i0 $Heap@@0 this@@0) (forall ((|o#0@@2| T@U) ) (!  (=> (and ($Is refType |o#0@@2| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.S.obs)) ($Box refType |o#0@@2|))) (_module.O.i $Heap@@0 |o#0@@2|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |507|
 :pattern ( (_module.O.i $Heap@@0 |o#0@@2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.S.obs)) ($Box refType |o#0@@2|)))
))))))
 :qid |_01InnerOuterdfy.21:19|
 :skolemid |509|
 :pattern ( (_module.S.i $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Inner?)  (or (= $o null) (= (dtype $o) Tclass._module.Inner?)))
 :qid |unknown.0:0|
 :skolemid |700|
 :pattern ( ($Is refType $o Tclass._module.Inner?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Outer?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Outer?)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( ($Is refType $o@@0 Tclass._module.Outer?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2) (|Set#Union| a@@5 b@@2))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@5 b@@2) b@@2))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1)  (and (|Set#IsMember| a@@6 o@@1) (not (|Set#IsMember| b@@3 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@6 b@@3) o@@1))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Inner? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._module.O? $h))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($IsAllocBox bx Tclass._module.Inner? $h))
)))
(assert (forall ((bx@@0 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Outer? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx@@0 Tclass._module.O? $h@@0))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Outer? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.S $h@@2) ($IsAlloc refType |c#0@@0| Tclass._module.S? $h@@2))
 :qid |unknown.0:0|
 :skolemid |615|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.S $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.S? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.O $h@@3) ($IsAlloc refType |c#0@@1| Tclass._module.O? $h@@3))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.O $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.O? $h@@3))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Inner $h@@4) ($IsAlloc refType |c#0@@2| Tclass._module.Inner? $h@@4))
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Inner $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Inner? $h@@4))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Outer $h@@5) ($IsAlloc refType |c#0@@3| Tclass._module.Outer? $h@@5))
 :qid |unknown.0:0|
 :skolemid |954|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Outer $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Outer? $h@@5))
)))
(assert (= (FDim _module.S.obs) 0))
(assert (= (FieldOfDecl class._module.S? field$obs) _module.S.obs))
(assert ($IsGhostField _module.S.obs))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Inner.i#canCall| $Heap@@1 this@@1) (and (< 4 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Inner)))) (= (_module.O.i $Heap@@1 this@@1) (_module.Inner.i $Heap@@1 this@@1)))
 :qid |_01InnerOuterdfy.71:19|
 :skolemid |710|
 :pattern ( (_module.O.i $Heap@@1 this@@1) ($Is refType this@@1 Tclass._module.Inner) ($IsGoodHeap $Heap@@1))
 :pattern ( (_module.O.i $Heap@@1 this@@1) (_module.Inner.i $Heap@@1 this@@1) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Outer.i#canCall| $Heap@@2 this@@2) (and (< 5 $FunctionContextHeight) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Outer)))) (= (_module.O.i $Heap@@2 this@@2) (_module.Outer.i $Heap@@2 this@@2)))
 :qid |_01InnerOuterdfy.71:19|
 :skolemid |830|
 :pattern ( (_module.O.i $Heap@@2 this@@2) ($Is refType this@@2 Tclass._module.Outer) ($IsGoodHeap $Heap@@2))
 :pattern ( (_module.O.i $Heap@@2 this@@2) (_module.Outer.i $Heap@@2 this@@2) ($IsGoodHeap $Heap@@2))
))))
(assert (= (FDim _module.Inner.data) 0))
(assert (= (FieldOfDecl class._module.Inner? field$data) _module.Inner.data))
(assert  (not ($IsGhostField _module.Inner.data)))
(assert (= (FDim _module.Outer.inner) 0))
(assert (= (FieldOfDecl class._module.Outer? field$inner) _module.Outer.inner))
(assert  (not ($IsGhostField _module.Outer.inner)))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.S) ($IsAlloc refType this@@3 Tclass._module.S $h0)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |516|
)) (= (_module.S.i2 $prevHeap $h0 this@@3) (_module.S.i2 $prevHeap $h1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |517|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.S.i2 $prevHeap $h1 this@@3))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.S) ($IsAlloc refType this@@4 Tclass._module.S $h0@@0)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@2) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@2) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |527|
)) (= (_module.S.legal0 $prevHeap@@0 $h0@@0 this@@4) (_module.S.legal0 $prevHeap@@0 $h1@@0 this@@4))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |528|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.S.legal0 $prevHeap@@0 $h1@@0 this@@4))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.S) ($IsAlloc refType this@@5 Tclass._module.S $h0@@1)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@3) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@3) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |553|
)) (= (_module.S.legal1 $prevHeap@@1 $h0@@1 this@@5) (_module.S.legal1 $prevHeap@@1 $h1@@1 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |554|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.S.legal1 $prevHeap@@1 $h1@@1 this@@5))
)))
(assert (forall (($prevHeap@@2 T@U) ($h0@@2 T@U) ($h1@@2 T@U) (this@@6 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@2) ($IsGoodHeap $h1@@2)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.S) ($IsAlloc refType this@@6 Tclass._module.S $h0@@2)))) (and ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2))) (=> (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@2 $o@@4) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@2 $o@@4) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |564|
)) (= (_module.S.legal $prevHeap@@2 $h0@@2 this@@6) (_module.S.legal $prevHeap@@2 $h1@@2 this@@6))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |565|
 :pattern ( ($IsHeapAnchor $h0@@2) ($HeapSucc $h0@@2 $h1@@2) (_module.S.legal $prevHeap@@2 $h1@@2 this@@6))
)))
(assert (forall (($prevHeap@@3 T@U) ($h0@@3 T@U) ($h1@@3 T@U) (this@@7 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@3) ($IsGoodHeap $h1@@3)) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.O) ($IsAlloc refType this@@7 Tclass._module.O $h0@@3)))) (and ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3))) (=> (forall (($o@@5 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@3 $o@@5) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@3 $o@@5) $f@@3)))
 :qid |unknown.0:0|
 :skolemid |669|
)) (= (_module.O.i2 $prevHeap@@3 $h0@@3 this@@7) (_module.O.i2 $prevHeap@@3 $h1@@3 this@@7))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |670|
 :pattern ( ($IsHeapAnchor $h0@@3) ($HeapSucc $h0@@3 $h1@@3) (_module.O.i2 $prevHeap@@3 $h1@@3 this@@7))
)))
(assert (forall (($prevHeap@@4 T@U) ($h0@@4 T@U) ($h1@@4 T@U) (this@@8 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@4) ($IsGoodHeap $h1@@4)) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Inner) ($IsAlloc refType this@@8 Tclass._module.Inner $h0@@4)))) (and ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4))) (=> (forall (($o@@6 T@U) ($f@@4 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@4 $o@@6) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@4 $o@@6) $f@@4)))
 :qid |unknown.0:0|
 :skolemid |713|
)) (= (_module.Inner.i2 $prevHeap@@4 $h0@@4 this@@8) (_module.Inner.i2 $prevHeap@@4 $h1@@4 this@@8))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |714|
 :pattern ( ($IsHeapAnchor $h0@@4) ($HeapSucc $h0@@4 $h1@@4) (_module.Inner.i2 $prevHeap@@4 $h1@@4 this@@8))
)))
(assert (forall (($prevHeap@@5 T@U) ($h0@@5 T@U) ($h1@@5 T@U) (this@@9 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@5) ($IsGoodHeap $h1@@5)) (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Outer) ($IsAlloc refType this@@9 Tclass._module.Outer $h0@@5)))) (and ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5))) (=> (forall (($o@@7 T@U) ($f@@5 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@5 $o@@7) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@5 $o@@7) $f@@5)))
 :qid |unknown.0:0|
 :skolemid |834|
)) (= (_module.Outer.i2 $prevHeap@@5 $h0@@5 this@@9) (_module.Outer.i2 $prevHeap@@5 $h1@@5 this@@9))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |835|
 :pattern ( ($IsHeapAnchor $h0@@5) ($HeapSucc $h0@@5 $h1@@5) (_module.Outer.i2 $prevHeap@@5 $h1@@5 this@@9))
)))
(assert (forall (($o@@8 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._System.object? $h@@6)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._System.object? $h@@6))
)))
(assert (forall (($o@@9 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@9 Tclass._module.S? $h@@7)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@9 Tclass._module.S? $h@@7))
)))
(assert (forall (($o@@10 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@10 Tclass._module.O? $h@@8)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsAlloc refType $o@@10 Tclass._module.O? $h@@8))
)))
(assert (forall (($o@@11 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._module.Inner? $h@@9)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |701|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._module.Inner? $h@@9))
)))
(assert (forall (($o@@12 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass._module.Outer? $h@@10)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( ($IsAlloc refType $o@@12 Tclass._module.Outer? $h@@10))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 8 $FunctionContextHeight) (forall (($prevHeap@@6 T@U) ($Heap@@3 T@U) (this@@10 T@U) ) (!  (=> (or (|_module.S.legal#canCall| $prevHeap@@6 $Heap@@3 this@@10) (and (< 8 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@3)) ($HeapSucc $prevHeap@@6 $Heap@@3)) (and (or (not (= this@@10 null)) (not true)) (and ($Is refType this@@10 Tclass._module.S) ($IsAlloc refType this@@10 Tclass._module.S $prevHeap@@6)))))) (and (and (|_module.S.i#canCall| $prevHeap@@6 this@@10) (=> (_module.S.i $prevHeap@@6 this@@10) (and (|_module.S.i0#canCall| $Heap@@3 this@@10) (=> (_module.S.i0 $Heap@@3 this@@10) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@10) _module.S.obs))) (and (|_module.S.legal0#canCall| $prevHeap@@6 $Heap@@3 this@@10) (=> (_module.S.legal0 $prevHeap@@6 $Heap@@3 this@@10) (|_module.S.legal1#canCall| $prevHeap@@6 $Heap@@3 this@@10)))))))) (= (_module.S.legal $prevHeap@@6 $Heap@@3 this@@10)  (and (and (and (and (_module.S.i $prevHeap@@6 this@@10) (_module.S.i0 $Heap@@3 this@@10)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 this@@10) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@10) _module.S.obs)))) (_module.S.legal0 $prevHeap@@6 $Heap@@3 this@@10)) (_module.S.legal1 $prevHeap@@6 $Heap@@3 this@@10)))))
 :qid |_01InnerOuterdfy.33:22|
 :skolemid |568|
 :pattern ( (_module.S.legal $prevHeap@@6 $Heap@@3 this@@10) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Subset| a@@7 b@@4) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@7 o@@3) (|Set#IsMember| b@@4 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@7 o@@3))
 :pattern ( (|Set#IsMember| b@@4 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@7 b@@4))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|Set#Disjoint| a@@8 b@@5) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@8 o@@4)) (not (|Set#IsMember| b@@5 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@8 o@@4))
 :pattern ( (|Set#IsMember| b@@5 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@8 b@@5))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@7 T@U) ($Heap@@4 T@U) (this@@11 T@U) ) (!  (=> (or (|_module.S.legal1#canCall| $prevHeap@@7 $Heap@@4 this@@11) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@4)) ($HeapSucc $prevHeap@@7 $Heap@@4)) (and (or (not (= this@@11 null)) (not true)) (and ($Is refType this@@11 Tclass._module.S) ($IsAlloc refType this@@11 Tclass._module.S $prevHeap@@7)))))) (and (forall ((|o#0@@3| T@U) ) (!  (=> ($Is refType |o#0@@3| Tclass._module.O) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.S.obs)) ($Box refType |o#0@@3|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@3|)))) (|_module.O.i#canCall| $Heap@@4 |o#0@@3|)))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |558|
 :pattern ( (_module.O.i $Heap@@4 |o#0@@3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@3|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.S.obs)) ($Box refType |o#0@@3|)))
)) (= (_module.S.legal1 $prevHeap@@7 $Heap@@4 this@@11) (forall ((|o#0@@4| T@U) ) (!  (=> (and ($Is refType |o#0@@4| Tclass._module.O) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.S.obs)) ($Box refType |o#0@@4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@4|))))) (_module.O.i $Heap@@4 |o#0@@4|))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |557|
 :pattern ( (_module.O.i $Heap@@4 |o#0@@4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@7 this@@11) _module.S.obs)) ($Box refType |o#0@@4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@11) _module.S.obs)) ($Box refType |o#0@@4|)))
)))))
 :qid |_01InnerOuterdfy.30:22|
 :skolemid |559|
 :pattern ( (_module.S.legal1 $prevHeap@@7 $Heap@@4 this@@11) ($IsGoodHeap $Heap@@4))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@12 T@U) (|o#0@@5| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| (Lit refType this@@12) (Lit refType |o#0@@5|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 Tclass._module.S)) ($Is refType |o#0@@5| Tclass._System.object)))) (= (_module.S.upCast (Lit refType this@@12) (Lit refType |o#0@@5|)) (Lit refType |o#0@@5|)))
 :qid |_01InnerOuterdfy.12:18|
 :weight 3
 :skolemid |491|
 :pattern ( (_module.S.upCast (Lit refType this@@12) (Lit refType |o#0@@5|)))
))))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Inner?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.Inner.data)) TInt $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |703|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.Inner.data)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@8 T@U) ($Heap@@5 T@U) (this@@13 T@U) ) (!  (=> (or (|_module.Inner.i2#canCall| $prevHeap@@8 $Heap@@5 this@@13) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@5)) ($HeapSucc $prevHeap@@8 $Heap@@5)) (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 Tclass._module.Inner) ($IsAlloc refType this@@13 Tclass._module.Inner $prevHeap@@8)))))) (= (_module.Inner.i2 $prevHeap@@8 $Heap@@5 this@@13)  (and true (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@8 this@@13) _module.Inner.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 this@@13) _module.Inner.data)))))))
 :qid |_01InnerOuterdfy.83:22|
 :skolemid |717|
 :pattern ( (_module.Inner.i2 $prevHeap@@8 $Heap@@5 this@@13) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@1) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) ($Is refType $o@@14 Tclass._module.O?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))) ($IsAlloc refType (_module.O.s $o@@14) Tclass._module.S $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |619|
 :pattern ( (_module.O.s $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) alloc)))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) ($Is refType $o@@15 Tclass._module.O?)) ($Is refType (_module.O.s $o@@15) Tclass._module.S))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( (_module.O.s $o@@15))
))))
(assert (forall ((h@@3 T@U) (k@@2 T@U) ) (!  (=> ($HeapSuccGhost h@@3 k@@2) (and ($HeapSucc h@@3 k@@2) (forall ((o@@5 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 o@@5) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@5) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@5) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@3 k@@2))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@16 T@U) ($f@@6 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@6))  (=> (and (or (not (= $o@@16 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@16) |l#2|)))) (= $o@@16 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |966|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#9| |l#0| |l#1| |l#2| |l#3|) $o@@16 $f@@6))
)))
(assert (forall (($h@@13 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Outer?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) _module.Outer.inner)) Tclass._module.Inner))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |822|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@17) _module.Outer.inner)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@9 T@U) ($Heap@@6 T@U) (this@@14 T@U) ) (!  (=> (or (|_module.Inner.i2#canCall| $prevHeap@@9 $Heap@@6 this@@14) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@14 null)) (not true)) ($Is refType this@@14 Tclass._module.Inner)))) (= (_module.O.i2 $prevHeap@@9 $Heap@@6 this@@14) (_module.Inner.i2 $prevHeap@@9 $Heap@@6 this@@14)))
 :qid |_01InnerOuterdfy.72:22|
 :skolemid |718|
 :pattern ( (_module.O.i2 $prevHeap@@9 $Heap@@6 this@@14) ($Is refType this@@14 Tclass._module.Inner) ($IsGoodHeap $Heap@@6))
 :pattern ( (_module.O.i2 $prevHeap@@9 $Heap@@6 this@@14) (_module.Inner.i2 $prevHeap@@9 $Heap@@6 this@@14) ($IsGoodHeap $Heap@@6))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@10 T@U) ($Heap@@7 T@U) (this@@15 T@U) ) (!  (=> (or (|_module.Outer.i2#canCall| $prevHeap@@10 $Heap@@7 this@@15) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@15 null)) (not true)) ($Is refType this@@15 Tclass._module.Outer)))) (= (_module.O.i2 $prevHeap@@10 $Heap@@7 this@@15) (_module.Outer.i2 $prevHeap@@10 $Heap@@7 this@@15)))
 :qid |_01InnerOuterdfy.72:22|
 :skolemid |839|
 :pattern ( (_module.O.i2 $prevHeap@@10 $Heap@@7 this@@15) ($Is refType this@@15 Tclass._module.Outer) ($IsGoodHeap $Heap@@7))
 :pattern ( (_module.O.i2 $prevHeap@@10 $Heap@@7 this@@15) (_module.Outer.i2 $prevHeap@@10 $Heap@@7 this@@15) ($IsGoodHeap $Heap@@7))
))))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.S?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.S?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@5 Tclass._module.S?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.O) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.O)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@6 Tclass._module.O))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.S) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.S)))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@7 Tclass._module.S))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.O?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.O?)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsBox bx@@8 Tclass._module.O?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Inner?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Inner?)))
 :qid |unknown.0:0|
 :skolemid |699|
 :pattern ( ($IsBox bx@@9 Tclass._module.Inner?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Inner) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Inner)))
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( ($IsBox bx@@10 Tclass._module.Inner))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Outer?) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Outer?)))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($IsBox bx@@11 Tclass._module.Outer?))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.Outer) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.Outer)))
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( ($IsBox bx@@12 Tclass._module.Outer))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.S)  (and ($Is refType |c#0@@5| Tclass._module.S?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.S))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.S?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.O)  (and ($Is refType |c#0@@6| Tclass._module.O?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.O))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.O?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Inner)  (and ($Is refType |c#0@@7| Tclass._module.Inner?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Inner))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Inner?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Outer)  (and ($Is refType |c#0@@8| Tclass._module.Outer?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Outer))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Outer?))
)))
(assert (forall (($h@@14 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Outer?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.Outer.inner)) Tclass._module.Inner $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |823|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@18) _module.Outer.inner)))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) (o@@6 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@6)  (or (|Set#IsMember| a@@9 o@@6) (|Set#IsMember| b@@6 o@@6)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@9 b@@6) o@@6))
)))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (!  (=> (|Set#Disjoint| a@@10 b@@7) (and (= (|Set#Difference| (|Set#Union| a@@10 b@@7) a@@10) b@@7) (= (|Set#Difference| (|Set#Union| a@@10 b@@7) b@@7) a@@10)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@10 b@@7))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@8 T@U) (this@@16 T@U) ) (!  (=> (or (|_module.O.i0#canCall| $Heap@@8 this@@16) (and (< 3 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@8) (and (or (not (= this@@16 null)) (not true)) (and ($Is refType this@@16 Tclass._module.O) ($IsAlloc refType this@@16 Tclass._module.O $Heap@@8)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.O.s this@@16)) _module.S.obs)) ($Box refType this@@16)) (|_module.S.i0#canCall| $Heap@@8 (_module.O.s this@@16))) (= (_module.O.i0 $Heap@@8 this@@16)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@8 (_module.O.s this@@16)) _module.S.obs)) ($Box refType this@@16)) (_module.S.i0 $Heap@@8 (_module.O.s this@@16))))))
 :qid |_01InnerOuterdfy.49:19|
 :skolemid |624|
 :pattern ( (_module.O.i0 $Heap@@8 this@@16) ($IsGoodHeap $Heap@@8))
))))
(assert (forall (($o@@19 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@19 Tclass._module.Inner? $heap) ($IsAlloc refType $o@@19 Tclass._module.O? $heap))
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( ($IsAlloc refType $o@@19 Tclass._module.Inner? $heap))
)))
(assert (forall (($o@@20 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@20 Tclass._module.Outer? $heap@@0) ($IsAlloc refType $o@@20 Tclass._module.O? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($IsAlloc refType $o@@20 Tclass._module.Outer? $heap@@0))
)))
(assert  (=> (<= 7 $FunctionContextHeight) (forall (($prevHeap@@11 T@U) ($Heap@@9 T@U) (this@@17 T@U) ) (!  (=> (or (|_module.S.legal0#canCall| $prevHeap@@11 $Heap@@9 this@@17) (and (< 7 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@11) ($IsGoodHeap $Heap@@9)) ($HeapSucc $prevHeap@@11 $Heap@@9)) (and (or (not (= this@@17 null)) (not true)) (and ($Is refType this@@17 Tclass._module.S) ($IsAlloc refType this@@17 Tclass._module.S $prevHeap@@11)))))) (and (forall ((|o#0@@6| T@U) ) (!  (=> ($Is refType |o#0@@6| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.S.obs)) ($Box refType |o#0@@6|)) (and (=> (not (forall (($o@@21 T@U) ($f@@7 T@U) ) (!  (=> (or (not (= $o@@21 null)) (not true)) (=> (= $o@@21 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@21) $f@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 $o@@21) $f@@7))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |534|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@21) $f@@7))
))) (|_module.O.i2#canCall| $prevHeap@@11 $Heap@@9 |o#0@@6|)) (=> (or (forall (($o@@22 T@U) ($f@@8 T@U) ) (!  (=> (or (not (= $o@@22 null)) (not true)) (=> (= $o@@22 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@22) $f@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 $o@@22) $f@@8))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |536|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@22) $f@@8))
)) (_module.O.i2 $prevHeap@@11 $Heap@@9 |o#0@@6|)) (=> (not (forall (($o@@23 T@U) ($f@@9 T@U) ) (!  (=> (or (not (= $o@@23 null)) (not true)) (=> (= $o@@23 |o#0@@6|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@23) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 $o@@23) $f@@9))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |535|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@23) $f@@9))
))) (|_module.O.i#canCall| $Heap@@9 |o#0@@6|))))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |537|
 :pattern ( (_module.O.i $Heap@@9 |o#0@@6|))
 :pattern ( (_module.O.i2 $prevHeap@@11 $Heap@@9 |o#0@@6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.S.obs)) ($Box refType |o#0@@6|)))
)) (= (_module.S.legal0 $prevHeap@@11 $Heap@@9 this@@17) (forall ((|o#0@@7| T@U) ) (!  (=> (and ($Is refType |o#0@@7| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.S.obs)) ($Box refType |o#0@@7|))) (and (or (forall (($o@@24 T@U) ($f@@10 T@U) ) (!  (=> (or (not (= $o@@24 null)) (not true)) (=> (= $o@@24 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@24) $f@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 $o@@24) $f@@10))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |531|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@24) $f@@10))
)) (_module.O.i2 $prevHeap@@11 $Heap@@9 |o#0@@7|)) (or (forall (($o@@25 T@U) ($f@@11 T@U) ) (!  (=> (or (not (= $o@@25 null)) (not true)) (=> (= $o@@25 |o#0@@7|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@25) $f@@11) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 $o@@25) $f@@11))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |532|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@9 $o@@25) $f@@11))
)) (_module.O.i $Heap@@9 |o#0@@7|))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |533|
 :pattern ( (_module.O.i $Heap@@9 |o#0@@7|))
 :pattern ( (_module.O.i2 $prevHeap@@11 $Heap@@9 |o#0@@7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@11 this@@17) _module.S.obs)) ($Box refType |o#0@@7|)))
)))))
 :qid |_01InnerOuterdfy.27:22|
 :skolemid |538|
 :pattern ( (_module.S.legal0 $prevHeap@@11 $Heap@@9 this@@17) ($IsGoodHeap $Heap@@9))
))))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (!  (=> (|Set#Equal| a@@11 b@@8) (= a@@11 b@@8))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@11 b@@8))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (c T@U) ) (!  (=> (or (not (= a@@12 c)) (not true)) (=> (and ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c)) ($HeapSucc a@@12 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@12 b@@9) ($HeapSucc b@@9 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@13 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@4) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@14) ($IsAllocBox bx@@14 t0@@2 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@18 T@U) (|o#0@@8| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@18 |o#0@@8|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@18 null)) (not true)) ($Is refType this@@18 Tclass._module.S)) ($Is refType |o#0@@8| Tclass._System.object)))) (= (_module.S.upCast this@@18 |o#0@@8|) |o#0@@8|))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |489|
 :pattern ( (_module.S.upCast this@@18 |o#0@@8|))
))))
(assert (forall (($o@@26 T@U) ) (! ($Is refType $o@@26 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@26 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@10 T@U) (this@@19 T@U) (|o#0@@9| T@U) ) (!  (=> (and (or (|_module.S.upCast#canCall| this@@19 |o#0@@9|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@19 null)) (not true)) ($IsAlloc refType this@@19 Tclass._module.S $Heap@@10)) (and ($Is refType |o#0@@9| Tclass._System.object) ($IsAlloc refType |o#0@@9| Tclass._System.object $Heap@@10))))) ($IsGoodHeap $Heap@@10)) ($IsAlloc refType (_module.S.upCast this@@19 |o#0@@9|) Tclass._System.object $Heap@@10))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |487|
 :pattern ( ($IsAlloc refType (_module.S.upCast this@@19 |o#0@@9|) Tclass._System.object $Heap@@10))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall (($h@@15 T@U) ($o@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Inner?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@27) _module.Inner.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |702|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@27) _module.Inner.data)))
)))
(assert (forall (($h0@@6 T@U) ($h1@@6 T@U) (this@@20 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@6) ($IsGoodHeap $h1@@6)) (and (or (not (= this@@20 null)) (not true)) ($Is refType this@@20 Tclass._module.S))) (and ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6))) (=> (forall (($o@@28 T@U) ($f@@12 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (or (= $o@@28 this@@20) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 this@@20) _module.S.obs)) ($Box refType $o@@28)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@6 $o@@28) $f@@12) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@6 $o@@28) $f@@12)))
 :qid |unknown.0:0|
 :skolemid |492|
)) (= (_module.S.i0 $h0@@6 this@@20) (_module.S.i0 $h1@@6 this@@20))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |493|
 :pattern ( ($IsHeapAnchor $h0@@6) ($HeapSucc $h0@@6 $h1@@6) (_module.S.i0 $h1@@6 this@@20))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (! (= (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)) (|Set#Union| a@@13 b@@10))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@13 (|Set#Union| a@@13 b@@10)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@21 T@U) (|o#0@@10| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@21 |o#0@@10|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@21 null)) (not true)) ($Is refType this@@21 Tclass._module.S)) ($Is refType |o#0@@10| Tclass._System.object)))) ($Is refType (_module.S.upCast this@@21 |o#0@@10|) Tclass._System.object))
 :qid |_01InnerOuterdfy.12:18|
 :skolemid |486|
 :pattern ( (_module.S.upCast this@@21 |o#0@@10|))
))))
(assert (forall (($h0@@7 T@U) ($h1@@7 T@U) (this@@22 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@7) ($IsGoodHeap $h1@@7)) (and (or (not (= this@@22 null)) (not true)) (and ($Is refType this@@22 Tclass._module.S) ($IsAlloc refType this@@22 Tclass._module.S $h0@@7)))) (and ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7))) (=> (forall (($o@@29 T@U) ($f@@13 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@29) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@7 $o@@29) $f@@13) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@7 $o@@29) $f@@13)))
 :qid |unknown.0:0|
 :skolemid |503|
)) (= (_module.S.i $h0@@7 this@@22) (_module.S.i $h1@@7 this@@22))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |504|
 :pattern ( ($IsHeapAnchor $h0@@7) ($HeapSucc $h0@@7 $h1@@7) (_module.S.i $h1@@7 this@@22))
)))
(assert (forall (($h0@@8 T@U) ($h1@@8 T@U) (this@@23 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@8) ($IsGoodHeap $h1@@8)) (and (or (not (= this@@23 null)) (not true)) (and ($Is refType this@@23 Tclass._module.O) ($IsAlloc refType this@@23 Tclass._module.O $h0@@8)))) (and ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8))) (=> (forall (($o@@30 T@U) ($f@@14 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@30) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@8 $o@@30) $f@@14) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@8 $o@@30) $f@@14)))
 :qid |unknown.0:0|
 :skolemid |620|
)) (= (_module.O.i0 $h0@@8 this@@23) (_module.O.i0 $h1@@8 this@@23))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |621|
 :pattern ( ($IsHeapAnchor $h0@@8) ($HeapSucc $h0@@8 $h1@@8) (_module.O.i0 $h1@@8 this@@23))
)))
(assert (forall (($h0@@9 T@U) ($h1@@9 T@U) (this@@24 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@9) ($IsGoodHeap $h1@@9)) (and (or (not (= this@@24 null)) (not true)) (and ($Is refType this@@24 Tclass._module.O) ($IsAlloc refType this@@24 Tclass._module.O $h0@@9)))) (and ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9))) (=> (forall (($o@@31 T@U) ($f@@15 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@31) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@9 $o@@31) $f@@15) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@9 $o@@31) $f@@15)))
 :qid |unknown.0:0|
 :skolemid |665|
)) (= (_module.O.i $h0@@9 this@@24) (_module.O.i $h1@@9 this@@24))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |666|
 :pattern ( ($IsHeapAnchor $h0@@9) ($HeapSucc $h0@@9 $h1@@9) (_module.O.i $h1@@9 this@@24))
)))
(assert (forall (($h0@@10 T@U) ($h1@@10 T@U) (this@@25 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@10) ($IsGoodHeap $h1@@10)) (and (or (not (= this@@25 null)) (not true)) (and ($Is refType this@@25 Tclass._module.Inner) ($IsAlloc refType this@@25 Tclass._module.Inner $h0@@10)))) (and ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10))) (=> (forall (($o@@32 T@U) ($f@@16 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@32) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@10 $o@@32) $f@@16) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@10 $o@@32) $f@@16)))
 :qid |unknown.0:0|
 :skolemid |704|
)) (= (_module.Inner.i $h0@@10 this@@25) (_module.Inner.i $h1@@10 this@@25))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |706|
 :pattern ( ($IsHeapAnchor $h0@@10) ($HeapSucc $h0@@10 $h1@@10) (_module.Inner.i $h1@@10 this@@25))
)))
(assert (forall (($h0@@11 T@U) ($h1@@11 T@U) (this@@26 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@11) ($IsGoodHeap $h1@@11)) (and (or (not (= this@@26 null)) (not true)) (and ($Is refType this@@26 Tclass._module.Outer) ($IsAlloc refType this@@26 Tclass._module.Outer $h0@@11)))) (and ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11))) (=> (forall (($o@@33 T@U) ($f@@17 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@33) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@11 $o@@33) $f@@17) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@11 $o@@33) $f@@17)))
 :qid |unknown.0:0|
 :skolemid |824|
)) (= (_module.Outer.i $h0@@11 this@@26) (_module.Outer.i $h1@@11 this@@26))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |826|
 :pattern ( ($IsHeapAnchor $h0@@11) ($HeapSucc $h0@@11 $h1@@11) (_module.Outer.i $h1@@11 this@@26))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (forall (($o@@34 T@U) ) (!  (=> ($Is refType $o@@34 Tclass._module.Inner?) ($Is refType $o@@34 Tclass._module.O?))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( ($Is refType $o@@34 Tclass._module.Inner?))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 Tclass._module.Inner?) ($IsBox bx@@16 Tclass._module.O?))
 :qid |unknown.0:0|
 :skolemid |955|
 :pattern ( ($IsBox bx@@16 Tclass._module.Inner?))
)))
(assert (forall (($o@@35 T@U) ) (!  (=> ($Is refType $o@@35 Tclass._module.Outer?) ($Is refType $o@@35 Tclass._module.O?))
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($Is refType $o@@35 Tclass._module.Outer?))
)))
(assert (forall ((bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 Tclass._module.Outer?) ($IsBox bx@@17 Tclass._module.O?))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsBox bx@@17 Tclass._module.Outer?))
)))
(assert  (=> (<= 5 $FunctionContextHeight) (forall (($Heap@@11 T@U) (this@@27 T@U) ) (!  (=> (or (|_module.Outer.i#canCall| $Heap@@11 this@@27) (and (< 5 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@11) (and (or (not (= this@@27 null)) (not true)) (and ($Is refType this@@27 Tclass._module.Outer) ($IsAlloc refType this@@27 Tclass._module.Outer $Heap@@11)))))) (and (and (|_module.O.i0#canCall| $Heap@@11 this@@27) (=> (_module.O.i0 $Heap@@11 this@@27) (=> (= (_module.O.s this@@27) (_module.O.s ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@27) _module.Outer.inner)))) (|_module.Inner.i#canCall| $Heap@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@27) _module.Outer.inner)))))) (= (_module.Outer.i $Heap@@11 this@@27)  (and (and (_module.O.i0 $Heap@@11 this@@27) (= (_module.O.s this@@27) (_module.O.s ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@27) _module.Outer.inner))))) (_module.Inner.i $Heap@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@11 this@@27) _module.Outer.inner)))))))
 :qid |_01InnerOuterdfy.106:19|
 :skolemid |829|
 :pattern ( (_module.Outer.i $Heap@@11 this@@27) ($IsGoodHeap $Heap@@11))
))))
(assert (forall ((h@@5 T@U) (r T@U) (f@@0 T@U) (x@@8 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f@@0 x@@8)))
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
(assert (= (Tag Tclass._module.Inner?) Tagclass._module.Inner?))
(assert (= (TagFamily Tclass._module.Inner?) tytagFamily$Inner))
(assert (= (Tag Tclass._module.Inner) Tagclass._module.Inner))
(assert (= (TagFamily Tclass._module.Inner) tytagFamily$Inner))
(assert (= (Tag Tclass._module.Outer?) Tagclass._module.Outer?))
(assert (= (TagFamily Tclass._module.Outer?) tytagFamily$Outer))
(assert (= (Tag Tclass._module.Outer) Tagclass._module.Outer))
(assert (= (TagFamily Tclass._module.Outer) tytagFamily$Outer))
(assert (forall (($o@@36 T@U) ) (! (= ($Is refType $o@@36 Tclass._module.S?)  (or (= $o@@36 null) (implements$_module.S (dtype $o@@36))))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o@@36 Tclass._module.S?))
)))
(assert (forall (($o@@37 T@U) ) (! (= ($Is refType $o@@37 Tclass._module.O?)  (or (= $o@@37 null) (implements$_module.O (dtype $o@@37))))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($Is refType $o@@37 Tclass._module.O?))
)))
(assert (forall (($h@@16 T@U) ($o@@38 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@38 null)) (not true)) ($Is refType $o@@38 Tclass._module.S?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@38) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@38) _module.S.obs)) (TSet Tclass._module.O) $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |484|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@38) _module.S.obs)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) ) (! (= (|Set#Equal| a@@14 b@@11) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@14 o@@7) (|Set#IsMember| b@@11 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@14 o@@7))
 :pattern ( (|Set#IsMember| b@@11 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@14 b@@11))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@28 T@U) (|o#0@@11| T@U) ) (!  (=> (or (|_module.S.upCast#canCall| this@@28 (Lit refType |o#0@@11|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@28 null)) (not true)) ($Is refType this@@28 Tclass._module.S)) ($Is refType |o#0@@11| Tclass._System.object)))) (= (_module.S.upCast this@@28 (Lit refType |o#0@@11|)) (Lit refType |o#0@@11|)))
 :qid |_01InnerOuterdfy.12:18|
 :weight 3
 :skolemid |490|
 :pattern ( (_module.S.upCast this@@28 (Lit refType |o#0@@11|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($prevHeap@@12 T@U) ($Heap@@12 T@U) (this@@29 T@U) ) (!  (=> (or (|_module.S.i2#canCall| $prevHeap@@12 $Heap@@12 this@@29) (and (< 3 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@12) ($IsGoodHeap $Heap@@12)) ($HeapSucc $prevHeap@@12 $Heap@@12)) (and (or (not (= this@@29 null)) (not true)) (and ($Is refType this@@29 Tclass._module.S) ($IsAlloc refType this@@29 Tclass._module.S $prevHeap@@12)))))) (and (forall ((|o#0@@12| T@U) ) (!  (=> ($Is refType |o#0@@12| Tclass._module.O) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@12|)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@12|)) (|_module.O.i2#canCall| $prevHeap@@12 $Heap@@12 |o#0@@12|))))
 :qid |_01InnerOuterdfy.24:44|
 :skolemid |521|
 :pattern ( (_module.O.i2 $prevHeap@@12 $Heap@@12 |o#0@@12|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@12|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@12|)))
)) (= (_module.S.i2 $prevHeap@@12 $Heap@@12 this@@29) (forall ((|o#0@@13| T@U) ) (!  (=> (and ($Is refType |o#0@@13| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@13|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@13|)) (_module.O.i2 $prevHeap@@12 $Heap@@12 |o#0@@13|)))
 :qid |_01InnerOuterdfy.24:44|
 :skolemid |520|
 :pattern ( (_module.O.i2 $prevHeap@@12 $Heap@@12 |o#0@@13|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@13|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@12 this@@29) _module.S.obs)) ($Box refType |o#0@@13|)))
)))))
 :qid |_01InnerOuterdfy.24:22|
 :skolemid |522|
 :pattern ( (_module.S.i2 $prevHeap@@12 $Heap@@12 this@@29) ($IsGoodHeap $Heap@@12))
))))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@13 T@U) ($Heap@@13 T@U) (this@@30 T@U) ) (!  (=> (or (|_module.Outer.i2#canCall| $prevHeap@@13 $Heap@@13 this@@30) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@13) ($IsGoodHeap $Heap@@13)) ($HeapSucc $prevHeap@@13 $Heap@@13)) (and (or (not (= this@@30 null)) (not true)) (and ($Is refType this@@30 Tclass._module.Outer) ($IsAlloc refType this@@30 Tclass._module.Outer $prevHeap@@13)))))) (and (=> (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@30) _module.Outer.inner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@30) _module.Outer.inner))) (|_module.Inner.i2#canCall| $prevHeap@@13 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@30) _module.Outer.inner)))) (= (_module.Outer.i2 $prevHeap@@13 $Heap@@13 this@@30)  (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@30) _module.Outer.inner)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@13 this@@30) _module.Outer.inner))) (_module.Inner.i2 $prevHeap@@13 $Heap@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@13 this@@30) _module.Outer.inner)))))))
 :qid |_01InnerOuterdfy.111:22|
 :skolemid |838|
 :pattern ( (_module.Outer.i2 $prevHeap@@13 $Heap@@13 this@@30) ($IsGoodHeap $Heap@@13))
))))
(assert  (=> (<= 4 $FunctionContextHeight) (forall (($Heap@@14 T@U) (this@@31 T@U) ) (!  (=> (or (|_module.Inner.i#canCall| $Heap@@14 this@@31) (and (< 4 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@14) (and (or (not (= this@@31 null)) (not true)) (and ($Is refType this@@31 Tclass._module.Inner) ($IsAlloc refType this@@31 Tclass._module.Inner $Heap@@14)))))) (and (=> (U_2_bool (Lit boolType (bool_2_U true))) (|_module.O.i0#canCall| $Heap@@14 this@@31)) (= (_module.Inner.i $Heap@@14 this@@31)  (and true (_module.O.i0 $Heap@@14 this@@31)))))
 :qid |_01InnerOuterdfy.80:19|
 :skolemid |709|
 :pattern ( (_module.Inner.i $Heap@@14 this@@31) ($IsGoodHeap $Heap@@14))
))))
(assert (forall (($h@@17 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@39 null)) (not true)) ($Is refType $o@@39 Tclass._module.S?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@39) _module.S.obs)) (TSet Tclass._module.O)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@39) _module.S.obs)))
)))
(assert (forall ((h@@6 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@6))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@15 () T@U)
(declare-fun |s#0| () T@U)
(declare-fun this@@32 () T@U)
(declare-fun |inner#0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun $Heap@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.Outer.__ctor)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#9| null $Heap@@15 alloc |s#0|)) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (=> (and (and (and (or (not (= this@@32 null)) (not true)) ($Is refType this@@32 Tclass._module.Outer?)) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@32) alloc)))) (= (_module.O.s this@@32) |s#0|))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@32) _module.Outer.inner)) |inner#0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@15 this@@32 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 this@@32) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (forall (($o@@40 T@U) ($f@@18 T@U) ) (!  (=> (and (and (or (not (= $o@@40 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@40) alloc)))) (= $o@@40 (_module.O.s this@@32))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@40 $f@@18)))
 :qid |_01InnerOuterdfy.127:9|
 :skolemid |951|
))) (=> (forall (($o@@41 T@U) ($f@@19 T@U) ) (!  (=> (and (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@41) alloc)))) (= $o@@41 (_module.O.s this@@32))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@41 $f@@19)))
 :qid |_01InnerOuterdfy.127:9|
 :skolemid |951|
)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.S.i0#canCall| $Heap@0 (_module.O.s this@@32)) (or (_module.S.i0 $Heap@0 (_module.O.s this@@32)) (forall ((|o#0@@14| T@U) ) (!  (=> (and ($Is refType |o#0@@14| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.O.s this@@32)) _module.S.obs)) ($Box refType |o#0@@14|))) (and (= (_module.O.s |o#0@@14|) (_module.O.s this@@32)) (or (not (= (_module.S.upCast (_module.O.s this@@32) |o#0@@14|) (_module.O.s this@@32))) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |627|
 :pattern ( (_module.S.upCast (_module.O.s this@@32) |o#0@@14|))
 :pattern ( (_module.O.s |o#0@@14|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.O.s this@@32)) _module.S.obs)) ($Box refType |o#0@@14|)))
))))) (=> (=> (|_module.S.i0#canCall| $Heap@0 (_module.O.s this@@32)) (or (_module.S.i0 $Heap@0 (_module.O.s this@@32)) (forall ((|o#0@@15| T@U) ) (!  (=> (and ($Is refType |o#0@@15| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.O.s this@@32)) _module.S.obs)) ($Box refType |o#0@@15|))) (and (= (_module.O.s |o#0@@15|) (_module.O.s this@@32)) (or (not (= (_module.S.upCast (_module.O.s this@@32) |o#0@@15|) (_module.O.s this@@32))) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |627|
 :pattern ( (_module.S.upCast (_module.O.s this@@32) |o#0@@15|))
 :pattern ( (_module.O.s |o#0@@15|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.O.s this@@32)) _module.S.obs)) ($Box refType |o#0@@15|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= (_module.S.upCast (_module.O.s this@@32) this@@32) (_module.O.s this@@32))) (not true))) (=> (or (not (= (_module.S.upCast (_module.O.s this@@32) this@@32) (_module.O.s this@@32))) (not true)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.O.i0#canCall| $Heap@1 this@@32)) (=> (and (and (and (|_module.O.i0#canCall| $Heap@1 this@@32) (and (_module.O.i0 $Heap@1 this@@32) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.O.s this@@32)) _module.S.obs)) ($Box refType this@@32)) (_module.S.i0 $Heap@1 (_module.O.s this@@32))))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 (_module.O.s this@@32)) _module.S.obs)) (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.O.s this@@32)) _module.S.obs)) (|Set#UnionOne| |Set#Empty| ($Box refType this@@32))))) (and (forall (($o@@42 T@U) ) (!  (=> (and (or (not (= $o@@42 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@42) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@42)) (= $o@@42 (_module.O.s this@@32))))
 :qid |_01InnerOuterdfy.52:16|
 :skolemid |631|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@42))
)) ($HeapSuccGhost $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= |s#0| null)) (not true))) (=> (or (not (= |s#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 10)) ($IsAlloc refType |s#0| Tclass._module.S $Heap@@15)) (=> ($IsAlloc refType |s#0| Tclass._module.S $Heap@@15) (=> (= call0formal@previous$Heap@0 $Heap@@15) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i call0formal@previous$Heap@0 |s#0|) (=> (|_module.S.i0#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i0 call0formal@previous$Heap@0 |s#0|) (forall ((|o#0@@16| T@U) ) (!  (=> (and ($Is refType |o#0@@16| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#0@@16|))) (and (= (_module.O.s |o#0@@16|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#0@@16|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |572|
 :pattern ( (_module.S.upCast |s#0| |o#0@@16|))
 :pattern ( (_module.O.s |o#0@@16|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#0@@16|)))
))))))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i call0formal@previous$Heap@0 |s#0|) (=> (|_module.S.i0#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i0 call0formal@previous$Heap@0 |s#0|) (forall ((|o#0@@17| T@U) ) (!  (=> (and ($Is refType |o#0@@17| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#0@@17|))) (and (= (_module.O.s |o#0@@17|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#0@@17|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |572|
 :pattern ( (_module.S.upCast |s#0| |o#0@@17|))
 :pattern ( (_module.O.s |o#0@@17|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#0@@17|)))
)))))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i call0formal@previous$Heap@0 |s#0|) (forall ((|o#1| T@U) ) (!  (=> (and ($Is refType |o#1| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#1|))) (_module.O.i call0formal@previous$Heap@0 |o#1|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |574|
 :pattern ( (_module.O.i call0formal@previous$Heap@0 |o#1|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#1|)))
))))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i#canCall| call0formal@previous$Heap@0 |s#0|) (or (_module.S.i call0formal@previous$Heap@0 |s#0|) (forall ((|o#1@@0| T@U) ) (!  (=> (and ($Is refType |o#1@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#1@@0|))) (_module.O.i call0formal@previous$Heap@0 |o#1@@0|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |574|
 :pattern ( (_module.O.i call0formal@previous$Heap@0 |o#1@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#1@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i0#canCall| $Heap@1 |s#0|) (or (_module.S.i0 $Heap@1 |s#0|) (forall ((|o#2| T@U) ) (!  (=> (and ($Is refType |o#2| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#2|))) (and (= (_module.O.s |o#2|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#2|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |576|
 :pattern ( (_module.S.upCast |s#0| |o#2|))
 :pattern ( (_module.O.s |o#2|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#2|)))
))))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.i0#canCall| $Heap@1 |s#0|) (or (_module.S.i0 $Heap@1 |s#0|) (forall ((|o#2@@0| T@U) ) (!  (=> (and ($Is refType |o#2@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#2@@0|))) (and (= (_module.O.s |o#2@@0|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#2@@0|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |576|
 :pattern ( (_module.S.upCast |s#0| |o#2@@0|))
 :pattern ( (_module.O.s |o#2@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#2@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.legal0#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal0 call0formal@previous$Heap@0 $Heap@1 |s#0|) (forall ((|o#3| T@U) ) (!  (=> (and ($Is refType |o#3| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#3|))) (and (or (forall (($o@@43 T@U) ($f@@20 T@U) ) (!  (=> (or (not (= $o@@43 null)) (not true)) (=> (= $o@@43 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@43) $f@@20) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@43) $f@@20))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@43) $f@@20))
)) (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#3|)) (or (forall (($o@@44 T@U) ($f@@21 T@U) ) (!  (=> (or (not (= $o@@44 null)) (not true)) (=> (= $o@@44 |o#3|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@44) $f@@21) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@44) $f@@21))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |579|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@44) $f@@21))
)) (_module.O.i $Heap@1 |o#3|))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |580|
 :pattern ( (_module.O.i $Heap@1 |o#3|))
 :pattern ( (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#3|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#3|)))
))))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.legal0#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal0 call0formal@previous$Heap@0 $Heap@1 |s#0|) (forall ((|o#3@@0| T@U) ) (!  (=> (and ($Is refType |o#3@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#3@@0|))) (and (or (forall (($o@@45 T@U) ($f@@22 T@U) ) (!  (=> (or (not (= $o@@45 null)) (not true)) (=> (= $o@@45 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@45) $f@@22) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@45) $f@@22))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |578|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@45) $f@@22))
)) (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|)) (or (forall (($o@@46 T@U) ($f@@23 T@U) ) (!  (=> (or (not (= $o@@46 null)) (not true)) (=> (= $o@@46 |o#3@@0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@46) $f@@23) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 $o@@46) $f@@23))))
 :qid |_01InnerOuterdfy.27:72|
 :skolemid |579|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@46) $f@@23))
)) (_module.O.i $Heap@1 |o#3@@0|))))
 :qid |_01InnerOuterdfy.27:48|
 :skolemid |580|
 :pattern ( (_module.O.i $Heap@1 |o#3@@0|))
 :pattern ( (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#3@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#3@@0|)))
)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.legal1#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal1 call0formal@previous$Heap@0 $Heap@1 |s#0|) (forall ((|o#4| T@U) ) (!  (=> (and ($Is refType |o#4| Tclass._module.O) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#4|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#4|))))) (_module.O.i $Heap@1 |o#4|))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |584|
 :pattern ( (_module.O.i $Heap@1 |o#4|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#4|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#4|)))
))))))) (=> (=> (|_module.S.legal#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal call0formal@previous$Heap@0 $Heap@1 |s#0|) (=> (|_module.S.legal1#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (or (_module.S.legal1 call0formal@previous$Heap@0 $Heap@1 |s#0|) (forall ((|o#4@@0| T@U) ) (!  (=> (and ($Is refType |o#4@@0| Tclass._module.O) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#4@@0|)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#4@@0|))))) (_module.O.i $Heap@1 |o#4@@0|))
 :qid |_01InnerOuterdfy.30:48|
 :skolemid |584|
 :pattern ( (_module.O.i $Heap@1 |o#4@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#4@@0|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#4@@0|)))
)))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (|_module.S.i#canCall| $Heap@1 |s#0|) (=> (_module.S.i $Heap@1 |s#0|) (|_module.S.i2#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|))) (and (|_module.S.i#canCall| $Heap@1 |s#0|) (and (_module.S.i $Heap@1 |s#0|) (and (_module.S.i0 $Heap@1 |s#0|) (forall ((|o#6| T@U) ) (!  (=> (and ($Is refType |o#6| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#6|))) (_module.O.i $Heap@1 |o#6|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |589|
 :pattern ( (_module.O.i $Heap@1 |o#6|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#6|)))
)))))) (and (and (|_module.S.i2#canCall| call0formal@previous$Heap@0 $Heap@1 |s#0|) (and (_module.S.i2 call0formal@previous$Heap@0 $Heap@1 |s#0|) (forall ((|o#7| T@U) ) (!  (=> (and ($Is refType |o#7| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#7|))) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#7|)) (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#7|)))
 :qid |_01InnerOuterdfy.24:44|
 :skolemid |591|
 :pattern ( (_module.O.i2 call0formal@previous$Heap@0 $Heap@1 |o#7|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |s#0|) _module.S.obs)) ($Box refType |o#7|)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |s#0|) _module.S.obs)) ($Box refType |o#7|)))
)))) (= $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.S.i#canCall| $Heap@2 |s#0|) (or (_module.S.i $Heap@2 |s#0|) (=> (|_module.S.i0#canCall| $Heap@2 |s#0|) (or (_module.S.i0 $Heap@2 |s#0|) (forall ((|o#8| T@U) ) (!  (=> (and ($Is refType |o#8| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#8|))) (and (= (_module.O.s |o#8|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#8|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |946|
 :pattern ( (_module.S.upCast |s#0| |o#8|))
 :pattern ( (_module.O.s |o#8|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#8|)))
))))))) (=> (=> (|_module.S.i#canCall| $Heap@2 |s#0|) (or (_module.S.i $Heap@2 |s#0|) (=> (|_module.S.i0#canCall| $Heap@2 |s#0|) (or (_module.S.i0 $Heap@2 |s#0|) (forall ((|o#8@@0| T@U) ) (!  (=> (and ($Is refType |o#8@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#8@@0|))) (and (= (_module.O.s |o#8@@0|) |s#0|) (or (not (= (_module.S.upCast |s#0| |o#8@@0|) |s#0|)) (not true))))
 :qid |_01InnerOuterdfy.18:49|
 :skolemid |946|
 :pattern ( (_module.S.upCast |s#0| |o#8@@0|))
 :pattern ( (_module.O.s |o#8@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#8@@0|)))
)))))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.S.i#canCall| $Heap@2 |s#0|) (or (_module.S.i $Heap@2 |s#0|) (forall ((|o#9| T@U) ) (!  (=> (and ($Is refType |o#9| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#9|))) (_module.O.i $Heap@2 |o#9|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |948|
 :pattern ( (_module.O.i $Heap@2 |o#9|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |s#0|) _module.S.obs)) ($Box refType |o#9|)))
))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@15) ($IsHeapAnchor $Heap@@15)) (and ($Is refType |s#0| Tclass._module.S) ($IsAlloc refType |s#0| Tclass._module.S $Heap@@15))) (and (and ($Is refType |inner#0| Tclass._module.Inner) ($IsAlloc refType |inner#0| Tclass._module.Inner $Heap@@15)) (= 13 $FunctionContextHeight))) (and (and (and (|_module.S.i#canCall| $Heap@@15 |s#0|) (and (_module.S.i $Heap@@15 |s#0|) (and (_module.S.i0 $Heap@@15 |s#0|) (forall ((|o#6@@0| T@U) ) (!  (=> (and ($Is refType |o#6@@0| Tclass._module.O) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |s#0|) _module.S.obs)) ($Box refType |o#6@@0|))) (_module.O.i $Heap@@15 |o#6@@0|))
 :qid |_01InnerOuterdfy.21:48|
 :skolemid |943|
 :pattern ( (_module.O.i $Heap@@15 |o#6@@0|))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@15 |s#0|) _module.S.obs)) ($Box refType |o#6@@0|)))
))))) (= |s#0| (_module.O.s |inner#0|))) (and (and (|_module.Inner.i#canCall| $Heap@@15 |inner#0|) (and (_module.Inner.i $Heap@@15 |inner#0|) (and true (_module.O.i0 $Heap@@15 |inner#0|)))) (= (ControlFlow 0 17) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
