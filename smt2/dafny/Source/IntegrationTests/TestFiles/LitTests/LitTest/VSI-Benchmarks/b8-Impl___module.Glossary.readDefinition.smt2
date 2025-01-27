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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Glossary? () T@U)
(declare-fun Tagclass._module.Glossary () T@U)
(declare-fun Tagclass._module.Word () T@U)
(declare-fun Tagclass._module.Word? () T@U)
(declare-fun Tagclass._module.ReaderStream () T@U)
(declare-fun Tagclass._module.ReaderStream? () T@U)
(declare-fun class._module.ReaderStream? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Glossary () T@U)
(declare-fun tytagFamily$Word () T@U)
(declare-fun tytagFamily$ReaderStream () T@U)
(declare-fun field$footprint () T@U)
(declare-fun field$isOpen () T@U)
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
(declare-fun Tclass._module.Glossary? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Word? () T@U)
(declare-fun Tclass._module.ReaderStream? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Glossary () T@U)
(declare-fun Tclass._module.Word () T@U)
(declare-fun Tclass._module.ReaderStream () T@U)
(declare-fun _module.ReaderStream.footprint () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.ReaderStream.isOpen () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.ReaderStream.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.ReaderStream.Valid#canCall| (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Glossary? Tagclass._module.Glossary Tagclass._module.Word Tagclass._module.Word? Tagclass._module.ReaderStream Tagclass._module.ReaderStream? class._module.ReaderStream? tytagFamily$object tytagFamily$Glossary tytagFamily$Word tytagFamily$ReaderStream field$footprint field$isOpen)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Glossary?)  (or (= $o null) (= (dtype $o) Tclass._module.Glossary?)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($Is refType $o Tclass._module.Glossary?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.Word?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.Word?)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($Is refType $o@@0 Tclass._module.Word?))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.ReaderStream?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass._module.ReaderStream?)))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( ($Is refType $o@@1 Tclass._module.ReaderStream?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Glossary $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Glossary? $h@@0))
 :qid |unknown.0:0|
 :skolemid |632|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Glossary $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Glossary? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.Word $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.Word? $h@@1))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Word $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.Word? $h@@1))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._module.ReaderStream $h@@2) ($IsAlloc refType |c#0@@2| Tclass._module.ReaderStream? $h@@2))
 :qid |unknown.0:0|
 :skolemid |672|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ReaderStream $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._module.ReaderStream? $h@@2))
)))
(assert (= (FDim _module.ReaderStream.footprint) 0))
(assert (= (FieldOfDecl class._module.ReaderStream? field$footprint) _module.ReaderStream.footprint))
(assert ($IsGhostField _module.ReaderStream.footprint))
(assert (= (FDim _module.ReaderStream.isOpen) 0))
(assert (= (FieldOfDecl class._module.ReaderStream? field$isOpen) _module.ReaderStream.isOpen))
(assert  (not ($IsGhostField _module.ReaderStream.isOpen)))
(assert  (and (and (and (and (and (and (and (= (Ctor SetType) 4) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.ReaderStream.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.ReaderStream) ($IsAlloc refType this Tclass._module.ReaderStream $Heap)))))) (= (_module.ReaderStream.Valid $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.ReaderStream.footprint)) ($Box refType this)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.ReaderStream.isOpen))))))
 :qid |b8dfy.151:19|
 :skolemid |649|
 :pattern ( (_module.ReaderStream.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.Glossary? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.Glossary? $h@@4))
)))
(assert (forall (($o@@4 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._module.Word? $h@@5)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._module.Word? $h@@5))
)))
(assert (forall (($o@@5 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass._module.ReaderStream? $h@@6)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($IsAlloc refType $o@@5 Tclass._module.ReaderStream? $h@@6))
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
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.ReaderStream?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.ReaderStream.isOpen)) TBool $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |644|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.ReaderStream.isOpen)))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0) ($IsAlloc T@@1 v@@2 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@2) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@2))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
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
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Glossary?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Glossary?)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@4 Tclass._module.Glossary?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.Glossary) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.Glossary)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@5 Tclass._module.Glossary))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Word) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.Word)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsBox bx@@6 Tclass._module.Word))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.Word?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._module.Word?)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsBox bx@@7 Tclass._module.Word?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.ReaderStream) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass._module.ReaderStream)))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsBox bx@@8 Tclass._module.ReaderStream))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.ReaderStream?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass._module.ReaderStream?)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($IsBox bx@@9 Tclass._module.ReaderStream?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.Glossary)  (and ($Is refType |c#0@@4| Tclass._module.Glossary?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Glossary))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.Glossary?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass._module.Word)  (and ($Is refType |c#0@@5| Tclass._module.Word?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Word))
 :pattern ( ($Is refType |c#0@@5| Tclass._module.Word?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass._module.ReaderStream)  (and ($Is refType |c#0@@6| Tclass._module.ReaderStream?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |671|
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ReaderStream))
 :pattern ( ($Is refType |c#0@@6| Tclass._module.ReaderStream?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@4) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@4) i))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@6)  (or (|Seq#Contains| s0@@0 x@@6) (|Seq#Contains| s1@@0 x@@6)))
 :qid |DafnyPreludebpl.1192:15|
 :skolemid |233|
 :pattern ( (|Seq#Contains| (|Seq#Append| s0@@0 s1@@0) x@@6))
)))
(assert (forall ((s@@3 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@3 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@3))) (= (|Seq#Index| s@@3 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@3 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@3 x@@7))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.ReaderStream?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.ReaderStream.footprint)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |641|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.ReaderStream.footprint)))
)))
(assert (forall (($h@@9 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass._module.ReaderStream?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.ReaderStream.footprint)) (TSet Tclass._System.object) $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |642|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@8) _module.ReaderStream.footprint)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TBool) (and (= ($Box boolType ($Unbox boolType bx@@10)) bx@@10) ($Is boolType ($Unbox boolType bx@@10) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@10 TBool))
)))
(assert (forall ((v@@5 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@5) t@@3) ($Is T@@3 v@@5 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@5) t@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@11) ($IsAllocBox bx@@11 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@7))) ($IsAllocBox (|Seq#Index| v@@7 i@@1) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@7 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@7 (TSeq t0@@2) h@@4))
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
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass._module.ReaderStream?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.ReaderStream.isOpen)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |643|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) _module.ReaderStream.isOpen)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.ReaderStream))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@11 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (or (= $o@@11 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.ReaderStream.footprint)) ($Box refType $o@@11)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@11) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@11) $f)))
 :qid |unknown.0:0|
 :skolemid |645|
)) (= (_module.ReaderStream.Valid $h0 this@@0) (_module.ReaderStream.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |646|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.ReaderStream.Valid $h1 this@@0))
)))
(assert (forall ((s@@5 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@1)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@1))
)))
(assert (forall ((bx@@12 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@8)))
)))
(assert (forall ((bx@@13 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@13 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@13)) bx@@13) ($Is SeqType ($Unbox SeqType bx@@13) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@13 (TSeq t@@9)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Glossary?) Tagclass._module.Glossary?))
(assert (= (TagFamily Tclass._module.Glossary?) tytagFamily$Glossary))
(assert (= (Tag Tclass._module.Glossary) Tagclass._module.Glossary))
(assert (= (TagFamily Tclass._module.Glossary) tytagFamily$Glossary))
(assert (= (Tag Tclass._module.Word) Tagclass._module.Word))
(assert (= (TagFamily Tclass._module.Word) tytagFamily$Word))
(assert (= (Tag Tclass._module.Word?) Tagclass._module.Word?))
(assert (= (TagFamily Tclass._module.Word?) tytagFamily$Word))
(assert (= (Tag Tclass._module.ReaderStream) Tagclass._module.ReaderStream))
(assert (= (TagFamily Tclass._module.ReaderStream) tytagFamily$ReaderStream))
(assert (= (Tag Tclass._module.ReaderStream?) Tagclass._module.ReaderStream?))
(assert (= (TagFamily Tclass._module.ReaderStream?) tytagFamily$ReaderStream))
(assert (forall ((s0@@1 T@U) (s1@@1 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@1)) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s0@@1 n))) (=> (<= (|Seq#Length| s0@@1) n) (= (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n) (|Seq#Index| s1@@1 (- n (|Seq#Length| s0@@1))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@1 s1@@1) n))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@12 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@0))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@12))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |816|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@0))
)))
(assert (forall ((h@@5 T@U) (v@@8 T@U) ) (! ($IsAlloc boolType v@@8 TBool h@@5)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@8 TBool h@@5))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@9 (TSeq t0@@4)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@9))) ($IsBox (|Seq#Index| v@@9 i@@2) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@9 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@9 (TSeq t0@@4)))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is boolType v@@10 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@10 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@1 () T@U)
(declare-fun |rs#0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |$w$loop#0_0@0| () Bool)
(declare-fun |call2formal@x#0@0| () T@U)
(declare-fun |definition#0@2| () T@U)
(declare-fun |definition#0@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call2formal@x#0@0@@0| () T@U)
(declare-fun |definition#0@3| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |call2formal@x#0| () T@U)
(declare-fun |w#0_0_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |definition#0@0| () T@U)
(declare-fun |definition#0| () T@U)
(declare-fun |call2formal@x#0@@0| () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |term#0| () T@U)
(declare-fun |w#0_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Glossary.readDefinition)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon5_correct true))
(let ((anon17_Else_correct  (=> (and (not (_module.ReaderStream.Valid $Heap@1 |rs#0|)) (= (ControlFlow 0 27) 22)) anon5_correct)))
(let ((anon17_Then_correct  (=> (_module.ReaderStream.Valid $Heap@1 |rs#0|) (and (=> (= (ControlFlow 0 23) (- 0 26)) (or (not (= |rs#0| null)) (not true))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (or (not (= |rs#0| null)) (not true))) (and (=> (= (ControlFlow 0 23) (- 0 24)) ($IsAlloc refType |rs#0| Tclass._module.ReaderStream $Heap@@0)) (=> ($IsAlloc refType |rs#0| Tclass._module.ReaderStream $Heap@@0) (=> (= (ControlFlow 0 23) 22) anon5_correct))))))))
(let ((anon16_Then_correct  (=> (not |$w$loop#0_0@0|) (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= |rs#0| null)) (not true))) (=> (and ($IsAllocBox ($Box refType |rs#0|) Tclass._module.ReaderStream? $Heap@1) (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|)) (and (=> (= (ControlFlow 0 28) 23) anon17_Then_correct) (=> (= (ControlFlow 0 28) 27) anon17_Else_correct)))))))
(let ((anon19_Else_correct  (=> (or (not (= |call2formal@x#0@0| null)) (not true)) (=> (and (= |definition#0@2| (|Seq#Append| |definition#0@1| (|Seq#Build| |Seq#Empty| ($Box refType |call2formal@x#0@0|)))) (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|)) (and (=> (= (ControlFlow 0 9) (- 0 12)) (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|) (or (_module.ReaderStream.Valid $Heap@2 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)))))) (=> (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|) (or (_module.ReaderStream.Valid $Heap@2 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|) (or (_module.ReaderStream.Valid $Heap@2 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.isOpen))))))) (=> (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|) (or (_module.ReaderStream.Valid $Heap@2 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.isOpen)))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (=> |$w$loop#0_0@0| (and (forall (($o@@13 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@13)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@13)))) (or (not (= $o@@13 null)) (not true)))
 :qid |b8dfy.128:33|
 :skolemid |624|
 :pattern (  (or (not (= $o@@13 null)) (not true)))
)) (forall (($o@@14 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@14)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@14)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@14) alloc)))))
 :qid |b8dfy.128:33|
 :skolemid |625|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@14) alloc)))
))))) (=> (=> |$w$loop#0_0@0| (and (forall (($o@@15 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@15)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@15)))) (or (not (= $o@@15 null)) (not true)))
 :qid |b8dfy.128:33|
 :skolemid |624|
 :pattern (  (or (not (= $o@@15 null)) (not true)))
)) (forall (($o@@16 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@16)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@16)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@16) alloc)))))
 :qid |b8dfy.128:33|
 :skolemid |625|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@16) alloc)))
)))) (=> (= (ControlFlow 0 9) (- 0 8)) (=> |$w$loop#0_0@0| (not (|Seq#Contains| |definition#0@2| ($Box refType null)))))))))))))))
(let ((anon15_LoopDone_correct true))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@4 |rs#0|) (or (_module.ReaderStream.Valid $Heap@4 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@4 |rs#0|) (or (_module.ReaderStream.Valid $Heap@4 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@4 |rs#0|) (or (_module.ReaderStream.Valid $Heap@4 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.isOpen)))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@4 |rs#0|) (or (_module.ReaderStream.Valid $Heap@4 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.isOpen))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (forall (($o@@17 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@17)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@17)))) (or (not (= $o@@17 null)) (not true)))
 :qid |b8dfy.120:27|
 :skolemid |618|
 :pattern (  (or (not (= $o@@17 null)) (not true)))
)) (forall (($o@@18 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@18)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@18)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@18) alloc)))))
 :qid |b8dfy.120:27|
 :skolemid |619|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@18) alloc)))
)))) (=> (and (forall (($o@@19 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@19)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@19)))) (or (not (= $o@@19 null)) (not true)))
 :qid |b8dfy.120:27|
 :skolemid |618|
 :pattern (  (or (not (= $o@@19 null)) (not true)))
)) (forall (($o@@20 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@20)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@20)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@20) alloc)))))
 :qid |b8dfy.120:27|
 :skolemid |619|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@20) alloc)))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (or (not (= |call2formal@x#0@0@@0| null)) (not true)) (not (|Seq#Contains| |definition#0@3| ($Box refType null)))))))))))))
(let ((after_0_0_correct  (=> (= $Heap@4 $Heap@3) (=> (and (= |definition#0@3| |definition#0@1|) (= (ControlFlow 0 13) 2)) GeneratedUnifiedExit_correct))))
(let ((anon19_Then_correct  (=> (= |call2formal@x#0@0| null) (=> (and (= $Heap@3 $Heap@2) (= (ControlFlow 0 15) 13)) after_0_0_correct))))
(let ((anon18_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 16) (- 0 20)) (or (not (= |rs#0| null)) (not true))) (=> (or (not (= |rs#0| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (forall (($o@@21 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@21) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@21))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@21 $f@@1)))
 :qid |b8dfy.132:28|
 :skolemid |628|
))) (=> (forall (($o@@22 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@22) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@22))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@22 $f@@2)))
 :qid |b8dfy.132:28|
 :skolemid |628|
)) (=> (and ($Is refType |call2formal@x#0| Tclass._module.Word?) ($IsAlloc refType |call2formal@x#0| Tclass._module.Word? $Heap@@0)) (and (=> (= (ControlFlow 0 16) (- 0 18)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)))) (and (=> (= (ControlFlow 0 16) (- 0 17)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.isOpen)))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.isOpen))))) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (and (and ($Is refType |call2formal@x#0@0| Tclass._module.Word?) ($IsAlloc refType |call2formal@x#0@0| Tclass._module.Word? $Heap@2)) (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|)) (and (|_module.ReaderStream.Valid#canCall| $Heap@2 |rs#0|) (and (_module.ReaderStream.Valid $Heap@2 |rs#0|) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.isOpen))))))) (and (and (forall (($o@@23 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@23)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@23)))) (or (not (= $o@@23 null)) (not true)))
 :qid |b8dfy.168:24|
 :skolemid |662|
 :pattern (  (or (not (= $o@@23 null)) (not true)))
)) (forall (($o@@24 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@24)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@24)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@24) alloc)))))
 :qid |b8dfy.168:24|
 :skolemid |663|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@24) alloc)))
))) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@25)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@25))))
 :qid |b8dfy.165:10|
 :skolemid |664|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@25))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 16) 15) anon19_Then_correct) (=> (= (ControlFlow 0 16) 9) anon19_Else_correct))))))))))))))))
(let ((anon18_Then_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (= $Heap@3 $Heap@1) (= (ControlFlow 0 14) 13)) after_0_0_correct))))
(let ((anon16_Else_correct  (=> |$w$loop#0_0@0| (and (=> (= (ControlFlow 0 21) 14) anon18_Then_correct) (=> (= (ControlFlow 0 21) 16) anon18_Else_correct)))))
(let ((anon15_LoopBody_correct  (and (=> (= (ControlFlow 0 30) 28) anon16_Then_correct) (=> (= (ControlFlow 0 30) 21) anon16_Else_correct))))
(let ((anon15_LoopHead_correct  (=> (and (and (and (and ($Is SeqType |definition#0@1| (TSeq Tclass._module.Word?)) ($IsAlloc SeqType |definition#0@1| (TSeq Tclass._module.Word?) $Heap@1)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is refType |w#0_0_0@0| Tclass._module.Word?) ($IsAlloc refType |w#0_0_0@0| Tclass._module.Word? $Heap@1)) (and (not false) (=> |$w$loop#0_0@0| (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|))))) (and (and (and (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (or (_module.ReaderStream.Valid $Heap@1 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.isOpen))))))) (and (=> |$w$loop#0_0@0| (and (|_module.ReaderStream.Valid#canCall| $Heap@1 |rs#0|) (and (_module.ReaderStream.Valid $Heap@1 |rs#0|) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.isOpen))))))) (=> |$w$loop#0_0@0| (and (forall (($o@@26 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@26)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@26)))) (or (not (= $o@@26 null)) (not true)))
 :qid |b8dfy.128:33|
 :skolemid |624|
 :pattern (  (or (not (= $o@@26 null)) (not true)))
)) (forall (($o@@27 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@27)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@27)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@27) alloc)))))
 :qid |b8dfy.128:33|
 :skolemid |625|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@27) alloc)))
)))))) (and (and (=> |$w$loop#0_0@0| (not (|Seq#Contains| |definition#0@1| ($Box refType null)))) (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@28) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@28)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@28))))
 :qid |b8dfy.127:7|
 :skolemid |626|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@28))
))) (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@29 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@29) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@29) $f@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@29 $f@@3))))
 :qid |b8dfy.127:7|
 :skolemid |627|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@29) $f@@3))
)))))) (and (=> (= (ControlFlow 0 31) 7) anon15_LoopDone_correct) (=> (= (ControlFlow 0 31) 30) anon15_LoopBody_correct)))))
(let ((anon14_Then_correct  (=> (and (or (not (= |call2formal@x#0@0@@0| null)) (not true)) (= |definition#0@0| (Lit SeqType |Seq#Empty|))) (and (=> (= (ControlFlow 0 32) (- 0 36)) (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@0 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)))))) (=> (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@0 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (and (=> (= (ControlFlow 0 32) (- 0 35)) (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@0 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.isOpen))))))) (=> (=> |$w$loop#0_0@0| (=> (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@0 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.isOpen)))))) (and (=> (= (ControlFlow 0 32) (- 0 34)) (=> |$w$loop#0_0@0| (and (forall (($o@@30 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@30)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@30)))) (or (not (= $o@@30 null)) (not true)))
 :qid |b8dfy.128:33|
 :skolemid |624|
 :pattern (  (or (not (= $o@@30 null)) (not true)))
)) (forall (($o@@31 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@31)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@31)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@31) alloc)))))
 :qid |b8dfy.128:33|
 :skolemid |625|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@31) alloc)))
))))) (=> (=> |$w$loop#0_0@0| (and (forall (($o@@32 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@32)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@32)))) (or (not (= $o@@32 null)) (not true)))
 :qid |b8dfy.128:33|
 :skolemid |624|
 :pattern (  (or (not (= $o@@32 null)) (not true)))
)) (forall (($o@@33 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@33)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@33)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@33) alloc)))))
 :qid |b8dfy.128:33|
 :skolemid |625|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@33) alloc)))
)))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (=> |$w$loop#0_0@0| (not (|Seq#Contains| |definition#0@0| ($Box refType null))))) (=> (=> |$w$loop#0_0@0| (not (|Seq#Contains| |definition#0@0| ($Box refType null)))) (=> (= (ControlFlow 0 32) 31) anon15_LoopHead_correct))))))))))))
(let ((anon14_Else_correct  (=> (and (and (= |call2formal@x#0@0@@0| null) (= $Heap@4 $Heap@0)) (and (= |definition#0@3| |definition#0|) (= (ControlFlow 0 6) 2))) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#6| null $Heap@@0 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)))) (and (=> (= (ControlFlow 0 37) (- 0 41)) (or (not (= |rs#0| null)) (not true))) (=> (or (not (= |rs#0| null)) (not true)) (and (=> (= (ControlFlow 0 37) (- 0 40)) (forall (($o@@34 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@34) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@34))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@34 $f@@4)))
 :qid |b8dfy.124:23|
 :skolemid |621|
))) (=> (forall (($o@@35 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@35 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@35) alloc)))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@35))) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@35 $f@@5)))
 :qid |b8dfy.124:23|
 :skolemid |621|
)) (=> (and ($Is refType |call2formal@x#0@@0| Tclass._module.Word?) ($IsAlloc refType |call2formal@x#0@@0| Tclass._module.Word? $Heap@@0)) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@@0 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@@0 |rs#0|) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)))) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> (|_module.ReaderStream.Valid#canCall| $Heap@@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@@0 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.isOpen)))))) (=> (=> (|_module.ReaderStream.Valid#canCall| $Heap@@0 |rs#0|) (or (_module.ReaderStream.Valid $Heap@@0 |rs#0|) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.isOpen))))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and (and ($Is refType |call2formal@x#0@0@@0| Tclass._module.Word?) ($IsAlloc refType |call2formal@x#0@0@@0| Tclass._module.Word? $Heap@0)) (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|)) (and (|_module.ReaderStream.Valid#canCall| $Heap@0 |rs#0|) (and (_module.ReaderStream.Valid $Heap@0 |rs#0|) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.isOpen))))))) (and (and (forall (($o@@36 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@36)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@36)))) (or (not (= $o@@36 null)) (not true)))
 :qid |b8dfy.168:24|
 :skolemid |662|
 :pattern (  (or (not (= $o@@36 null)) (not true)))
)) (forall (($o@@37 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@37)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@37)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@37) alloc)))))
 :qid |b8dfy.168:24|
 :skolemid |663|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@37) alloc)))
))) (and (forall (($o@@38 T@U) ) (!  (=> (and (or (not (= $o@@38 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@38) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@38) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@38)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType $o@@38))))
 :qid |b8dfy.165:10|
 :skolemid |664|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@38))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 37) 32) anon14_Then_correct) (=> (= (ControlFlow 0 37) 6) anon14_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Glossary) ($IsAlloc refType this@@1 Tclass._module.Glossary $Heap@@0))) (and ($Is refType |rs#0| Tclass._module.ReaderStream) ($IsAlloc refType |rs#0| Tclass._module.ReaderStream $Heap@@0))) (and (and ($Is refType |term#0| Tclass._module.Word?) ($IsAlloc refType |term#0| Tclass._module.Word? $Heap@@0)) (and ($Is SeqType |definition#0| (TSeq Tclass._module.Word?)) ($IsAlloc SeqType |definition#0| (TSeq Tclass._module.Word?) $Heap@@0)))) (=> (and (and (and (and ($Is refType |w#0_0_0| Tclass._module.Word?) ($IsAlloc refType |w#0_0_0| Tclass._module.Word? $Heap@@0)) true) (= 2 $FunctionContextHeight)) (and (and (|_module.ReaderStream.Valid#canCall| $Heap@@0 |rs#0|) (and (_module.ReaderStream.Valid $Heap@@0 |rs#0|) (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.footprint)) ($Box refType |rs#0|)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |rs#0|) _module.ReaderStream.isOpen)))))) (= (ControlFlow 0 42) 37))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
