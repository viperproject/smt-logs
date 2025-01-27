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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.ObjectTests () T@U)
(declare-fun Tagclass._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing () T@U)
(declare-fun class._module.ObjectTests? () T@U)
(declare-fun Tagclass._module.ObjectTests? () T@U)
(declare-fun tytagFamily$ObjectTests () T@U)
(declare-fun tytagFamily$Thing () T@U)
(declare-fun field$thing1 () T@U)
(declare-fun field$thing2 () T@U)
(declare-fun field$thing3 () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Thing? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.ObjectTests? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Thing () T@U)
(declare-fun Tclass._module.ObjectTests () T@U)
(declare-fun _module.ObjectTests.thing1 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ObjectTests.thing2 () T@U)
(declare-fun _module.ObjectTests.thing3 () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.ObjectTests.Valid (T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.ObjectTests.Valid#canCall| (T@U T@U) Bool)
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
(assert (distinct alloc allocName Tagclass._module.ObjectTests Tagclass._module.Thing? Tagclass._module.Thing class._module.ObjectTests? Tagclass._module.ObjectTests? tytagFamily$ObjectTests tytagFamily$Thing field$thing1 field$thing2 field$thing3)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Thing?)  (or (= $o null) (= (dtype $o) Tclass._module.Thing?)))
 :qid |unknown.0:0|
 :skolemid |1258|
 :pattern ( ($Is refType $o Tclass._module.Thing?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.ObjectTests?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.ObjectTests?)))
 :qid |unknown.0:0|
 :skolemid |1282|
 :pattern ( ($Is refType $o@@0 Tclass._module.ObjectTests?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Thing $h) ($IsAlloc refType |c#0| Tclass._module.Thing? $h))
 :qid |unknown.0:0|
 :skolemid |1280|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Thing $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Thing? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.ObjectTests $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.ObjectTests? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1369|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ObjectTests $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.ObjectTests? $h@@0))
)))
(assert (= (FDim _module.ObjectTests.thing1) 0))
(assert (= (FieldOfDecl class._module.ObjectTests? field$thing1) _module.ObjectTests.thing1))
(assert  (not ($IsGhostField _module.ObjectTests.thing1)))
(assert (= (FDim _module.ObjectTests.thing2) 0))
(assert (= (FieldOfDecl class._module.ObjectTests? field$thing2) _module.ObjectTests.thing2))
(assert  (not ($IsGhostField _module.ObjectTests.thing2)))
(assert (= (FDim _module.ObjectTests.thing3) 0))
(assert (= (FieldOfDecl class._module.ObjectTests? field$thing3) _module.ObjectTests.thing3))
(assert  (not ($IsGhostField _module.ObjectTests.thing3)))
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
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.Thing? $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1259|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.Thing? $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.ObjectTests? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1283|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.ObjectTests? $h@@2))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |678|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |679|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |586|
 :pattern ( ($Unbox T x@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@0 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@0 v t h@@0) ($IsAlloc T@@0 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@0 v t h@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) (or (or (= $o@@3 |l#3|) (= $o@@3 |l#4|)) (= $o@@3 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1380|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@3 $f))
)))
(assert (forall (($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.ObjectTests.thing1)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1284|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.ObjectTests.thing2)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1286|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ObjectTests.thing3)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1288|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ObjectTests.thing3)))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.Thing)  (and ($Is refType |c#0@@1| Tclass._module.Thing?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Thing))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.Thing?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.ObjectTests)  (and ($Is refType |c#0@@2| Tclass._module.ObjectTests?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1368|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ObjectTests))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.ObjectTests?))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.ObjectTests.thing1)) Tclass._module.Thing $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1285|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.ObjectTests.thing2)) Tclass._module.Thing $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1287|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.ObjectTests.thing3)) Tclass._module.Thing $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.ObjectTests.thing3)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |677|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |667|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@3 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |585|
 :pattern ( ($Box T@@1 x@@3))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.ObjectTests))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@10 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (= $o@@10 this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@10) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@10) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1290|
)) (= (_module.ObjectTests.Valid $h0 this) (_module.ObjectTests.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ObjectTests.Valid $h1 this))
)))
(assert (= (Tag Tclass._module.ObjectTests) Tagclass._module.ObjectTests))
(assert (= (TagFamily Tclass._module.ObjectTests) tytagFamily$ObjectTests))
(assert (= (Tag Tclass._module.Thing?) Tagclass._module.Thing?))
(assert (= (TagFamily Tclass._module.Thing?) tytagFamily$Thing))
(assert (= (Tag Tclass._module.Thing) Tagclass._module.Thing))
(assert (= (TagFamily Tclass._module.Thing) tytagFamily$Thing))
(assert (= (Tag Tclass._module.ObjectTests?) Tagclass._module.ObjectTests?))
(assert (= (TagFamily Tclass._module.ObjectTests?) tytagFamily$ObjectTests))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.ObjectTests.Valid#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.ObjectTests) ($IsAlloc refType this@@0 Tclass._module.ObjectTests $Heap)))))) (= (_module.ObjectTests.Valid $Heap this@@0)  (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing3)))) (not true)))))
 :qid |Foralldfy.238:19|
 :skolemid |1294|
 :pattern ( (_module.ObjectTests.Valid $Heap this@@0) ($IsGoodHeap $Heap))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(set-info :boogie-vc-id Impl$$_module.ObjectTests.Run)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@0 alloc ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (forall (($o@@11 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11) alloc)))) (or (or (= $o@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@11 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@1)))
 :qid |Foralldfy.260:15|
 :skolemid |1311|
))) (=> (forall (($o@@12 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@12) alloc)))) (or (or (= $o@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@12 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@12 $f@@2)))
 :qid |Foralldfy.260:15|
 :skolemid |1311|
)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (and (_module.ObjectTests.Valid $Heap@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@13) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@13)) (or (or (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@13 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.265:10|
 :skolemid |1315|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (forall (($o@@14 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@14) alloc)))) (or (or (= $o@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1))) (= $o@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@14 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@3)))
 :qid |Foralldfy.261:21|
 :skolemid |1312|
))) (=> (forall (($o@@15 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@15) alloc)))) (or (or (= $o@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1))) (= $o@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@15 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@4)))
 :qid |Foralldfy.261:21|
 :skolemid |1312|
)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (or (_module.ObjectTests.Valid $Heap@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (and (_module.ObjectTests.Valid $Heap@1 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@16)) (or (or (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1))) (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@16 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.291:10|
 :skolemid |1333|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@16))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (forall (($o@@17 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@17) alloc)))) (or (or (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1))) (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (= $o@@17 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@5)))
 :qid |Foralldfy.262:14|
 :skolemid |1313|
))) (=> (forall (($o@@18 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@18) alloc)))) (or (or (= $o@@18 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1))) (= $o@@18 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (= $o@@18 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@6)))
 :qid |Foralldfy.262:14|
 :skolemid |1313|
)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@1 this@@1) (or (_module.ObjectTests.Valid $Heap@1 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (and (_module.ObjectTests.Valid $Heap@2 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@19)) (or (or (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing1))) (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing2)))) (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.321:10|
 :skolemid |1351|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@19))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ObjectTests) ($IsAlloc refType this@@1 Tclass._module.ObjectTests $Heap@@0))) (= 4 $FunctionContextHeight)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (and (_module.ObjectTests.Valid $Heap@@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (= (ControlFlow 0 17) 2))) anon0_correct))))
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
