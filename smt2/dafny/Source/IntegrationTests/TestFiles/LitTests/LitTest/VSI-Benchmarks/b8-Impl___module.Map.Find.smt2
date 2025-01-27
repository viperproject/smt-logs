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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_module.Maybe.None| () T@U)
(declare-fun Tagclass._module.Maybe () T@U)
(declare-fun |##_module.Maybe.Some| () T@U)
(declare-fun Tagclass._module.Map () T@U)
(declare-fun Tagclass._module.Map? () T@U)
(declare-fun class._module.Map? () T@U)
(declare-fun tytagFamily$Maybe () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun |_module.Maybe#Equal| (T@U T@U) Bool)
(declare-fun _module.Maybe.Some_q (T@U) Bool)
(declare-fun _module.Maybe.get (T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Maybe.None| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Maybe (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun _module.Map.keys () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Map.values () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Maybe.None_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Maybe.Some| (T@U) T@U)
(declare-fun Tclass._module.Map (T@U T@U) T@U)
(declare-fun Tclass._module.Map? (T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Map_0 (T@U) T@U)
(declare-fun Tclass._module.Map_1 (T@U) T@U)
(declare-fun Tclass._module.Map?_0 (T@U) T@U)
(declare-fun Tclass._module.Map?_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Map.Valid (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Map.Valid#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.Maybe_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TagSeq alloc allocName |##_module.Maybe.None| Tagclass._module.Maybe |##_module.Maybe.Some| Tagclass._module.Map Tagclass._module.Map? class._module.Map? tytagFamily$Maybe tytagFamily$Map field$keys field$values)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.Maybe.Some_q a) (_module.Maybe.Some_q b)) (= (|_module.Maybe#Equal| a b) (= (_module.Maybe.get a) (_module.Maybe.get b))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (|_module.Maybe#Equal| a b) (_module.Maybe.Some_q a))
 :pattern ( (|_module.Maybe#Equal| a b) (_module.Maybe.Some_q b))
)))
(assert (forall ((x@@2 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@2))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@2))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Maybe.None|) |##_module.Maybe.None|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.Maybe$T T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Maybe.None| (Tclass._module.Maybe _module.Maybe$T) $h))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Maybe.None| (Tclass._module.Maybe _module.Maybe$T) $h))
)))
(assert (= (FDim _module.Map.keys) 0))
(assert (= (FieldOfDecl class._module.Map? field$keys) _module.Map.keys))
(assert  (not ($IsGhostField _module.Map.keys)))
(assert (= (FDim _module.Map.values) 0))
(assert (= (FieldOfDecl class._module.Map? field$values) _module.Map.values))
(assert  (not ($IsGhostField _module.Map.values)))
(assert (forall ((_module.Maybe$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.Maybe.None| (Tclass._module.Maybe _module.Maybe$T@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($Is DatatypeTypeType |#_module.Maybe.None| (Tclass._module.Maybe _module.Maybe$T@@0)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Maybe#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (|_module.Maybe#Equal| a@@0 b@@0))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
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
(assert (forall ((d T@U) ) (! (= (_module.Maybe.None_q d) (= (DatatypeCtorId d) |##_module.Maybe.None|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (_module.Maybe.None_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Maybe.Some_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Maybe.Some|))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (_module.Maybe.Some_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Maybe.None_q d@@1) (= d@@1 |#_module.Maybe.None|))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (_module.Maybe.None_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Maybe.Some_q d@@2) (exists ((|a#17#0#0| T@U) ) (! (= d@@2 (|#_module.Maybe.Some| |a#17#0#0|))
 :qid |b8dfy.10:33|
 :skolemid |488|
)))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (_module.Maybe.Some_q d@@2))
)))
(assert (forall ((_module.Map$Key T@U) (_module.Map$Value T@U) (|c#0| T@U) ) (! (= ($Is refType |c#0| (Tclass._module.Map _module.Map$Key _module.Map$Value))  (and ($Is refType |c#0| (Tclass._module.Map? _module.Map$Key _module.Map$Value)) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is refType |c#0| (Tclass._module.Map _module.Map$Key _module.Map$Value)))
 :pattern ( ($Is refType |c#0| (Tclass._module.Map? _module.Map$Key _module.Map$Value)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.Map$Key@@0 T@U) (_module.Map$Value@@0 T@U) ($o T@U) ) (! (= ($Is refType $o (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0))  (or (= $o null) (= (dtype $o) (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0))))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Is refType $o (Tclass._module.Map? _module.Map$Key@@0 _module.Map$Value@@0)))
)))
(assert (forall ((_module.Maybe$T@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Maybe _module.Maybe$T@@1)) Tagclass._module.Maybe) (= (TagFamily (Tclass._module.Maybe _module.Maybe$T@@1)) tytagFamily$Maybe))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@1))
)))
(assert (forall ((_module.Map$Key@@1 T@U) (_module.Map$Value@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@1 _module.Map$Value@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@1 _module.Map$Value@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Map _module.Map$Key@@1 _module.Map$Value@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._module.Map? _module.Map$Key@@1 _module.Map$Value@@1) $h@@0))
)))
(assert (forall ((_module.Maybe$T@@2 T@U) (|a#18#0#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_module.Maybe.Some| |a#18#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@1) ($IsAllocBox |a#18#0#0| _module.Maybe$T@@2 $h@@1)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Maybe.Some| |a#18#0#0|) (Tclass._module.Maybe _module.Maybe$T@@2) $h@@1))
)))
(assert (forall ((s T@U) (x@@6 T@U) ) (! (= (|Seq#Contains| s x@@6) (exists ((i Int) ) (!  (and (and (<= 0 i) (< i (|Seq#Length| s))) (= (|Seq#Index| s i) x@@6))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |230|
 :pattern ( (|Seq#Index| s i))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |231|
 :pattern ( (|Seq#Contains| s x@@6))
)))
(assert (forall ((_module.Map$Key@@2 T@U) (_module.Map$Value@@2 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.Map? _module.Map$Key@@2 _module.Map$Value@@2) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.Map? _module.Map$Key@@2 _module.Map$Value@@2) $h@@2))
)))
(assert (forall ((_module.Maybe$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)) (or (_module.Maybe.None_q d@@3) (_module.Maybe.Some_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (_module.Maybe.Some_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)))
 :pattern ( (_module.Maybe.None_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.Maybe _module.Maybe$T@@3)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.Maybe.None_q a@@2) (_module.Maybe.None_q b@@2)) (|_module.Maybe#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (|_module.Maybe#Equal| a@@2 b@@2) (_module.Maybe.None_q a@@2))
 :pattern ( (|_module.Maybe#Equal| a@@2 b@@2) (_module.Maybe.None_q b@@2))
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i@@0) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@2 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.Map$Key@@7 T@U) (_module.Map$Value@@7 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|_module.Map.Valid#canCall| _module.Map$Key@@7 _module.Map$Value@@7 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass._module.Map _module.Map$Key@@7 _module.Map$Value@@7)) ($IsAlloc refType this (Tclass._module.Map _module.Map$Key@@7 _module.Map$Value@@7) $Heap)))))) (= (_module.Map.Valid _module.Map$Key@@7 _module.Map$Value@@7 $Heap this)  (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.values)))) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys)) |i#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys)) |j#0|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |740|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys)) |j#0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Map.keys)) |i#0|))
)))))
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( (_module.Map.Valid _module.Map$Key@@7 _module.Map$Value@@7 $Heap this) ($IsGoodHeap $Heap))
))))
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
(assert (forall ((_module.Maybe$T@@4 T@U) ) (! (= (Tclass._module.Maybe_0 (Tclass._module.Maybe _module.Maybe$T@@4)) _module.Maybe$T@@4)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.Maybe _module.Maybe$T@@4))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Maybe.Some| |a#16#0#0|)) |##_module.Maybe.Some|)
 :qid |b8dfy.10:33|
 :skolemid |486|
 :pattern ( (|#_module.Maybe.Some| |a#16#0#0|))
)))
(assert (forall ((|a#20#0#0| T@U) ) (! (= (_module.Maybe.get (|#_module.Maybe.Some| |a#20#0#0|)) |a#20#0#0|)
 :qid |b8dfy.10:33|
 :skolemid |494|
 :pattern ( (|#_module.Maybe.Some| |a#20#0#0|))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@7)) x@@7)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@7))
)))
(assert (forall ((_module.Maybe$T@@5 T@U) (|a#18#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Maybe.Some| |a#18#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)) ($IsBox |a#18#0#0@@0| _module.Maybe$T@@5))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is DatatypeTypeType (|#_module.Maybe.Some| |a#18#0#0@@0|) (Tclass._module.Maybe _module.Maybe$T@@5)))
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
(assert (forall ((|a#21#0#0| T@U) ) (! (< (BoxRank |a#21#0#0|) (DtRank (|#_module.Maybe.Some| |a#21#0#0|)))
 :qid |b8dfy.10:33|
 :skolemid |495|
 :pattern ( (|#_module.Maybe.Some| |a#21#0#0|))
)))
(assert (forall ((d@@4 T@U) (_module.Maybe$T@@6 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Maybe.Some_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Maybe _module.Maybe$T@@6) $h@@3))) ($IsAllocBox (_module.Maybe.get d@@4) _module.Maybe$T@@6 $h@@3))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsAllocBox (_module.Maybe.get d@@4) _module.Maybe$T@@6 $h@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |815|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#5| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((_module.Map$Key@@10 T@U) (_module.Map$Value@@10 T@U) ($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.Map.keys)) (TSeq _module.Map$Key@@10)))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) _module.Map.keys)) (Tclass._module.Map? _module.Map$Key@@10 _module.Map$Value@@10))
)))
(assert (forall ((_module.Map$Key@@11 T@U) (_module.Map$Value@@11 T@U) ($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._module.Map? _module.Map$Key@@11 _module.Map$Value@@11)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.Map.values)) (TSeq _module.Map$Value@@11)))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) _module.Map.values)) (Tclass._module.Map? _module.Map$Key@@11 _module.Map$Value@@11))
)))
(assert (forall ((_module.Map$Key@@12 T@U) (_module.Map$Value@@12 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.Map _module.Map$Key@@12 _module.Map$Value@@12)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 this@@0)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |736|
)) (= (_module.Map.Valid _module.Map$Key@@12 _module.Map$Value@@12 $h0 this@@0) (_module.Map.Valid _module.Map$Key@@12 _module.Map$Value@@12 $h1 this@@0))))
 :qid |unknown.0:0|
 :skolemid |737|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Map.Valid _module.Map$Key@@12 _module.Map$Value@@12 $h1 this@@0))
)))
(assert (forall ((_module.Map$Key@@13 T@U) (_module.Map$Value@@13 T@U) ) (!  (and (= (Tag (Tclass._module.Map _module.Map$Key@@13 _module.Map$Value@@13)) Tagclass._module.Map) (= (TagFamily (Tclass._module.Map _module.Map$Key@@13 _module.Map$Value@@13)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (Tclass._module.Map _module.Map$Key@@13 _module.Map$Value@@13))
)))
(assert (forall ((_module.Map$Key@@14 T@U) (_module.Map$Value@@14 T@U) ) (!  (and (= (Tag (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)) Tagclass._module.Map?) (= (TagFamily (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14)) tytagFamily$Map))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (Tclass._module.Map? _module.Map$Key@@14 _module.Map$Value@@14))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((bx@@2 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@5)))
)))
(assert (forall ((_module.Maybe$T@@7 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.Maybe _module.Maybe$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.Maybe _module.Maybe$T@@7))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@3 (Tclass._module.Maybe _module.Maybe$T@@7)))
)))
(assert (forall ((_module.Map$Key@@15 T@U) (_module.Map$Value@@15 T@U) ($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Map.keys)) (TSeq _module.Map$Key@@15) $h@@6))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.Map.keys)) (Tclass._module.Map? _module.Map$Key@@15 _module.Map$Value@@15))
)))
(assert (forall ((_module.Map$Key@@16 T@U) (_module.Map$Value@@16 T@U) ($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._module.Map? _module.Map$Key@@16 _module.Map$Value@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Map.values)) (TSeq _module.Map$Value@@16) $h@@7))
 :qid |unknown.0:0|
 :skolemid |735|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.Map.values)) (Tclass._module.Map? _module.Map$Key@@16 _module.Map$Value@@16))
)))
(assert (= |#_module.Maybe.None| (Lit DatatypeTypeType |#_module.Maybe.None|)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((|a#19#0#0| T@U) ) (! (= (|#_module.Maybe.Some| (Lit BoxType |a#19#0#0|)) (Lit DatatypeTypeType (|#_module.Maybe.Some| |a#19#0#0|)))
 :qid |b8dfy.10:33|
 :skolemid |493|
 :pattern ( (|#_module.Maybe.Some| (Lit BoxType |a#19#0#0|)))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(assert (forall ((s@@2 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@2))))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |result#0@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |key#0| () T@U)
(declare-fun |call5formal@idx#0@0| () Int)
(declare-fun |result#0@1| () T@U)
(declare-fun |result#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun _module.Map$Key@@17 () T@U)
(declare-fun _module.Map$Value@@17 () T@U)
(declare-fun |result#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Map.Find)
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
 (=> (= (ControlFlow 0 0) 10) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (=> (|_module.Maybe#Equal| |result#0@2| |#_module.Maybe.None|) (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |key#0|)))) (=> (=> (|_module.Maybe#Equal| |result#0@2| |#_module.Maybe.None|) (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |key#0|))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> (_module.Maybe.Some_q |result#0@2|) (exists ((|i#1| Int) ) (!  (and (and (and (<= (LitInt 0) |i#1|) (< |i#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys))))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |i#1|) |key#0|)) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.values)) |i#1|) (_module.Maybe.get |result#0@2|)))
 :qid |b8dfy.264:37|
 :skolemid |759|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.values)) |i#1|))
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |i#1|))
))))))))
(let ((anon3_Else_correct  (=> (or (not (= |call5formal@idx#0@0| (LitInt (- 0 1)))) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 |call5formal@idx#0@0|) (< |call5formal@idx#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.values)))))) (=> (and (<= 0 |call5formal@idx#0@0|) (< |call5formal@idx#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.values))))) (=> (= |result#0@1| (|#_module.Maybe.Some| (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.values)) |call5formal@idx#0@0|))) (=> (and (= |result#0@2| |result#0@1|) (= (ControlFlow 0 5) 2)) GeneratedUnifiedExit_correct)))))))
(let ((anon3_Then_correct  (=> (and (and (= |call5formal@idx#0@0| (LitInt (- 0 1))) (= |result#0@0| (Lit DatatypeTypeType |#_module.Maybe.None|))) (and (= |result#0@2| |result#0@0|) (= (ControlFlow 0 4) 2))) GeneratedUnifiedExit_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#5| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (or (_module.Map.Valid _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.values))))))) (=> (=> (|_module.Map.Valid#canCall| _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (or (_module.Map.Valid _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.values)))))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> (|_module.Map.Valid#canCall| _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (or (_module.Map.Valid _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| |j#0@@0|)) (< |j#0@@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#0@@0|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |804|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#0@@0|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#0@@0|))
))))) (=> (=> (|_module.Map.Valid#canCall| _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (or (_module.Map.Valid _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (forall ((|i#0@@1| Int) (|j#0@@1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| |j#0@@1|)) (< |j#0@@1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#0@@1|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#0@@1|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |804|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#0@@1|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#0@@1|))
)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (<= (LitInt (- 0 1)) |call5formal@idx#0@0|) (< |call5formal@idx#0@0| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)))))) (and (and (=> (= |call5formal@idx#0@0| (LitInt (- 0 1))) (not (|Seq#Contains| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |key#0|))) (=> (<= (LitInt 0) |call5formal@idx#0@0|) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@1) _module.Map.keys)) |call5formal@idx#0@0|) |key#0|))) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@7)))
 :qid |b8dfy.320:10|
 :skolemid |806|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 7) 4) anon3_Then_correct) (=> (= (ControlFlow 0 7) 5) anon3_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 (Tclass._module.Map _module.Map$Key@@17 _module.Map$Value@@17)) ($IsAlloc refType this@@1 (Tclass._module.Map _module.Map$Key@@17 _module.Map$Value@@17) $Heap@@0))) (and ($IsBox |key#0| _module.Map$Key@@17) ($IsAllocBox |key#0| _module.Map$Key@@17 $Heap@@0))) (=> (and (and (and ($Is DatatypeTypeType |result#0| (Tclass._module.Maybe _module.Map$Value@@17)) ($IsAlloc DatatypeTypeType |result#0| (Tclass._module.Maybe _module.Map$Value@@17) $Heap@@0)) (= 2 $FunctionContextHeight)) (and (and (|_module.Map.Valid#canCall| _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (and (_module.Map.Valid _module.Map$Key@@17 _module.Map$Value@@17 $Heap@@0 this@@1) (and (= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.values)))) (forall ((|i#3| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#3|) (< |i#3| |j#1|)) (< |j#1| (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys))))) (or (not (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#3|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#1|))) (not true)))
 :qid |b8dfy.250:12|
 :skolemid |758|
 :pattern ( (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |j#1|) (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@1) _module.Map.keys)) |i#3|))
))))) (= (ControlFlow 0 10) 7))) anon0_correct)))))
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
