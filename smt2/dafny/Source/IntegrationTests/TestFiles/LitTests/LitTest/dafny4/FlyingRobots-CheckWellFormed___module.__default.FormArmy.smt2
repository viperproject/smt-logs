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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |##_System._tuple#3._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass._module.Bot () T@U)
(declare-fun Tagclass._module.Bot? () T@U)
(declare-fun class._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell () T@U)
(declare-fun class._module.Point? () T@U)
(declare-fun Tagclass._module.Point? () T@U)
(declare-fun Tagclass._module.Point () T@U)
(declare-fun class._module.Arm? () T@U)
(declare-fun Tagclass._module.Arm? () T@U)
(declare-fun Tagclass._module.Arm () T@U)
(declare-fun class._module.Bot? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$Bot () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$Point () T@U)
(declare-fun tytagFamily$Arm () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$left () T@U)
(declare-fun field$polar () T@U)
(declare-fun field$val () T@U)
(declare-fun field$right () T@U)
(declare-fun field$pos () T@U)
(declare-fun field$z () T@U)
(declare-fun field$Value () T@U)
(declare-fun field$x () T@U)
(declare-fun field$y () T@U)
(declare-fun field$azim () T@U)
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
(declare-fun |Set#Union| (T@U T@U) T@U)
(declare-fun |$IsA#_System.Tuple2| (T@U) Bool)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun _System.Tuple3.___hMake3_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun _System.Tuple3._0 (T@U) T@U)
(declare-fun _System.Tuple3._1 (T@U) T@U)
(declare-fun _System.Tuple3._2 (T@U) T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Bot.Valid (Bool T@U T@U) Bool)
(declare-fun Tclass._module.Bot () T@U)
(declare-fun _module.Bot.Repr () T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Point? () T@U)
(declare-fun Tclass._module.Arm? () T@U)
(declare-fun Tclass._module.Bot? () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun Tclass._module.Arm () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Arm.Value () T@U)
(declare-fun _module.Arm.Repr () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _module.Bot.left () T@U)
(declare-fun _module.Arm.polar () T@U)
(declare-fun _module.Bot.right () T@U)
(declare-fun _module.Bot.pos () T@U)
(declare-fun _module.Arm.azim () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |_module.Bot.Valid#canCall| (T@U T@U) Bool)
(declare-fun reveal__module.Bot.Valid () Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Disjoint| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun _module.Arm.Valid (T@U T@U) Bool)
(declare-fun |_module.Arm.Valid#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |##_System._tuple#3._#Make3| Tagclass._System.Tuple3 Tagclass._module.Bot Tagclass._module.Bot? class._module.Cell? Tagclass._module.Cell? Tagclass._module.Cell class._module.Point? Tagclass._module.Point? Tagclass._module.Point class._module.Arm? Tagclass._module.Arm? Tagclass._module.Arm class._module.Bot? tytagFamily$object |tytagFamily$_tuple#2| |tytagFamily$_tuple#3| tytagFamily$Bot tytagFamily$Cell tytagFamily$Point tytagFamily$Arm field$Repr field$left field$polar field$val field$right field$pos field$z field$Value field$x field$y field$azim)
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
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple2| d) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( (|$IsA#_System.Tuple2| d))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> (|$IsA#_System.Tuple3| d@@0) (_System.Tuple3.___hMake3_q d@@0))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (|$IsA#_System.Tuple3| d@@0))
)))
(assert (forall ((a@@3 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@3 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@3 x@@4) o))
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
(assert (forall ((a@@4 T@U) (b@@1 T@U) (y@@2 T@U) ) (!  (=> (|Set#IsMember| b@@1 y@@2) (not (|Set#IsMember| (|Set#Difference| a@@4 b@@1) y@@2)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |144|
 :pattern ( (|Set#Difference| a@@4 b@@1) (|Set#IsMember| b@@1 y@@2))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d@@1))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($reveal Bool) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.Bot))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.Bot.Repr)) ($Box refType $o)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |798|
)) (= (_module.Bot.Valid $reveal $h0 this@@0) (_module.Bot.Valid $reveal $h1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |799|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Bot.Valid $reveal $h1 this@@0))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|_System.Tuple2#Equal| a@@5 b@@2)  (and (= (_System.Tuple2._0 a@@5) (_System.Tuple2._0 b@@2)) (= (_System.Tuple2._1 a@@5) (_System.Tuple2._1 b@@2))))
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|_System.Tuple2#Equal| a@@5 b@@2))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Cell?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |703|
 :pattern ( ($Is refType $o@@0 Tclass._module.Cell?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Point?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Point?)))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( ($Is refType $o@@1 Tclass._module.Point?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass._module.Arm?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass._module.Arm?)))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( ($Is refType $o@@2 Tclass._module.Arm?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass._module.Bot?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass._module.Bot?)))
 :qid |unknown.0:0|
 :skolemid |794|
 :pattern ( ($Is refType $o@@3 Tclass._module.Bot?))
)))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (forall ((a@@6 T@U) (b@@3 T@U) ) (! (= (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3) (|Set#Union| a@@6 b@@3))
 :qid |DafnyPreludebpl.729:15|
 :skolemid |138|
 :pattern ( (|Set#Union| (|Set#Union| a@@6 b@@3) b@@3))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1)  (and (|Set#IsMember| a@@7 o@@1) (not (|Set#IsMember| b@@4 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |143|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@7 b@@4) o@@1))
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
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Arm $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.Arm? $h@@2))
 :qid |unknown.0:0|
 :skolemid |793|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Arm $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Arm? $h@@2))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass._module.Bot $h@@3) ($IsAlloc refType |c#0@@3| Tclass._module.Bot? $h@@3))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Bot $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass._module.Bot? $h@@3))
)))
(assert (= (FDim _module.Bot.Repr) 0))
(assert (= (FieldOfDecl class._module.Bot? field$Repr) _module.Bot.Repr))
(assert ($IsGhostField _module.Bot.Repr))
(assert (= (FDim _module.Point.Value) 0))
(assert (= (FieldOfDecl class._module.Point? field$Value) _module.Point.Value))
(assert ($IsGhostField _module.Point.Value))
(assert (= (FDim _module.Point.Repr) 0))
(assert (= (FieldOfDecl class._module.Point? field$Repr) _module.Point.Repr))
(assert ($IsGhostField _module.Point.Repr))
(assert (= (FDim _module.Arm.Value) 0))
(assert (= (FieldOfDecl class._module.Arm? field$Value) _module.Arm.Value))
(assert ($IsGhostField _module.Arm.Value))
(assert (= (FDim _module.Arm.Repr) 0))
(assert (= (FieldOfDecl class._module.Arm? field$Repr) _module.Arm.Repr))
(assert ($IsGhostField _module.Arm.Repr))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim _module.Bot.left) 0))
(assert (= (FieldOfDecl class._module.Bot? field$left) _module.Bot.left))
(assert  (not ($IsGhostField _module.Bot.left)))
(assert (= (FDim _module.Arm.polar) 0))
(assert (= (FieldOfDecl class._module.Arm? field$polar) _module.Arm.polar))
(assert  (not ($IsGhostField _module.Arm.polar)))
(assert (= (FDim _module.Cell.val) 0))
(assert (= (FieldOfDecl class._module.Cell? field$val) _module.Cell.val))
(assert  (not ($IsGhostField _module.Cell.val)))
(assert (= (FDim _module.Bot.right) 0))
(assert (= (FieldOfDecl class._module.Bot? field$right) _module.Bot.right))
(assert  (not ($IsGhostField _module.Bot.right)))
(assert (= (FDim _module.Bot.pos) 0))
(assert (= (FieldOfDecl class._module.Bot? field$pos) _module.Bot.pos))
(assert  (not ($IsGhostField _module.Bot.pos)))
(assert (= (FDim _module.Point.z) 0))
(assert (= (FieldOfDecl class._module.Point? field$z) _module.Point.z))
(assert  (not ($IsGhostField _module.Point.z)))
(assert (= (FDim _module.Point.x) 0))
(assert (= (FieldOfDecl class._module.Point? field$x) _module.Point.x))
(assert  (not ($IsGhostField _module.Point.x)))
(assert (= (FDim _module.Point.y) 0))
(assert (= (FieldOfDecl class._module.Point? field$y) _module.Point.y))
(assert  (not ($IsGhostField _module.Point.y)))
(assert (= (FDim _module.Arm.azim) 0))
(assert (= (FieldOfDecl class._module.Arm? field$azim) _module.Arm.azim))
(assert  (not ($IsGhostField _module.Arm.azim)))
(assert (forall (($o@@4 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@4)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@4))
)))
(assert (forall (($o@@5 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Cell? $h@@5)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Cell? $h@@5))
)))
(assert (forall (($o@@6 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass._module.Point? $h@@6)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( ($IsAlloc refType $o@@6 Tclass._module.Point? $h@@6))
)))
(assert (forall (($o@@7 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@7 Tclass._module.Arm? $h@@7)  (or (= $o@@7 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( ($IsAlloc refType $o@@7 Tclass._module.Arm? $h@@7))
)))
(assert (forall (($o@@8 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@8 Tclass._module.Bot? $h@@8)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |795|
 :pattern ( ($IsAlloc refType $o@@8 Tclass._module.Bot? $h@@8))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (! (= (|_System.Tuple2#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|_System.Tuple2#Equal| a@@8 b@@5))
)))
(assert (forall ((a@@9 T@U) (b@@6 T@U) ) (! (= (|_System.Tuple3#Equal| a@@9 b@@6) (= a@@9 b@@6))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (|_System.Tuple3#Equal| a@@9 b@@6))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@9 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@9 $f@@0))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) (or (or (|Set#IsMember| |l#3| ($Box refType $o@@9)) (|Set#IsMember| |l#4| ($Box refType $o@@9))) (|Set#IsMember| |l#5| ($Box refType $o@@9)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |866|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@9 $f@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($reveal@@0 Bool) ($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Bot.Valid#canCall| $Heap@@0 this@@1) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Bot) ($IsAlloc refType this@@1 Tclass._module.Bot $Heap@@0)))))) (=> (_module.Bot.Valid reveal__module.Bot.Valid $Heap@@0 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Bot.Repr)) ($Box refType this@@1))))
 :qid |FlyingRobotsdfy.93:29|
 :skolemid |800|
 :pattern ( (_module.Bot.Valid $reveal@@0 $Heap@@0 this@@1))
))))
(assert (forall ((a@@10 T@U) (b@@7 T@U) ) (! (= (|Set#Subset| a@@10 b@@7) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@10 o@@3) (|Set#IsMember| b@@7 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a@@10 o@@3))
 :pattern ( (|Set#IsMember| b@@7 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a@@10 b@@7))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@9)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@9) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@9))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@9))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple3.___hMake3_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#3._#Make3|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_System.Tuple3.___hMake3_q d@@3))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@5))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple3.___hMake3_q d@@4) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= d@@4 (|#_System._tuple#3._#Make3| |a#13#0#0| |a#13#1#0| |a#13#2#0|))
 :qid |unknown.0:0|
 :skolemid |481|
)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (_System.Tuple3.___hMake3_q d@@4))
)))
(assert (forall ((a@@11 T@U) (b@@8 T@U) ) (! (= (|Set#Disjoint| a@@11 b@@8) (forall ((o@@4 T@U) ) (!  (or (not (|Set#IsMember| a@@11 o@@4)) (not (|Set#IsMember| b@@8 o@@4)))
 :qid |DafnyPreludebpl.794:19|
 :skolemid |151|
 :pattern ( (|Set#IsMember| a@@11 o@@4))
 :pattern ( (|Set#IsMember| b@@8 o@@4))
)))
 :qid |DafnyPreludebpl.791:15|
 :skolemid |152|
 :pattern ( (|Set#Disjoint| a@@11 b@@8))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@5) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@5 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@5))
)))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Cell.val)) TInt $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |706|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.Cell.val)))
)))
(assert (forall ((|_System._tuple#3$T0@@4| T@U) (|_System._tuple#3$T1@@4| T@U) (|_System._tuple#3$T2@@4| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) ($h@@11 T@U) ) (!  (=> ($IsGoodHeap $h@@11) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@11)  (and (and ($IsAllocBox |a#14#0#0| |_System._tuple#3$T0@@4| $h@@11) ($IsAllocBox |a#14#1#0| |_System._tuple#3$T1@@4| $h@@11)) ($IsAllocBox |a#14#2#0| |_System._tuple#3$T2@@4| $h@@11))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0| |a#14#1#0| |a#14#2#0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@4| |_System._tuple#3$T1@@4| |_System._tuple#3$T2@@4|) $h@@11))
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
(assert (forall (($h@@12 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Arm?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Arm.Value)) (Tclass._System.Tuple2 TInt TInt) $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |759|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@11) _module.Arm.Value)))
)))
(assert (forall (($h@@13 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.Point.x)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |726|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@12) _module.Point.x)))
)))
(assert (forall (($h@@14 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.Point.y)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |728|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@13) _module.Point.y)))
)))
(assert (forall (($h@@15 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Point?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Point.z)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |730|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@14) _module.Point.z)))
)))
(assert (forall (($h@@16 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass._module.Arm?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.Arm.polar)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |768|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@15) _module.Arm.polar)))
)))
(assert (forall (($h@@17 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Arm?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) _module.Arm.azim)) Tclass._module.Cell))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |770|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@16) _module.Arm.azim)))
)))
(assert (forall (($h@@18 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass._module.Bot?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) _module.Bot.pos)) Tclass._module.Point))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |806|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@17) _module.Bot.pos)))
)))
(assert (forall (($h@@19 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Bot?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@18) _module.Bot.left)) Tclass._module.Arm))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |808|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@18) _module.Bot.left)))
)))
(assert (forall (($h@@20 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Bot?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@19) _module.Bot.right)) Tclass._module.Arm))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |810|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@19) _module.Bot.right)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Bot) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Bot)))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsBox bx@@4 Tclass._module.Bot))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Bot?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Bot?)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@5 Tclass._module.Bot?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Cell?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |702|
 :pattern ( ($IsBox bx@@6 Tclass._module.Cell?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Cell) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Cell)))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( ($IsBox bx@@7 Tclass._module.Cell))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Point?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Point?)))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( ($IsBox bx@@8 Tclass._module.Point?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Point) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Point)))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( ($IsBox bx@@9 Tclass._module.Point))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Arm?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Arm?)))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( ($IsBox bx@@10 Tclass._module.Arm?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Arm) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Arm)))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( ($IsBox bx@@11 Tclass._module.Arm))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Cell)  (and ($Is refType |c#0@@5| Tclass._module.Cell?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Cell?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Point)  (and ($Is refType |c#0@@6| Tclass._module.Point?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Point))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Point?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._module.Arm)  (and ($Is refType |c#0@@7| Tclass._module.Arm?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |792|
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Arm))
 :pattern ( ($Is refType |c#0@@7| Tclass._module.Arm?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass._module.Bot)  (and ($Is refType |c#0@@8| Tclass._module.Bot?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Bot))
 :pattern ( ($Is refType |c#0@@8| Tclass._module.Bot?))
)))
(assert (forall ((|_System._tuple#3$T0@@5| T@U) (|_System._tuple#3$T1@@5| T@U) (|_System._tuple#3$T2@@5| T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)) (_System.Tuple3.___hMake3_q d@@6))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (_System.Tuple3.___hMake3_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._System.Tuple3 |_System._tuple#3$T0@@5| |_System._tuple#3$T1@@5| |_System._tuple#3$T2@@5|)))
)))
(assert (forall (($h@@21 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@20) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@20) _module.Point.x)) Tclass._module.Cell $h@@21))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |727|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@20) _module.Point.x)))
)))
(assert (forall (($h@@22 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.Point.y)) Tclass._module.Cell $h@@22))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |729|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@21) _module.Point.y)))
)))
(assert (forall (($h@@23 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Point.z)) Tclass._module.Cell $h@@23))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |731|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@22) _module.Point.z)))
)))
(assert (forall (($h@@24 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Arm?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) _module.Arm.polar)) Tclass._module.Cell $h@@24))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |769|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@23) _module.Arm.polar)))
)))
(assert (forall (($h@@25 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) Tclass._module.Arm?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@24) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@24) _module.Arm.azim)) Tclass._module.Cell $h@@25))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |771|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@24) _module.Arm.azim)))
)))
(assert (forall (($h@@26 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) Tclass._module.Bot?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.Bot.pos)) Tclass._module.Point $h@@26))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |807|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@25) _module.Bot.pos)))
)))
(assert (forall (($h@@27 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) Tclass._module.Bot?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Bot.left)) Tclass._module.Arm $h@@27))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |809|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@26) _module.Bot.left)))
)))
(assert (forall (($h@@28 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) Tclass._module.Bot?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) _module.Bot.right)) Tclass._module.Arm $h@@28))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |811|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) _module.Bot.right)))
)))
(assert (forall ((a@@12 T@U) (b@@9 T@U) (o@@5 T@U) ) (! (= (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5)  (or (|Set#IsMember| a@@12 o@@5) (|Set#IsMember| b@@9 o@@5)))
 :qid |DafnyPreludebpl.704:15|
 :skolemid |133|
 :pattern ( (|Set#IsMember| (|Set#Union| a@@12 b@@9) o@@5))
)))
(assert (forall ((a@@13 T@U) (b@@10 T@U) ) (!  (=> (|Set#Disjoint| a@@13 b@@10) (and (= (|Set#Difference| (|Set#Union| a@@13 b@@10) a@@13) b@@10) (= (|Set#Difference| (|Set#Union| a@@13 b@@10) b@@10) a@@13)))
 :qid |DafnyPreludebpl.716:15|
 :skolemid |136|
 :pattern ( (|Set#Union| a@@13 b@@10))
)))
(assert (forall ((|_System._tuple#3$T0@@6| T@U) (|_System._tuple#3$T1@@6| T@U) (|_System._tuple#3$T2@@6| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|))  (and (and ($IsBox |a#14#0#0@@0| |_System._tuple#3$T0@@6|) ($IsBox |a#14#1#0@@0| |_System._tuple#3$T1@@6|)) ($IsBox |a#14#2#0@@0| |_System._tuple#3$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3._#Make3| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0|) (Tclass._System.Tuple3 |_System._tuple#3$T0@@6| |_System._tuple#3$T1@@6| |_System._tuple#3$T2@@6|)))
)))
(assert (forall (($h@@29 T@U) ($o@@28 T@U) ) (!  (=> (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) Tclass._module.Point?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.Point.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |718|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) _module.Point.Repr)))
)))
(assert (forall (($h@@30 T@U) ($o@@29 T@U) ) (!  (=> (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) Tclass._module.Arm?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.Arm.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |760|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) _module.Arm.Repr)))
)))
(assert (forall (($h@@31 T@U) ($o@@30 T@U) ) (!  (=> (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) Tclass._module.Bot?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.Bot.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |796|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) _module.Bot.Repr)))
)))
(assert (forall (($h@@32 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.Point.Repr)) (TSet Tclass._System.object) $h@@32))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |719|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) _module.Point.Repr)))
)))
(assert (forall (($h@@33 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) Tclass._module.Arm?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) _module.Arm.Repr)) (TSet Tclass._System.object) $h@@33))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |761|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) _module.Arm.Repr)))
)))
(assert (forall (($h@@34 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) Tclass._module.Bot?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) _module.Bot.Repr)) (TSet Tclass._System.object) $h@@34))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |797|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) _module.Bot.Repr)))
)))
(assert (forall ((a@@14 T@U) (b@@11 T@U) (c T@U) ) (!  (=> (or (not (= a@@14 c)) (not true)) (=> (and ($HeapSucc a@@14 b@@11) ($HeapSucc b@@11 c)) ($HeapSucc a@@14 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@14 b@@11) ($HeapSucc b@@11 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 TInt) (and (= ($Box intType ($Unbox intType bx@@12)) bx@@12) ($Is intType ($Unbox intType bx@@12) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@12 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3) (forall ((bx@@13 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@13) ($IsAllocBox bx@@13 t0@@2 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@13))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@2) h@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@34 T@U) ) (! ($Is refType $o@@34 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@34 Tclass._System.object?))
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
(assert (forall (($h@@35 T@U) ($o@@35 T@U) ) (!  (=> (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) Tclass._module.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@35) _module.Cell.val)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |705|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@35) _module.Cell.val)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Point))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@36 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@36 null)) (not true)) (or (= $o@@36 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@2) _module.Point.Repr)) ($Box refType $o@@36)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@36) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@36) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |720|
)) (= (_module.Point.Valid $h0@@0 this@@2) (_module.Point.Valid $h1@@0 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |722|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Point.Valid $h1@@0 this@@2))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Arm))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@37 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@37 null)) (not true)) (or (= $o@@37 this@@3) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 this@@3) _module.Arm.Repr)) ($Box refType $o@@37)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@37) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@37) $f@@2)))
 :qid |unknown.0:0|
 :skolemid |762|
)) (= (_module.Arm.Valid $h0@@1 this@@3) (_module.Arm.Valid $h1@@1 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |764|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Arm.Valid $h1@@1 this@@3))
)))
(assert (forall ((a@@15 T@U) (b@@12 T@U) ) (! (= (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)) (|Set#Union| a@@15 b@@12))
 :qid |DafnyPreludebpl.733:15|
 :skolemid |139|
 :pattern ( (|Set#Union| a@@15 (|Set#Union| a@@15 b@@12)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall (($h@@36 T@U) ($o@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@38 null)) (not true)) (= (dtype $o@@38) Tclass._module.Point?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@38) _module.Point.Value)) (Tclass._System.Tuple3 TInt TInt TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |716|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@38) _module.Point.Value)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall (($h@@37 T@U) ($o@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) Tclass._module.Arm?))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@39) _module.Arm.Value)) (Tclass._System.Tuple2 TInt TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |758|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@39) _module.Arm.Value)))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@15 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@15 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@15)) bx@@15) ($Is SetType ($Unbox SetType bx@@15) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@15 (TSet t@@5)))
)))
(assert (forall (($h@@38 T@U) ($o@@40 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@38) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) Tclass._module.Point?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@40) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@40) _module.Point.Value)) (Tclass._System.Tuple3 TInt TInt TInt) $h@@38))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |717|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@38 $o@@40) _module.Point.Value)))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#3$T0@@7| T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (_System.Tuple3.___hMake3_q d@@8) (exists ((|_System._tuple#3$T1@@7| T@U) (|_System._tuple#3$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@39)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple3 |_System._tuple#3$T0@@7| |_System._tuple#3$T1@@7| |_System._tuple#3$T2@@7|) $h@@39))
)))) ($IsAllocBox (_System.Tuple3._0 d@@8) |_System._tuple#3$T0@@7| $h@@39))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAllocBox (_System.Tuple3._0 d@@8) |_System._tuple#3$T0@@7| $h@@39))
)))
(assert (forall ((d@@9 T@U) (|_System._tuple#3$T1@@8| T@U) ($h@@40 T@U) ) (!  (=> (and ($IsGoodHeap $h@@40) (and (_System.Tuple3.___hMake3_q d@@9) (exists ((|_System._tuple#3$T0@@8| T@U) (|_System._tuple#3$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@40)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._System.Tuple3 |_System._tuple#3$T0@@8| |_System._tuple#3$T1@@8| |_System._tuple#3$T2@@8|) $h@@40))
)))) ($IsAllocBox (_System.Tuple3._1 d@@9) |_System._tuple#3$T1@@8| $h@@40))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsAllocBox (_System.Tuple3._1 d@@9) |_System._tuple#3$T1@@8| $h@@40))
)))
(assert (forall ((d@@10 T@U) (|_System._tuple#3$T2@@9| T@U) ($h@@41 T@U) ) (!  (=> (and ($IsGoodHeap $h@@41) (and (_System.Tuple3.___hMake3_q d@@10) (exists ((|_System._tuple#3$T0@@9| T@U) (|_System._tuple#3$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@41)
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple3 |_System._tuple#3$T0@@9| |_System._tuple#3$T1@@9| |_System._tuple#3$T2@@9|) $h@@41))
)))) ($IsAllocBox (_System.Tuple3._2 d@@10) |_System._tuple#3$T2@@9| $h@@41))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAllocBox (_System.Tuple3._2 d@@10) |_System._tuple#3$T2@@9| $h@@41))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Point.Valid#canCall| $Heap@@1 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Point) ($IsAlloc refType this@@4 Tclass._module.Point $Heap@@1)))))) (=> (_module.Point.Valid $Heap@@1 this@@4) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@4) _module.Point.Repr)) ($Box refType this@@4))))
 :qid |FlyingRobotsdfy.19:19|
 :skolemid |723|
 :pattern ( (_module.Point.Valid $Heap@@1 this@@4))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) ) (!  (=> (or (|_module.Arm.Valid#canCall| $Heap@@2 this@@5) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Arm) ($IsAlloc refType this@@5 Tclass._module.Arm $Heap@@2)))))) (=> (_module.Arm.Valid $Heap@@2 this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@5) _module.Arm.Repr)) ($Box refType this@@5))))
 :qid |FlyingRobotsdfy.57:19|
 :skolemid |765|
 :pattern ( (_module.Arm.Valid $Heap@@2 this@@5))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Bot) Tagclass._module.Bot))
(assert (= (TagFamily Tclass._module.Bot) tytagFamily$Bot))
(assert (= (Tag Tclass._module.Bot?) Tagclass._module.Bot?))
(assert (= (TagFamily Tclass._module.Bot?) tytagFamily$Bot))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Point?) Tagclass._module.Point?))
(assert (= (TagFamily Tclass._module.Point?) tytagFamily$Point))
(assert (= (Tag Tclass._module.Point) Tagclass._module.Point))
(assert (= (TagFamily Tclass._module.Point) tytagFamily$Point))
(assert (= (Tag Tclass._module.Arm?) Tagclass._module.Arm?))
(assert (= (TagFamily Tclass._module.Arm?) tytagFamily$Arm))
(assert (= (Tag Tclass._module.Arm) Tagclass._module.Arm))
(assert (= (TagFamily Tclass._module.Arm) tytagFamily$Arm))
(assert (forall ((a@@16 T@U) (b@@13 T@U) ) (! (= (|_System.Tuple3#Equal| a@@16 b@@13)  (and (and (= (_System.Tuple3._0 a@@16) (_System.Tuple3._0 b@@13)) (= (_System.Tuple3._1 a@@16) (_System.Tuple3._1 b@@13))) (= (_System.Tuple3._2 a@@16) (_System.Tuple3._2 b@@13))))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (|_System.Tuple3#Equal| a@@16 b@@13))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@42 T@U) ) (!  (=> (and ($IsGoodHeap $h@@42) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@42)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@42))
)))) ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@42))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@11) |_System._tuple#2$T0@@6| $h@@42))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@43 T@U) ) (!  (=> (and ($IsGoodHeap $h@@43) (and (_System.Tuple2.___hMake2_q d@@12) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@43)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@43))
)))) ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@43))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@12) |_System._tuple#2$T1@@7| $h@@43))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@3 T@U) (this@@6 T@U) ) (!  (=> (or (|_module.Arm.Valid#canCall| $Heap@@3 this@@6) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Arm) ($IsAlloc refType this@@6 Tclass._module.Arm $Heap@@3)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Repr)) ($Box refType this@@6)) (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.polar)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.azim)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Repr))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.polar)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.azim)))) (not true)) (|$IsA#_System.Tuple2| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Value)))))) (= (_module.Arm.Valid $Heap@@3 this@@6)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Repr)) ($Box refType this@@6)) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.polar)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.azim)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Repr)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.polar)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.azim)))) (not true))) (|_System.Tuple2#Equal| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.Value)) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.polar))) _module.Cell.val) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@6) _module.Arm.azim))) _module.Cell.val)))))))
 :qid |FlyingRobotsdfy.57:19|
 :skolemid |767|
 :pattern ( (_module.Arm.Valid $Heap@@3 this@@6) ($IsGoodHeap $Heap@@3))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) ) (!  (=> (or (|_module.Bot.Valid#canCall| $Heap@@4 this@@7) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Bot) ($IsAlloc refType this@@7 Tclass._module.Bot $Heap@@4)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)) ($Box refType this@@7)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos)) (=> (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right)))) (not true)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr))) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right))) _module.Arm.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr))) (=> (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr))) (=> (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr))) (=> (|Set#Disjoint| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right))) _module.Arm.Repr))) (and (|_module.Point.Valid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) (=> (_module.Point.Valid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) (and (|_module.Arm.Valid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) (=> (_module.Arm.Valid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) (|_module.Arm.Valid#canCall| $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right))))))))))))))))) (= (_module.Bot.Valid true $Heap@@4 this@@7)  (and (and (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)) ($Box refType this@@7)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right)))) (not true))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)))) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right))) _module.Arm.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.Repr)))) (and (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr)))) (|Set#Disjoint| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos))) _module.Point.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left))) _module.Arm.Repr))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right))) _module.Arm.Repr))))) (_module.Point.Valid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.pos)))) (_module.Arm.Valid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.left)))) (_module.Arm.Valid $Heap@@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 this@@7) _module.Bot.right)))))))
 :qid |FlyingRobotsdfy.93:29|
 :skolemid |802|
 :pattern ( (_module.Bot.Valid true $Heap@@4 this@@7) ($IsGoodHeap $Heap@@4))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@0 () T@U)
(declare-fun |b0#0| () T@U)
(declare-fun |b1#0| () T@U)
(declare-fun |b2#0| () T@U)
(declare-fun $Heap@@5 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.FormArmy)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon9_correct  (=> (and (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr)))) (|Set#Disjoint| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b2#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) ($IsAlloc refType |b0#0| Tclass._module.Bot $Heap@@5)) (=> ($IsAlloc refType |b0#0| Tclass._module.Bot $Heap@@5) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($IsAlloc refType |b1#0| Tclass._module.Bot $Heap@@5)) (=> ($IsAlloc refType |b1#0| Tclass._module.Bot $Heap@@5) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc refType |b2#0| Tclass._module.Bot $Heap@@5)))))))))))))))))))))
(let ((anon13_Else_correct  (=> (and (not (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))))) (= (ControlFlow 0 15) 2)) anon9_correct)))
(let ((anon13_Then_correct  (=> (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> (= (ControlFlow 0 11) 2) anon9_correct))))))))))
(let ((anon12_Else_correct  (=> (not (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 19) 11) anon13_Then_correct) (=> (= (ControlFlow 0 19) 15) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |b1#0|) _module.Bot.Repr))) (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) 11) anon13_Then_correct) (=> (= (ControlFlow 0 16) 15) anon13_Else_correct)))))))))
(let ((anon5_correct  (=> (and (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr)))) (|Set#Disjoint| (|Set#Union| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b2#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 20) (- 0 28)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 27)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 26)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@41 T@U) ) (!  (=> (and (or (not (= $o@@41 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@41) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@41) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 $o@@41)) (or (or (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Box refType $o@@41)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr)) ($Box refType $o@@41))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b2#0|) _module.Bot.Repr)) ($Box refType $o@@41)))))
 :qid |FlyingRobotsdfy.245:8|
 :skolemid |678|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@41))
)) ($HeapSucc $Heap@@5 $Heap@0))) (and (=> (= (ControlFlow 0 20) (- 0 25)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b0#0|) Tclass._module.Bot? $Heap@0) (=> (and (|_module.Bot.Valid#canCall| $Heap@0 |b0#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@0 |b0#0|)) (and (=> (= (ControlFlow 0 20) (- 0 24)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b1#0|) Tclass._module.Bot? $Heap@0) (=> (and (|_module.Bot.Valid#canCall| $Heap@0 |b1#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@0 |b1#0|)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b2#0|) Tclass._module.Bot? $Heap@0) (=> (and (|_module.Bot.Valid#canCall| $Heap@0 |b2#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@0 |b2#0|)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 20) 16) anon12_Then_correct) (=> (= (ControlFlow 0 20) 19) anon12_Else_correct))))))))))))))))))))))))))))
(let ((anon11_Else_correct  (=> (and (not (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))))) (= (ControlFlow 0 33) 20)) anon5_correct)))
(let ((anon11_Then_correct  (=> (and (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))) (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 29) (- 0 32)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 31)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> (= (ControlFlow 0 29) 20) anon5_correct))))))))))
(let ((anon10_Else_correct  (=> (not (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 37) 29) anon11_Then_correct) (=> (= (ControlFlow 0 37) 33) anon11_Else_correct)))))
(let ((anon10_Then_correct  (=> (|Set#Disjoint| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr))) (and (=> (= (ControlFlow 0 34) (- 0 36)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 34) 29) anon11_Then_correct) (=> (= (ControlFlow 0 34) 33) anon11_Else_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#12| null $Heap@@5 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b0#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b1#0|) _module.Bot.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |b2#0|) _module.Bot.Repr)))) (and (=> (= (ControlFlow 0 38) (- 0 43)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b0#0|) Tclass._module.Bot? $Heap@@5) (=> (and (|_module.Bot.Valid#canCall| $Heap@@5 |b0#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@@5 |b0#0|)) (and (=> (= (ControlFlow 0 38) (- 0 42)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b1#0|) Tclass._module.Bot? $Heap@@5) (=> (and (|_module.Bot.Valid#canCall| $Heap@@5 |b1#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@@5 |b1#0|)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (or (not (= |b2#0| null)) (not true))) (=> (or (not (= |b2#0| null)) (not true)) (=> ($IsAllocBox ($Box refType |b2#0|) Tclass._module.Bot? $Heap@@5) (=> (and (|_module.Bot.Valid#canCall| $Heap@@5 |b2#0|) (_module.Bot.Valid reveal__module.Bot.Valid $Heap@@5 |b2#0|)) (and (=> (= (ControlFlow 0 38) (- 0 40)) (or (not (= |b0#0| null)) (not true))) (=> (or (not (= |b0#0| null)) (not true)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= |b1#0| null)) (not true))) (=> (or (not (= |b1#0| null)) (not true)) (and (=> (= (ControlFlow 0 38) 34) anon10_Then_correct) (=> (= (ControlFlow 0 38) 37) anon10_Else_correct)))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@5) ($IsHeapAnchor $Heap@@5)) (=> (and (and (and ($Is refType |b0#0| Tclass._module.Bot) ($IsAlloc refType |b0#0| Tclass._module.Bot $Heap@@5)) (and ($Is refType |b1#0| Tclass._module.Bot) ($IsAlloc refType |b1#0| Tclass._module.Bot $Heap@@5))) (and (and ($Is refType |b2#0| Tclass._module.Bot) ($IsAlloc refType |b2#0| Tclass._module.Bot $Heap@@5)) (and (= 8 $FunctionContextHeight) (= (ControlFlow 0 44) 38)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
