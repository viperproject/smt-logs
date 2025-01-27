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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.Map () T@U)
(declare-fun Tagclass._module.Map? () T@U)
(declare-fun class._module.Map? () T@U)
(declare-fun tytagFamily$Map () T@U)
(declare-fun field$keys () T@U)
(declare-fun field$values () T@U)
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
(declare-fun _module.Map.keys () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Map.values () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Map (T@U T@U) T@U)
(declare-fun Tclass._module.Map? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun DeclType (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Map_0 (T@U) T@U)
(declare-fun Tclass._module.Map_1 (T@U) T@U)
(declare-fun Tclass._module.Map?_0 (T@U) T@U)
(declare-fun Tclass._module.Map?_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Map.Valid (T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Map.Valid#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TBool TagBool TagSeq alloc allocName Tagclass._module.Map Tagclass._module.Map? class._module.Map? tytagFamily$Map field$keys field$values)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (FDim _module.Map.keys) 0))
(assert (= (FieldOfDecl class._module.Map? field$keys) _module.Map.keys))
(assert  (not ($IsGhostField _module.Map.keys)))
(assert (= (FDim _module.Map.values) 0))
(assert (= (FieldOfDecl class._module.Map? field$values) _module.Map.values))
(assert  (not ($IsGhostField _module.Map.values)))
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
(assert (= (Ctor refType) 3))
(assert (forall ((_module.Map$Key T@U) (_module.Map$Value T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass._module.Map _module.Map$Key _module.Map$Value))  (and ($Is refType |c#0| (Tclass._module.Map? _module.Map$Key _module.Map$Value)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is refType |c#0| (Tclass._module.Map _module.Map$Key _module.Map$Value)))
 :pattern ( ($Is refType |c#0| (Tclass._module.Map? _module.Map$Key _module.Map$Value)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Map$Key@@0 T@U) (_module.Map$Value@@0 T@U) ($o T@U) ) (! (= ($Is refType $o (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0))  (or (= $o null) (= (dtype $o) (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0)))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) (= $o@@0 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |814|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((_module.Map$Key@@1 T@U) (_module.Map$Value@@1 T@U) (|c#0@@0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@1 _module.Map$Value@@1) $h) ($IsAlloc refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@1 _module.Map$Value@@1) $h))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@1 _module.Map$Value@@1) $h))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@1 _module.Map$Value@@1) $h))
)))
(assert (forall ((_module.Map$Key@@2 T@U) (_module.Map$Value@@2 T@U) ($o@@1 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._module.Map? _module.Map$Key@@2 _module.Map$Value@@2) $h@@0)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._module.Map? _module.Map$Key@@2 _module.Map$Value@@2) $h@@0))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TBool) (and (= ($Box boolType ($Unbox boolType bx)) bx) ($Is boolType ($Unbox boolType bx) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((_module.Map$Key@@3 T@U) (_module.Map$Value@@3 T@U) ) (! (= (Tclass._module.Map_0 (Tclass._module.Map _module.Map$Key@@3 _module.Map$Value@@3)) _module.Map$Key@@3)
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (Tclass._module.Map _module.Map$Key@@3 _module.Map$Value@@3))
)))
(assert (forall ((_module.Map$Key@@4 T@U) (_module.Map$Value@@4 T@U) ) (! (= (Tclass._module.Map_1 (Tclass._module.Map _module.Map$Key@@4 _module.Map$Value@@4)) _module.Map$Value@@4)
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (Tclass._module.Map _module.Map$Key@@4 _module.Map$Value@@4))
)))
(assert (forall ((_module.Map$Key@@5 T@U) (_module.Map$Value@@5 T@U) ) (! (= (Tclass._module.Map?_0 (Tclass._module.Map? _module.Map$Key@@5 _module.Map$Value@@5)) _module.Map$Key@@5)
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@5 _module.Map$Value@@5))
)))
(assert (forall ((_module.Map$Key@@6 T@U) (_module.Map$Value@@6 T@U) ) (! (= (Tclass._module.Map?_1 (Tclass._module.Map? _module.Map$Key@@6 _module.Map$Value@@6)) _module.Map$Value@@6)
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@6 _module.Map$Value@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@1) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@1 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@1) h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Map$Key@@7 T@U) (_module.Map$Value@@7 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Map.Valid#canCall| _module.Map$Key@@7 _module.Map$Value@@7 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Map _module.Map$Key@@7 _module.Map$Value@@7)) ($IsAlloc refType this (Tclass._module.Map _module.Map$Key@@7 _module.Map$Value@@7) $Heap)))))) (= (_module.Map.Valid _module.Map$Key@@7 _module.Map$Value@@7 $Heap this)  (and (= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.values)))) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys)) |i#0|) (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys)) |j#0|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |740|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys)) |j#0|) (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap this) _module.Map.keys)) |i#0|))
)))))
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( (_module.Map.Valid _module.Map$Key@@7 _module.Map$Value@@7 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((_module.Map$Key@@8 T@U) (_module.Map$Value@@8 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.Map _module.Map$Key@@8 _module.Map$Value@@8)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass._module.Map _module.Map$Key@@8 _module.Map$Value@@8))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsBox bx@@0 (Tclass._module.Map _module.Map$Key@@8 _module.Map$Value@@8)))
)))
(assert (forall ((_module.Map$Key@@9 T@U) (_module.Map$Value@@9 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9)) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Map? _module.Map$Key@@9 _module.Map$Value@@9)))
)))
(assert (forall ((_module.Map$Key@@10 T@U) (_module.Map$Value@@10 T@U) ($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10)))) ($Is SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@2) _module.Map.keys)) (TSeq _module.Map$Key@@10)))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@1 $o@@2) _module.Map.keys)) (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10))
)))
(assert (forall ((_module.Map$Key@@11 T@U) (_module.Map$Value@@11 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Map? _module.Map$Key@@11 _module.Map$Value@@11)))) ($Is SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@3) _module.Map.values)) (TSeq _module.Map$Value@@11)))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@3) _module.Map.values)) (Tclass._module.Map? _module.Map$Key@@11 _module.Map$Value@@11))
)))
(assert (forall ((_module.Map$Key@@12 T@U) (_module.Map$Value@@12 T@U) ) (!  (and (= (Tag (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12)) Tagclass._module.Map) (= (TagFamily (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12))
)))
(assert (forall ((_module.Map$Key@@13 T@U) (_module.Map$Value@@13 T@U) ) (!  (and (= (Tag (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13)) Tagclass._module.Map?) (= (TagFamily (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@13 _module.Map$Value@@13))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@3)))
)))
(assert (forall ((_module.Map$Key@@14 T@U) (_module.Map$Value@@14 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@4) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@4) _module.Map.keys)) (TSeq _module.Map$Key@@14) $h@@3))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@4) _module.Map.keys)) (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14))
)))
(assert (forall ((_module.Map$Key@@15 T@U) (_module.Map$Value@@15 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) _module.Map.values)) (TSeq _module.Map$Value@@15) $h@@4))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@5) _module.Map.values)) (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15))
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
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.Map$Key@@16 () T@U)
(declare-fun _module.Map$Value@@16 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@2| () Bool)
(declare-fun |b$reqreads#3@2| () Bool)
(declare-fun |b$reqreads#4@2| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |i#1@0| () Int)
(declare-fun |j#1@0| () Int)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.Map.Valid)
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
 (=> (= (ControlFlow 0 0) 23) (let ((anon16_Else_correct true))
(let ((anon12_correct  (=> (and (= (_module.Map.Valid _module.Map$Key@@16 _module.Map$Value@@16 $Heap@@0 this@@0)  (and (= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.values)))) (forall ((|i#2| Int) (|j#2| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#2|) (< |i#2| |j#2|)) (< |j#2| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)) |i#2|) (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)) |j#2|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |743|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)) |j#2|) (|Seq#Index| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)) |i#2|))
)))) ($Is boolType (bool_2_U (_module.Map.Valid _module.Map$Key@@16 _module.Map$Value@@16 $Heap@@0 this@@0)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#2@2|) (=> |b$reqreads#2@2| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#3@2|) (=> |b$reqreads#3@2| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#4@2|))))))))))))
(let ((anon11_correct  (=> (and (and (= |b$reqreads#2@2| |b$reqreads#2@1|) (= |b$reqreads#4@2| |b$reqreads#4@1|)) (and (= |b$reqreads#3@2| |b$reqreads#3@1|) (= (ControlFlow 0 10) 3))) anon12_correct)))
(let ((anon19_Else_correct  (=> (and (and (not (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| |j#1@0|)) (< |j#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)))))) (= |b$reqreads#3@1| true)) (and (= |b$reqreads#4@1| true) (= (ControlFlow 0 14) 10))) anon11_correct)))
(let ((anon19_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| |j#1@0|)) (< |j#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))))) (= |b$reqreads#3@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Map.keys)))) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)))))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))))) (=> (= |b$reqreads#4@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Map.keys))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |j#1@0|) (< |j#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys)))))) (=> (and (<= 0 |j#1@0|) (< |j#1@0| (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))))) (=> (= |b$reqreads#3@1| |b$reqreads#3@0|) (=> (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= (ControlFlow 0 11) 10)) anon11_correct))))))))))
(let ((anon18_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| |j#1@0|))) (= |b$reqreads#2@1| true)) (and (=> (= (ControlFlow 0 16) 11) anon19_Then_correct) (=> (= (ControlFlow 0 16) 14) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| |j#1@0|)) (and (= |b$reqreads#2@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Map.keys))) (= |b$reqreads#2@1| |b$reqreads#2@0|))) (and (=> (= (ControlFlow 0 15) 11) anon19_Then_correct) (=> (= (ControlFlow 0 15) 14) anon19_Else_correct)))))
(let ((anon17_Else_correct  (=> (< |i#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 18) 15) anon18_Then_correct) (=> (= (ControlFlow 0 18) 16) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (<= (LitInt 0) |i#1@0|) (and (=> (= (ControlFlow 0 17) 15) anon18_Then_correct) (=> (= (ControlFlow 0 17) 16) anon18_Else_correct)))))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 19) 17) anon17_Then_correct) (=> (= (ControlFlow 0 19) 18) anon17_Else_correct))))
(let ((anon15_Then_correct  (=> (= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.values)))) (and (=> (= (ControlFlow 0 20) 19) anon16_Then_correct) (=> (= (ControlFlow 0 20) 9) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (or (not (= (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@@0 this@@0) _module.Map.values))))) (not true)) (=> (and (and (= |b$reqreads#2@2| true) (= |b$reqreads#4@2| true)) (and (= |b$reqreads#3@2| true) (= (ControlFlow 0 8) 3))) anon12_correct))))
(let ((anon14_Else_correct  (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Map.keys))) (= |b$reqreads#1@0| (U_2_bool (MapType0Select refType FieldType boolType $_ReadsFrame@0 this@@0 _module.Map.values)))) (and (=> (= (ControlFlow 0 21) 20) anon15_Then_correct) (=> (= (ControlFlow 0 21) 8) anon15_Else_correct)))))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc this@@0)) (and (=> (= (ControlFlow 0 22) 1) anon14_Then_correct) (=> (= (ControlFlow 0 22) 21) anon14_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass._module.Map _module.Map$Key@@16 _module.Map$Value@@16)) ($IsAlloc refType this@@0 (Tclass._module.Map _module.Map$Key@@16 _module.Map$Value@@16) $Heap@@0))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 23) 22))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
