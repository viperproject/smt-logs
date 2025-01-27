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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.Shape? () T@U)
(declare-fun Tagclass._module.Shape () T@U)
(declare-fun Tagclass._module.Square () T@U)
(declare-fun Tagclass._module.Square? () T@U)
(declare-fun Tagclass._module.Circle () T@U)
(declare-fun Tagclass._module.Circle? () T@U)
(declare-fun class._module.Square? () T@U)
(declare-fun class._module.Circle? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Shape () T@U)
(declare-fun tytagFamily$Square () T@U)
(declare-fun tytagFamily$Circle () T@U)
(declare-fun field$x1 () T@U)
(declare-fun field$y1 () T@U)
(declare-fun field$x2 () T@U)
(declare-fun field$y2 () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Square.Center (T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Square.Center#canCall| (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Square () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.Square.x1 () T@U)
(declare-fun _module.Square.x2 () T@U)
(declare-fun _module.Square.y1 () T@U)
(declare-fun _module.Square.y2 () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun implements$_module.Shape (T@U) Bool)
(declare-fun Tclass._module.Square? () T@U)
(declare-fun Tclass._module.Circle? () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Shape? () T@U)
(declare-fun Tclass._module.Shape () T@U)
(declare-fun Tclass._module.Circle () T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Circle.x () T@U)
(declare-fun _module.Circle.y () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun IndexField (Int) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun _module.Circle.Center (T@U T@U) T@U)
(declare-fun |_module.Circle.Center#canCall| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal alloc allocName Tagclass._System.nat Tagclass._System.array? Tagclass._System.array |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Shape? Tagclass._module.Shape Tagclass._module.Square Tagclass._module.Square? Tagclass._module.Circle Tagclass._module.Circle? class._module.Square? class._module.Circle? tytagFamily$nat tytagFamily$array |tytagFamily$_tuple#2| tytagFamily$Shape tytagFamily$Square tytagFamily$Circle field$x1 field$y1 field$x2 field$y2 field$x field$y)
)
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Square.Center#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Square) ($IsAlloc refType this Tclass._module.Square $Heap)))))) (= (_module.Square.Center $Heap this) (let ((|x#0| (/ (+ (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Square.x1))) (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Square.x2)))) 2.0)))
(let ((|y#0| (/ (+ (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Square.y1))) (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Square.y2)))) 2.0)))
(|#_System._tuple#2._#Make2| ($Box realType (real_2_U |x#0|)) ($Box realType (real_2_U |y#0|)))))))
 :qid |Polydfy.19:12|
 :skolemid |595|
 :pattern ( (_module.Square.Center $Heap this) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0@@0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (implements$_module.Shape Tclass._module.Square?))
(assert (implements$_module.Shape Tclass._module.Circle?))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Square?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Square?)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($Is refType $o@@0 Tclass._module.Square?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.Circle?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.Circle?)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($Is refType $o@@1 Tclass._module.Circle?))
)))
(assert (forall ((bx T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Square? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx Tclass._module.Shape? $h@@1))
 :qid |unknown.0:0|
 :skolemid |621|
 :pattern ( ($IsAllocBox bx Tclass._module.Square? $h@@1))
)))
(assert (forall ((bx@@0 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass._module.Circle? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@0 Tclass._module.Shape? $h@@2))
 :qid |unknown.0:0|
 :skolemid |625|
 :pattern ( ($IsAllocBox bx@@0 Tclass._module.Circle? $h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Shape $h@@3) ($IsAlloc refType |c#0@@0| Tclass._module.Shape? $h@@3))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Shape $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Shape? $h@@3))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Square $h@@4) ($IsAlloc refType |c#0@@1| Tclass._module.Square? $h@@4))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Square $h@@4))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Square? $h@@4))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.Circle $h@@5) ($IsAlloc refType |c#0@@2| Tclass._module.Circle? $h@@5))
 :qid |unknown.0:0|
 :skolemid |619|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Circle $h@@5))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.Circle? $h@@5))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@2 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@6)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._System.array? _System.array$arg@@1) $h@@6))
)))
(assert (= (FDim _module.Square.x1) 0))
(assert (= (FieldOfDecl class._module.Square? field$x1) _module.Square.x1))
(assert  (not ($IsGhostField _module.Square.x1)))
(assert (= (FDim _module.Square.y1) 0))
(assert (= (FieldOfDecl class._module.Square? field$y1) _module.Square.y1))
(assert  (not ($IsGhostField _module.Square.y1)))
(assert (= (FDim _module.Square.x2) 0))
(assert (= (FieldOfDecl class._module.Square? field$x2) _module.Square.x2))
(assert  (not ($IsGhostField _module.Square.x2)))
(assert (= (FDim _module.Square.y2) 0))
(assert (= (FieldOfDecl class._module.Square? field$y2) _module.Square.y2))
(assert  (not ($IsGhostField _module.Square.y2)))
(assert (= (FDim _module.Circle.x) 0))
(assert (= (FieldOfDecl class._module.Circle? field$x) _module.Circle.x))
(assert  (not ($IsGhostField _module.Circle.x)))
(assert (= (FDim _module.Circle.y) 0))
(assert (= (FieldOfDecl class._module.Circle? field$y) _module.Circle.y))
(assert  (not ($IsGhostField _module.Circle.y)))
(assert (forall (($o@@3 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Shape? $h@@7)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Shape? $h@@7))
)))
(assert (forall (($o@@4 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Square? $h@@8)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Square? $h@@8))
)))
(assert (forall (($o@@5 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.Circle? $h@@9)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.Circle? $h@@9))
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
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 Real) ) (! (= (LitReal x@@6) x@@6)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@10)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@10) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@10))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@10))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@11 T@U) ($o@@6 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) (IndexField $i0)) _System.array$arg@@2 $h@@11))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@6) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@2 T@U) (x@@9 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@9 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@2 x@@9) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@2 x@@9) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall (($h@@12 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Square?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) _module.Square.x1)) TReal $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |581|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@7) _module.Square.x1)))
)))
(assert (forall (($h@@13 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Square?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.Square.y1)) TReal $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |583|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@8) _module.Square.y1)))
)))
(assert (forall (($h@@14 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Square?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.Square.x2)) TReal $h@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |585|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@9) _module.Square.x2)))
)))
(assert (forall (($h@@15 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Square?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Square.y2)) TReal $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |587|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@10) _module.Square.y2)))
)))
(assert (forall (($h@@16 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Circle?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.Circle.x)) TReal $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |603|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@11) _module.Circle.x)))
)))
(assert (forall (($h@@17 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass._module.Circle?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.Circle.y)) TReal $h@@17))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |605|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@12) _module.Circle.y)))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Shape?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Shape?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@3 Tclass._module.Shape?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Shape) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Shape)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@4 Tclass._module.Shape))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Square) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Square)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsBox bx@@5 Tclass._module.Square))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Square?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Square?)))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsBox bx@@6 Tclass._module.Square?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Circle) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Circle)))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsBox bx@@7 Tclass._module.Circle))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Circle?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Circle?)))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsBox bx@@8 Tclass._module.Circle?))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@13 T@U) ) (! (= ($Is refType $o@@13 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@13 null) (= (dtype $o@@13) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@13 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Shape)  (and ($Is refType |c#0@@4| Tclass._module.Shape?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Shape))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Shape?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Square)  (and ($Is refType |c#0@@5| Tclass._module.Square?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Square))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Square?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.Circle)  (and ($Is refType |c#0@@6| Tclass._module.Circle?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |618|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Circle))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.Circle?))
)))
(assert (forall (($o@@14 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@14 Tclass._module.Square? $heap) ($IsAlloc refType $o@@14 Tclass._module.Shape? $heap))
 :qid |unknown.0:0|
 :skolemid |623|
 :pattern ( ($IsAlloc refType $o@@14 Tclass._module.Square? $heap))
)))
(assert (forall (($o@@15 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@15 Tclass._module.Circle? $heap@@0) ($IsAlloc refType $o@@15 Tclass._module.Shape? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsAlloc refType $o@@15 Tclass._module.Circle? $heap@@0))
)))
(assert (forall ((a@@3 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b) ($HeapSucc b c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@3 b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TReal) (and (= ($Box realType ($Unbox realType bx@@10)) bx@@10) ($Is realType ($Unbox realType bx@@10) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@10 TReal))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array.Length o@@2))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
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
(assert (forall ((a@@4 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@10) x@@10) (+ (|MultiSet#Multiplicity| a@@4 x@@10) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@10))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@11 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@11)) x@@11)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@11))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@16)) TInt $h@@18))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@19 T@U) ($o@@17 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@17)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall (($h@@20 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass._module.Square?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) _module.Square.x1)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |580|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) _module.Square.x1)))
)))
(assert (forall (($h@@21 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass._module.Square?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) _module.Square.y1)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |582|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) _module.Square.y1)))
)))
(assert (forall (($h@@22 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass._module.Square?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) _module.Square.x2)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |584|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) _module.Square.x2)))
)))
(assert (forall (($h@@23 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) Tclass._module.Square?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) _module.Square.y2)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |586|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) _module.Square.y2)))
)))
(assert (forall (($h@@24 T@U) ($o@@22 T@U) ) (!  (=> (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) Tclass._module.Circle?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@22) _module.Circle.x)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |602|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@22) _module.Circle.x)))
)))
(assert (forall (($h@@25 T@U) ($o@@23 T@U) ) (!  (=> (and ($IsGoodHeap $h@@25) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) Tclass._module.Circle?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@23) _module.Circle.y)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |604|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@25 $o@@23) _module.Circle.y)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Square.Center#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Square) ($IsAlloc refType this@@0 Tclass._module.Square $Heap@@0)))))) ($Is DatatypeTypeType (_module.Square.Center $Heap@@0 this@@0) (Tclass._System.Tuple2 TReal TReal)))
 :qid |Polydfy.19:12|
 :skolemid |593|
 :pattern ( (_module.Square.Center $Heap@@0 this@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Circle.Center#canCall| $Heap@@1 this@@1) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Circle) ($IsAlloc refType this@@1 Tclass._module.Circle $Heap@@1)))))) ($Is DatatypeTypeType (_module.Circle.Center $Heap@@1 this@@1) (Tclass._System.Tuple2 TReal TReal)))
 :qid |Polydfy.33:12|
 :skolemid |613|
 :pattern ( (_module.Circle.Center $Heap@@1 this@@1))
))))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@11)) bx@@11) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@11) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@24 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f))  (=> (and (or (not (= $o@@24 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@24) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |628|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@24 $f))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@2 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass._module.Square))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@25 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (= $o@@25 this@@2)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@25) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@25) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |591|
)) (= (_module.Square.Center $h0 this@@2) (_module.Square.Center $h1 this@@2))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |592|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Square.Center $h1 this@@2))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Circle))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@26 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (= $o@@26 this@@3)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@26) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@26) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |611|
)) (= (_module.Circle.Center $h0@@0 this@@3) (_module.Circle.Center $h1@@0 this@@3))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |612|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Circle.Center $h1@@0 this@@3))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Circle.Center#canCall| $Heap@@2 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Circle) ($IsAlloc refType this@@4 Tclass._module.Circle $Heap@@2)))))) (= (_module.Circle.Center $Heap@@2 this@@4) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Circle.x) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.Circle.y))))
 :qid |Polydfy.33:12|
 :skolemid |615|
 :pattern ( (_module.Circle.Center $Heap@@2 this@@4) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@12 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@13 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall (($o@@27 T@U) ) (!  (=> ($Is refType $o@@27 Tclass._module.Square?) ($Is refType $o@@27 Tclass._module.Shape?))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( ($Is refType $o@@27 Tclass._module.Square?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass._module.Square?) ($IsBox bx@@14 Tclass._module.Shape?))
 :qid |unknown.0:0|
 :skolemid |620|
 :pattern ( ($IsBox bx@@14 Tclass._module.Square?))
)))
(assert (forall (($o@@28 T@U) ) (!  (=> ($Is refType $o@@28 Tclass._module.Circle?) ($Is refType $o@@28 Tclass._module.Shape?))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($Is refType $o@@28 Tclass._module.Circle?))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 Tclass._module.Circle?) ($IsBox bx@@15 Tclass._module.Shape?))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( ($IsBox bx@@15 Tclass._module.Circle?))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@12 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@12))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@12))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@12)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Shape?) Tagclass._module.Shape?))
(assert (= (TagFamily Tclass._module.Shape?) tytagFamily$Shape))
(assert (= (Tag Tclass._module.Shape) Tagclass._module.Shape))
(assert (= (TagFamily Tclass._module.Shape) tytagFamily$Shape))
(assert (= (Tag Tclass._module.Square) Tagclass._module.Square))
(assert (= (TagFamily Tclass._module.Square) tytagFamily$Square))
(assert (= (Tag Tclass._module.Square?) Tagclass._module.Square?))
(assert (= (TagFamily Tclass._module.Square?) tytagFamily$Square))
(assert (= (Tag Tclass._module.Circle) Tagclass._module.Circle))
(assert (= (TagFamily Tclass._module.Circle) tytagFamily$Circle))
(assert (= (Tag Tclass._module.Circle?) Tagclass._module.Circle?))
(assert (= (TagFamily Tclass._module.Circle?) tytagFamily$Circle))
(assert (forall (($o@@29 T@U) ) (! (= ($Is refType $o@@29 Tclass._module.Shape?)  (or (= $o@@29 null) (implements$_module.Shape (dtype $o@@29))))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($Is refType $o@@29 Tclass._module.Shape?))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@26 T@U) ) (!  (=> (and ($IsGoodHeap $h@@26) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@26)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@26))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@26))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@26))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@27 T@U) ) (!  (=> (and ($IsGoodHeap $h@@27) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@27)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@27))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@27))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@27))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@13 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@13))) (Lit BoxType ($Box intType (int_2_U x@@13))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@13))))
)))
(assert (forall ((x@@14 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@14))) (Lit BoxType ($Box realType (real_2_U x@@14))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@14))))
)))
(assert (forall ((x@@15 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@15)) (Lit BoxType ($Box T@@5 x@@15)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@15)))
)))
(assert (forall ((a@@5 T@U) (x@@16 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@5 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@16) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@16) (|MultiSet#Multiplicity| a@@5 y@@1))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((a@@6 T@U) (x@@17 T@U) (o@@4 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@17) o@@4))  (or (= o@@4 x@@17) (< 0 (|MultiSet#Multiplicity| a@@6 o@@4))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@17) o@@4))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc realType v@@4 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@4 TReal h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is realType v@@6 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@6 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |x1##0@0| () Real)
(declare-fun |y1##0@0| () Real)
(declare-fun |x2##0@0| () Real)
(declare-fun |y2##0@0| () Real)
(declare-fun call5formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun call5formal@this@0 () T@U)
(declare-fun |x##0@0| () Real)
(declare-fun |y##0@0| () Real)
(declare-fun |r##0@0| () Real)
(declare-fun call4formal@this () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |shapes##1@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |shapes##2@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |shapes##3@0| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |defass#square#0| () Bool)
(declare-fun |square#0| () T@U)
(declare-fun |defass#circle#0| () Bool)
(declare-fun |circle#0| () T@U)
(declare-fun |shapes#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@3 alloc false)) (=> (and (and (and (and (= |x1##0@0| (LitReal 0.0)) (= |y1##0@0| (LitReal 1.0))) (and (= |x2##0@0| (LitReal 1.0)) (= |y2##0@0| (LitReal 0.0)))) (and (and (or (not (= call5formal@this null)) (not true)) (and ($Is refType call5formal@this Tclass._module.Square) ($IsAlloc refType call5formal@this Tclass._module.Square $Heap@@3))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (and (and (or (not (= call5formal@this@0 null)) (not true)) (and ($Is refType call5formal@this@0 Tclass._module.Square) ($IsAlloc refType call5formal@this@0 Tclass._module.Square $Heap@0))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 call5formal@this@0) alloc))))) (and (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 $o@@30)))
 :qid |Polydfy.13:3|
 :skolemid |589|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@30))
)) ($HeapSucc $Heap@@3 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= call5formal@this@0 null)) (not true))) (=> ($IsAllocBox ($Box refType call5formal@this@0) Tclass._module.Square? $Heap@0) (=> (and (|_module.Square.Center#canCall| $Heap@0 call5formal@this@0) (_System.Tuple2.___hMake2_q (_module.Square.Center $Heap@0 call5formal@this@0))) (=> (and (and (and (and (|_module.Square.Center#canCall| $Heap@0 call5formal@this@0) (= |x##0@0| (LitReal 1.0))) (and (= |y##0@0| (LitReal 1.0)) (= |r##0@0| (LitReal 4.0)))) (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this Tclass._module.Circle) ($IsAlloc refType call4formal@this Tclass._module.Circle $Heap@@3))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 Tclass._module.Circle) ($IsAlloc refType call4formal@this@0 Tclass._module.Circle $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call4formal@this@0) alloc))))) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31)))
 :qid |Polydfy.28:3|
 :skolemid |609|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@31))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) true) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= call4formal@this@0 null)) (not true))) (=> (and (and ($IsAllocBox ($Box refType call4formal@this@0) Tclass._module.Circle? $Heap@1) (|_module.Circle.Center#canCall| $Heap@1 call4formal@this@0)) (and (_System.Tuple2.___hMake2_q (_module.Circle.Center $Heap@1 call4formal@this@0)) (|_module.Circle.Center#canCall| $Heap@1 call4formal@this@0))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (<= 0 (LitInt 2))) (=> (<= 0 (LitInt 2)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.Shape?))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 2)) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) true) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField (LitInt 0)) ($Box refType call5formal@this@0)))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 1))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 1)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (=> (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField (LitInt 1)) ($Box refType call4formal@this@0)))) ($IsGoodHeap $Heap@4)) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@32)))
 :qid |Polydfy.38:8|
 :skolemid |481|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@32))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 11)) true) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (=> (= |shapes##1@0| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box refType call5formal@this@0)) ($Box refType call4formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@33)))
 :qid |Polydfy.51:8|
 :skolemid |488|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@33))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (= |shapes##2@0| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType call5formal@this@0)) ($Box refType call4formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@34)))
 :qid |Polydfy.74:8|
 :skolemid |503|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@34))
)) ($HeapSucc $Heap@6 $Heap@7))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (=> (= |shapes##3@0| (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box refType call5formal@this@0)) ($Box refType call4formal@this@0))) (=> (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@35) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@35) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@35)))
 :qid |Polydfy.98:8|
 :skolemid |524|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@35))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat) (=> (= (ControlFlow 0 2) (- 0 1)) true))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (=> |defass#square#0| (and ($Is refType |square#0| Tclass._module.Square) ($IsAlloc refType |square#0| Tclass._module.Square $Heap@@3))) true) (and (=> |defass#circle#0| (and ($Is refType |circle#0| Tclass._module.Circle) ($IsAlloc refType |circle#0| Tclass._module.Circle $Heap@@3))) true)) (=> (and (and (and ($Is refType |shapes#0| (Tclass._System.array Tclass._module.Shape?)) ($IsAlloc refType |shapes#0| (Tclass._System.array Tclass._module.Shape?) $Heap@@3)) true) (and (= 5 $FunctionContextHeight) (= (ControlFlow 0 25) 2))) anon0_correct)))))
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
