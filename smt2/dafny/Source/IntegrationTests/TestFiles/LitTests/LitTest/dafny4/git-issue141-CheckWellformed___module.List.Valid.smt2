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
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun class._module.List? () T@U)
(declare-fun Tagclass._module.List? () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun field$next () T@U)
(declare-fun field$spine () T@U)
(declare-fun field$repr () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node (T@U) T@U)
(declare-fun Tclass._module.Node? (T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun Tclass._module.List? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun _module.List.spine () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.List.repr () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.Node.next () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.List.Valid (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.List.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Node?_0 (T@U) T@U)
(declare-fun Tclass._module.Node_0 (T@U) T@U)
(declare-fun Tclass._module.List?_0 (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.object? Tagclass._System.object class._module.Node? Tagclass._module.Node? Tagclass._module.Node class._module.List? Tagclass._module.List? Tagclass._module.List tytagFamily$object tytagFamily$Node tytagFamily$List field$next field$spine field$repr)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Node$T T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.Node _module.Node$T) $h) ($IsAlloc refType |c#0| (Tclass._module.Node? _module.Node$T) $h))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Node _module.Node$T) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.Node? _module.Node$T) $h))
)))
(assert (forall ((_module.List$T T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List _module.List$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.List? _module.List$T) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._System.object? $h@@1))
)))
(assert (= (FDim _module.List.spine) 0))
(assert (= (FieldOfDecl class._module.List? field$spine) _module.List.spine))
(assert ($IsGhostField _module.List.spine))
(assert (= (FDim _module.List.repr) 0))
(assert (= (FieldOfDecl class._module.List? field$repr) _module.List.repr))
(assert ($IsGhostField _module.List.repr))
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
(assert (forall ((_module.Node$T@@0 T@U) ($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.Node? _module.Node$T@@0) $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsAlloc refType $o (Tclass._module.Node? _module.Node$T@@0) $h@@2))
)))
(assert (forall ((_module.List$T@@0 T@U) ($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.List? _module.List$T@@0) $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.List? _module.List$T@@0) $h@@3))
)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@4))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (and (= (Ctor SeqType) 7) (= (Ctor SetType) 8)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.List$T@@1 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.List.Valid#canCall| _module.List$T@@1 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.List _module.List$T@@1)) ($IsAlloc refType this (Tclass._module.List _module.List$T@@1) $Heap)))))) (= (_module.List.Valid _module.List$T@@1 $Heap this)  (and true (and (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |i#0|)))
 :qid |gitissue141dfy.15:19|
 :skolemid |507|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |i#0|)))
)) (forall ((|i#1| Int) (|_t#0#0| Int) ) (!  (=> (and (= |_t#0#0| (+ |i#1| 1)) (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)))))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |i#1|))) _module.Node.next)) (ite (< |i#1| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine))) 1)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |_t#0#0|)) null)))
 :qid |gitissue141dfy.15:19|
 :skolemid |508|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |_t#0#0|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.List.spine)) |i#1|)))
))))))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (_module.List.Valid _module.List$T@@1 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) (or (= $o@@2 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@2)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |518|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@2 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_module.Node$T@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.Node _module.Node$T@@1))  (and ($Is refType |c#0@@2| (Tclass._module.Node? _module.Node$T@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Node _module.Node$T@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.Node? _module.Node$T@@1)))
)))
(assert (forall ((_module.List$T@@2 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._module.List _module.List$T@@2))  (and ($Is refType |c#0@@3| (Tclass._module.List? _module.List$T@@2)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.List _module.List$T@@2)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._module.List? _module.List$T@@2)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((_module.Node$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Node? _module.Node$T@@2)) Tagclass._module.Node?) (= (TagFamily (Tclass._module.Node? _module.Node$T@@2)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.Node? _module.Node$T@@2))
)))
(assert (forall ((_module.Node$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.Node _module.Node$T@@3)) Tagclass._module.Node) (= (TagFamily (Tclass._module.Node _module.Node$T@@3)) tytagFamily$Node))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (Tclass._module.Node _module.Node$T@@3))
)))
(assert (forall ((_module.List$T@@3 T@U) ) (!  (and (= (Tag (Tclass._module.List? _module.List$T@@3)) Tagclass._module.List?) (= (TagFamily (Tclass._module.List? _module.List$T@@3)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (Tclass._module.List? _module.List$T@@3))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@4)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@4)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.Node$T@@4 T@U) ($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Node? _module.Node$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@4) $h@@5))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@4))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((_module.Node$T@@5 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._module.Node? _module.Node$T@@5))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._module.Node? _module.Node$T@@5))))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($Is refType $o@@4 (Tclass._module.Node? _module.Node$T@@5)))
)))
(assert (forall ((_module.List$T@@5 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._module.List? _module.List$T@@5))  (or (= $o@@5 null) (= (dtype $o@@5) (Tclass._module.List? _module.List$T@@5))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Is refType $o@@5 (Tclass._module.List? _module.List$T@@5)))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._System.object)  (and ($Is refType |c#0@@4| Tclass._System.object?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@4| Tclass._System.object?))
)))
(assert (forall ((_module.List$T@@6 T@U) ($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.List? _module.List$T@@6)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.List.spine)) (TSeq (Tclass._module.Node _module.List$T@@6)) $h@@6))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.List.spine)) (Tclass._module.List? _module.List$T@@6))
)))
(assert (forall ((_module.List$T@@7 T@U) ($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.List? _module.List$T@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.List.repr)) (TSet Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.List.repr)) (Tclass._module.List? _module.List$T@@7))
)))
(assert (forall ((_module.List$T@@8 T@U) ($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.List? _module.List$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.List.repr)) (TSet Tclass._System.object) $h@@8))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.List.repr)) (Tclass._module.List? _module.List$T@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall (($o@@9 T@U) ) (! ($Is refType $o@@9 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@9 Tclass._System.object?))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((_module.Node$T@@6 T@U) ) (! (= (Tclass._module.Node?_0 (Tclass._module.Node? _module.Node$T@@6)) _module.Node$T@@6)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.Node? _module.Node$T@@6))
)))
(assert (forall ((_module.Node$T@@7 T@U) ) (! (= (Tclass._module.Node_0 (Tclass._module.Node _module.Node$T@@7)) _module.Node$T@@7)
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (Tclass._module.Node _module.Node$T@@7))
)))
(assert (forall ((_module.List$T@@9 T@U) ) (! (= (Tclass._module.List?_0 (Tclass._module.List? _module.List$T@@9)) _module.List$T@@9)
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (Tclass._module.List? _module.List$T@@9))
)))
(assert (forall ((_module.List$T@@10 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@10)) _module.List$T@@10)
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( (Tclass._module.List _module.List$T@@10))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Node$T@@8 T@U) ($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass._module.Node? _module.Node$T@@8)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8)))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) _module.Node.next)) (Tclass._module.Node? _module.Node$T@@8))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((bx@@5 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@6)))
)))
(assert (forall ((_module.Node$T@@9 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.Node? _module.Node$T@@9)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.Node? _module.Node$T@@9))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 (Tclass._module.Node? _module.Node$T@@9)))
)))
(assert (forall ((_module.Node$T@@10 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.Node _module.Node$T@@10)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.Node _module.Node$T@@10))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsBox bx@@7 (Tclass._module.Node _module.Node$T@@10)))
)))
(assert (forall ((_module.List$T@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.List? _module.List$T@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.List? _module.List$T@@11))))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($IsBox bx@@8 (Tclass._module.List? _module.List$T@@11)))
)))
(assert (forall ((_module.List$T@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._module.List _module.List$T@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._module.List _module.List$T@@12))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@9 (Tclass._module.List _module.List$T@@12)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((_module.List$T@@13 T@U) ($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass._module.List? _module.List$T@@13)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.List.spine)) (TSeq (Tclass._module.Node _module.List$T@@13))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) _module.List.spine)) (Tclass._module.List? _module.List$T@@13))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.List$T@@14 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |b$reqreads#1@2| () Bool)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#4@2| () Bool)
(declare-fun |b$reqreads#5@2| () Bool)
(declare-fun |b$reqreads#6@2| () Bool)
(declare-fun |b$reqreads#7@2| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#7@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |i#2@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#7@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.List.Valid)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon17_Else_correct true))
(let ((anon13_correct  (=> (and (= (_module.List.Valid _module.List$T@@14 $Heap@@0 this@@0)  (and true (and (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#3|)))
 :qid |gitissue141dfy.15:19|
 :skolemid |513|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#3|)))
)) (forall ((|i#3@@0| Int) (|_t#0#1| Int) ) (!  (=> (and (= |_t#0#1| (+ |i#3@@0| 1)) (and (<= (LitInt 0) |i#3@@0|) (< |i#3@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)))))) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#3@@0|))) _module.Node.next)) (ite (< |i#3@@0| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))) 1)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |_t#0#1|)) null)))
 :qid |gitissue141dfy.15:19|
 :skolemid |514|
 :pattern ( ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |_t#0#1|)) ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#3@@0|)))
))))) ($Is boolType (bool_2_U (_module.List.Valid _module.List$T@@14 $Heap@@0 this@@0)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 9)) |b$reqreads#1@2|) (=> |b$reqreads#1@2| (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#2@2|) (=> |b$reqreads#2@2| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#3@2|) (=> |b$reqreads#3@2| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#4@2|) (=> |b$reqreads#4@2| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#5@2|) (=> |b$reqreads#5@2| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#6@2|) (=> |b$reqreads#6@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#7@2|))))))))))))))))
(let ((anon12_correct  (=> (and (and (and (= |b$reqreads#1@2| |b$reqreads#1@1|) (= |b$reqreads#7@2| |b$reqreads#7@1|)) (and (= |b$reqreads#6@2| |b$reqreads#6@1|) (= |b$reqreads#5@2| |b$reqreads#5@1|))) (and (and (= |b$reqreads#4@2| |b$reqreads#4@1|) (= |b$reqreads#3@2| |b$reqreads#3@1|)) (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= (ControlFlow 0 12) 3)))) anon13_correct)))
(let ((anon21_Else_correct  (=> (and (and (and (<= (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))) 1) |i#2@0|) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|))) (and (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 17) 12)))) anon12_correct)))
(let ((anon21_Then_correct  (=> (and (< |i#2@0| (- (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))) 1)) (= |b$reqreads#7@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.spine)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 (+ |i#2@0| 1)) (< (+ |i#2@0| 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)))))) (=> (and (<= 0 (+ |i#2@0| 1)) (< (+ |i#2@0| 1) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))))) (=> (= |b$reqreads#2@1| |b$reqreads#2@0|) (=> (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| |b$reqreads#4@0|)) (=> (and (and (= |b$reqreads#5@1| |b$reqreads#5@0|) (= |b$reqreads#6@1| |b$reqreads#6@0|)) (and (= |b$reqreads#7@1| |b$reqreads#7@0|) (= (ControlFlow 0 15) 12))) anon12_correct))))))))
(let ((anon20_Then_correct  (=> (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#2@0|)) (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.spine)))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)))))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))))) (and (=> (= (ControlFlow 0 18) (- 0 19)) (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#2@0|)) null)) (not true))) (=> (or (not (= ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#2@0|)) null)) (not true)) (=> (and (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 ($Unbox refType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#2@0|)) _module.Node.next))) (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.spine)))) (and (=> (= (ControlFlow 0 18) 15) anon21_Then_correct) (=> (= (ControlFlow 0 18) 17) anon21_Else_correct))))))))))
(let ((anon20_Else_correct  (=> (and (and (and (not (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.repr)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)) |i#2@0|))) (= |b$reqreads#2@1| |b$reqreads#2@0|)) (and (= |b$reqreads#3@1| |b$reqreads#3@0|) (= |b$reqreads#4@1| true))) (and (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true)) (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 14) 12)))) anon12_correct)))
(let ((anon19_Then_correct  (=> (and (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.spine)))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)))))) (=> (and (<= 0 |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine))))) (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.repr))) (and (=> (= (ControlFlow 0 21) 18) anon20_Then_correct) (=> (= (ControlFlow 0 21) 14) anon20_Else_correct))))))))
(let ((anon19_Else_correct  (=> (and (and (and (not (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.spine)))))) (= |b$reqreads#2@1| true)) (and (= |b$reqreads#3@1| true) (= |b$reqreads#4@1| true))) (and (and (= |b$reqreads#5@1| true) (= |b$reqreads#6@1| true)) (and (= |b$reqreads#7@1| true) (= (ControlFlow 0 13) 12)))) anon12_correct)))
(let ((anon18_Else_correct  (=> (and (< |i#2@0| (LitInt 0)) (= |b$reqreads#1@1| true)) (and (=> (= (ControlFlow 0 24) 21) anon19_Then_correct) (=> (= (ControlFlow 0 24) 13) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (=> (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.spine))) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (=> (= (ControlFlow 0 23) 21) anon19_Then_correct) (=> (= (ControlFlow 0 23) 13) anon19_Else_correct))))))
(let ((anon17_Then_correct  (and (=> (= (ControlFlow 0 25) 23) anon18_Then_correct) (=> (= (ControlFlow 0 25) 24) anon18_Else_correct))))
(let ((anon16_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 26) 25) anon17_Then_correct) (=> (= (ControlFlow 0 26) 11) anon17_Else_correct)))))
(let ((anon16_Else_correct  (=> (not (U_2_bool (Lit boolType (bool_2_U true)))) (=> (and (and (and (= |b$reqreads#1@2| true) (= |b$reqreads#7@2| true)) (and (= |b$reqreads#6@2| true) (= |b$reqreads#5@2| true))) (and (and (= |b$reqreads#4@2| true) (= |b$reqreads#3@2| true)) (and (= |b$reqreads#2@2| true) (= (ControlFlow 0 10) 3)))) anon13_correct))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc this@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.List.repr)))) (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.List.repr)))) (and (=> (= (ControlFlow 0 27) (- 0 28)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (and (=> (= (ControlFlow 0 27) 1) anon15_Then_correct) (=> (= (ControlFlow 0 27) 26) anon16_Then_correct)) (=> (= (ControlFlow 0 27) 10) anon16_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.List _module.List$T@@14)) ($IsAlloc refType this@@0 (Tclass._module.List _module.List$T@@14) $Heap@@0))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 29) 27))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
