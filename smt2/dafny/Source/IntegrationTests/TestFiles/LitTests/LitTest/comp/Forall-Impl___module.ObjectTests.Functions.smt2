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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._module.ObjectTests () T@U)
(declare-fun class._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing? () T@U)
(declare-fun Tagclass._module.Thing () T@U)
(declare-fun class._module.ObjectTests? () T@U)
(declare-fun Tagclass._module.ObjectTests? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun tytagFamily$ObjectTests () T@U)
(declare-fun tytagFamily$Thing () T@U)
(declare-fun field$thing1 () T@U)
(declare-fun field$thing2 () T@U)
(declare-fun field$thing3 () T@U)
(declare-fun field$i () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Thing? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.ObjectTests? () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Thing () T@U)
(declare-fun Tclass._module.ObjectTests () T@U)
(declare-fun _module.ObjectTests.thing1 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ObjectTests.thing2 () T@U)
(declare-fun _module.ObjectTests.thing3 () T@U)
(declare-fun _module.Thing.i () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |lambda#45| (T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#44| (T@U T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |lambda#42| (T@U T@U T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#1| (T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |lambda#12| (Bool) T@U)
(declare-fun |lambda#14| (T@U) T@U)
(declare-fun |lambda#43| (Bool) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.ObjectTests.Valid (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun |lambda#37| (Int) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.ObjectTests.Valid#canCall| (T@U T@U) Bool)
(declare-fun |lambda#3| (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#13| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc0 Tagclass._module.ObjectTests class._module.Thing? Tagclass._module.Thing? Tagclass._module.Thing class._module.ObjectTests? Tagclass._module.ObjectTests? tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func0| tytagFamily$ObjectTests tytagFamily$Thing field$thing1 field$thing2 field$thing3 field$i)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |995|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |996|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor SetType) 8)))
(assert (forall ((t0@@2 T@U) (t1@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@2 t1@@1 heap (Handle1 h@@0 r@@0 rd) bx0) bx) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |932|
 :pattern ( (|Set#IsMember| (Reads1 t0@@2 t1@@1 heap (Handle1 h@@0 r@@0 rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#11| |l#0|) |$l#0#heap#0| |$l#0#x#0|)) ($IsBox |$l#0#x#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |1382|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#11| |l#0|) |$l#0#heap#0| |$l#0#x#0|))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |794|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |685|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |792|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((f@@0 T@U) (t0@@3 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@3))
 :qid |unknown.0:0|
 :skolemid |949|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@3))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |950|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |951|
 :pattern ( ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@2)) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Thing $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Thing? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1280|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Thing $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Thing? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.ObjectTests $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.ObjectTests? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1369|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ObjectTests $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.ObjectTests? $h@@1))
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
(assert (forall ((t0@@4 T@U) (heap@@0 T@U) (h@@1 T@U) (r@@1 T@U) (rd@@0 T@U) ) (! (= (Apply0 t0@@4 heap@@0 (Handle0 h@@1 r@@1 rd@@0)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@1 heap@@0))
 :qid |unknown.0:0|
 :skolemid |974|
 :pattern ( (Apply0 t0@@4 heap@@0 (Handle0 h@@1 r@@1 rd@@0)))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Thing? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1259|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Thing? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.ObjectTests? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1283|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.ObjectTests? $h@@4))
)))
(assert (forall ((h@@2 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@2 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@2 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |678|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |679|
 :pattern ( ($HeapSucc h@@2 k))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|$l#2#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#45| |l#0@@0| |l#1| |l#2|) |$l#2#heap#0|) (SetRef_to_SetBox (|lambda#44| |l#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#2#heap#0| |l#1|) |l#2|)))))
 :qid |Foralldfy.321:10|
 :skolemid |1395|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#45| |l#0@@0| |l#1| |l#2|) |$l#2#heap#0|))
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
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|$l#2#heap#0@@0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#42| |l#0@@1| |l#1@@0| |l#2@@0|) |$l#2#heap#0@@0|) ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#2#heap#0@@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#2#heap#0@@0| |l#0@@1|) |l#1@@0|))) |l#2@@0|))))
 :qid |Foralldfy.321:10|
 :skolemid |1392|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#42| |l#0@@1| |l#1@@0| |l#2@@0|) |$l#2#heap#0@@0|))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((s@@0 T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s@@0 bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |818|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@5 T@U) (t1@@3 T@U) (heap@@1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and ($IsBox bx0@@0 t0@@5) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@5 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@5 t1@@3 $OneHeap f@@1 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@5 t1@@3 heap@@1 f@@1 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |945|
 :pattern ( (Reads1 t0@@5 t1@@3 $OneHeap f@@1 bx0@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Reads1 t0@@5 t1@@3 heap@@1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@6 T@U) (heap@@2 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@1 T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@6 heap@@2 (Handle0 h@@3 r@@2 rd@@1)) bx@@3) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@1 heap@@2) bx@@3))
 :qid |unknown.0:0|
 :skolemid |976|
 :pattern ( (|Set#IsMember| (Reads0 t0@@6 heap@@2 (Handle0 h@@3 r@@2 rd@@1)) bx@@3))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |586|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((t0@@7 T@U) (heap@@3 T@U) (f@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@7))) (|Set#Equal| (Reads0 t0@@7 $OneHeap f@@2) |Set#Empty|)) (= (Requires0 t0@@7 $OneHeap f@@2) (Requires0 t0@@7 heap@@3 f@@2)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( (Requires0 t0@@7 $OneHeap f@@2) ($IsGoodHeap heap@@3))
 :pattern ( (Requires0 t0@@7 heap@@3 f@@2))
)))
(assert (forall ((t0@@8 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@8) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@8 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@4 h0 f@@3 bx0@@1) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |937|
))) (= (Requires1 t0@@8 t1@@4 h0 f@@3 bx0@@1) (Requires1 t0@@8 t1@@4 h1 f@@3 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |938|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@8 t1@@4 h1 f@@3 bx0@@1))
)))
(assert (forall ((t0@@9 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@9) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@9 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@5 h1@@0 f@@4 bx0@@2) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |939|
))) (= (Requires1 t0@@9 t1@@5 h0@@0 f@@4 bx0@@2) (Requires1 t0@@9 t1@@5 h1@@0 f@@4 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |940|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@9 t1@@5 h1@@0 f@@4 bx0@@2))
)))
(assert (forall ((v@@0 T@U) (t0@@10 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@10)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@4) ($IsBox bx@@4 t0@@10))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |606|
 :pattern ( (|Set#IsMember| v@@0 bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |607|
 :pattern ( ($Is SetType v@@0 (TSet t0@@10)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@5 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@5 ly) (MapType0Select LayerTypeType A f@@5 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |661|
 :pattern ( (AtLayer A f@@5 ly))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |784|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Thing?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Thing.i)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1261|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.Thing.i)))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@4 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@4) ($IsAlloc T@@1 v@@2 t@@0 h@@4))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |599|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@0 T@U) (bx@@5 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@5 k@@0) (=> ($IsAllocBox bx@@5 t@@1 h@@5) ($IsAllocBox bx@@5 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |671|
 :pattern ( ($HeapSucc h@@5 k@@0) ($IsAllocBox bx@@5 t@@1 h@@5))
)))
(assert (forall ((h@@6 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@6 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@6) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |670|
 :pattern ( ($HeapSucc h@@6 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@6))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3| T@U) (|l#4| T@U) (|l#5| T@U) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@2| |l#1@@1| |l#2@@1| |l#3| |l#4| |l#5|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@5) |l#2@@1|)))) (or (or (= $o@@5 |l#3|) (= $o@@5 |l#4|)) (= $o@@5 |l#5|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1379|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@2| |l#1@@1| |l#2@@1| |l#3| |l#4| |l#5|) $o@@5 $f))
)))
(assert (forall ((t0@@11 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@6 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@11) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@11 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@11 t1@@6 h0@@1 f@@6 bx0@@3) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |933|
))) (= (Reads1 t0@@11 t1@@6 h0@@1 f@@6 bx0@@3) (Reads1 t0@@11 t1@@6 h1@@1 f@@6 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |934|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@11 t1@@6 h1@@1 f@@6 bx0@@3))
)))
(assert (forall ((t0@@12 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@7 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@12) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@12 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@12 t1@@7 h1@@2 f@@7 bx0@@4) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |935|
))) (= (Reads1 t0@@12 t1@@7 h0@@2 f@@7 bx0@@4) (Reads1 t0@@12 t1@@7 h1@@2 f@@7 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |936|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@12 t1@@7 h1@@2 f@@7 bx0@@4))
)))
(assert (forall ((t0@@13 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@8 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@13) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@13 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@13 t1@@8 h0@@3 f@@8 bx0@@5) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |941|
))) (= (Apply1 t0@@13 t1@@8 h0@@3 f@@8 bx0@@5) (Apply1 t0@@13 t1@@8 h1@@3 f@@8 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |942|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@13 t1@@8 h1@@3 f@@8 bx0@@5))
)))
(assert (forall ((t0@@14 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@9 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@14) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@14 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@14 t1@@9 h1@@4 f@@9 bx0@@6) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |943|
))) (= (Apply1 t0@@14 t1@@9 h0@@4 f@@9 bx0@@6) (Apply1 t0@@14 t1@@9 h1@@4 f@@9 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |944|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@14 t1@@9 h1@@4 f@@9 bx0@@6))
)))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |971|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert (forall (($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.ObjectTests.thing1)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1284|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.ObjectTests.thing2)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1286|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.ObjectTests?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.ObjectTests.thing3)) Tclass._module.Thing))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1288|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.ObjectTests.thing3)))
)))
(assert (forall ((s@@2 T@U) (bx@@6 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@2) bx@@6) (U_2_bool (MapType0Select refType boolType s@@2 ($Unbox refType bx@@6))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |642|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@2) bx@@6))
)))
(assert (forall ((|#$T0| T@U) (|#$R@@0| T@U) (|f#0| T@U) ($h@@9 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R@@0|) $h@@9) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0| |#$R@@0|) $h@@9))
 :qid |unknown.0:0|
 :skolemid |963|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0| |#$R@@0|) $h@@9))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@1| T@U) (|f#0@@0| T@U) ($h@@10 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@1|) $h@@10) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@0| |#$R@@1|) $h@@10))
 :qid |unknown.0:0|
 :skolemid |970|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@0| |#$R@@1|) $h@@10))
)))
(assert (forall ((t0@@15 T@U) (t1@@10 T@U) (heap@@4 T@U) (h@@7 T@U) (r@@3 T@U) (rd@@2 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@15 t1@@10 heap@@4 (Handle1 h@@7 r@@3 rd@@2) bx0@@7) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType h@@7 heap@@4 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |930|
 :pattern ( (Apply1 t0@@15 t1@@10 heap@@4 (Handle1 h@@7 r@@3 rd@@2) bx0@@7))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( ($IsBox bx@@7 Tclass._System.object?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($IsBox bx@@8 Tclass._System.object))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.ObjectTests) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.ObjectTests)))
 :qid |unknown.0:0|
 :skolemid |1115|
 :pattern ( ($IsBox bx@@9 Tclass._module.ObjectTests))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass._module.Thing?) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass._module.Thing?)))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( ($IsBox bx@@10 Tclass._module.Thing?))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass._module.Thing) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass._module.Thing)))
 :qid |unknown.0:0|
 :skolemid |1267|
 :pattern ( ($IsBox bx@@11 Tclass._module.Thing))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass._module.ObjectTests?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass._module.ObjectTests?)))
 :qid |unknown.0:0|
 :skolemid |1281|
 :pattern ( ($IsBox bx@@12 Tclass._module.ObjectTests?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Thing)  (and ($Is refType |c#0@@3| Tclass._module.Thing?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1279|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Thing))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Thing?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.ObjectTests)  (and ($Is refType |c#0@@4| Tclass._module.ObjectTests?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1368|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.ObjectTests))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.ObjectTests?))
)))
(assert (forall ((s@@3 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i) (|Seq#Index| s@@3 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |785|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@4) i))
)))
(assert (forall (($h@@11 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.ObjectTests.thing1)) Tclass._module.Thing $h@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1285|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) _module.ObjectTests.thing1)))
)))
(assert (forall (($h@@12 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.ObjectTests.thing2)) Tclass._module.Thing $h@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1287|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) _module.ObjectTests.thing2)))
)))
(assert (forall (($h@@13 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.ObjectTests?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.ObjectTests.thing3)) Tclass._module.Thing $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1289|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) _module.ObjectTests.thing3)))
)))
(assert (forall ((f@@10 T@U) (t0@@16 T@U) (t1@@11 T@U) (h@@8 T@U) ) (!  (=> (and ($IsGoodHeap h@@8) ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@16 t1@@11) h@@8)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@16 h@@8) (Requires1 t0@@16 t1@@11 h@@8 f@@10 bx0@@8)) ($IsAllocBox (Apply1 t0@@16 t1@@11 h@@8 f@@10 bx0@@8) t1@@11 h@@8))
 :qid |unknown.0:0|
 :skolemid |955|
 :pattern ( (Apply1 t0@@16 t1@@11 h@@8 f@@10 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |956|
 :pattern ( ($IsAlloc HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@16 t1@@11) h@@8))
)))
(assert (forall ((s@@4 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@4 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |790|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |791|
 :pattern ( (|Seq#Contains| s@@4 x@@7))
)))
(assert (forall ((|l#0@@3| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#12| |l#0@@3|) |$l#0#o#0|)) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |1383|
 :pattern ( (MapType0Select refType boolType (|lambda#12| |l#0@@3|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#14| |l#0@@4|) |$l#0#ly#0|) |l#0@@4|)
 :qid |Foralldfy.134:26|
 :skolemid |1385|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#14| |l#0@@4|) |$l#0#ly#0|))
)))
(assert (forall ((|l#0@@5| Bool) (|$l#2#heap#0@@1| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#43| |l#0@@5|) |$l#2#heap#0@@1|)) |l#0@@5|)
 :qid |unknown.0:0|
 :skolemid |1393|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#43| |l#0@@5|) |$l#2#heap#0@@1|))
)))
(assert (forall ((t0@@17 T@U) (heap@@5 T@U) (f@@11 T@U) ) (!  (=> (and ($IsGoodHeap heap@@5) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc0 t0@@17))) (= (|Set#Equal| (Reads0 t0@@17 $OneHeap f@@11) |Set#Empty|) (|Set#Equal| (Reads0 t0@@17 heap@@5 f@@11) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( (Reads0 t0@@17 $OneHeap f@@11) ($IsGoodHeap heap@@5))
 :pattern ( (Reads0 t0@@17 heap@@5 f@@11))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |710|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@2| T@U) (|$l#2#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#44| |l#0@@6| |l#1@@2|) |$l#2#o#0|))  (or (= |$l#2#o#0| |l#0@@6|) (= |$l#2#o#0| |l#1@@2|)))
 :qid |Foralldfy.321:10|
 :skolemid |1394|
 :pattern ( (MapType0Select refType boolType (|lambda#44| |l#0@@6| |l#1@@2|) |$l#2#o#0|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |677|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@12 T@U) (t0@@18 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@12)) (forall ((h@@9 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@9) ($IsBox bx0@@9 t0@@18)) (Requires1 t0@@18 t1@@12 h@@9 f@@12 bx0@@9)) ($IsBox (Apply1 t0@@18 t1@@12 h@@9 f@@12 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |947|
 :pattern ( (Apply1 t0@@18 t1@@12 h@@9 f@@12 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |948|
 :pattern ( ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@12)))
)))
(assert (forall ((t0@@19 T@U) (h0@@5 T@U) (h1@@5 T@U) (f@@13 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@5 h1@@5) (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5))) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@19))) (forall ((o@@7 T@U) (fld@@5 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@19 h0@@5 f@@13) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@5 o@@7) fld@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@5 o@@7) fld@@5)))
 :qid |unknown.0:0|
 :skolemid |981|
))) (= (Requires0 t0@@19 h0@@5 f@@13) (Requires0 t0@@19 h1@@5 f@@13)))
 :qid |unknown.0:0|
 :skolemid |982|
 :pattern ( ($HeapSucc h0@@5 h1@@5) (Requires0 t0@@19 h1@@5 f@@13))
)))
(assert (forall ((t0@@20 T@U) (h0@@6 T@U) (h1@@6 T@U) (f@@14 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@6 h1@@6) (and ($IsGoodHeap h0@@6) ($IsGoodHeap h1@@6))) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc0 t0@@20))) (forall ((o@@8 T@U) (fld@@6 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads0 t0@@20 h1@@6 f@@14) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@6 o@@8) fld@@6) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@6 o@@8) fld@@6)))
 :qid |unknown.0:0|
 :skolemid |983|
))) (= (Requires0 t0@@20 h0@@6 f@@14) (Requires0 t0@@20 h1@@6 f@@14)))
 :qid |unknown.0:0|
 :skolemid |984|
 :pattern ( ($HeapSucc h0@@6 h1@@6) (Requires0 t0@@20 h1@@6 f@@14))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |667|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 TInt) (and (= ($Box intType ($Unbox intType bx@@13)) bx@@13) ($Is intType ($Unbox intType bx@@13) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |587|
 :pattern ( ($IsBox bx@@13 TInt))
)))
(assert (forall ((v@@5 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@3) ($Is T@@3 v@@5 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |598|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@3))
)))
(assert (forall ((t0@@21 T@U) (t1@@13 T@U) (heap@@6 T@U) (h@@10 T@U) (r@@4 T@U) (rd@@3 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType r@@4 heap@@6 bx0@@10)) (Requires1 t0@@21 t1@@13 heap@@6 (Handle1 h@@10 r@@4 rd@@3) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |931|
 :pattern ( (Requires1 t0@@21 t1@@13 heap@@6 (Handle1 h@@10 r@@4 rd@@3) bx0@@10))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |781|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@22 T@U) (h@@11 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@22) h@@11) (forall ((bx@@14 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@14) ($IsAllocBox bx@@14 t0@@22 h@@11))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |627|
 :pattern ( (|Set#IsMember| v@@6 bx@@14))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |628|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@22) h@@11))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@2|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |927|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@2|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |928|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@3|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@4|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |958|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@3| |#$R@@4|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@5|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@6|)) |#$T0@@5|)
 :qid |unknown.0:0|
 :skolemid |965|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@6|))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@7| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@7|)) |#$R@@7|)
 :qid |unknown.0:0|
 :skolemid |966|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@6| |#$R@@7|))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |907|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((v@@7 T@U) (t0@@23 T@U) (h@@12 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@23) h@@12) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@1) t0@@23 h@@12))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |633|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |634|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@23) h@@12))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |561|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |562|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |567|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |568|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((|#$R@@8| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@8|)) |#$R@@8|)
 :qid |unknown.0:0|
 :skolemid |972|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@8|))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |585|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.ObjectTests))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@13 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (= $o@@13 this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@13) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@13) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1290|
)) (= (_module.ObjectTests.Valid $h0 this) (_module.ObjectTests.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1291|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ObjectTests.Valid $h1 this))
)))
(assert (forall ((t0@@24 T@U) (h0@@7 T@U) (h1@@7 T@U) (f@@15 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@7 h1@@7) (and ($IsGoodHeap h0@@7) ($IsGoodHeap h1@@7))) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc0 t0@@24))) (forall ((o@@9 T@U) (fld@@7 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads0 t0@@24 h0@@7 f@@15) ($Box refType o@@9))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@7 o@@9) fld@@7) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@7 o@@9) fld@@7)))
 :qid |unknown.0:0|
 :skolemid |977|
))) (= (Reads0 t0@@24 h0@@7 f@@15) (Reads0 t0@@24 h1@@7 f@@15)))
 :qid |unknown.0:0|
 :skolemid |978|
 :pattern ( ($HeapSucc h0@@7 h1@@7) (Reads0 t0@@24 h1@@7 f@@15))
)))
(assert (forall ((t0@@25 T@U) (h0@@8 T@U) (h1@@8 T@U) (f@@16 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@8 h1@@8) (and ($IsGoodHeap h0@@8) ($IsGoodHeap h1@@8))) ($Is HandleTypeType f@@16 (Tclass._System.___hFunc0 t0@@25))) (forall ((o@@10 T@U) (fld@@8 T@U) ) (!  (=> (and (or (not (= o@@10 null)) (not true)) (|Set#IsMember| (Reads0 t0@@25 h1@@8 f@@16) ($Box refType o@@10))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@8 o@@10) fld@@8) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@8 o@@10) fld@@8)))
 :qid |unknown.0:0|
 :skolemid |979|
))) (= (Reads0 t0@@25 h0@@8 f@@16) (Reads0 t0@@25 h1@@8 f@@16)))
 :qid |unknown.0:0|
 :skolemid |980|
 :pattern ( ($HeapSucc h0@@8 h1@@8) (Reads0 t0@@25 h1@@8 f@@16))
)))
(assert (forall ((t0@@26 T@U) (h0@@9 T@U) (h1@@9 T@U) (f@@17 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@9 h1@@9) (and ($IsGoodHeap h0@@9) ($IsGoodHeap h1@@9))) ($Is HandleTypeType f@@17 (Tclass._System.___hFunc0 t0@@26))) (forall ((o@@11 T@U) (fld@@9 T@U) ) (!  (=> (and (or (not (= o@@11 null)) (not true)) (|Set#IsMember| (Reads0 t0@@26 h0@@9 f@@17) ($Box refType o@@11))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@9 o@@11) fld@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@9 o@@11) fld@@9)))
 :qid |unknown.0:0|
 :skolemid |985|
))) (= (Apply0 t0@@26 h0@@9 f@@17) (Apply0 t0@@26 h1@@9 f@@17)))
 :qid |unknown.0:0|
 :skolemid |986|
 :pattern ( ($HeapSucc h0@@9 h1@@9) (Apply0 t0@@26 h1@@9 f@@17))
)))
(assert (forall ((t0@@27 T@U) (h0@@10 T@U) (h1@@10 T@U) (f@@18 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@10 h1@@10) (and ($IsGoodHeap h0@@10) ($IsGoodHeap h1@@10))) ($Is HandleTypeType f@@18 (Tclass._System.___hFunc0 t0@@27))) (forall ((o@@12 T@U) (fld@@10 T@U) ) (!  (=> (and (or (not (= o@@12 null)) (not true)) (|Set#IsMember| (Reads0 t0@@27 h1@@10 f@@18) ($Box refType o@@12))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@10 o@@12) fld@@10) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@10 o@@12) fld@@10)))
 :qid |unknown.0:0|
 :skolemid |987|
))) (= (Apply0 t0@@27 h0@@10 f@@18) (Apply0 t0@@27 h1@@10 f@@18)))
 :qid |unknown.0:0|
 :skolemid |988|
 :pattern ( ($HeapSucc h0@@10 h1@@10) (Apply0 t0@@27 h1@@10 f@@18))
)))
(assert (forall (($h@@14 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) Tclass._module.Thing?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.Thing.i)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1260|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@14) _module.Thing.i)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@9| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@9|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@7| |#$R@@9|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@7|) (Requires1 |#$T0@@7| |#$R@@9| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |968|
))))
 :qid |unknown.0:0|
 :skolemid |969|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@7| |#$R@@9|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@10| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@10|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@10|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@8|) (|Set#Equal| (Reads1 |#$T0@@8| |#$R@@10| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |961|
))))
 :qid |unknown.0:0|
 :skolemid |962|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@10|)))
)))
(assert (forall ((f@@19 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@19 ($LS ly@@0)) (AtLayer A@@0 f@@19 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |662|
 :pattern ( (AtLayer A@@0 f@@19 ($LS ly@@0)))
)))
(assert (forall ((f@@20 T@U) (t0@@28 T@U) (t1@@14 T@U) (h@@13 T@U) ) (!  (=> ($IsGoodHeap h@@13) (= ($IsAlloc HandleTypeType f@@20 (Tclass._System.___hFunc1 t0@@28 t1@@14) h@@13) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@28) ($IsAllocBox bx0@@11 t0@@28 h@@13)) (Requires1 t0@@28 t1@@14 h@@13 f@@20 bx0@@11)) (forall ((r@@5 T@U) ) (!  (=> (and (or (not (= r@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@28 t1@@14 h@@13 f@@20 bx0@@11) ($Box refType r@@5))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@13 r@@5) alloc))))
 :qid |unknown.0:0|
 :skolemid |952|
 :pattern ( (|Set#IsMember| (Reads1 t0@@28 t1@@14 h@@13 f@@20 bx0@@11) ($Box refType r@@5)))
)))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (Apply1 t0@@28 t1@@14 h@@13 f@@20 bx0@@11))
 :pattern ( (Reads1 t0@@28 t1@@14 h@@13 f@@20 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |954|
 :pattern ( ($IsAlloc HandleTypeType f@@20 (Tclass._System.___hFunc1 t0@@28 t1@@14) h@@13))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@11| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@11|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@15)) bx@@15) ($Is HandleTypeType ($Unbox HandleTypeType bx@@15) (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@11|))))
 :qid |unknown.0:0|
 :skolemid |929|
 :pattern ( ($IsBox bx@@15 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@11|)))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@12| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@12|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@12|))))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@12|)))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@13| T@U) (bx@@17 T@U) ) (!  (=> ($IsBox bx@@17 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@17)) bx@@17) ($Is HandleTypeType ($Unbox HandleTypeType bx@@17) (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |967|
 :pattern ( ($IsBox bx@@17 (Tclass._System.___hTotalFunc1 |#$T0@@11| |#$R@@13|)))
)))
(assert (forall ((|l#0@@7| T@U) (|l#1@@3| T@U) (|l#2@@2| T@U) (|l#3@@0| Bool) ($o@@15 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@3| |l#2@@2| |l#3@@0|) $o@@15 $f@@1))  (=> (and (or (not (= $o@@15 |l#0@@7|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@3| $o@@15) |l#2@@2|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1378|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@7| |l#1@@3| |l#2@@2| |l#3@@0|) $o@@15 $f@@1))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |783|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@14|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@14|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |926|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@14|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@15| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@15|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@15|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |957|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@13| |#$R@@15|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@16| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@16|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@16|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |964|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@16|))
)))
(assert (forall ((|l#0@@8| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType (|lambda#37| |l#0@@8|) |$l#0#heap#0@@0| |$l#0#x#0@@0|) ($Box intType (int_2_U (Mul (U_2_int ($Unbox intType |$l#0#x#0@@0|)) |l#0@@8|))))
 :qid |unknown.0:0|
 :skolemid |1391|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType (|lambda#37| |l#0@@8|) |$l#0#heap#0@@0| |$l#0#x#0@@0|))
)))
(assert (forall ((x@@9 Int) (y Int) ) (! (= (Mul x@@9 y) (* x@@9 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |898|
 :pattern ( (Mul x@@9 y))
)))
(assert (forall ((t0@@29 T@U) (t1@@15 T@U) (heap@@7 T@U) (f@@21 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@7) (and ($IsBox bx0@@12 t0@@29) ($Is HandleTypeType f@@21 (Tclass._System.___hFunc1 t0@@29 t1@@15)))) (|Set#Equal| (Reads1 t0@@29 t1@@15 $OneHeap f@@21 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@29 t1@@15 $OneHeap f@@21 bx0@@12) (Requires1 t0@@29 t1@@15 heap@@7 f@@21 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |946|
 :pattern ( (Requires1 t0@@29 t1@@15 $OneHeap f@@21 bx0@@12) ($IsGoodHeap heap@@7))
 :pattern ( (Requires1 t0@@29 t1@@15 heap@@7 f@@21 bx0@@12))
)))
(assert (forall ((f@@22 T@U) (t0@@30 T@U) ) (! (= ($Is HandleTypeType f@@22 (Tclass._System.___hFunc0 t0@@30)) (forall ((h@@14 T@U) ) (!  (=> (and ($IsGoodHeap h@@14) (Requires0 t0@@30 h@@14 f@@22)) ($IsBox (Apply0 t0@@30 h@@14 f@@22) t0@@30))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |991|
 :pattern ( (Apply0 t0@@30 h@@14 f@@22))
)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is HandleTypeType f@@22 (Tclass._System.___hFunc0 t0@@30)))
)))
(assert (forall ((bx@@18 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@18 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@18)) bx@@18) ($Is SetType ($Unbox SetType bx@@18) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |592|
 :pattern ( ($IsBox bx@@18 (TSet t@@8)))
)))
(assert (forall ((bx@@19 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@19 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@19)) bx@@19) ($Is SeqType ($Unbox SeqType bx@@19) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |595|
 :pattern ( ($IsBox bx@@19 (TSeq t@@9)))
)))
(assert (forall ((|#$R@@17| T@U) (bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 (Tclass._System.___hFunc0 |#$R@@17|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@20)) bx@@20) ($Is HandleTypeType ($Unbox HandleTypeType bx@@20) (Tclass._System.___hFunc0 |#$R@@17|))))
 :qid |unknown.0:0|
 :skolemid |973|
 :pattern ( ($IsBox bx@@20 (Tclass._System.___hFunc0 |#$R@@17|)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.ObjectTests) Tagclass._module.ObjectTests))
(assert (= (TagFamily Tclass._module.ObjectTests) tytagFamily$ObjectTests))
(assert (= (Tag Tclass._module.Thing?) Tagclass._module.Thing?))
(assert (= (TagFamily Tclass._module.Thing?) tytagFamily$Thing))
(assert (= (Tag Tclass._module.Thing) Tagclass._module.Thing))
(assert (= (TagFamily Tclass._module.Thing) tytagFamily$Thing))
(assert (= (Tag Tclass._module.ObjectTests?) Tagclass._module.ObjectTests?))
(assert (= (TagFamily Tclass._module.ObjectTests?) tytagFamily$ObjectTests))
(assert (forall ((s@@7 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@7) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |643|
 :pattern ( (SetRef_to_SetBox s@@7))
)))
(assert (forall ((f@@23 T@U) (t0@@31 T@U) (h@@15 T@U) ) (!  (=> (and ($IsGoodHeap h@@15) ($IsAlloc HandleTypeType f@@23 (Tclass._System.___hFunc0 t0@@31) h@@15)) (=> (Requires0 t0@@31 h@@15 f@@23) ($IsAllocBox (Apply0 t0@@31 h@@15 f@@23) t0@@31 h@@15)))
 :qid |unknown.0:0|
 :skolemid |997|
 :pattern ( ($IsAlloc HandleTypeType f@@23 (Tclass._System.___hFunc0 t0@@31) h@@15))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.ObjectTests.Valid#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.ObjectTests) ($IsAlloc refType this@@0 Tclass._module.ObjectTests $Heap)))))) (= (_module.ObjectTests.Valid $Heap this@@0)  (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.ObjectTests.thing3)))) (not true)))))
 :qid |Foralldfy.238:19|
 :skolemid |1294|
 :pattern ( (_module.ObjectTests.Valid $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((|l#0@@9| T@U) (|l#1@@4| T@U) (|l#2@@3| T@U) (|l#3@@1| T@U) (|l#4@@0| T@U) ($o@@16 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0@@9| |l#1@@4| |l#2@@3| |l#3@@1| |l#4@@0|) $o@@16 $f@@2))  (=> (and (or (not (= $o@@16 |l#0@@9|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@4| $o@@16) |l#2@@3|)))) (or (= $o@@16 |l#3@@1|) (= $o@@16 |l#4@@0|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1380|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0@@9| |l#1@@4| |l#2@@3| |l#3@@1| |l#4@@0|) $o@@16 $f@@2))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@13 T@U) ) (! (= (|Set#IsMember| a@@1 o@@13) (|Set#IsMember| b@@1 o@@13))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |708|
 :pattern ( (|Set#IsMember| a@@1 o@@13))
 :pattern ( (|Set#IsMember| b@@1 o@@13))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |709|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((f@@24 T@U) (t0@@32 T@U) (u0@@3 T@U) ) (!  (=> (and ($Is HandleTypeType f@@24 (Tclass._System.___hFunc0 t0@@32)) (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 t0@@32) ($IsBox bx@@21 u0@@3))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsBox bx@@21 t0@@32))
 :pattern ( ($IsBox bx@@21 u0@@3))
))) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc0 u0@@3)))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($Is HandleTypeType f@@24 (Tclass._System.___hFunc0 t0@@32)) ($Is HandleTypeType f@@24 (Tclass._System.___hFunc0 u0@@3)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |578|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |576|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |782|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((t0@@33 T@U) (heap@@8 T@U) (h@@16 T@U) (r@@6 T@U) (rd@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@6 heap@@8)) (Requires0 t0@@33 heap@@8 (Handle0 h@@16 r@@6 rd@@4)))
 :qid |unknown.0:0|
 :skolemid |975|
 :pattern ( (Requires0 t0@@33 heap@@8 (Handle0 h@@16 r@@6 rd@@4)))
)))
(assert (forall ((h@@17 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@17)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |621|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@17))
)))
(assert (forall ((v@@9 T@U) (t0@@34 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@34)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@2) t0@@34))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |613|
 :pattern ( (|Seq#Index| v@@9 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |614|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@34)))
)))
(assert (forall ((|l#0@@10| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#13| |l#0@@10|) |$l#0#heap#0@@1| |$l#0#x#0@@1|) |l#0@@10|)
 :qid |Foralldfy.134:26|
 :skolemid |1384|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#13| |l#0@@10|) |$l#0#heap#0@@1| |$l#0#x#0@@1|))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |600|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |things#0@0| () T@U)
(declare-fun |t#1_0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |g#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |t#1_1@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |t#2_0@0| () T@U)
(declare-fun |t#2_1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |f#0@0| () T@U)
(declare-fun |t#0_0@0| () T@U)
(declare-fun |t#0_1@0| () T@U)
(declare-fun |things#0| () T@U)
(declare-fun |f#0@@3| () T@U)
(declare-fun |g#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.ObjectTests.Functions)
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
 (=> (= (ControlFlow 0 0) 54) (let ((anon21_Else_correct true))
(let ((anon21_Then_correct true))
(let ((anon20_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@0 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@0 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 52) 50) anon21_Then_correct) (=> (= (ControlFlow 0 52) 51) anon21_Else_correct)))))
(let ((anon24_Else_correct true))
(let ((anon24_Then_correct  (=> (and (= |$_Frame#l1@0| (|lambda#3| null |$lambdaHeap#1@0| alloc this@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$lambdaHeap#1@0| this@@1) _module.ObjectTests.thing2)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1@0| this@@1 _module.ObjectTests.thing2)))) (and (=> (= (ControlFlow 0 38) (- 0 41)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 38) (- 0 40)) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1@0| this@@1 _module.ObjectTests.thing2))) (=> (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1@0| this@@1 _module.ObjectTests.thing2)) (and (=> (= (ControlFlow 0 38) (- 0 39)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$lambdaHeap#1@0| this@@1) _module.ObjectTests.thing2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$lambdaHeap#1@0| this@@1) _module.ObjectTests.thing2)) null)) (not true)) (=> (= (ControlFlow 0 38) (- 0 37)) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$lambdaHeap#1@0| this@@1) _module.ObjectTests.thing2)) _module.Thing.i))))))))))))
(let ((anon23_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@2 |$lambdaHeap#1@0|) ($HeapSucc $Heap@2 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 43) 38) anon24_Then_correct) (=> (= (ControlFlow 0 43) 42) anon24_Else_correct)))))
(let ((anon14_correct  (=> (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|)) (or (not (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_0@0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |g#0@0|)))) 5)) (not true))) (and (=> (= (ControlFlow 0 23) (- 0 26)) (or (not (= |t#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#1_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#1_0@0| _module.Thing.i)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= |t#1_0@0| null)) (not true))) (=> (and ($Is refType |t#1_1@0| Tclass._module.Thing) ($IsAlloc refType |t#1_1@0| Tclass._module.Thing $Heap@3)) (=> (and (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_1@0|)) (or (not (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_1@0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |g#0@0|)))) 5)) (not true))) (and (or (not (= |t#1_0@0| |t#1_1@0|)) (not true)) (= (ControlFlow 0 23) (- 0 22)))) (or (or (or (not (= |t#1_0@0| |t#1_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_0@0|) _module.Thing.i))) 1) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_1@0|) _module.Thing.i))) 1))))))))))))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|))) (= (ControlFlow 0 30) 23)) anon14_correct)))
(let ((anon26_Then_correct  (=> (|Seq#Contains| |things#0@0| ($Box refType |t#1_0@0|)) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= |t#1_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (Requires0 TInt $Heap@3 |g#0@0|)) (=> (Requires0 TInt $Heap@3 |g#0@0|) (=> (= (ControlFlow 0 27) 23) anon14_correct)))))))
(let ((anon25_Then_correct  (=> (and ($Is refType |t#1_0@0| Tclass._module.Thing) ($IsAlloc refType |t#1_0@0| Tclass._module.Thing $Heap@3)) (and (=> (= (ControlFlow 0 31) 27) anon26_Then_correct) (=> (= (ControlFlow 0 31) 30) anon26_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 13) (- 0 15)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (= (ControlFlow 0 13) (- 0 12)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@9 this@@1) (or (_module.ObjectTests.Valid $Heap@9 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 this@@1) _module.ObjectTests.thing3)))) (not true)))))))))))
(let ((anon27_Else_correct  (=> (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) ($HeapSucc $Heap@6 $Heap@7)) (=> (and (and (and (forall (($o@@17 T@U) ($f@@3 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@17) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@17) $f@@3)) (exists ((|t#2_2| T@U) ) (!  (and (and (and ($Is refType |t#2_2| Tclass._module.Thing) (|Seq#Contains| |things#0@0| ($Box refType |t#2_2|))) (= $o@@17 |t#2_2|)) (= $f@@3 _module.Thing.i))
 :qid |Foralldfy.345:12|
 :skolemid |1364|
)))
 :qid |Foralldfy.345:5|
 :skolemid |1365|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@17) $f@@3))
)) (forall ((|t#inv#2_0| T@U) ) (!  (=> (and ($Is refType |t#inv#2_0| Tclass._module.Thing) (and (or (not (= |t#inv#2_0| null)) (not true)) (|Seq#Contains| |things#0@0| ($Box refType |t#inv#2_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |t#inv#2_0|) _module.Thing.i) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#inv#2_0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@6 |g#0@0|))))))))
 :qid |Foralldfy.345:12|
 :skolemid |1366|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |t#inv#2_0|) _module.Thing.i))
))) (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8))) (and (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18))
)) ($HeapSucc $Heap@7 $Heap@8)) (and (= $Heap@9 $Heap@8) (= (ControlFlow 0 16) 13)))) GeneratedUnifiedExit_correct))))
(let ((anon27_Then_correct  (=> (and (and ($Is refType |t#2_0@0| Tclass._module.Thing) ($IsAlloc refType |t#2_0@0| Tclass._module.Thing $Heap@6)) (|Seq#Contains| |things#0@0| ($Box refType |t#2_0@0|))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (or (not (= |t#2_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#2_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#2_0@0| _module.Thing.i)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (not (= |t#2_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (Requires0 TInt $Heap@6 |g#0@0|)) (=> (Requires0 TInt $Heap@6 |g#0@0|) (=> (and (and (and ($Is refType |t#2_1@0| Tclass._module.Thing) ($IsAlloc refType |t#2_1@0| Tclass._module.Thing $Heap@6)) (|Seq#Contains| |things#0@0| ($Box refType |t#2_1@0|))) (and (or (not (= |t#2_0@0| |t#2_1@0|)) (not true)) (= (ControlFlow 0 7) (- 0 6)))) (or (or (or (not (= |t#2_0@0| |t#2_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_0@0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@6 |g#0@0|)))) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |t#2_1@0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@6 |g#0@0|))))))))))))))))
(let ((anon25_Else_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) ($HeapSucc $Heap@3 $Heap@4)) (and (forall (($o@@19 T@U) ($f@@4 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@19) $f@@4)) (exists ((|t#1_2| T@U) ) (!  (and (and (and ($Is refType |t#1_2| Tclass._module.Thing) (and (|Seq#Contains| |things#0@0| ($Box refType |t#1_2|)) (or (not (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#1_2|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |g#0@0|)))) 5)) (not true)))) (= $o@@19 |t#1_2|)) (= $f@@4 _module.Thing.i))
 :qid |Foralldfy.338:12|
 :skolemid |1359|
)))
 :qid |Foralldfy.338:5|
 :skolemid |1360|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@19) $f@@4))
)) (forall ((|t#inv#1_0| T@U) ) (!  (=> (and ($Is refType |t#inv#1_0| Tclass._module.Thing) (and (or (not (= |t#inv#1_0| null)) (not true)) (and (|Seq#Contains| |things#0@0| ($Box refType |t#inv#1_0|)) (or (not (= (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#inv#1_0|) _module.Thing.i))) (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |g#0@0|)))) 5)) (not true))))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |t#inv#1_0|) _module.Thing.i) ($Box intType (int_2_U (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |t#inv#1_0|) _module.Thing.i))) 1)))))
 :qid |Foralldfy.338:12|
 :skolemid |1361|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |t#inv#1_0|) _module.Thing.i))
)))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@20)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@20))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 17) (- 0 21)) (forall (($o@@21 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@21) alloc)))) (or (or (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@21 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@21 $f@@5)))
 :qid |Foralldfy.344:15|
 :skolemid |1363|
))) (=> (forall (($o@@22 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@22) alloc)))) (or (or (= $o@@22 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@22 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@22 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@22 $f@@6)))
 :qid |Foralldfy.344:15|
 :skolemid |1363|
)) (and (=> (= (ControlFlow 0 17) (- 0 20)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@5 this@@1) (or (_module.ObjectTests.Valid $Heap@5 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (|_module.ObjectTests.Valid#canCall| $Heap@6 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@6 this@@1) (and (_module.ObjectTests.Valid $Heap@6 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@23) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@23)) (or (or (= $o@@23 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing1))) (= $o@@23 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing2)))) (= $o@@23 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@23))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 17) 7) anon27_Then_correct) (=> (= (ControlFlow 0 17) 16) anon27_Else_correct))))))))))))))
(let ((anon23_Else_correct  (=> (= |g#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#14| (Handle0 (|lambda#42| this@@1 _module.ObjectTests.thing2 _module.Thing.i) (|lambda#43| true) (|lambda#45| this@@1 this@@1 _module.ObjectTests.thing2))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 32) (- 0 36)) (forall (($o@@24 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@24) alloc)))) (or (or (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@24 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@24 $f@@7)))
 :qid |Foralldfy.337:15|
 :skolemid |1358|
))) (=> (forall (($o@@25 T@U) ($f@@8 T@U) ) (!  (=> (and (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) alloc)))) (or (or (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@25 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@25 $f@@8)))
 :qid |Foralldfy.337:15|
 :skolemid |1358|
)) (and (=> (= (ControlFlow 0 32) (- 0 35)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 32) (- 0 34)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@2 this@@1) (or (_module.ObjectTests.Valid $Heap@2 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (|_module.ObjectTests.Valid#canCall| $Heap@3 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@3 this@@1) (and (_module.ObjectTests.Valid $Heap@3 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@26)) (or (or (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing1))) (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing2)))) (= $o@@26 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@26))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 32) 31) anon25_Then_correct) (=> (= (ControlFlow 0 32) 17) anon25_Else_correct))))))))))))))
(let ((anon22_Else_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@27 T@U) ($f@@9 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) $f@@9) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@27) $f@@9)) (exists ((|t#0_2| T@U) ) (!  (and (and (and ($Is refType |t#0_2| Tclass._module.Thing) (|Seq#Contains| |things#0@0| ($Box refType |t#0_2|))) (= $o@@27 |t#0_2|)) (= $f@@9 _module.Thing.i))
 :qid |Foralldfy.329:12|
 :skolemid |1354|
)))
 :qid |Foralldfy.329:5|
 :skolemid |1355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@27) $f@@9))
)) (forall ((|t#inv#0_0| T@U) ) (!  (=> (and ($Is refType |t#inv#0_0| Tclass._module.Thing) (and (or (not (= |t#inv#0_0| null)) (not true)) (|Seq#Contains| |things#0@0| ($Box refType |t#inv#0_0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#inv#0_0|) _module.Thing.i) ($Box intType ($Unbox intType (Apply1 TInt TInt $Heap@0 |f#0@0| ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |t#inv#0_0|) _module.Thing.i))))))))
 :qid |Foralldfy.329:12|
 :skolemid |1356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |t#inv#0_0|) _module.Thing.i))
)))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@28)))
 :qid |Foralldfy.254:10|
 :skolemid |1305|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@28))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 44) 43) anon23_Then_correct) (=> (= (ControlFlow 0 44) 32) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (and ($Is refType |t#0_0@0| Tclass._module.Thing) ($IsAlloc refType |t#0_0@0| Tclass._module.Thing $Heap@0)) (|Seq#Contains| |things#0@0| ($Box refType |t#0_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |t#0_0@0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0_0@0| _module.Thing.i))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |t#0_0@0| _module.Thing.i)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |t#0_0@0| null)) (not true))) (=> (and (and (and ($Is refType |t#0_1@0| Tclass._module.Thing) ($IsAlloc refType |t#0_1@0| Tclass._module.Thing $Heap@0)) (|Seq#Contains| |things#0@0| ($Box refType |t#0_1@0|))) (and (or (not (= |t#0_0@0| |t#0_1@0|)) (not true)) (= (ControlFlow 0 2) (- 0 1)))) (or (or (or (not (= |t#0_0@0| |t#0_1@0|)) (not true)) (or (not (= _module.Thing.i _module.Thing.i)) (not true))) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 |f#0@0| ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |t#0_0@0|) _module.Thing.i)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@0 |f#0@0| ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |t#0_1@0|) _module.Thing.i))))))))))))))))
(let ((anon20_Else_correct  (=> (= |f#0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#14| (Handle1 (|lambda#37| (LitInt 2)) (|lambda#11| TInt) (|lambda#13| (SetRef_to_SetBox (|lambda#12| false))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 45) (- 0 49)) (forall (($o@@29 T@U) ($f@@10 T@U) ) (!  (=> (and (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@29) alloc)))) (or (or (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@29 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@10)))
 :qid |Foralldfy.328:15|
 :skolemid |1353|
))) (=> (forall (($o@@30 T@U) ($f@@11 T@U) ) (!  (=> (and (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@30) alloc)))) (or (or (= $o@@30 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@30 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@30 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@30 $f@@11)))
 :qid |Foralldfy.328:15|
 :skolemid |1353|
)) (and (=> (= (ControlFlow 0 45) (- 0 48)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (=> (=> (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (or (_module.ObjectTests.Valid $Heap@@0 this@@1) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@0 this@@1) (and (_module.ObjectTests.Valid $Heap@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (and (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@31) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@31)) (or (or (= $o@@31 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1))) (= $o@@31 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (= $o@@31 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3))))))
 :qid |Foralldfy.248:10|
 :skolemid |1302|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@31))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 45) 2) anon22_Then_correct) (=> (= (ControlFlow 0 45) 44) anon22_Else_correct))))))))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@0 alloc ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (= |things#0@0| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (and (=> (= (ControlFlow 0 53) 52) anon20_Then_correct) (=> (= (ControlFlow 0 53) 45) anon20_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.ObjectTests) ($IsAlloc refType this@@1 Tclass._module.ObjectTests $Heap@@0)))) (=> (and (and (and ($Is SeqType |things#0| (TSeq Tclass._module.Thing)) ($IsAlloc SeqType |things#0| (TSeq Tclass._module.Thing) $Heap@@0)) true) (and (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@0)) true)) (=> (and (and (and (and ($Is HandleTypeType |g#0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |g#0| (Tclass._System.___hFunc0 TInt) $Heap@@0)) true) (= 3 $FunctionContextHeight)) (and (and (|_module.ObjectTests.Valid#canCall| $Heap@@0 this@@1) (and (_module.ObjectTests.Valid $Heap@@0 this@@1) (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)))) (not true)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing1)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing2)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.ObjectTests.thing3)))) (not true))))) (= (ControlFlow 0 54) 53))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
