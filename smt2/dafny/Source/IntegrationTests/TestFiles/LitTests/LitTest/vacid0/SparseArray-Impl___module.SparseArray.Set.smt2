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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun class._module.SparseArray? () T@U)
(declare-fun Tagclass._module.SparseArray? () T@U)
(declare-fun Tagclass._module.SparseArray () T@U)
(declare-fun tytagFamily$SparseArray () T@U)
(declare-fun field$Contents () T@U)
(declare-fun field$zero () T@U)
(declare-fun field$a () T@U)
(declare-fun field$b () T@U)
(declare-fun field$c () T@U)
(declare-fun field$n () T@U)
(declare-fun field$d () T@U)
(declare-fun field$e () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.SparseArray.zero () T@U)
(declare-fun Tclass._module.SparseArray? (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.SparseArray.Valid (T@U T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.SparseArray (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun _module.SparseArray.Contents () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.SparseArray.d () T@U)
(declare-fun _module.SparseArray.e () T@U)
(declare-fun _module.SparseArray.a () T@U)
(declare-fun _module.SparseArray.b () T@U)
(declare-fun _module.SparseArray.c () T@U)
(declare-fun _module.SparseArray.n () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Take| (T@U Int) T@U)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.SparseArray.Valid#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.SparseArray?_0 (T@U) T@U)
(declare-fun Tclass._module.SparseArray_0 (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc allocName class._module.SparseArray? Tagclass._module.SparseArray? Tagclass._module.SparseArray tytagFamily$SparseArray field$Contents field$zero field$a field$b field$c field$n field$d field$e)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.SparseArray$T T@U) ($h T@U) ($o T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._module.SparseArray? _module.SparseArray$T)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.SparseArray.zero) _module.SparseArray$T))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) _module.SparseArray.zero) (Tclass._module.SparseArray? _module.SparseArray$T))
)))
(assert (forall ((_module.SparseArray$T@@0 T@U) ($h@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@0) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.SparseArray? _module.SparseArray$T@@0)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.SparseArray.zero) _module.SparseArray$T@@0 $h@@0))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) _module.SparseArray.zero) (Tclass._module.SparseArray? _module.SparseArray$T@@0))
)))
(assert (forall ((_module.SparseArray$T@@1 T@U) ($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.SparseArray _module.SparseArray$T@@1)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |505|
)) (= (_module.SparseArray.Valid _module.SparseArray$T@@1 $h0 this) (_module.SparseArray.Valid _module.SparseArray$T@@1 $h1 this))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.SparseArray.Valid _module.SparseArray$T@@1 $h1 this))
)))
(assert (forall ((_module.SparseArray$T@@2 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.SparseArray _module.SparseArray$T@@2) $h@@1) ($IsAlloc refType |c#0| (Tclass._module.SparseArray? _module.SparseArray$T@@2) $h@@1))
 :qid |unknown.0:0|
 :skolemid |680|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.SparseArray _module.SparseArray$T@@2) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.SparseArray? _module.SparseArray$T@@2) $h@@1))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s i v) n) (|Seq#Index| s n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s i v) n))
)))
(assert (= (FDim _module.SparseArray.Contents) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$Contents) _module.SparseArray.Contents))
(assert ($IsGhostField _module.SparseArray.Contents))
(assert (= (FDim _module.SparseArray.d) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$d) _module.SparseArray.d))
(assert ($IsGhostField _module.SparseArray.d))
(assert (= (FDim _module.SparseArray.e) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$e) _module.SparseArray.e))
(assert ($IsGhostField _module.SparseArray.e))
(assert (forall ((_module.SparseArray$T@@3 T@U) ($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 (Tclass._module.SparseArray? _module.SparseArray$T@@3) $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o@@2 (Tclass._module.SparseArray? _module.SparseArray$T@@3) $h@@2))
)))
(assert (= (FDim _module.SparseArray.zero) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$zero) _module.SparseArray.zero))
(assert  (not ($IsGhostField _module.SparseArray.zero)))
(assert (= (FDim _module.SparseArray.a) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$a) _module.SparseArray.a))
(assert  (not ($IsGhostField _module.SparseArray.a)))
(assert (= (FDim _module.SparseArray.b) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$b) _module.SparseArray.b))
(assert  (not ($IsGhostField _module.SparseArray.b)))
(assert (= (FDim _module.SparseArray.c) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$c) _module.SparseArray.c))
(assert  (not ($IsGhostField _module.SparseArray.c)))
(assert (= (FDim _module.SparseArray.n) 0))
(assert (= (FieldOfDecl class._module.SparseArray? field$n) _module.SparseArray.n))
(assert  (not ($IsGhostField _module.SparseArray.n)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((s@@0 T@U) (n@@0 Int) (j Int) ) (!  (=> (and (and (<= 0 j) (< j n@@0)) (< j (|Seq#Length| s@@0))) (= (|Seq#Index| (|Seq#Take| s@@0 n@@0) j) (|Seq#Index| s@@0 j)))
 :qid |DafnyPreludebpl.1242:15|
 :weight 25
 :skolemid |245|
 :pattern ( (|Seq#Index| (|Seq#Take| s@@0 n@@0) j))
 :pattern ( (|Seq#Index| s@@0 j) (|Seq#Take| s@@0 n@@0))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Equal| s0 s1)  (and (= (|Seq#Length| s0) (|Seq#Length| s1)) (forall ((j@@0 Int) ) (!  (=> (and (<= 0 j@@0) (< j@@0 (|Seq#Length| s0))) (= (|Seq#Index| s0 j@@0) (|Seq#Index| s1 j@@0)))
 :qid |DafnyPreludebpl.1221:19|
 :skolemid |239|
 :pattern ( (|Seq#Index| s0 j@@0))
 :pattern ( (|Seq#Index| s1 j@@0))
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
(assert (forall ((_module.SparseArray$T@@4 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.SparseArray? _module.SparseArray$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.SparseArray.n)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.SparseArray.n)) (Tclass._module.SparseArray? _module.SparseArray$T@@4))
)))
(assert ($IsGhostField alloc))
(assert (forall ((_module.SparseArray$T@@5 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.SparseArray _module.SparseArray$T@@5))  (and ($Is refType |c#0@@0| (Tclass._module.SparseArray? _module.SparseArray$T@@5)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.SparseArray _module.SparseArray$T@@5)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.SparseArray? _module.SparseArray$T@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((_module.SparseArray$T@@6 T@U) ) (!  (and (= (Tag (Tclass._module.SparseArray? _module.SparseArray$T@@6)) Tagclass._module.SparseArray?) (= (TagFamily (Tclass._module.SparseArray? _module.SparseArray$T@@6)) tytagFamily$SparseArray))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.SparseArray? _module.SparseArray$T@@6))
)))
(assert (forall ((_module.SparseArray$T@@7 T@U) ) (!  (and (= (Tag (Tclass._module.SparseArray _module.SparseArray$T@@7)) Tagclass._module.SparseArray) (= (TagFamily (Tclass._module.SparseArray _module.SparseArray$T@@7)) tytagFamily$SparseArray))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (Tclass._module.SparseArray _module.SparseArray$T@@7))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((_module.SparseArray$T@@8 T@U) ($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.SparseArray? _module.SparseArray$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.SparseArray.Contents)) (TSeq _module.SparseArray$T@@8) $h@@4))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.SparseArray.Contents)) (Tclass._module.SparseArray? _module.SparseArray$T@@8))
)))
(assert (forall ((_module.SparseArray$T@@9 T@U) ($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.SparseArray? _module.SparseArray$T@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.SparseArray.a)) (TSeq _module.SparseArray$T@@9) $h@@5))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.SparseArray.a)) (Tclass._module.SparseArray? _module.SparseArray$T@@9))
)))
(assert (forall ((_module.SparseArray$T@@10 T@U) ($h@@6 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.SparseArray? _module.SparseArray$T@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.SparseArray.b)) (TSeq TInt) $h@@6))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@6) _module.SparseArray.b)) (Tclass._module.SparseArray? _module.SparseArray$T@@10))
)))
(assert (forall ((_module.SparseArray$T@@11 T@U) ($h@@7 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._module.SparseArray? _module.SparseArray$T@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.SparseArray.c)) (TSeq TInt) $h@@7))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@7) _module.SparseArray.c)) (Tclass._module.SparseArray? _module.SparseArray$T@@11))
)))
(assert (forall ((_module.SparseArray$T@@12 T@U) ($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._module.SparseArray? _module.SparseArray$T@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.SparseArray.d)) (TSeq TInt) $h@@8))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) _module.SparseArray.d)) (Tclass._module.SparseArray? _module.SparseArray$T@@12))
)))
(assert (forall ((_module.SparseArray$T@@13 T@U) ($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass._module.SparseArray? _module.SparseArray$T@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.SparseArray.e)) (TSeq TInt) $h@@9))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) _module.SparseArray.e)) (Tclass._module.SparseArray? _module.SparseArray$T@@13))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@10 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@0))  (=> (and (or (not (= $o@@10 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@10) |l#2|)))) (= $o@@10 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |682|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@10 $f@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.SparseArray$T@@14 T@U) ($Heap T@U) (this@@0 T@U) ) (!  (=> (or (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@14 $Heap this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.SparseArray _module.SparseArray$T@@14)) ($IsAlloc refType this@@0 (Tclass._module.SparseArray _module.SparseArray$T@@14) $Heap)))))) (= (_module.SparseArray.Valid _module.SparseArray$T@@14 $Heap this@@0)  (and (and (and (and (and (and (and (and (and (and (and (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents)))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c))))) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents)) |i#0|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#0|)))))) |i#0|)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.a)) |i#0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.zero))))
 :qid |SparseArraydfy.24:13|
 :skolemid |512|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.a)) |i#0|))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#0|)))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents)) |i#0|))
))) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (= (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n)))) ($Box intType (int_2_U |i#1|)))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#1|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#1|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#1|)))))) |i#1|))))
 :qid |SparseArraydfy.26:13|
 :skolemid |513|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.b)) |i#1|)))
 :pattern ( (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n)))) ($Box intType (int_2_U |i#1|))))
))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.Contents))))) (forall ((|i#2| Int) ) (!  (=> (and (<= (LitInt 0) |i#2|) (< |i#2| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) |i#2|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) |i#2|)))))
 :qid |SparseArraydfy.34:13|
 :skolemid |514|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) |i#2|)))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.c)) |i#2|)))
))) (forall ((|i#3| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) |i#3|))))) (=> (and (<= (LitInt 0) |i#3|) (< |i#3| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) |i#3|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d))))))
 :qid |SparseArraydfy.35:13|
 :skolemid |515|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) |i#3|)))
))) (forall ((|i#4| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e)) |i#4|))))) (=> (and (<= (LitInt 0) |i#4|) (< |i#4| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e)) |i#4|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e))))))
 :qid |SparseArraydfy.36:13|
 :skolemid |516|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e)) |i#4|)))
))) (forall ((|i#5| Int) ) (!  (=> (and (<= (LitInt 0) |i#5|) (< |i#5| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e)) |i#5|)))))) |i#5|))
 :qid |SparseArraydfy.37:13|
 :skolemid |517|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.SparseArray.e)) |i#5|)))
)))))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( (_module.SparseArray.Valid _module.SparseArray$T@@14 $Heap this@@0) ($IsGoodHeap $Heap))
))))
(assert (forall ((_module.SparseArray$T@@15 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._module.SparseArray? _module.SparseArray$T@@15))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._module.SparseArray? _module.SparseArray$T@@15))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@11 (Tclass._module.SparseArray? _module.SparseArray$T@@15)))
)))
(assert (forall ((s@@1 T@U) (n@@1 Int) (x@@6 T@U) ) (! (= (|Seq#Contains| (|Seq#Take| s@@1 n@@1) x@@6) (exists ((i@@0 Int) ) (!  (and (and (and (<= 0 i@@0) (< i@@0 n@@1)) (< i@@0 (|Seq#Length| s@@1))) (= (|Seq#Index| s@@1 i@@0) x@@6))
 :qid |DafnyPreludebpl.1204:19|
 :skolemid |235|
 :pattern ( (|Seq#Index| s@@1 i@@0))
)))
 :qid |DafnyPreludebpl.1201:15|
 :skolemid |236|
 :pattern ( (|Seq#Contains| (|Seq#Take| s@@1 n@@1) x@@6))
)))
(assert (forall ((s@@2 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@2 x@@7) (exists ((i@@1 Int) ) (!  (and (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@2))) (= (|Seq#Index| s@@2 i@@1) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s@@2 i@@1))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s@@2 x@@7))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Seq#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a b))
)))
(assert (forall ((s@@3 T@U) (n@@2 Int) ) (!  (=> (and (<= 0 n@@2) (<= n@@2 (|Seq#Length| s@@3))) (= (|Seq#Length| (|Seq#Take| s@@3 n@@2)) n@@2))
 :qid |DafnyPreludebpl.1238:15|
 :skolemid |244|
 :pattern ( (|Seq#Length| (|Seq#Take| s@@3 n@@2)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) (v@@3 T@U) (n@@3 Int) ) (!  (=> (and (<= n@@3 i@@2) (< i@@2 (|Seq#Length| s@@4))) (= (|Seq#Take| (|Seq#Update| s@@4 i@@2 v@@3) n@@3) (|Seq#Take| s@@4 n@@3)))
 :qid |DafnyPreludebpl.1273:15|
 :skolemid |251|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@4 i@@2 v@@3) n@@3))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Seq#Length| s@@5))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@3) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@3) t0@@1 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@4 i@@3))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@1) h@@3))
)))
(assert (forall ((_module.SparseArray$T@@16 T@U) ($h@@10 T@U) ($o@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass._module.SparseArray? _module.SparseArray$T@@16)))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) _module.SparseArray.n)) TInt))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@12) _module.SparseArray.n)) (Tclass._module.SparseArray? _module.SparseArray$T@@16))
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
(assert (forall ((_module.SparseArray$T@@17 T@U) ) (! (= (Tclass._module.SparseArray?_0 (Tclass._module.SparseArray? _module.SparseArray$T@@17)) _module.SparseArray$T@@17)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Tclass._module.SparseArray? _module.SparseArray$T@@17))
)))
(assert (forall ((_module.SparseArray$T@@18 T@U) ) (! (= (Tclass._module.SparseArray_0 (Tclass._module.SparseArray _module.SparseArray$T@@18)) _module.SparseArray$T@@18)
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (Tclass._module.SparseArray _module.SparseArray$T@@18))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((s@@6 T@U) (i@@4 Int) (v@@5 T@U) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| s@@6))) (= (|Seq#Length| (|Seq#Update| s@@6 i@@4 v@@5)) (|Seq#Length| s@@6)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@6 i@@4 v@@5)))
)))
(assert (forall ((_module.SparseArray$T@@19 T@U) ($h@@11 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._module.SparseArray? _module.SparseArray$T@@19)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.SparseArray.Contents)) (TSeq _module.SparseArray$T@@19)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@13) _module.SparseArray.Contents)) (Tclass._module.SparseArray? _module.SparseArray$T@@19))
)))
(assert (forall ((_module.SparseArray$T@@20 T@U) ($h@@12 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._module.SparseArray? _module.SparseArray$T@@20)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.SparseArray.a)) (TSeq _module.SparseArray$T@@20)))
 :qid |unknown.0:0|
 :skolemid |493|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@14) _module.SparseArray.a)) (Tclass._module.SparseArray? _module.SparseArray$T@@20))
)))
(assert (forall ((_module.SparseArray$T@@21 T@U) ($h@@13 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._module.SparseArray? _module.SparseArray$T@@21)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.SparseArray.b)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@15) _module.SparseArray.b)) (Tclass._module.SparseArray? _module.SparseArray$T@@21))
)))
(assert (forall ((_module.SparseArray$T@@22 T@U) ($h@@14 T@U) ($o@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass._module.SparseArray? _module.SparseArray$T@@22)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.SparseArray.c)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@16) _module.SparseArray.c)) (Tclass._module.SparseArray? _module.SparseArray$T@@22))
)))
(assert (forall ((_module.SparseArray$T@@23 T@U) ($h@@15 T@U) ($o@@17 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass._module.SparseArray? _module.SparseArray$T@@23)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) _module.SparseArray.d)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@17) _module.SparseArray.d)) (Tclass._module.SparseArray? _module.SparseArray$T@@23))
)))
(assert (forall ((_module.SparseArray$T@@24 T@U) ($h@@16 T@U) ($o@@18 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._module.SparseArray? _module.SparseArray$T@@24)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.SparseArray.e)) (TSeq TInt)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@18) _module.SparseArray.e)) (Tclass._module.SparseArray? _module.SparseArray$T@@24))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((_module.SparseArray$T@@25 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.SparseArray? _module.SparseArray$T@@25)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._module.SparseArray? _module.SparseArray$T@@25))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@2 (Tclass._module.SparseArray? _module.SparseArray$T@@25)))
)))
(assert (forall ((_module.SparseArray$T@@26 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.SparseArray _module.SparseArray$T@@26)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._module.SparseArray _module.SparseArray$T@@26))))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@3 (Tclass._module.SparseArray _module.SparseArray$T@@26)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@9 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@9)))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert (forall ((s@@7 T@U) ) (!  (=> (= (|Seq#Length| s@@7) 0) (= s@@7 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((s@@8 T@U) (n@@4 Int) ) (!  (=> (= n@@4 0) (= (|Seq#Take| s@@8 n@@4) |Seq#Empty|))
 :qid |DafnyPreludebpl.1295:15|
 :skolemid |256|
 :pattern ( (|Seq#Take| s@@8 n@@4))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@5))
)))
(assert (forall ((s@@9 T@U) (i@@5 Int) (v@@7 T@U) (n@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 n@@5)) (<= n@@5 (|Seq#Length| s@@9))) (= (|Seq#Take| (|Seq#Update| s@@9 i@@5 v@@7) n@@5) (|Seq#Update| (|Seq#Take| s@@9 n@@5) i@@5 v@@7)))
 :qid |DafnyPreludebpl.1268:15|
 :skolemid |250|
 :pattern ( (|Seq#Take| (|Seq#Update| s@@9 i@@5 v@@7) n@@5))
)))
(assert (forall ((v@@8 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@2)) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@6) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@8 i@@6))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@2)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@9 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |i#0@@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |x#0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun _module.SparseArray$T@@27 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |$rhs#1_0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#1_1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |t#1_0@0| () Int)
(declare-fun |k#1_0@0| () Int)
(declare-fun |$rhs#1_2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#1_3@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |$rhs#1_4@0| () Int)
(declare-fun $Heap@4 () T@U)
(set-info :boogie-vc-id Impl$$_module.SparseArray.Set)
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
 (=> (= (ControlFlow 0 0) 49) (let ((anon7_correct  (and (=> (= (ControlFlow 0 2) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.a))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.a)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.SparseArray.a)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.SparseArray.a))))) (=> (= |$rhs#0@0| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.SparseArray.a)) |i#0@@0| |x#0|)) (=> (and (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this@@1) _module.SparseArray.a ($Box SeqType |$rhs#0@0|)))) ($IsGoodHeap $Heap@6)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.Contents))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.Contents)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.SparseArray.Contents)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.SparseArray.Contents))))) (=> (= |$rhs#1@0| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.SparseArray.Contents)) |i#0@@0| |x#0|)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this@@1) _module.SparseArray.Contents ($Box SeqType |$rhs#1@0|)))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n)))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#19| Int) ) (!  (=> (and (<= (LitInt 0) |i#19|) (< |i#19| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#19|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19|)))))) |i#19|)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a)) |i#19|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.zero))))
 :qid |SparseArraydfy.24:13|
 :skolemid |666|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a)) |i#19|))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19|)))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#19|))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#19@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#19@@0|) (< |i#19@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#19@@0|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19@@0|)))))) |i#19@@0|)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a)) |i#19@@0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.zero))))
 :qid |SparseArraydfy.24:13|
 :skolemid |666|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.a)) |i#19@@0|))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#19@@0|)))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#19@@0|))
)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#20| Int) ) (!  (=> (and (<= (LitInt 0) |i#20|) (< |i#20| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#20|)))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20|)))))) |i#20|))))
 :qid |SparseArraydfy.26:13|
 :skolemid |667|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20|)))
 :pattern ( (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#20|))))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#20@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#20@@0|) (< |i#20@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#20@@0|)))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20@@0|)))))) |i#20@@0|))))
 :qid |SparseArraydfy.26:13|
 :skolemid |667|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.b)) |i#20@@0|)))
 :pattern ( (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#20@@0|))))
)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#21| Int) ) (!  (=> (and (<= (LitInt 0) |i#21|) (< |i#21| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) |i#21|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#21|)))))
 :qid |SparseArraydfy.34:13|
 :skolemid |668|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#21|)))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) |i#21|)))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#21@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#21@@0|) (< |i#21@@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) |i#21@@0|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#21@@0|)))))
 :qid |SparseArraydfy.34:13|
 :skolemid |668|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#21@@0|)))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.c)) |i#21@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#22| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#22|) (< |i#22| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22|))))) (=> (and (<= (LitInt 0) |i#22|) (< |i#22| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))))
 :qid |SparseArraydfy.35:13|
 :skolemid |669|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22|)))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#22@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#22@@0|) (< |i#22@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22@@0|))))) (=> (and (<= (LitInt 0) |i#22@@0|) (< |i#22@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22@@0|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d))))))
 :qid |SparseArraydfy.35:13|
 :skolemid |669|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) |i#22@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#23| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#23|) (< |i#23| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23|))))) (=> (and (<= (LitInt 0) |i#23|) (< |i#23| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))))
 :qid |SparseArraydfy.36:13|
 :skolemid |670|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23|)))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#23@@0| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#23@@0|) (< |i#23@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23@@0|))))) (=> (and (<= (LitInt 0) |i#23@@0|) (< |i#23@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23@@0|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))))
 :qid |SparseArraydfy.36:13|
 :skolemid |670|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#23@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#24| Int) ) (!  (=> (and (<= (LitInt 0) |i#24|) (< |i#24| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#24|)))))) |i#24|))
 :qid |SparseArraydfy.37:13|
 :skolemid |671|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#24|)))
))))) (=> (=> (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@7 this@@1) (or (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@7 this@@1) (forall ((|i#24@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#24@@0|) (< |i#24@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#24@@0|)))))) |i#24@@0|))
 :qid |SparseArraydfy.37:13|
 :skolemid |671|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.e)) |i#24@@0|)))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (=> (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#0@@0| |x#0|))) (=> (|Seq#Equal| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.Contents)) |i#0@@0| |x#0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 this@@1) _module.SparseArray.zero) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.zero)))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon10_Else_correct  (=> (not (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))))) |i#0@@0|))) (and (=> (= (ControlFlow 0 23) (- 0 38)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)))))) (and (=> (= (ControlFlow 0 23) (- 0 37)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#0@@0|))))) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#0@@0|)))) (and (=> (= (ControlFlow 0 23) (- 0 36)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.b))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.b)) (and (=> (= (ControlFlow 0 23) (- 0 35)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b))))) (=> (= |$rhs#1_0@0| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b ($Box SeqType |$rhs#1_0@0|)))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 23) (- 0 34)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.c))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.c)) (and (=> (= (ControlFlow 0 23) (- 0 33)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.c)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.c))))) (=> (= |$rhs#1_1@0| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.n))) ($Box intType (int_2_U |i#0@@0|)))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.SparseArray.c ($Box SeqType |$rhs#1_1@0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 23) (- 0 32)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d))))) (=> (= |t#1_0@0| (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))))))) (and (=> (= (ControlFlow 0 23) (- 0 31)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.e)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.e))))) (=> (= |k#1_0@0| (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.e)) |i#0@@0|)))) (and (=> (= (ControlFlow 0 23) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.d))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.d)) (and (=> (= (ControlFlow 0 23) (- 0 29)) (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n)))) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d))))) (and (=> (= (ControlFlow 0 23) (- 0 28)) (and (<= 0 |k#1_0@0|) (< |k#1_0@0| (|Seq#Length| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) ($Box intType (int_2_U |i#0@@0|))))))) (=> (and (<= 0 |k#1_0@0|) (< |k#1_0@0| (|Seq#Length| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) ($Box intType (int_2_U |i#0@@0|)))))) (=> (= |$rhs#1_2@0| (|Seq#Update| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.n))) ($Box intType (int_2_U |i#0@@0|))) |k#1_0@0| ($Box intType (int_2_U |t#1_0@0|)))) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 this@@1) _module.SparseArray.d ($Box SeqType |$rhs#1_2@0|)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 23) (- 0 27)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.e))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.e)) (and (=> (= (ControlFlow 0 23) (- 0 26)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e))))) (and (=> (= (ControlFlow 0 23) (- 0 25)) (and (<= 0 |t#1_0@0|) (< |t#1_0@0| (|Seq#Length| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e)) |i#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.n)))))) (=> (and (<= 0 |t#1_0@0|) (< |t#1_0@0| (|Seq#Length| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e)) |i#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.n))))) (=> (= |$rhs#1_3@0| (|Seq#Update| (|Seq#Update| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e)) |i#0@@0| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.n)) |t#1_0@0| ($Box intType (int_2_U |k#1_0@0|)))) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 this@@1) _module.SparseArray.e ($Box SeqType |$rhs#1_3@0|)))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.n))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 this@@1 _module.SparseArray.n)) (=> (= |$rhs#1_4@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.SparseArray.n))) 1)) (=> (and (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 this@@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 this@@1) _module.SparseArray.n ($Box intType (int_2_U |$rhs#1_4@0|))))) ($IsGoodHeap $Heap@4)) (and (= $Heap@5 $Heap@4) (= (ControlFlow 0 23) 2))) anon7_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((anon10_Then_correct  (=> (and (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))))) |i#0@@0|)) (and (= $Heap@5 $Heap@@0) (= (ControlFlow 0 22) 2))) anon7_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 39) 22) anon10_Then_correct) (=> (= (ControlFlow 0 39) 23) anon10_Else_correct))))
(let ((anon9_Else_correct  (=> (and (not (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n)))))) (= (ControlFlow 0 43) 39)) anon4_correct)))
(let ((anon9_Then_correct  (=> (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (and (=> (= (ControlFlow 0 40) (- 0 42)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b))))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (and (<= 0 (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)))))) (=> (and (<= 0 (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c))))) (=> (= (ControlFlow 0 40) 39) anon4_correct))))))))
(let ((anon8_Else_correct  (=> (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|))) (LitInt 0)) (and (=> (= (ControlFlow 0 46) 40) anon9_Then_correct) (=> (= (ControlFlow 0 46) 43) anon9_Else_correct)))))
(let ((anon8_Then_correct  (=> (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#0@@0|)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b))))) (and (=> (= (ControlFlow 0 44) 40) anon9_Then_correct) (=> (= (ControlFlow 0 44) 43) anon9_Else_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@0 alloc this@@1)) (and (=> (= (ControlFlow 0 47) (- 0 48)) (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)))))) (=> (and (<= 0 |i#0@@0|) (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b))))) (and (=> (= (ControlFlow 0 47) 44) anon8_Then_correct) (=> (= (ControlFlow 0 47) 46) anon8_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.SparseArray _module.SparseArray$T@@27)) ($IsAlloc refType this@@1 (Tclass._module.SparseArray _module.SparseArray$T@@27) $Heap@@0)))) (and (and ($IsBox |x#0| _module.SparseArray$T@@27) ($IsAllocBox |x#0| _module.SparseArray$T@@27 $Heap@@0)) (= 1 $FunctionContextHeight))) (and (and (and (|_module.SparseArray.Valid#canCall| _module.SparseArray$T@@27 $Heap@@0 this@@1) (and (_module.SparseArray.Valid _module.SparseArray$T@@27 $Heap@@0 this@@1) (and (and (and (and (and (and (and (and (and (and (and (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.a))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents)))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c))))) (forall ((|i#13| Int) ) (!  (=> (and (<= (LitInt 0) |i#13|) (< |i#13| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents)) |i#13|) (ite  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#13|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#13|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#13|)))))) |i#13|)) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.a)) |i#13|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.zero))))
 :qid |SparseArraydfy.24:13|
 :skolemid |660|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.a)) |i#13|))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#13|)))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents)) |i#13|))
))) (forall ((|i#14| Int) ) (!  (=> (and (<= (LitInt 0) |i#14|) (< |i#14| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#14|)))  (and (and (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#14|)))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#14|))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#14|)))))) |i#14|))))
 :qid |SparseArraydfy.26:13|
 :skolemid |661|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.b)) |i#14|)))
 :pattern ( (|Seq#Contains| (|Seq#Take| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n)))) ($Box intType (int_2_U |i#14|))))
))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents))))) (forall ((|i#15| Int) ) (!  (=> (and (<= (LitInt 0) |i#15|) (< |i#15| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.n))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) |i#15|))) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) |i#15|)))))
 :qid |SparseArraydfy.34:13|
 :skolemid |662|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) |i#15|)))
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.c)) |i#15|)))
))) (forall ((|i#16| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#16|) (< |i#16| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) |i#16|))))) (=> (and (<= (LitInt 0) |i#16|) (< |i#16| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) |i#16|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d))))))
 :qid |SparseArraydfy.35:13|
 :skolemid |663|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) |i#16|)))
))) (forall ((|i#17| Int) ) (!  (and (=> (and (<= (LitInt 0) |i#17|) (< |i#17| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e))))) (<= (LitInt 0) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#17|))))) (=> (and (<= (LitInt 0) |i#17|) (< |i#17| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e))))) (< (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#17|))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e))))))
 :qid |SparseArraydfy.36:13|
 :skolemid |664|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#17|)))
))) (forall ((|i#18| Int) ) (!  (=> (and (<= (LitInt 0) |i#18|) (< |i#18| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e))))) (= (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.d)) (U_2_int ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#18|)))))) |i#18|))
 :qid |SparseArraydfy.37:13|
 :skolemid |665|
 :pattern ( ($Unbox intType (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.e)) |i#18|)))
))))) (<= (LitInt 0) |i#0@@0|)) (and (< |i#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.SparseArray.Contents)))) (= (ControlFlow 0 49) 47)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
