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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun class._module.Tree? () T@U)
(declare-fun Tagclass._module.Tree? () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$Tree () T@U)
(declare-fun field$value () T@U)
(declare-fun field$left () T@U)
(declare-fun field$right () T@U)
(declare-fun field$Contents () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#10| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.Tree.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.Tree.Repr () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun Tclass._module.Tree? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.Tree.Contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Tree.value () T@U)
(declare-fun _module.Tree.left () T@U)
(declare-fun _module.Tree.right () T@U)
(declare-fun |lambda#11| (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.Tree.Valid#canCall| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |lambda#9| (T@U T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.Tree.IsEmpty (T@U T@U) Bool)
(declare-fun |_module.Tree.IsEmpty#canCall| (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |lambda#14| (T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#13| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#12| (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 class._module.Tree? Tagclass._module.Tree? Tagclass._module.Tree tytagFamily$object |tytagFamily$_#Func1| tytagFamily$Tree field$value field$left field$right field$Contents field$Repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#1#heap#0| T@U) (|$l#1#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#10| |l#0|) |$l#1#heap#0| |$l#1#x#0|)) ($IsBox |$l#1#x#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |536|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#10| |l#0|) |$l#1#heap#0| |$l#1#x#0|))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (forall (($ly T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Tree))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (or (= $o this) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 this) _module.Tree.Repr)) ($Box refType $o)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0 $o) $f) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |494|
)) (= (_module.Tree.Valid $ly $h0 this) (_module.Tree.Valid $ly $h1 this))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Tree.Valid $ly $h1 this))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Tree?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Tree?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o@@0 Tclass._module.Tree?))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Tree $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Tree? $h@@0))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Tree $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Tree? $h@@0))
)))
(assert (= (FDim _module.Tree.Contents) 0))
(assert (= (FieldOfDecl class._module.Tree? field$Contents) _module.Tree.Contents))
(assert ($IsGhostField _module.Tree.Contents))
(assert (= (FDim _module.Tree.Repr) 0))
(assert (= (FieldOfDecl class._module.Tree? field$Repr) _module.Tree.Repr))
(assert ($IsGhostField _module.Tree.Repr))
(assert (= (FDim _module.Tree.value) 0))
(assert (= (FieldOfDecl class._module.Tree? field$value) _module.Tree.value))
(assert  (not ($IsGhostField _module.Tree.value)))
(assert (= (FDim _module.Tree.left) 0))
(assert (= (FieldOfDecl class._module.Tree? field$left) _module.Tree.left))
(assert  (not ($IsGhostField _module.Tree.left)))
(assert (= (FDim _module.Tree.right) 0))
(assert (= (FieldOfDecl class._module.Tree? field$right) _module.Tree.right))
(assert  (not ($IsGhostField _module.Tree.right)))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Tree? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Tree? $h@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#1#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#11| |l#0@@0|) |$l#1#o#0|)) (= |$l#1#o#0| |l#0@@0|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.125:10|
 :skolemid |537|
 :pattern ( (MapType1Select refType boolType (|lambda#11| |l#0@@0|) |$l#1#o#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.Tree.Valid#canCall| $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Tree) ($IsAlloc refType this@@0 Tclass._module.Tree $Heap)))))) (=> (_module.Tree.Valid $ly@@0 $Heap this@@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this@@0) _module.Tree.Repr)) ($Box refType this@@0))))
 :qid |COSTverifcomp20112MaxTreeclassdfy.80:19|
 :skolemid |497|
 :pattern ( (_module.Tree.Valid $ly@@0 $Heap this@@0))
))))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((s@@0 T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s@@0 bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@1 T@U) ) (!  (=> (|Set#IsMember| a o@@1) (|Set#IsMember| b o@@1))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@1))
 :pattern ( (|Set#IsMember| b o@@1))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1| T@U) (|l#2| Int) (|$l#1#heap#0@@0| T@U) (|$l#1#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#9| |l#0@@1| |l#1| |l#2|) |$l#1#heap#0@@0| |$l#1#x#0@@0|) ($Box boolType (bool_2_U  (and (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$l#1#heap#0@@0| |l#0@@1|) |l#1|)) |$l#1#x#0@@0|) (= (U_2_int ($Unbox intType |$l#1#x#0@@0|)) |l#2|)))))
 :qid |COSTverifcomp20112MaxTreeclassdfy.125:10|
 :skolemid |535|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#9| |l#0@@1| |l#1| |l#2|) |$l#1#heap#0@@0| |$l#1#x#0@@0|))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j (|Seq#Length| s0))) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
))))
 :qid |DafnyPreludebpl.1217:15|
 :skolemid |240|
 :pattern ( (|Seq#Equal| s0 s1))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@2 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@2) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@2) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@3 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@3) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@3) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@1 T@U) ) (!  (=> (or (|_module.Tree.IsEmpty#canCall| $Heap@@0 this@@1) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Tree) ($IsAlloc refType this@@1 Tclass._module.Tree $Heap@@0)))) (_module.Tree.Valid ($LS $LZ) $Heap@@0 this@@1)))) (= (_module.Tree.IsEmpty $Heap@@0 this@@1) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@1) _module.Tree.left)) this@@1)))
 :qid |COSTverifcomp20112MaxTreeclassdfy.93:12|
 :skolemid |506|
 :pattern ( (_module.Tree.IsEmpty $Heap@@0 this@@1) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v@@0 T@U) (t0@@6 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Tree?))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) _module.Tree.value)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@3) _module.Tree.value)))
)))
(assert (forall (($ly@@1 T@U) ($Heap@@1 T@U) (this@@2 T@U) ) (! (= (_module.Tree.Valid ($LS $ly@@1) $Heap@@1 this@@2) (_module.Tree.Valid $ly@@1 $Heap@@1 this@@2))
 :qid |COSTverifcomp20112MaxTreeclassdfy.80:19|
 :skolemid |492|
 :pattern ( (_module.Tree.Valid ($LS $ly@@1) $Heap@@1 this@@2))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@1) ($IsAlloc T@@1 v@@2 t@@0 h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@4 t@@1 h@@2) ($IsAllocBox bx@@4 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@4 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@3) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| T@U) ($o@@4 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#14| |l#0@@2| |l#1@@0| |l#2@@0| |l#3|) $o@@4 $f@@0))  (=> (and (or (not (= $o@@4 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@4) |l#2@@0|)))) (= $o@@4 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |540|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#14| |l#0@@2| |l#1@@0| |l#2@@0| |l#3|) $o@@4 $f@@0))
)))
(assert (forall (($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Tree?))) ($Is refType ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) _module.Tree.left)) Tclass._module.Tree?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |484|
 :pattern ( ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) _module.Tree.left)))
)))
(assert (forall (($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.Tree?))) ($Is refType ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@6) _module.Tree.right)) Tclass._module.Tree?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |486|
 :pattern ( ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@6) _module.Tree.right)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)) (+ (|Seq#Length| s0@@0) (|Seq#Length| s1@@0)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0@@0 s1@@0)))
)))
(assert (forall ((s@@2 T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@2) bx@@5) (U_2_bool (MapType1Select refType boolType s@@2 ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@2) bx@@5))
)))
(assert (forall (($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.Tree?))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) _module.Tree.Contents)) (TSeq TInt) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) _module.Tree.Contents)))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Tree?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.Tree?)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@8 Tclass._module.Tree?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.Tree) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsBox bx@@9 Tclass._module.Tree))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@3 T@U) ) (!  (=> (or (|_module.Tree.IsEmpty#canCall| $Heap@@2 this@@3) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Tree) ($IsAlloc refType this@@3 Tclass._module.Tree $Heap@@2)))) (_module.Tree.Valid ($LS $LZ) $Heap@@2 this@@3)))) (= (_module.Tree.IsEmpty $Heap@@2 this@@3) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@2 this@@3) _module.Tree.Contents)) |Seq#Empty|)))
 :qid |COSTverifcomp20112MaxTreeclassdfy.93:12|
 :skolemid |504|
 :pattern ( (_module.Tree.IsEmpty $Heap@@2 this@@3))
))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Tree)  (and ($Is refType |c#0@@2| Tclass._module.Tree?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Tree))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Tree?))
)))
(assert (forall ((s@@3 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@4) i) (|Seq#Index| s@@3 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@4) i))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@3 T@U) (this@@4 T@U) ) (!  (=> (or (|_module.Tree.Valid#canCall| $Heap@@3 this@@4) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Tree) ($IsAlloc refType this@@4 Tclass._module.Tree $Heap@@3)))))) (and (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) ($Box refType this@@4)) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) null)) (not true)) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)) null)) (not true)) (=> (not (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) this@@4) (= this@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Contents)) |Seq#Empty|))) (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) (=> (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) _module.Tree.Repr)) ($Box refType this@@4))) (=> (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)) (=> (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr))) (=> (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) _module.Tree.Repr)) ($Box refType this@@4))) (and (|_module.Tree.Valid#canCall| $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) (=> (_module.Tree.Valid $ly@@2 $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) (|_module.Tree.Valid#canCall| $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))))))))))))))) (= (_module.Tree.Valid ($LS $ly@@2) $Heap@@3 this@@4)  (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) ($Box refType this@@4)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) null)) (not true))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)) null)) (not true))) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) this@@4) (= this@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) _module.Tree.Repr)) ($Box refType this@@4)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) _module.Tree.Repr)) ($Box refType this@@4)))) (_module.Tree.Valid $ly@@2 $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left)))) (_module.Tree.Valid $ly@@2 $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@3 this@@4) _module.Tree.right))) _module.Tree.Contents))))))))))
 :qid |COSTverifcomp20112MaxTreeclassdfy.80:19|
 :skolemid |499|
 :pattern ( (_module.Tree.Valid ($LS $ly@@2) $Heap@@3 this@@4) ($IsGoodHeap $Heap@@3))
))))
(assert (forall (($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.Tree?))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAlloc refType ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) _module.Tree.left)) Tclass._module.Tree? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |485|
 :pattern ( ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) _module.Tree.left)))
)))
(assert (forall (($h@@8 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.Tree?))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) alloc)))) ($IsAlloc refType ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) _module.Tree.right)) Tclass._module.Tree? $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |487|
 :pattern ( ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@9) _module.Tree.right)))
)))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@6)  (or (|Seq#Contains| s0@@1 x@@6) (|Seq#Contains| s1@@1 x@@6)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@1 s1@@1) x@@6))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((s@@4 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@4 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= (|Seq#Index| s@@4 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@4 x@@7))
)))
(assert (forall (($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.Tree?))) ($Is SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) _module.Tree.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@9 $o@@10) _module.Tree.Repr)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.Tree?))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@11) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@11) _module.Tree.Repr)) (TSet Tclass._System.object) $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@10 $o@@11) _module.Tree.Repr)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#1#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#13| |l#0@@3|) |$l#1#ly#0|) |l#0@@3|)
 :qid |COSTverifcomp20112MaxTreeclassdfy.143:18|
 :skolemid |539|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#13| |l#0@@3|) |$l#1#ly#0|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@2) ($HeapSucc b@@2 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TBool) (and (= ($Box boolType ($Unbox boolType bx@@11)) bx@@11) ($Is boolType ($Unbox boolType bx@@11) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@11 TBool))
)))
(assert (forall ((v@@5 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@3) ($Is T@@3 v@@5 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@3))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((v@@6 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@15) h@@8) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@12) ($IsAllocBox bx@@12 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@12))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@12 T@U) ) (! ($Is refType $o@@12 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@12 Tclass._System.object?))
)))
(assert (forall ((v@@7 T@U) (t0@@16 T@U) (h@@9 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@16) h@@9) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@1) t0@@16 h@@9))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@16) h@@9))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSeq (TSeq t@@6)) t@@6)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSeq t@@7)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass._module.Tree?))) ($Is intType ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@13) _module.Tree.value)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@11 $o@@13) _module.Tree.value)))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@5 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 Tclass._module.Tree))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@14 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (or (= $o@@14 this@@5) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0@@0 this@@5) _module.Tree.Repr)) ($Box refType $o@@14)))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h0@@0 $o@@14) $f@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h1@@0 $o@@14) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |502|
)) (= (_module.Tree.IsEmpty $h0@@0 this@@5) (_module.Tree.IsEmpty $h1@@0 this@@5))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |503|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Tree.IsEmpty $h1@@0 this@@5))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@17 T@U) (t1@@14 T@U) (h@@10 T@U) ) (!  (=> ($IsGoodHeap h@@10) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@17) ($IsAllocBox bx0@@11 t0@@17 h@@10)) (Requires1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@17 t1@@14 h@@10 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@17 t1@@14) h@@10))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@13)) bx@@13) ($Is HandleTypeType ($Unbox HandleTypeType bx@@13) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@13 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@1| T@U) (|l#3@@0| Bool) ($o@@15 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#2| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@0|) $o@@15 $f@@2))  (=> (and (or (not (= $o@@15 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@1| $o@@15) |l#2@@1|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |534|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#2| |l#0@@4| |l#1@@1| |l#2@@1| |l#3@@0|) $o@@15 $f@@2))
)))
(assert (forall ((s@@6 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@6 val@@4)) s@@6) (= (|Seq#Build_inv1| (|Seq#Build| s@@6 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@6 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@18 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@18) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@18 t1@@15)))) (|Set#Equal| (Reads1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@18 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@18 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@14 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@14 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@14)) bx@@14) ($Is SetType ($Unbox SetType bx@@14) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@14 (TSet t@@8)))
)))
(assert (forall ((bx@@15 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@15 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@15)) bx@@15) ($Is SeqType ($Unbox SeqType bx@@15) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@15 (TSeq t@@9)))
)))
(assert (forall (($h@@12 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass._module.Tree?))) ($Is SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@16) _module.Tree.Contents)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@12 $o@@16) _module.Tree.Contents)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Tree?) Tagclass._module.Tree?))
(assert (= (TagFamily Tclass._module.Tree?) tytagFamily$Tree))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (forall ((s@@7 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@7) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@7))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|Set#Equal| a@@3 b@@3) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@3 o@@8) (|Set#IsMember| b@@3 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@3 o@@8))
 :pattern ( (|Set#IsMember| b@@3 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@3 b@@3))
)))
(assert (forall ((s0@@2 T@U) (s1@@2 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@2)) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s0@@2 n))) (=> (<= (|Seq#Length| s0@@2) n) (= (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n) (|Seq#Index| s1@@2 (- n (|Seq#Length| s0@@2))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@2 s1@@2) n))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@8 T@U) ) (!  (=> (= (|Seq#Length| s@@8) 0) (= s@@8 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@8))
)))
(assert (forall ((h@@11 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@11))
)))
(assert (forall ((h@@12 T@U) (v@@9 T@U) ) (! ($IsAlloc boolType v@@9 TBool h@@12)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@9 TBool h@@12))
)))
(assert (forall ((v@@10 T@U) (t0@@19 T@U) ) (! (= ($Is SeqType v@@10 (TSeq t0@@19)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@10))) ($IsBox (|Seq#Index| v@@10 i@@2) t0@@19))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@10 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@10 (TSeq t0@@19)))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#1#heap#0@@1| T@U) (|$l#1#x#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#12| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#x#0@@1|) |l#0@@5|)
 :qid |COSTverifcomp20112MaxTreeclassdfy.143:18|
 :skolemid |538|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#12| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#x#0@@1|))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is intType v@@11 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@11 TInt))
)))
(assert (forall ((v@@12 T@U) ) (! ($Is boolType v@@12 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@12 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun this@@6 () T@U)
(declare-fun |x#4@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |mx#0@4| () Int)
(declare-fun |P##0@0| () T@U)
(declare-fun |call3formal@x#0@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |mx#0@3| () Int)
(declare-fun |mx#0@2| () Int)
(declare-fun |call2formal@mx#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun call0formal@this@0 () T@U)
(declare-fun |mx#0@1| () Int)
(declare-fun |mx#0@0| () Int)
(declare-fun |call2formal@mx#0@0@@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun call0formal@this@0@@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(set-info :boogie-vc-id Impl$$_module.Tree.ComputeMax)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon16_correct true))
(let ((anon25_Else_correct  (=> (and (not (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| this@@6) _module.Tree.Contents)) ($Box intType (int_2_U |x#4@0|)))) (= (ControlFlow 0 10) 8)) anon16_correct)))
(let ((anon25_Then_correct  (=> (and (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |$lambdaHeap#0@0| this@@6) _module.Tree.Contents)) ($Box intType (int_2_U |x#4@0|))) (= (ControlFlow 0 9) 8)) anon16_correct)))
(let ((anon24_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#14| null |$lambdaHeap#0@0| alloc this@@6)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| this@@6 _module.Tree.Contents))) (=> (U_2_bool (MapType0Select refType FieldType boolType |$_Frame#l0@0| this@@6 _module.Tree.Contents)) (and (=> (= (ControlFlow 0 11) 9) anon25_Then_correct) (=> (= (ControlFlow 0 11) 10) anon25_Else_correct)))))))
(let ((anon24_Else_correct true))
(let ((anon23_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@3 |$lambdaHeap#0@0|) ($HeapSucc $Heap@3 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 13) 11) anon24_Then_correct) (=> (= (ControlFlow 0 13) 7) anon24_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|x#1| Int) ) (!  (=> (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType (int_2_U |x#1|))) (<= |x#1| |mx#0@4|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.127:20|
 :skolemid |524|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType (int_2_U |x#1|))))
))) (=> (forall ((|x#1@@0| T@U) ) (!  (=> (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType |x#1@@0|)) (<= (U_2_int |x#1@@0|) |mx#0@4|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.127:20|
 :skolemid |524|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType |x#1@@0|)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (exists ((|x#3| T@U) ) (!  (and (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType |x#3|)) (= (U_2_int |x#3|) |mx#0@4|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.128:20|
 :skolemid |525|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 this@@6) _module.Tree.Contents)) ($Box intType |x#3|)))
)))))))
(let ((anon23_Else_correct  (=> (and (= |P##0@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#13| (Handle1 (|lambda#9| this@@6 _module.Tree.Contents |mx#0@4|) (|lambda#10| TInt) (|lambda#12| (SetRef_to_SetBox (|lambda#11| this@@6))))) ($LS $LZ)))) (= |call3formal@x#0@0| ($Box intType (int_2_U |mx#0@4|)))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (Requires1 TInt TBool $Heap@3 |P##0@0| |call3formal@x#0@0|)) (=> (Requires1 TInt TBool $Heap@3 |P##0@0| |call3formal@x#0@0|) (and (=> (= (ControlFlow 0 4) (- 0 5)) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@3 |P##0@0| |call3formal@x#0@0|)))) (=> (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@3 |P##0@0| |call3formal@x#0@0|))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall ((|y#1| T@U) ) (!  (=> ($IsBox |y#1| TInt) true)
 :qid |COSTverifcomp20112MaxTreeclassdfy.121:20|
 :skolemid |514|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@4 |P##0@0| |y#1|)))
 :pattern ( (Requires1 TInt TBool $Heap@4 |P##0@0| |y#1|))
))) (and (and (exists ((|y#1@@0| T@U) ) (!  (and (and ($IsBox |y#1@@0| TInt) ($IsAllocBox |y#1@@0| TInt $Heap@4)) (and (Requires1 TInt TBool $Heap@4 |P##0@0| |y#1@@0|) (U_2_bool ($Unbox boolType (Apply1 TInt TBool $Heap@4 |P##0@0| |y#1@@0|)))))
 :qid |COSTverifcomp20112MaxTreeclassdfy.121:20|
 :skolemid |515|
 :pattern ( ($Unbox boolType (Apply1 TInt TBool $Heap@4 |P##0@0| |y#1@@0|)))
 :pattern ( (Requires1 TInt TBool $Heap@4 |P##0@0| |y#1@@0|))
)) (= $Heap@3 $Heap@4)) (and (= $Heap@5 $Heap@4) (= (ControlFlow 0 4) 2)))) GeneratedUnifiedExit_correct))))))))
(let ((anon12_correct  (and (=> (= (ControlFlow 0 14) 13) anon23_Then_correct) (=> (= (ControlFlow 0 14) 4) anon23_Else_correct))))
(let ((anon10_correct  (=> (and (and (= |mx#0@3| (ite (< |mx#0@2| |call2formal@mx#0@0|) |call2formal@mx#0@0| |mx#0@2|)) (= |mx#0@4| |mx#0@3|)) (and (= $Heap@3 $Heap@2) (= (ControlFlow 0 16) 14))) anon12_correct)))
(let ((anon22_Else_correct  (=> (and (<= |call2formal@mx#0@0| |mx#0@2|) (= (ControlFlow 0 18) 16)) anon10_correct)))
(let ((anon22_Then_correct  (=> (and (< |mx#0@2| |call2formal@mx#0@0|) (= (ControlFlow 0 17) 16)) anon10_correct)))
(let ((anon21_Then_correct  (=> (not (_module.Tree.IsEmpty $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)))) (and (=> (= (ControlFlow 0 19) (- 0 26)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)) null)) (not true)) (and (=> (= (ControlFlow 0 19) (- 0 25)) (and (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)))))) (=> (and (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr))))) (=> (= call0formal@this@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (and (=> (= (ControlFlow 0 19) (- 0 24)) (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) ($Box refType call0formal@this@0))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) ($Box refType call0formal@this@0)))) (and (=> (= (ControlFlow 0 19) (- 0 23)) (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) null)) (not true))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) null)) (not true)))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)) null)) (not true))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)) null)) (not true)))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) call0formal@this@0) (= call0formal@this@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Repr)) ($Box refType call0formal@this@0)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Repr)) ($Box refType call0formal@this@0)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Contents))))))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@1 call0formal@this@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 call0formal@this@0) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) call0formal@this@0) (= call0formal@this@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Repr)) ($Box refType call0formal@this@0)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Repr)) ($Box refType call0formal@this@0)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 call0formal@this@0) _module.Tree.right))) _module.Tree.Contents)))))))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (_module.Tree.IsEmpty $Heap@1 call0formal@this@0))) (=> (not (_module.Tree.IsEmpty $Heap@1 call0formal@this@0)) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall ((|x#1@@1| T@U) ) (!  (=> (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Tree.Contents)) ($Box intType |x#1@@1|)) (<= (U_2_int |x#1@@1|) |call2formal@mx#0@0|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.127:20|
 :skolemid |520|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Tree.Contents)) ($Box intType |x#1@@1|)))
)) (exists ((|x#3@@0| Int) ) (!  (and (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Tree.Contents)) ($Box intType (int_2_U |x#3@@0|))) (= |x#3@@0| |call2formal@mx#0@0|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.128:20|
 :skolemid |522|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 call0formal@this@0) _module.Tree.Contents)) ($Box intType (int_2_U |x#3@@0|))))
))) (and (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@17) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@17) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@17)))
 :qid |COSTverifcomp20112MaxTreeclassdfy.125:10|
 :skolemid |523|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@17))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 19) 17) anon22_Then_correct) (=> (= (ControlFlow 0 19) 18) anon22_Else_correct))))))))))))))))))))))
(let ((anon21_Else_correct  (=> (and (and (_module.Tree.IsEmpty $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (= |mx#0@4| |mx#0@2|)) (and (= $Heap@3 $Heap@1) (= (ControlFlow 0 15) 14))) anon12_correct)))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 27) (- 0 32)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)) null)) (not true)) (=> ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right) Tclass._module.Tree? $Heap@1) (and (=> (= (ControlFlow 0 27) (- 0 31)) (=> (|_module.Tree.Valid#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (=> (|_module.Tree.Valid#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left)) null)) (not true))))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> (|_module.Tree.Valid#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right)) null)) (not true))))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (=> (|_module.Tree.Valid#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (_module.Tree.Valid ($LS $LZ) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left)) ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)) ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) _module.Tree.right))) _module.Tree.Contents))))))))) (=> (_module.Tree.Valid ($LS $LZ) $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (=> (and (|_module.Tree.IsEmpty#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right))) (|_module.Tree.IsEmpty#canCall| $Heap@1 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 this@@6) _module.Tree.right)))) (and (=> (= (ControlFlow 0 27) 19) anon21_Then_correct) (=> (= (ControlFlow 0 27) 15) anon21_Else_correct)))))))))))))
(let ((anon4_correct  (=> (and (and (= |mx#0@1| (ite (< |mx#0@0| |call2formal@mx#0@0@@0|) |call2formal@mx#0@0@@0| |mx#0@0|)) (= |mx#0@2| |mx#0@1|)) (and (= $Heap@1 $Heap@0) (= (ControlFlow 0 34) 27))) anon6_correct)))
(let ((anon20_Else_correct  (=> (and (<= |call2formal@mx#0@0@@0| |mx#0@0|) (= (ControlFlow 0 36) 34)) anon4_correct)))
(let ((anon20_Then_correct  (=> (and (< |mx#0@0| |call2formal@mx#0@0@@0|) (= (ControlFlow 0 35) 34)) anon4_correct)))
(let ((anon19_Then_correct  (=> (not (_module.Tree.IsEmpty $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)))) (and (=> (= (ControlFlow 0 37) (- 0 44)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) null)) (not true)) (and (=> (= (ControlFlow 0 37) (- 0 43)) (and (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)))))) (=> (and (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr))) (not (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr))))) (=> (= call0formal@this@0@@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (and (=> (= (ControlFlow 0 37) (- 0 42)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0)))) (and (=> (= (ControlFlow 0 37) (- 0 41)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) null)) (not true))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) null)) (not true)))) (and (=> (= (ControlFlow 0 37) (- 0 40)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)) null)) (not true))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)) null)) (not true)))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) call0formal@this@0@@0) (= call0formal@this@0@@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Contents))))))))) (=> (=> (|_module.Tree.Valid#canCall| $Heap@@4 call0formal@this@0@@0) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 call0formal@this@0@@0) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) call0formal@this@0@@0) (= call0formal@this@0@@0 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Repr)) ($Box refType call0formal@this@0@@0)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 call0formal@this@0@@0) _module.Tree.right))) _module.Tree.Contents)))))))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (not (_module.Tree.IsEmpty $Heap@@4 call0formal@this@0@@0))) (=> (not (_module.Tree.IsEmpty $Heap@@4 call0formal@this@0@@0)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall ((|x#1@@2| T@U) ) (!  (=> (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Tree.Contents)) ($Box intType |x#1@@2|)) (<= (U_2_int |x#1@@2|) |call2formal@mx#0@0@@0|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.127:20|
 :skolemid |520|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Tree.Contents)) ($Box intType |x#1@@2|)))
)) (exists ((|x#3@@1| Int) ) (!  (and (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Tree.Contents)) ($Box intType (int_2_U |x#3@@1|))) (= |x#3@@1| |call2formal@mx#0@0@@0|))
 :qid |COSTverifcomp20112MaxTreeclassdfy.128:20|
 :skolemid |522|
 :pattern ( (|Seq#Contains| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 call0formal@this@0@@0) _module.Tree.Contents)) ($Box intType (int_2_U |x#3@@1|))))
))) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 $o@@18) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@18) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 $o@@18)))
 :qid |COSTverifcomp20112MaxTreeclassdfy.125:10|
 :skolemid |523|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@18))
)) ($HeapSucc $Heap@@4 $Heap@0))) (and (=> (= (ControlFlow 0 37) 35) anon20_Then_correct) (=> (= (ControlFlow 0 37) 36) anon20_Else_correct))))))))))))))))))))))
(let ((anon19_Else_correct  (=> (and (and (_module.Tree.IsEmpty $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (= |mx#0@2| |mx#0@0|)) (and (= $Heap@1 $Heap@@4) (= (ControlFlow 0 33) 27))) anon6_correct)))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@4 alloc false)) (= |mx#0@0| (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.value))))) (and (=> (= (ControlFlow 0 45) (- 0 50)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) null)) (not true)) (=> ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left) Tclass._module.Tree? $Heap@@4) (and (=> (= (ControlFlow 0 45) (- 0 49)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left)) null)) (not true))))) (and (=> (= (ControlFlow 0 45) (- 0 47)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right)) null)) (not true))))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (=> (|_module.Tree.Valid#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left)) ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right))) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left)))) (_module.Tree.Valid ($LS ($LS $LZ)) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.right))) _module.Tree.Contents))))))))) (=> (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (=> (and (|_module.Tree.IsEmpty#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) (|_module.Tree.IsEmpty#canCall| $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)))) (and (=> (= (ControlFlow 0 45) 37) anon19_Then_correct) (=> (= (ControlFlow 0 45) 33) anon19_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (=> (and (and (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 Tclass._module.Tree) ($IsAlloc refType this@@6 Tclass._module.Tree $Heap@@4))) (= 2 $FunctionContextHeight)) (and (and (|_module.Tree.Valid#canCall| $Heap@@4 this@@6) (and (_module.Tree.Valid ($LS $LZ) $Heap@@4 this@@6) (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) ($Box refType this@@6)) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) null)) (not true))) (or (not (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right)) null)) (not true))) (or (and (and (= ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) this@@6) (= this@@6 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Contents)) |Seq#Empty|)) (and (and (and (and (and (and (and (and (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Repr)) ($Box refType this@@6)))) (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right))) (|Set#Subset| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right))) _module.Tree.Repr)) ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Repr)))) (not (|Set#IsMember| ($Unbox SetType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right))) _module.Tree.Repr)) ($Box refType this@@6)))) (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left)))) (_module.Tree.Valid ($LS $LZ) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right)))) (|Seq#Equal| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.Contents)) (|Seq#Append| (|Seq#Append| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.left))) _module.Tree.Contents)) (|Seq#Build| |Seq#Empty| (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.value))) ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 ($Unbox refType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@4 this@@6) _module.Tree.right))) _module.Tree.Contents))))))))) (and (not (_module.Tree.IsEmpty $Heap@@4 this@@6)) (= (ControlFlow 0 51) 45)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
