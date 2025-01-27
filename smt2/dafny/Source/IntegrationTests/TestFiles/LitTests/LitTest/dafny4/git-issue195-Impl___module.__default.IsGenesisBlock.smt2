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
(declare-fun Tagclass._module.Block () T@U)
(declare-fun |##_module.Block.Block| () T@U)
(declare-fun tytagFamily$Block () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |#_module.Block.Block| (T@U T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |$IsA#_module.Block| (T@U) Bool)
(declare-fun _module.Block.Block_q (T@U) Bool)
(declare-fun Tclass._module.Block (T@U T@U T@U) T@U)
(declare-fun Tclass._module.Block_0 (T@U) T@U)
(declare-fun Tclass._module.Block_1 (T@U) T@U)
(declare-fun Tclass._module.Block_2 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Block.prevBlockHash (T@U) T@U)
(declare-fun _module.Block.txs (T@U) T@U)
(declare-fun _module.Block.proof (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |_module.Block#Equal| (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.GenesisBlock#canCall| () Bool)
(declare-fun _module.__default.GenesisBlock () T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Seq#Rank| (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._module.Block |##_module.Block.Block| tytagFamily$Block)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) (|a#7#2#0| T@U) (i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| |a#7#1#0|))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| |a#7#1#0| i))) (DtRank (|#_module.Block.Block| |a#7#0#0| |a#7#1#0| |a#7#2#0|))))
 :qid |gitissue195dfy.4:9|
 :skolemid |577|
 :pattern ( (|Seq#Index| |a#7#1#0| i) (|#_module.Block.Block| |a#7#0#0| |a#7#1#0| |a#7#2#0|))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Block| d) (_module.Block.Block_q d))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( (|$IsA#_module.Block| d))
)))
(assert (forall ((_module.Block$Hash T@U) (_module.Block$Transaction T@U) (_module.Block$VProof T@U) ) (! (= (Tclass._module.Block_0 (Tclass._module.Block _module.Block$Hash _module.Block$Transaction _module.Block$VProof)) _module.Block$Hash)
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass._module.Block _module.Block$Hash _module.Block$Transaction _module.Block$VProof))
)))
(assert (forall ((_module.Block$Hash@@0 T@U) (_module.Block$Transaction@@0 T@U) (_module.Block$VProof@@0 T@U) ) (! (= (Tclass._module.Block_1 (Tclass._module.Block _module.Block$Hash@@0 _module.Block$Transaction@@0 _module.Block$VProof@@0)) _module.Block$Transaction@@0)
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass._module.Block _module.Block$Hash@@0 _module.Block$Transaction@@0 _module.Block$VProof@@0))
)))
(assert (forall ((_module.Block$Hash@@1 T@U) (_module.Block$Transaction@@1 T@U) (_module.Block$VProof@@1 T@U) ) (! (= (Tclass._module.Block_2 (Tclass._module.Block _module.Block$Hash@@1 _module.Block$Transaction@@1 _module.Block$VProof@@1)) _module.Block$VProof@@1)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass._module.Block _module.Block$Hash@@1 _module.Block$Transaction@@1 _module.Block$VProof@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) (|a#0#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Block.Block| |a#0#0#0| |a#0#1#0| |a#0#2#0|)) |##_module.Block.Block|)
 :qid |gitissue195dfy.4:9|
 :skolemid |561|
 :pattern ( (|#_module.Block.Block| |a#0#0#0| |a#0#1#0| |a#0#2#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) (|a#4#2#0| T@U) ) (! (= (_module.Block.prevBlockHash (|#_module.Block.Block| |a#4#0#0| |a#4#1#0| |a#4#2#0|)) |a#4#0#0|)
 :qid |gitissue195dfy.4:9|
 :skolemid |574|
 :pattern ( (|#_module.Block.Block| |a#4#0#0| |a#4#1#0| |a#4#2#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) (|a#6#2#0| T@U) ) (! (= (_module.Block.txs (|#_module.Block.Block| |a#6#0#0| |a#6#1#0| |a#6#2#0|)) |a#6#1#0|)
 :qid |gitissue195dfy.4:9|
 :skolemid |576|
 :pattern ( (|#_module.Block.Block| |a#6#0#0| |a#6#1#0| |a#6#2#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) (|a#9#2#0| T@U) ) (! (= (_module.Block.proof (|#_module.Block.Block| |a#9#0#0| |a#9#1#0| |a#9#2#0|)) |a#9#2#0|)
 :qid |gitissue195dfy.4:9|
 :skolemid |579|
 :pattern ( (|#_module.Block.Block| |a#9#0#0| |a#9#1#0| |a#9#2#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((_module.Block$Hash@@2 T@U) (_module.Block$Transaction@@2 T@U) (_module.Block$VProof@@2 T@U) ) (!  (and (= (Tag (Tclass._module.Block _module.Block$Hash@@2 _module.Block$Transaction@@2 _module.Block$VProof@@2)) Tagclass._module.Block) (= (TagFamily (Tclass._module.Block _module.Block$Hash@@2 _module.Block$Transaction@@2 _module.Block$VProof@@2)) tytagFamily$Block))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (Tclass._module.Block _module.Block$Hash@@2 _module.Block$Transaction@@2 _module.Block$VProof@@2))
)))
(assert (forall ((_module.Block$Hash@@3 T@U) (_module.Block$Transaction@@3 T@U) (_module.Block$VProof@@3 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._module.Block _module.Block$Hash@@3 _module.Block$Transaction@@3 _module.Block$VProof@@3)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._module.Block _module.Block$Hash@@3 _module.Block$Transaction@@3 _module.Block$VProof@@3))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsBox bx (Tclass._module.Block _module.Block$Hash@@3 _module.Block$Transaction@@3 _module.Block$VProof@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Block#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (|_module.Block#Equal| a b))
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
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.GenesisBlock#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.GenesisBlock (Lit DatatypeTypeType (|#_module.Block.Block| ($Box intType (int_2_U (LitInt 0))) (Lit SeqType |Seq#Empty|) ($Box intType (int_2_U (LitInt 0)))))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.GenesisBlock#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.GenesisBlock (Lit DatatypeTypeType (|#_module.Block.Block| ($Box intType (int_2_U (LitInt 0))) (Lit SeqType |Seq#Empty|) ($Box intType (int_2_U (LitInt 0)))))))))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Block.Block_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Block.Block|))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_module.Block.Block_q d@@0))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Block.Block_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) (|a#1#2#0| T@U) ) (! (= d@@1 (|#_module.Block.Block| |a#1#0#0| |a#1#1#0| |a#1#2#0|))
 :qid |gitissue195dfy.4:9|
 :skolemid |563|
)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (_module.Block.Block_q d@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.Block#Equal| a@@0 b@@0)  (and (and (= (_module.Block.prevBlockHash a@@0) (_module.Block.prevBlockHash b@@0)) (|Seq#Equal| (_module.Block.txs a@@0) (_module.Block.txs b@@0))) (= (_module.Block.proof a@@0) (_module.Block.proof b@@0))))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (|_module.Block#Equal| a@@0 b@@0))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.Block$Hash@@4 T@U) (_module.Block$Transaction@@4 T@U) (_module.Block$VProof@@4 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) (|a#2#2#0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.Block.Block| |a#2#0#0| |a#2#1#0| |a#2#2#0|) (Tclass._module.Block _module.Block$Hash@@4 _module.Block$Transaction@@4 _module.Block$VProof@@4) $h)  (and (and ($IsAllocBox |a#2#0#0| _module.Block$Hash@@4 $h) ($IsAlloc SeqType |a#2#1#0| (TSeq _module.Block$Transaction@@4) $h)) ($IsAllocBox |a#2#2#0| _module.Block$VProof@@4 $h))))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Block.Block| |a#2#0#0| |a#2#1#0| |a#2#2#0|) (Tclass._module.Block _module.Block$Hash@@4 _module.Block$Transaction@@4 _module.Block$VProof@@4) $h))
)))
(assert (forall ((_module.Block$Hash@@5 T@U) (_module.Block$Transaction@@5 T@U) (_module.Block$VProof@@5 T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._module.Block _module.Block$Hash@@5 _module.Block$Transaction@@5 _module.Block$VProof@@5)) (_module.Block.Block_q d@@2))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( (_module.Block.Block_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._module.Block _module.Block$Hash@@5 _module.Block$Transaction@@5 _module.Block$VProof@@5)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.GenesisBlock#canCall| (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType _module.__default.GenesisBlock (Tclass._module.Block TInt TInt TInt)))))
(assert (forall ((_module.Block$Hash@@6 T@U) (_module.Block$Transaction@@6 T@U) (_module.Block$VProof@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) (|a#2#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Block.Block| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) (Tclass._module.Block _module.Block$Hash@@6 _module.Block$Transaction@@6 _module.Block$VProof@@6))  (and (and ($IsBox |a#2#0#0@@0| _module.Block$Hash@@6) ($Is SeqType |a#2#1#0@@0| (TSeq _module.Block$Transaction@@6))) ($IsBox |a#2#2#0@@0| _module.Block$VProof@@6)))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($Is DatatypeTypeType (|#_module.Block.Block| |a#2#0#0@@0| |a#2#1#0@@0| |a#2#2#0@@0|) (Tclass._module.Block _module.Block$Hash@@6 _module.Block$Transaction@@6 _module.Block$VProof@@6)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (|Seq#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |DafnyPreludebpl.1225:15|
 :skolemid |241|
 :pattern ( (|Seq#Equal| a@@1 b@@1))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
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
(assert (forall ((v@@1 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0) h@@0))
)))
(assert (= (Ctor BoxType) 5))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) (|a#3#2#0| T@U) ) (! (= (|#_module.Block.Block| (Lit BoxType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit BoxType |a#3#2#0|)) (Lit DatatypeTypeType (|#_module.Block.Block| |a#3#0#0| |a#3#1#0| |a#3#2#0|)))
 :qid |gitissue195dfy.4:9|
 :skolemid |573|
 :pattern ( (|#_module.Block.Block| (Lit BoxType |a#3#0#0|) (Lit SeqType |a#3#1#0|) (Lit BoxType |a#3#2#0|)))
)))
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
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) (|a#5#2#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_module.Block.Block| |a#5#0#0| |a#5#1#0| |a#5#2#0|)))
 :qid |gitissue195dfy.4:9|
 :skolemid |575|
 :pattern ( (|#_module.Block.Block| |a#5#0#0| |a#5#1#0| |a#5#2#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (|a#8#2#0| T@U) ) (! (< (|Seq#Rank| |a#8#1#0|) (DtRank (|#_module.Block.Block| |a#8#0#0| |a#8#1#0| |a#8#2#0|)))
 :qid |gitissue195dfy.4:9|
 :skolemid |578|
 :pattern ( (|#_module.Block.Block| |a#8#0#0| |a#8#1#0| |a#8#2#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) (|a#10#2#0| T@U) ) (! (< (BoxRank |a#10#2#0|) (DtRank (|#_module.Block.Block| |a#10#0#0| |a#10#1#0| |a#10#2#0|)))
 :qid |gitissue195dfy.4:9|
 :skolemid |580|
 :pattern ( (|#_module.Block.Block| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert  (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 6)) (= (Ctor FieldType) 7)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |626|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((bx@@1 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@3)))
)))
(assert (forall ((d@@4 T@U) (_module.Block$Hash@@7 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Block.Block_q d@@4) (exists ((_module.Block$Transaction@@7 T@U) (_module.Block$VProof@@7 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Block _module.Block$Hash@@7 _module.Block$Transaction@@7 _module.Block$VProof@@7) $h@@0)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.Block _module.Block$Hash@@7 _module.Block$Transaction@@7 _module.Block$VProof@@7) $h@@0))
)))) ($IsAllocBox (_module.Block.prevBlockHash d@@4) _module.Block$Hash@@7 $h@@0))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsAllocBox (_module.Block.prevBlockHash d@@4) _module.Block$Hash@@7 $h@@0))
)))
(assert (forall ((d@@5 T@U) (_module.Block$VProof@@8 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Block.Block_q d@@5) (exists ((_module.Block$Hash@@8 T@U) (_module.Block$Transaction@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Block _module.Block$Hash@@8 _module.Block$Transaction@@8 _module.Block$VProof@@8) $h@@1)
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._module.Block _module.Block$Hash@@8 _module.Block$Transaction@@8 _module.Block$VProof@@8) $h@@1))
)))) ($IsAllocBox (_module.Block.proof d@@5) _module.Block$VProof@@8 $h@@1))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAllocBox (_module.Block.proof d@@5) _module.Block$VProof@@8 $h@@1))
)))
(assert (forall ((d@@6 T@U) (_module.Block$Transaction@@9 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Block.Block_q d@@6) (exists ((_module.Block$Hash@@9 T@U) (_module.Block$VProof@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Block _module.Block$Hash@@9 _module.Block$Transaction@@9 _module.Block$VProof@@9) $h@@2)
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.Block _module.Block$Hash@@9 _module.Block$Transaction@@9 _module.Block$VProof@@9) $h@@2))
)))) ($IsAlloc SeqType (_module.Block.txs d@@6) (TSeq _module.Block$Transaction@@9) $h@@2))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc SeqType (_module.Block.txs d@@6) (TSeq _module.Block$Transaction@@9) $h@@2))
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
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
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
(assert (forall ((s@@1 T@U) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@2))))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |gb#0@0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |eq#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |gb#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.IsGenesisBlock)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and |_module.__default.GenesisBlock#canCall| (_module.Block.Block_q (Lit DatatypeTypeType _module.__default.GenesisBlock))) (and |_module.__default.GenesisBlock#canCall| (= |gb#0@0| (Lit DatatypeTypeType _module.__default.GenesisBlock)))) (and (and (|$IsA#_module.Block| |b#0|) (|$IsA#_module.Block| |gb#0@0|)) (and (= |eq#0@0| (|_module.Block#Equal| |b#0| |gb#0@0|)) (= (ControlFlow 0 2) (- 0 1))))) (= |eq#0@0| (|_module.Block#Equal| |b#0| _module.__default.GenesisBlock))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |b#0| (Tclass._module.Block TInt TInt TInt)) ($IsAlloc DatatypeTypeType |b#0| (Tclass._module.Block TInt TInt TInt) $Heap)) (|$IsA#_module.Block| |b#0|)) (=> (and (and (and ($Is DatatypeTypeType |gb#0| (Tclass._module.Block TInt TInt TInt)) ($IsAlloc DatatypeTypeType |gb#0| (Tclass._module.Block TInt TInt TInt) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))))
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
