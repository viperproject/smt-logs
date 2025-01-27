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
(declare-fun Tagclass._module.Word () T@U)
(declare-fun Tagclass._module.Word? () T@U)
(declare-fun Tagclass._module.WriterStream () T@U)
(declare-fun Tagclass._module.WriterStream? () T@U)
(declare-fun class._module.WriterStream? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Word () T@U)
(declare-fun tytagFamily$WriterStream () T@U)
(declare-fun field$footprint () T@U)
(declare-fun field$isOpen () T@U)
(declare-fun field$stream () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Word? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.WriterStream? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.Word () T@U)
(declare-fun Tclass._module.WriterStream () T@U)
(declare-fun _module.WriterStream.footprint () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.WriterStream.isOpen () T@U)
(declare-fun _module.WriterStream.stream () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.WriterStream.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.WriterStream.Valid#canCall| (T@U T@U) Bool)
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
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#SameUntil| (T@U T@U Int) Bool)
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
(assert (distinct TBool TInt TagBool TagInt TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._module.Word Tagclass._module.Word? Tagclass._module.WriterStream Tagclass._module.WriterStream? class._module.WriterStream? tytagFamily$object tytagFamily$Word tytagFamily$WriterStream field$footprint field$isOpen field$stream)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Word?)  (or (= $o null) (= (dtype $o) Tclass._module.Word?)))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( ($Is refType $o Tclass._module.Word?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.WriterStream?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.WriterStream?)))
 :qid |unknown.0:0|
 :skolemid |673|
 :pattern ( ($Is refType $o@@0 Tclass._module.WriterStream?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Word $h@@0) ($IsAlloc refType |c#0@@0| Tclass._module.Word? $h@@0))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Word $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Word? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.WriterStream $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.WriterStream? $h@@1))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.WriterStream $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.WriterStream? $h@@1))
)))
(assert (= (FDim _module.WriterStream.footprint) 0))
(assert (= (FieldOfDecl class._module.WriterStream? field$footprint) _module.WriterStream.footprint))
(assert ($IsGhostField _module.WriterStream.footprint))
(assert (= (FDim _module.WriterStream.isOpen) 0))
(assert (= (FieldOfDecl class._module.WriterStream? field$isOpen) _module.WriterStream.isOpen))
(assert  (not ($IsGhostField _module.WriterStream.isOpen)))
(assert (= (FDim _module.WriterStream.stream) 0))
(assert (= (FieldOfDecl class._module.WriterStream? field$stream) _module.WriterStream.stream))
(assert  (not ($IsGhostField _module.WriterStream.stream)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|_module.WriterStream.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.WriterStream) ($IsAlloc refType this Tclass._module.WriterStream $Heap)))))) (= (_module.WriterStream.Valid $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WriterStream.footprint)) ($Box refType this)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.WriterStream.isOpen))))))
 :qid |b8dfy.185:19|
 :skolemid |685|
 :pattern ( (_module.WriterStream.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.Word? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Word? $h@@3))
)))
(assert (forall (($o@@3 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass._module.WriterStream? $h@@4)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |674|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.WriterStream? $h@@4))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.WriterStream?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.WriterStream.isOpen)) TBool $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |680|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.WriterStream.isOpen)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h@@0) ($IsAlloc T@@0 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@1 t@@1 h@@2) ($IsAlloc T@@1 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@1 t@@1 h@@2))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.WriterStream?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.WriterStream.stream)) (TSeq TInt) $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |678|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.WriterStream.stream)))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Word) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Word)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsBox bx@@3 Tclass._module.Word))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.Word?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.Word?)))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($IsBox bx@@4 Tclass._module.Word?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.WriterStream) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.WriterStream)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsBox bx@@5 Tclass._module.WriterStream))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.WriterStream?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._module.WriterStream?)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsBox bx@@6 Tclass._module.WriterStream?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._module.Word)  (and ($Is refType |c#0@@3| Tclass._module.Word?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Word))
 :pattern ( ($Is refType |c#0@@3| Tclass._module.Word?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.WriterStream)  (and ($Is refType |c#0@@4| Tclass._module.WriterStream?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.WriterStream))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.WriterStream?))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.WriterStream?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.WriterStream.footprint)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |675|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.WriterStream.footprint)))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass._module.WriterStream?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.WriterStream.footprint)) (TSet Tclass._System.object) $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |676|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) _module.WriterStream.footprint)))
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
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@2) ($Is T@@2 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
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
(assert (forall (($o@@8 T@U) ) (! ($Is refType $o@@8 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@8 Tclass._System.object?))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i) t0@@2 h@@4))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@2) h@@4))
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
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass._module.WriterStream?))) ($Is boolType ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.WriterStream.isOpen)) TBool))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |679|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.WriterStream.isOpen)))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.WriterStream))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@10 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (or (= $o@@10 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this@@0) _module.WriterStream.footprint)) ($Box refType $o@@10)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@10) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@10) $f)))
 :qid |unknown.0:0|
 :skolemid |681|
)) (= (_module.WriterStream.Valid $h0 this@@0) (_module.WriterStream.Valid $h1 this@@0))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |682|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.WriterStream.Valid $h1 this@@0))
)))
(assert (forall ((bx@@10 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@7)))
)))
(assert (forall ((bx@@11 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@8)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@8))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@8)))
)))
(assert (forall (($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass._module.WriterStream?))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.WriterStream.stream)) (TSeq TInt)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |677|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.WriterStream.stream)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Word) Tagclass._module.Word))
(assert (= (TagFamily Tclass._module.Word) tytagFamily$Word))
(assert (= (Tag Tclass._module.Word?) Tagclass._module.Word?))
(assert (= (TagFamily Tclass._module.Word?) tytagFamily$Word))
(assert (= (Tag Tclass._module.WriterStream) Tagclass._module.WriterStream))
(assert (= (TagFamily Tclass._module.WriterStream) tytagFamily$WriterStream))
(assert (= (Tag Tclass._module.WriterStream?) Tagclass._module.WriterStream?))
(assert (= (TagFamily Tclass._module.WriterStream?) tytagFamily$WriterStream))
(assert (forall ((s0 T@U) (s1 T@U) (n Int) ) (! (= (|Seq#SameUntil| s0 s1 n) (forall ((j Int) ) (!  (=> (and (<= 0 j) (< j n)) (= (|Seq#Index| s0 j) (|Seq#Index| s1 j)))
 :qid |DafnyPreludebpl.1232:19|
 :skolemid |242|
 :pattern ( (|Seq#Index| s0 j))
 :pattern ( (|Seq#Index| s1 j))
)))
 :qid |DafnyPreludebpl.1229:15|
 :skolemid |243|
 :pattern ( (|Seq#SameUntil| s0 s1 n))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@12 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@0))  (=> (and (or (not (= $o@@12 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@12) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@12))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |816|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#6| |l#0| |l#1| |l#2| |l#3|) $o@@12 $f@@0))
)))
(assert (forall ((h@@5 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@6 T@U) ) (! ($IsAlloc boolType v@@6 TBool h@@6)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@6 TBool h@@6))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@4)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is boolType v@@9 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@9 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |tag#0| () T@U)
(declare-fun |w#0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.WriterStream.PutWordInsideTag)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#6| null $Heap@@0 alloc ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.WriterStream.footprint)))) ($IsAllocBox ($Box refType this@@1) Tclass._module.WriterStream? $Heap@@0)) (and (|_module.WriterStream.Valid#canCall| $Heap@@0 this@@1) (_module.WriterStream.Valid $Heap@@0 this@@1))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@13) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@13)) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.WriterStream.footprint)) ($Box refType $o@@13))))
 :qid |b8dfy.215:10|
 :skolemid |707|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@13))
))) (and (and ($HeapSucc $Heap@@0 $Heap@0) ($IsAllocBox ($Box refType this@@1) Tclass._module.WriterStream? $Heap@0)) (and (|_module.WriterStream.Valid#canCall| $Heap@0 this@@1) (_module.WriterStream.Valid $Heap@0 this@@1)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType this@@1 Tclass._module.WriterStream $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass._module.WriterStream $Heap@@0) (=> (and (and (forall (($o@@14 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.WriterStream.footprint)) ($Box refType $o@@14)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.WriterStream.footprint)) ($Box refType $o@@14)))) (or (not (= $o@@14 null)) (not true)))
 :qid |b8dfy.218:24|
 :skolemid |708|
 :pattern (  (or (not (= $o@@14 null)) (not true)))
)) (forall (($o@@15 T@U) ) (!  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.WriterStream.footprint)) ($Box refType $o@@15)) (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.WriterStream.footprint)) ($Box refType $o@@15)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@15) alloc)))))
 :qid |b8dfy.218:24|
 :skolemid |709|
 :pattern ( ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@15) alloc)))
))) (= (ControlFlow 0 2) (- 0 1))) ($IsAlloc refType this@@1 Tclass._module.WriterStream $Heap@@0))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.WriterStream) ($IsAlloc refType this@@1 Tclass._module.WriterStream $Heap@@0))) (and ($Is refType |tag#0| Tclass._module.Word) ($IsAlloc refType |tag#0| Tclass._module.Word $Heap@@0))) (and (and ($Is refType |w#0| Tclass._module.Word) ($IsAlloc refType |w#0| Tclass._module.Word $Heap@@0)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct))))
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
