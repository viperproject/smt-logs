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
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun class._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun class._module.Point? () T@U)
(declare-fun Tagclass._module.Point? () T@U)
(declare-fun Tagclass._module.Point () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$Point () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$val () T@U)
(declare-fun field$z () T@U)
(declare-fun field$Value () T@U)
(declare-fun field$x () T@U)
(declare-fun field$y () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Point.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Point.Valid#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Point () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Point.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun _module.Point.x () T@U)
(declare-fun _module.Point.y () T@U)
(declare-fun _module.Point.z () T@U)
(declare-fun |$IsA#_System.Tuple3| (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _module.Point.Value () T@U)
(declare-fun |_System.Tuple3#Equal| (T@U T@U) Bool)
(declare-fun |#_System._tuple#3._#Make3| (T@U T@U T@U) T@U)
(declare-fun _module.Cell.val () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Point? () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#6| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 class._module.Cell? Tagclass._module.Cell? Tagclass._module.Cell class._module.Point? Tagclass._module.Point? Tagclass._module.Point tytagFamily$object |tytagFamily$_tuple#3| tytagFamily$Cell tytagFamily$Point field$Repr field$val field$z field$Value field$x field$y)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor SetType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
))) (= (Ctor DatatypeTypeType) 8)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Point.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Point) ($IsAlloc refType this Tclass._module.Point $Heap)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Repr)) ($Box refType this)) (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Repr))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)))) (not true)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)))) (not true)) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)))) (not true)) (|$IsA#_System.Tuple3| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Value)))))))) (= (_module.Point.Valid $Heap this)  (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Repr)) ($Box refType this)) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Repr)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x)))) (not true))) (|_System.Tuple3#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.Value)) (|#_System._tuple#3._#Make3| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.x))) _module.Cell.val) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.y))) _module.Cell.val) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Point.z))) _module.Cell.val)))))))
 :qid |FlyingRobotsdfy.19:19|
 :skolemid |725|
 :pattern ( (_module.Point.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple3| d) (_System.Tuple3.___hMake3_q d))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (|$IsA#_System.Tuple3| d))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|)) |##_System._tuple#3._#Make3|)
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (|#_System._tuple#3._#Make3| |a#12#0#0| |a#12#1#0| |a#12#2#0|))
)))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) ) (! (= (_System.Tuple3._0 (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (|#_System._tuple#3._#Make3| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) ) (! (= (_System.Tuple3._1 (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (|#_System._tuple#3._#Make3| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) ) (! (= (_System.Tuple3._2 (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (|#_System._tuple#3._#Make3| |a#20#0#0| |a#20#1#0| |a#20#2#0|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cell?)  (or (= $o null) (= (dtype $o) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($Is refType $o Tclass._module.Cell?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Point?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Point?)))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($Is refType $o@@0 Tclass._module.Point?))
)))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Cell? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Point $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.Point? $h@@1))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Point $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Point? $h@@1))
)))
(assert (= (FDim _module.Point.Value) 0))
(assert (= (FieldOfDecl class._module.Point? field$Value) _module.Point.Value))
(assert ($IsGhostField _module.Point.Value))
(assert (= (FDim _module.Point.Repr) 0))
(assert (= (FieldOfDecl class._module.Point? field$Repr) _module.Point.Repr))
(assert ($IsGhostField _module.Point.Repr))
(assert (= (FDim _module.Cell.val) 0))
(assert (= (FieldOfDecl class._module.Cell? field$val) _module.Cell.val))
(assert  (not ($IsGhostField _module.Cell.val)))
(assert (= (FDim _module.Point.z) 0))
(assert (= (FieldOfDecl class._module.Point? field$z) _module.Point.z))
(assert  (not ($IsGhostField _module.Point.z)))
(assert (= (FDim _module.Point.x) 0))
(assert (= (FieldOfDecl class._module.Point? field$x) _module.Point.x))
(assert  (not ($IsGhostField _module.Point.x)))
(assert (= (FDim _module.Point.y) 0))
(assert (= (FieldOfDecl class._module.Point? field$y) _module.Point.y))
(assert  (not ($IsGhostField _module.Point.y)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Cell? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Point? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Point? $h@@4))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|_System.Tuple3#Equal| a@@2 b) (= a@@2 b))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (|_System.Tuple3#Equal| a@@2 b))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (! (= (|Set#Subset| a@@3 b@@0) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@3 o@@2) (|Set#IsMember| b@@0 o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@3 o@@2))
 :pattern ( (|Set#IsMember| b@@0 o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@3 b@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple3.___hMake3_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@1) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@1 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |481|
)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.Tuple3.___hMake3_q d@@1))
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
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Cell.val)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |706|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Cell.val)))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@6)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h@@6) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@6)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@6))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@6))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.Point.x)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |726|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) _module.Point.x)))
)))
(assert (forall (($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.Point.y)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |728|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) _module.Point.y)))
)))
(assert (forall (($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.Point.z)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |730|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) _module.Point.z)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Cell?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsBox bx@@4 Tclass._module.Cell?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Cell) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( ($IsBox bx@@5 Tclass._module.Cell))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Point?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Point?)))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( ($IsBox bx@@6 Tclass._module.Point?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Point) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Point)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( ($IsBox bx@@7 Tclass._module.Point))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Cell)  (and ($Is refType |c#0@@3| Tclass._module.Cell?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Cell?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Point)  (and ($Is refType |c#0@@4| Tclass._module.Point?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Point))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Point?))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@2))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_System.Tuple3.___hMake3_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall (($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Point.x)) Tclass._module.Cell $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |727|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) _module.Point.x)))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Point.y)) Tclass._module.Cell $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.Point.y)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Point.z)) Tclass._module.Cell $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |731|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.Point.z)))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Point?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Point.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |718|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.Point.Repr)))
)))
(assert (forall (($h@@14 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) _module.Point.Repr)) (TSet Tclass._System.object) $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |719|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) _module.Point.Repr)))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@13 T@U) ) (! ($Is refType $o@@13 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@13 Tclass._System.object?))
)))
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
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (|#_System._tuple#3._#Make3| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (|#_System._tuple#3._#Make3| |a#19#0#0| |a#19#1#0| |a#19#2#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (|#_System._tuple#3._#Make3| |a#21#0#0| |a#21#1#0| |a#21#2#0|))
)))
(assert (forall (($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Cell.val)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |705|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Cell.val)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Point))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@15 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (or (= $o@@15 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.Point.Repr)) ($Box refType $o@@15)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@15) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@15) $f)))
 :qid |unknown.0:0|
 :skolemid |720|
)) (= (_module.Point.Valid $h0 this@@0) (_module.Point.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |722|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Point.Valid $h1 this@@0))
)))
(assert (forall (($h@@16 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Point?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Point.Value)) (Tclass._System.Tuple3 TInt TInt TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |716|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@16) _module.Point.Value)))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall (($h@@17 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Point.Value)) (Tclass._System.Tuple3 TInt TInt TInt) $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |717|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@17) _module.Point.Value)))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (_System.Tuple3.___hMake3_q d@@4) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@18)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@18))
)))) ($IsAllocBox (_System.Tuple3._0 d@@4) |_System._tuple#3$T0@@7| $h@@18))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@4) |_System._tuple#3$T0@@7| $h@@18))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (_System.Tuple3.___hMake3_q d@@5) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@19)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@19))
)))) ($IsAllocBox (_System.Tuple3._1 d@@5) |_System._tuple#3$T1@@8| $h@@19))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@5) |_System._tuple#3$T1@@8| $h@@19))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (_System.Tuple3.___hMake3_q d@@6) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@20)
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@20))
)))) ($IsAllocBox (_System.Tuple3._2 d@@6) |_System._tuple#3$T2@@9| $h@@20))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@6) |_System._tuple#3$T2@@9| $h@@20))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Point.Valid#canCall| $Heap@@0 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Point) ($IsAlloc refType this@@1 Tclass._module.Point $Heap@@0)))))) (=> (_module.Point.Valid $Heap@@0 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Point.Repr)) ($Box refType this@@1))))
 :qid |FlyingRobotsdfy.19:19|
 :skolemid |723|
 :pattern ( (_module.Point.Valid $Heap@@0 this@@1))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Point?) Tagclass._module.Point?))
(assert (= (TagFamily Tclass._module.Point?) tytagFamily$Point))
(assert (= (Tag Tclass._module.Point) Tagclass._module.Point))
(assert (= (TagFamily Tclass._module.Point) tytagFamily$Point))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|_System.Tuple3#Equal| a@@5 b@@2)  (and (and (= (_System.Tuple3._0 a@@5) (_System.Tuple3._0 b@@2)) (= (_System.Tuple3._1 a@@5) (_System.Tuple3._1 b@@2))) (= (_System.Tuple3._2 a@@5) (_System.Tuple3._2 b@@2))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (|_System.Tuple3#Equal| a@@5 b@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@18 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@0))  (=> (and (or (not (= $o@@18 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@18) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@18))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |865|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@18 $f@@0))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@2 () T@U)
(declare-fun $Heap@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.Point.Mutate)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#6| null $Heap@@1 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Point.Repr)))) ($IsAllocBox ($Box refType this@@2) Tclass._module.Point? $Heap@@1)) (and (|_module.Point.Valid#canCall| $Heap@@1 this@@2) (_module.Point.Valid $Heap@@1 this@@2))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@19) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@19)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@2) _module.Point.Repr)) ($Box refType $o@@19))))
 :qid |FlyingRobotsdfy.42:10|
 :skolemid |744|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@19))
)) ($HeapSucc $Heap@@1 $Heap@0))) (and (and ($IsAllocBox ($Box refType this@@2) Tclass._module.Point? $Heap@0) (|_module.Point.Valid#canCall| $Heap@0 this@@2)) (and (_module.Point.Valid $Heap@0 this@@2) (= (ControlFlow 0 2) (- 0 1))))) ($IsAlloc refType this@@2 Tclass._module.Point $Heap@@1)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Point) ($IsAlloc refType this@@2 Tclass._module.Point $Heap@@1))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
