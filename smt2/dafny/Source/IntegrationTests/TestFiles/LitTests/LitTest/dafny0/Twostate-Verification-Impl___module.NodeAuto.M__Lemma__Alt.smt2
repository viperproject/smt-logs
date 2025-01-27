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
(declare-fun class._module.NodeAuto? () T@U)
(declare-fun Tagclass._module.NodeAuto? () T@U)
(declare-fun Tagclass._module.NodeAuto () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$NodeAuto () T@U)
(declare-fun field$x () T@U)
(declare-fun field$next () T@U)
(declare-fun field$Repr () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |_System.Tuple2#Equal| (T@U T@U) Bool)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.NodeAuto? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.NodeAuto () T@U)
(declare-fun _module.NodeAuto.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.NodeAuto.x () T@U)
(declare-fun _module.NodeAuto.next () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.NodeAuto.Sum (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun _module.NodeAuto.Valid (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.NodeAuto.Valid#canCall| (T@U T@U) Bool)
(declare-fun |_module.NodeAuto.Sum#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 class._module.NodeAuto? Tagclass._module.NodeAuto? Tagclass._module.NodeAuto tytagFamily$object |tytagFamily$_tuple#2| tytagFamily$NodeAuto field$x field$next field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |1360|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_System.Tuple2#Equal| a b)  (and (= (_System.Tuple2._0 a) (_System.Tuple2._0 b)) (= (_System.Tuple2._1 a) (_System.Tuple2._1 b))))
 :qid |unknown.0:0|
 :skolemid |1361|
 :pattern ( (|_System.Tuple2#Equal| a b))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.NodeAuto?)  (or (= $o null) (= (dtype $o) Tclass._module.NodeAuto?)))
 :qid |unknown.0:0|
 :skolemid |1644|
 :pattern ( ($Is refType $o Tclass._module.NodeAuto?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1243|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.NodeAuto $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.NodeAuto? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1709|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NodeAuto $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.NodeAuto? $h@@0))
)))
(assert (= (FDim _module.NodeAuto.Repr) 0))
(assert (= (FieldOfDecl class._module.NodeAuto? field$Repr) _module.NodeAuto.Repr))
(assert ($IsGhostField _module.NodeAuto.Repr))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |1348|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim _module.NodeAuto.x) 0))
(assert (= (FieldOfDecl class._module.NodeAuto? field$x) _module.NodeAuto.x))
(assert  (not ($IsGhostField _module.NodeAuto.x)))
(assert (= (FDim _module.NodeAuto.next) 0))
(assert (= (FieldOfDecl class._module.NodeAuto? field$next) _module.NodeAuto.next))
(assert  (not ($IsGhostField _module.NodeAuto.next)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1240|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.NodeAuto? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1645|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.NodeAuto? $h@@2))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_System.Tuple2#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1362|
 :pattern ( (|_System.Tuple2#Equal| a@@0 b@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1002|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1003|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |899|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@1 b@@1) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a@@1 o@@0) (|Set#IsMember| b@@1 o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1030|
 :pattern ( (|Set#IsMember| a@@1 o@@0))
 :pattern ( (|Set#IsMember| b@@1 o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1031|
 :pattern ( (|Set#Subset| a@@1 b@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@3 T@U) ) (!  (=> ($IsGoodHeap $h@@3) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@3) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@3))))
 :qid |unknown.0:0|
 :skolemid |1349|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |1341|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |910|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |1342|
)))
 :qid |unknown.0:0|
 :skolemid |1343|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |930|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |931|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall (($ly T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.NodeAuto))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) _module.NodeAuto.Repr)) ($Box refType $o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |1671|
)) (= (_module.NodeAuto.Sum $ly $h0 this) (_module.NodeAuto.Sum $ly $h1 this))))
 :qid |unknown.0:0|
 :skolemid |1672|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.NodeAuto.Sum $ly $h1 this))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.NodeAuto?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.NodeAuto.x)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1647|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.NodeAuto.x)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |923|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |995|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |994|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.NodeAuto?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.NodeAuto.next)) Tclass._module.NodeAuto?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1648|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.NodeAuto.next)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1241|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.NodeAuto?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.NodeAuto?)))
 :qid |unknown.0:0|
 :skolemid |1643|
 :pattern ( ($IsBox bx@@3 Tclass._module.NodeAuto?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.NodeAuto) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.NodeAuto)))
 :qid |unknown.0:0|
 :skolemid |1651|
 :pattern ( ($IsBox bx@@4 Tclass._module.NodeAuto))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.NodeAuto)  (and ($Is refType |c#0@@2| Tclass._module.NodeAuto?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1708|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NodeAuto))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.NodeAuto?))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.NodeAuto?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.NodeAuto.next)) Tclass._module.NodeAuto? $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1649|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.NodeAuto.next)))
)))
(assert (forall (($ly@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (! (= (_module.NodeAuto.Sum ($LS $ly@@0) $Heap this@@0) (_module.NodeAuto.Sum $ly@@0 $Heap this@@0))
 :qid |TwostateVerificationdfy.204:12|
 :skolemid |1669|
 :pattern ( (_module.NodeAuto.Sum ($LS $ly@@0) $Heap this@@0))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.NodeAuto?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.NodeAuto.Repr)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1700|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.NodeAuto.Repr)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.NodeAuto?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.NodeAuto.Repr)) (TSet Tclass._System.object?) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1701|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.NodeAuto.Repr)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1034|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@3 c)) (not true)) (=> (and ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@3 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1001|
 :pattern ( ($HeapSucc a@@3 b@@3) ($HeapSucc b@@3 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |991|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |911|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |922|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |951|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |952|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |1340|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |1345|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |1346|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |1355|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |1357|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |885|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |886|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@4 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |909|
 :pattern ( ($Box T@@4 x@@4))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.NodeAuto?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.NodeAuto.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1646|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.NodeAuto.x)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1356|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1358|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.NodeAuto))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (or (= $o@@10 this@@1) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 this@@1) _module.NodeAuto.Repr)) ($Box refType $o@@10)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@10) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@10) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1702|
)) (= (_module.NodeAuto.Valid $h0@@0 this@@1) (_module.NodeAuto.Valid $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1703|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.NodeAuto.Valid $h1@@0 this@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |1347|
 :pattern ( ($IsBox bx@@7 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@11 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@1))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1821|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f@@1))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |1344|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |968|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@8 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |916|
 :pattern ( ($IsBox bx@@8 (TSet t@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.NodeAuto.Valid#canCall| $Heap@@0 this@@2) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.NodeAuto) ($IsAlloc refType this@@2 Tclass._module.NodeAuto $Heap@@0)))))) (=> (_module.NodeAuto.Valid $Heap@@0 this@@2) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.NodeAuto.Repr)) ($Box refType this@@2))))
 :qid |TwostateVerificationdfy.189:24|
 :skolemid |1704|
 :pattern ( (_module.NodeAuto.Valid $Heap@@0 this@@2))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.NodeAuto?) Tagclass._module.NodeAuto?))
(assert (= (TagFamily Tclass._module.NodeAuto?) tytagFamily$NodeAuto))
(assert (= (Tag Tclass._module.NodeAuto) Tagclass._module.NodeAuto))
(assert (= (TagFamily Tclass._module.NodeAuto) tytagFamily$NodeAuto))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@4 b@@4) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@4 o@@1) (|Set#IsMember| b@@4 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1032|
 :pattern ( (|Set#IsMember| a@@4 o@@1))
 :pattern ( (|Set#IsMember| b@@4 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1033|
 :pattern ( (|Set#Equal| a@@4 b@@4))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |1350|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@10))
 :qid |unknown.0:0|
 :skolemid |1351|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@10))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |1352|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@11))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@11))
 :qid |unknown.0:0|
 :skolemid |1353|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@11))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |1354|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@5)) (Lit BoxType ($Box T@@5 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |900|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.NodeAuto.Sum#canCall| $Heap@@1 this@@3) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.NodeAuto) ($IsAlloc refType this@@3 Tclass._module.NodeAuto $Heap@@1)))) (_module.NodeAuto.Valid $Heap@@1 this@@3)))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.next)) null)) (not true)) (|_module.NodeAuto.Sum#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.next)))) (= (_module.NodeAuto.Sum ($LS $ly@@1) $Heap@@1 this@@3) (ite (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.next)) null) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.x))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.x))) (_module.NodeAuto.Sum $ly@@1 $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@3) _module.NodeAuto.next))))))))
 :qid |TwostateVerificationdfy.204:12|
 :skolemid |1675|
 :pattern ( (_module.NodeAuto.Sum ($LS $ly@@1) $Heap@@1 this@@3) ($IsGoodHeap $Heap@@1))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.NodeAuto.Valid#canCall| $Heap@@2 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.NodeAuto) ($IsAlloc refType this@@4 Tclass._module.NodeAuto $Heap@@2)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) ($Box refType this@@4)) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) ($Box refType null))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next)) null)) (not true)) (=> (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next)) (=> (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType this@@4))) (|_module.NodeAuto.Valid#canCall| $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))))))))) (= (_module.NodeAuto.Valid $Heap@@2 this@@4)  (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) ($Box refType this@@4)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) ($Box refType null)))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType this@@4))))) (_module.NodeAuto.Valid $Heap@@2 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@2 this@@4) _module.NodeAuto.next))))) true)))))
 :qid |TwostateVerificationdfy.189:24|
 :skolemid |1706|
 :pattern ( (_module.NodeAuto.Valid $Heap@@2 this@@4) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |945|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |924|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun current$Heap () T@U)
(declare-fun this@@5 () T@U)
(declare-fun $LZ () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun |node#0| () T@U)
(declare-fun call0formal@previous$Heap@0 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.NodeAuto.M__Lemma__Alt)
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
 (=> (= (ControlFlow 0 0) 28) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType this@@5))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType this@@5)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType null)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType this@@5))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType this@@5)))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (_module.NodeAuto.Valid current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (_module.NodeAuto.Valid current$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.next)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| current$Heap this@@5) (or (_module.NodeAuto.Valid current$Heap this@@5) (U_2_bool (Lit boolType (bool_2_U true))))) (=> (= (ControlFlow 0 2) (- 0 1)) (<= (_module.NodeAuto.Sum ($LS ($LS $LZ)) previous$Heap this@@5) (_module.NodeAuto.Sum ($LS ($LS $LZ)) current$Heap this@@5)))))))))))))))))))
(let ((anon3_Else_correct  (=> (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) null) (= (ControlFlow 0 26) 2)) GeneratedUnifiedExit_correct)))
(let ((anon3_Then_correct  (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 25)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 24)) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) Tclass._module.NodeAuto? $Heap@@3)) (=> ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)) Tclass._module.NodeAuto? $Heap@@3) (and (=> (= (ControlFlow 0 10) (- 0 23)) ($IsAlloc refType |node#0| Tclass._module.NodeAuto $Heap@@3)) (=> ($IsAlloc refType |node#0| Tclass._module.NodeAuto $Heap@@3) (and (=> (= (ControlFlow 0 10) (- 0 22)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@5) _module.NodeAuto.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@5) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)))))) (=> (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@5) _module.NodeAuto.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 this@@5) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr))))) (=> (and (= call0formal@previous$Heap@0 $Heap@@3) (= call2formal@this@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@5) _module.NodeAuto.next)))) (and (=> (= (ControlFlow 0 10) (- 0 21)) ($IsAlloc refType |node#0| Tclass._module.NodeAuto call0formal@previous$Heap@0)) (=> ($IsAlloc refType |node#0| Tclass._module.NodeAuto call0formal@previous$Heap@0) (and (=> (= (ControlFlow 0 10) (- 0 20)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0)))) (and (=> (= (ControlFlow 0 10) (- 0 19)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType null)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType null))))) (and (=> (= (ControlFlow 0 10) (- 0 18)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))))) (and (=> (= (ControlFlow 0 10) (- 0 17)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)))))) (and (=> (= (ControlFlow 0 10) (- 0 16)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0)))))) (and (=> (= (ControlFlow 0 10) (- 0 15)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (_module.NodeAuto.Valid call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next))))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (_module.NodeAuto.Valid call0formal@previous$Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.next)))))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (U_2_bool (Lit boolType (bool_2_U true)))))) (=> (=> (|_module.NodeAuto.Valid#canCall| call0formal@previous$Heap@0 call2formal@this@0) (or (_module.NodeAuto.Valid call0formal@previous$Heap@0 call2formal@this@0) (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.x))))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.x)))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.Repr)) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.Repr)))) (=> (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |node#0|) _module.NodeAuto.Repr)) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |node#0|) _module.NodeAuto.Repr))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| Tclass._module.NodeAuto) (and (and (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1|)) (or (not (= |n#1| |node#0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.x))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1|)) (or (not (= |n#1| |node#0|)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.next))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1|)) (or (not (= |n#1| |node#0|)) (not true))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.Repr))))))
 :qid |TwostateVerificationdfy.231:21|
 :skolemid |1695|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.next)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1|) _module.NodeAuto.x)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1|) _module.NodeAuto.x)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1|)))
))) (=> (forall ((|n#1@@0| T@U) ) (!  (=> ($Is refType |n#1@@0| Tclass._module.NodeAuto) (and (and (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1@@0|)) (or (not (= |n#1@@0| |node#0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.x))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1@@0|)) (or (not (= |n#1@@0| |node#0|)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.next))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1@@0|)) (or (not (= |n#1@@0| |node#0|)) (not true))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.Repr))))))
 :qid |TwostateVerificationdfy.231:21|
 :skolemid |1695|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.next)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 |n#1@@0|) _module.NodeAuto.x)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#1@@0|) _module.NodeAuto.x)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) call0formal@previous$Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType |n#1@@0|)))
)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (|_module.NodeAuto.Valid#canCall| $Heap@0 call2formal@this@0) (=> (_module.NodeAuto.Valid $Heap@0 call2formal@this@0) (and (|_module.NodeAuto.Sum#canCall| call0formal@previous$Heap@0 call2formal@this@0) (|_module.NodeAuto.Sum#canCall| $Heap@0 call2formal@this@0))))) (=> (and (and (and (|_module.NodeAuto.Valid#canCall| $Heap@0 call2formal@this@0) (and (_module.NodeAuto.Valid $Heap@0 call2formal@this@0) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) ($Box refType null)))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.next)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.next)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType call2formal@this@0))))) (_module.NodeAuto.Valid $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0) _module.NodeAuto.next))))) true)))) (<= (_module.NodeAuto.Sum ($LS ($LS $LZ)) call0formal@previous$Heap@0 call2formal@this@0) (_module.NodeAuto.Sum ($LS ($LS $LZ)) $Heap@0 call2formal@this@0))) (and (= $Heap@0 $Heap@1) (= (ControlFlow 0 10) 2))) GeneratedUnifiedExit_correct))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null current$Heap alloc false)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= current$Heap $Heap@0) (forall ((|$ih#this0#0| T@U) ) (!  (=> (and (and ($Is refType |$ih#this0#0| Tclass._module.NodeAuto) (and (and (_module.NodeAuto.Valid $Heap@@3 |$ih#this0#0|) (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |node#0|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.x)))) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |node#0|) _module.NodeAuto.Repr)) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.Repr))))) (forall ((|n#2| T@U) ) (!  (=> ($Is refType |n#2| Tclass._module.NodeAuto) (and (and (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |$ih#this0#0|) _module.NodeAuto.Repr)) ($Box refType |n#2|)) (or (not (= |n#2| |node#0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.x))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |$ih#this0#0|) _module.NodeAuto.Repr)) ($Box refType |n#2|)) (or (not (= |n#2| |node#0|)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.next))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |$ih#this0#0|) _module.NodeAuto.Repr)) ($Box refType |n#2|)) (or (not (= |n#2| |node#0|)) (not true))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.Repr))))))
 :qid |TwostateVerificationdfy.231:21|
 :skolemid |1697|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.next)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |n#2|) _module.NodeAuto.x)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#2|) _module.NodeAuto.x)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |$ih#this0#0|) _module.NodeAuto.Repr)) ($Box refType |n#2|)))
)))) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |$ih#this0#0|) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap this@@5) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |$ih#this0#0|) _module.NodeAuto.Repr)))))) (and (_module.NodeAuto.Valid $Heap@0 |$ih#this0#0|) (<= (_module.NodeAuto.Sum ($LS $LZ) current$Heap |$ih#this0#0|) (_module.NodeAuto.Sum ($LS $LZ) $Heap@0 |$ih#this0#0|))))
 :qid |TwostateVerificationdfy.229:18|
 :skolemid |1698|
 :pattern ( (_module.NodeAuto.Sum ($LS $LZ) current$Heap |$ih#this0#0|))
 :pattern ( (_module.NodeAuto.Sum ($LS $LZ) $Heap@0 |$ih#this0#0|))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |$ih#this0#0|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |$ih#this0#0|) _module.NodeAuto.Repr)))
 :pattern ( (_module.NodeAuto.Valid current$Heap |$ih#this0#0|))
 :pattern ( (_module.NodeAuto.Valid $Heap@0 |$ih#this0#0|))
)))) (and (=> (= (ControlFlow 0 27) 10) anon3_Then_correct) (=> (= (ControlFlow 0 27) 26) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.NodeAuto) ($IsAlloc refType this@@5 Tclass._module.NodeAuto previous$Heap)))) (and (and ($Is refType |node#0| Tclass._module.NodeAuto) ($IsAlloc refType |node#0| Tclass._module.NodeAuto previous$Heap)) (= 2 $FunctionContextHeight))) (=> (and (and (and (and (= previous$Heap $Heap@@3) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) ($IsAlloc refType |node#0| Tclass._module.NodeAuto previous$Heap)) (and (|_module.NodeAuto.Valid#canCall| previous$Heap this@@5) (and (_module.NodeAuto.Valid previous$Heap this@@5) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType this@@5)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType null)))) (and (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.next)) null)) (not true)) (and (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.next)) (and (|Set#Subset| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr))) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.next))) _module.NodeAuto.Repr)) ($Box refType this@@5))))) (_module.NodeAuto.Valid previous$Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.next))))) true))))) (and (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |node#0|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.x)))) (|_System.Tuple2#Equal| (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |node#0|) _module.NodeAuto.Repr)) (|#_System._tuple#2._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.next) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |node#0|) _module.NodeAuto.Repr)))) (and (forall ((|n#1@@1| T@U) ) (!  (=> ($Is refType |n#1@@1| Tclass._module.NodeAuto) (and (and (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType |n#1@@1|)) (or (not (= |n#1@@1| |node#0|)) (not true))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.x))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.x))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType |n#1@@1|)) (or (not (= |n#1@@1| |node#0|)) (not true))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.next)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.next))))) (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType |n#1@@1|)) (or (not (= |n#1@@1| |node#0|)) (not true))) (|Set#Equal| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.Repr)) ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.Repr))))))
 :qid |TwostateVerificationdfy.231:21|
 :skolemid |1696|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.Repr)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.next)))
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.next)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |n#1@@1|) _module.NodeAuto.x)))
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |n#1@@1|) _module.NodeAuto.x)))
 :pattern ( (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap this@@5) _module.NodeAuto.Repr)) ($Box refType |n#1@@1|)))
)) (= (ControlFlow 0 28) 27)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
