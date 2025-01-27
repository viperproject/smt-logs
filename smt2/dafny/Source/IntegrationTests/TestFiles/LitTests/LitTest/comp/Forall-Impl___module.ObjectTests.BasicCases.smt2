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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.ObjectTests () T@U)
(declare-fun class._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing () T@U)
(declare-fun class._module.ObjectTests? () T@U)
(declare-fun Tagclass._module.ObjectTests? () T@U)
(declare-fun tytagFamily$ObjectTests () T@U)
(declare-fun tytagFamily$Thing () T@U)
(declare-fun field$thing1 () T@U)
(declare-fun field$thing2 () T@U)
(declare-fun field$thing3 () T@U)
(declare-fun field$i () T@U)
(declare-fun field$r () T@U)
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
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
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
(declare-fun _module.Thing.i () T@U)
(declare-fun _module.Thing.r () T@U)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.ObjectTests.Valid (T@U T@U) Bool)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TReal TagInt TagReal TagSeq alloc allocName Tagclass._module.ObjectTests class._module.Thing? Tagclass._module.Thing? Tagclass._module.Thing class._module.ObjectTests? Tagclass._module.ObjectTests? tytagFamily$ObjectTests tytagFamily$Thing field$thing1 field$thing2 field$thing3 field$i field$r)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (= (DeclName alloc) allocName))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |794|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |792|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (= (FDim _module.Thing.i) 0))
(assert (= (FieldOfDecl class._module.Thing? field$i) _module.Thing.i))
(assert  (not ($IsGhostField _module.Thing.i)))
(assert (= (FDim _module.Thing.r) 0))
(assert (= (FieldOfDecl class._module.Thing? field$r) _module.Thing.r))
(assert  (not ($IsGhostField _module.Thing.r)))
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
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |577|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |575|
 :pattern ( (Lit T x@@5))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |818|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |586|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Thing?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Thing.i)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1261|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Thing.i)))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Thing?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Thing.r)) TReal $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1263|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Thing.r)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |599|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (or (or (= $o@@5 |l#3|) (= $o@@5 |l#4|)) (= $o@@5 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1379|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5|) $o@@5 $f))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ObjectTests.thing1)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1284|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.ObjectTests.thing2)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1286|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.ObjectTests.thing3)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1288|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) _module.ObjectTests.thing3)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.ObjectTests) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.ObjectTests)))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( ($IsBox bx@@1 Tclass._module.ObjectTests))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Thing?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Thing?)))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsBox bx@@2 Tclass._module.Thing?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Thing) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Thing)))
 :qid |unknown.0:0|
 :skolemid |1267|
 :pattern ( ($IsBox bx@@3 Tclass._module.Thing))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.ObjectTests?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.ObjectTests?)))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( ($IsBox bx@@4 Tclass._module.ObjectTests?))
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
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |785|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.ObjectTests.thing1)) Tclass._module.Thing $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1285|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.ObjectTests.thing2)) Tclass._module.Thing $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1287|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.ObjectTests.thing3)) Tclass._module.Thing $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.ObjectTests.thing3)))
)))
(assert (forall ((s@@3 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@3 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |790|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |791|
 :pattern ( (|Seq#Contains| s@@3 x@@7))
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
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |587|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TReal) (and (= ($Box realType ($Unbox realType bx@@6)) bx@@6) ($Is realType ($Unbox realType bx@@6) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |588|
 :pattern ( ($IsBox bx@@6 TReal))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |598|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |781|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@1) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@1 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |633|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |634|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@1) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |567|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |568|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |585|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.ObjectTests))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@12 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (= $o@@12 this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@12) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@12) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1290|
)) (= (_module.ObjectTests.Valid $h0 this) (_module.ObjectTests.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ObjectTests.Valid $h1 this))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Thing?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.Thing.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1260|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.Thing.i)))
)))
(assert (forall (($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Thing?))) ($Is realType ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Thing.r)) TReal))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1262|
 :pattern ( ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.Thing.r)))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |783|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@7 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |595|
 :pattern ( ($IsBox bx@@7 (TSeq t@@6)))
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
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |578|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |576|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |621|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@7 T@U) ) (! ($IsAlloc realType v@@7 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |622|
 :pattern ( ($IsAlloc realType v@@7 TReal h@@5))
)))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |613|
 :pattern ( (|Seq#Index| v@@8 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |614|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@2)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |600|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is realType v@@10 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |601|
 :pattern ( ($Is realType v@@10 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |things#0@0| () T@U)
(declare-fun |t#1_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |t#1_1@0| () T@U)
(declare-fun |t#2_0@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |t#2_1@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |t#0_0@0| () T@U)
(declare-fun |t#0_1@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |things#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.ObjectTests.BasicCases)
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
 (=> (= (ControlFlow 0 0) 43) (let ((anon6_correct  (=> (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|)) (or (not (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_0@0|) _module.Thing.r))) 2.0)) (not true))) (and (=> (= (ControlFlow 0 25) (- 0 28)) (or (not (= |t#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#1_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#1_0@0| _module.Thing.i)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= |t#1_0@0| null)) (not true))) (=> (and ($Is refType |t#1_1@0| Tclass._module.Thing) ($IsAlloc refType |t#1_1@0| Tclass._module.Thing $Heap@3)) (=> (and (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_1@0|)) (or (not (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_1@0|) _module.Thing.r))) 2.0)) (not true))) (and (or (not (= |t#1_0@0| |t#1_1@0|)) (not true)) (= (ControlFlow 0 25) (- 0 24)))) (or (or (or (not (= |t#1_0@0| |t#1_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_0@0|) _module.Thing.i))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_1@0|) _module.Thing.i))) 1))))))))))))
(let ((anon16_Else_correct  (=> (and (not (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|))) (= (ControlFlow 0 31) 25)) anon6_correct)))
(let ((anon16_Then_correct  (=> (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= |t#1_0@0| null)) (not true))) (=> (= (ControlFlow 0 29) 25) anon6_correct)))))
(let ((anon15_Then_correct  (=> (and ($Is refType |t#1_0@0| Tclass._module.Thing) ($IsAlloc refType |t#1_0@0| Tclass._module.Thing $Heap@3)) (and (=> (= (ControlFlow 0 32) 29) anon16_Then_correct) (=> (= (ControlFlow 0 32) 31) anon16_Else_correct)))))
(let ((anon11_correct  (=> (and (|Seq#Contains| |things#0@0| ($Box refType |t#2_0@0|)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_0@0|) _module.Thing.i))) 3)) (not true))) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |t#2_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#2_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#2_0@0| _module.Thing.i)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (not (= |t#2_0@0| null)) (not true))) (=> (and ($Is refType |t#2_1@0| Tclass._module.Thing) ($IsAlloc refType |t#2_1@0| Tclass._module.Thing $Heap@6)) (=> (and (and (|Seq#Contains| |things#0@0| ($Box refType |t#2_1@0|)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_1@0|) _module.Thing.i))) 3)) (not true))) (and (or (not (= |t#2_0@0| |t#2_1@0|)) (not true)) (= (ControlFlow 0 11) (- 0 10)))) (or (or (or (not (= |t#2_0@0| |t#2_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_0@0|) _module.Thing.i))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_1@0|) _module.Thing.i))) 1))))))))))))
(let ((anon18_Else_correct  (=> (and (not (|Seq#Contains| |things#0@0| ($Box refType |t#2_0@0|))) (= (ControlFlow 0 17) 11)) anon11_correct)))
(let ((anon18_Then_correct  (=> (|Seq#Contains| |things#0@0| ($Box refType |t#2_0@0|)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= |t#2_0@0| null)) (not true))) (=> (= (ControlFlow 0 15) 11) anon11_correct)))))
(let ((anon17_Then_correct  (=> (and ($Is refType |t#2_0@0| Tclass._module.Thing) ($IsAlloc refType |t#2_0@0| Tclass._module.Thing $Heap@6)) (and (=> (= (ControlFlow 0 18) 15) anon18_Then_correct) (=> (= (ControlFlow 0 18) 17) anon18_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true)))))))))))
(let ((anon17_Else_correct  (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) ($HeapSucc $Heap@6 $Heap@7)) (=> (and (and (and (forall (($o@@15 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@15) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@15) $f@@1)) (exists ((|t#2_2| T@U) ) (!  (and (and (and ($Is refType |t#2_2| Tclass._module.Thing) (and (|Seq#Contains| |things#0@0| ($Box refType |t#2_2|)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_2|) _module.Thing.i))) 3)) (not true)))) (= $o@@15 |t#2_2|)) (= $f@@1 _module.Thing.i))
 :qid |Foralldfy.285:12|
 :skolemid |1328|
)))
 :qid |Foralldfy.285:5|
 :skolemid |1329|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@15) $f@@1))
)) (forall ((|t#inv#2_0| T@U) ) (!  (=> (and ($Is refType |t#inv#2_0| Tclass._module.Thing) (and (or (not (= |t#inv#2_0| null)) (not true)) (and (|Seq#Contains| |things#0@0| ($Box refType |t#inv#2_0|)) (or (not (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#inv#2_0|) _module.Thing.i))) 3)) (not true))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |t#inv#2_0|) _module.Thing.i) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#inv#2_0|) _module.Thing.i))) 1)))))
 :qid |Foralldfy.285:12|
 :skolemid |1330|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |t#inv#2_0|) _module.Thing.i))
))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8))) (and (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@16)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@16))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= $Heap@9 $Heap@8) (= (ControlFlow 0 9) 6)))) GeneratedUnifiedExit_correct))))
(let ((anon15_Else_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) ($HeapSucc $Heap@3 $Heap@4)) (and (forall (($o@@17 T@U) ($f@@2 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@17) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@17) $f@@2)) (exists ((|t#1_2| T@U) ) (!  (and (and (and ($Is refType |t#1_2| Tclass._module.Thing) (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_2|)) (or (not (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_2|) _module.Thing.r))) 2.0)) (not true)))) (= $o@@17 |t#1_2|)) (= $f@@2 _module.Thing.i))
 :qid |Foralldfy.278:12|
 :skolemid |1323|
)))
 :qid |Foralldfy.278:5|
 :skolemid |1324|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@17) $f@@2))
)) (forall ((|t#inv#1_0| T@U) ) (!  (=> (and ($Is refType |t#inv#1_0| Tclass._module.Thing) (and (or (not (= |t#inv#1_0| null)) (not true)) (and (|Seq#Contains| |things#0@0| ($Box refType |t#inv#1_0|)) (or (not (= (U_2_real ($Unbox realType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#inv#1_0|) _module.Thing.r))) 2.0)) (not true))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |t#inv#1_0|) _module.Thing.i) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#inv#1_0|) _module.Thing.i))) 1)))))
 :qid |Foralldfy.278:12|
 :skolemid |1325|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |t#inv#1_0|) _module.Thing.i))
)))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@18)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@18))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 19) (- 0 23)) (forall (($o@@19 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@19) alloc)))) (or (or (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@19 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@19 $f@@3)))
 :qid |Foralldfy.284:15|
 :skolemid |1327|
))) (=> (forall (($o@@20 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20) alloc)))) (or (or (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@20 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@20 $f@@4)))
 :qid |Foralldfy.284:15|
 :skolemid |1327|
)) (and (=> (= (ControlFlow 0 19) (- 0 22)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|_module.ObjectTests.Valid#canCall| $Heap@6 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@6 this@@1) (and (_module.ObjectTests.Valid $Heap@6 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@21) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@21)) (or (or (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@21))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 19) 18) anon17_Then_correct) (=> (= (ControlFlow 0 19) 9) anon17_Else_correct))))))))))))))
(let ((anon14_Else_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@22 T@U) ($f@@5 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@22) $f@@5)) (exists ((|t#0_2| T@U) ) (!  (and (and (and ($Is refType |t#0_2| Tclass._module.Thing) (|Seq#Contains| |things#0@0| ($Box refType |t#0_2|))) (= $o@@22 |t#0_2|)) (= $f@@5 _module.Thing.i))
 :qid |Foralldfy.271:12|
 :skolemid |1318|
)))
 :qid |Foralldfy.271:5|
 :skolemid |1319|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) $f@@5))
)) (forall ((|t#inv#0_0| T@U) ) (!  (=> (and ($Is refType |t#inv#0_0| Tclass._module.Thing) (and (or (not (= |t#inv#0_0| null)) (not true)) (|Seq#Contains| |things#0@0| ($Box refType |t#inv#0_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#inv#0_0|) _module.Thing.i) ($Box intType (int_2_U (LitInt 0)))))
 :qid |Foralldfy.271:12|
 :skolemid |1320|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#inv#0_0|) _module.Thing.i))
)))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@23)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@23))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 33) (- 0 37)) (forall (($o@@24 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24) alloc)))) (or (or (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@24 $f@@6)))
 :qid |Foralldfy.277:15|
 :skolemid |1322|
))) (=> (forall (($o@@25 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) alloc)))) (or (or (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@25 $f@@7)))
 :qid |Foralldfy.277:15|
 :skolemid |1322|
)) (and (=> (= (ControlFlow 0 33) (- 0 36)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 33) (- 0 35)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.ObjectTests.Valid#canCall| $Heap@3 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@3 this@@1) (and (_module.ObjectTests.Valid $Heap@3 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26)) (or (or (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 33) 32) anon15_Then_correct) (=> (= (ControlFlow 0 33) 19) anon15_Else_correct))))))))))))))
(let ((anon14_Then_correct  (=> (and (and ($Is refType |t#0_0@0| Tclass._module.Thing) ($IsAlloc refType |t#0_0@0| Tclass._module.Thing $Heap@0)) (|Seq#Contains| |things#0@0| ($Box refType |t#0_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |t#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0_0@0| _module.Thing.i)) (=> (and (and (and ($Is refType |t#0_1@0| Tclass._module.Thing) ($IsAlloc refType |t#0_1@0| Tclass._module.Thing $Heap@0)) (|Seq#Contains| |things#0@0| ($Box refType |t#0_1@0|))) (and (or (not (= |t#0_0@0| |t#0_1@0|)) (not true)) (= (ControlFlow 0 2) (- 0 1)))) (or (or (or (not (= |t#0_0@0| |t#0_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (LitInt 0) (LitInt 0))))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@0 alloc ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (= |things#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (and (=> (= (ControlFlow 0 38) (- 0 42)) (forall (($o@@27 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@27) alloc)))) (or (or (= $o@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@27 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@27 $f@@8)))
 :qid |Foralldfy.270:15|
 :skolemid |1317|
))) (=> (forall (($o@@28 T@U) ($f@@9 T@U) ) (!  (=> (and (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@28) alloc)))) (or (or (= $o@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@28 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@28 $f@@9)))
 :qid |Foralldfy.270:15|
 :skolemid |1317|
)) (and (=> (= (ControlFlow 0 38) (- 0 41)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 38) (- 0 40)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 38) (- 0 39)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (and (_module.ObjectTests.Valid $Heap@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@29) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@29)) (or (or (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 38) 2) anon14_Then_correct) (=> (= (ControlFlow 0 38) 33) anon14_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ObjectTests) ($IsAlloc refType this@@1 Tclass._module.ObjectTests $Heap@@0)))) (=> (and (and (and (and ($Is SeqType |things#0| (TSeq Tclass._module.Thing)) ($IsAlloc SeqType |things#0| (TSeq Tclass._module.Thing) $Heap@@0)) true) (= 3 $FunctionContextHeight)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (and (_module.ObjectTests.Valid $Heap@@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (= (ControlFlow 0 43) 38))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
