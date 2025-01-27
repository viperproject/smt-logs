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
(declare-fun Tagclass._module.uint8 () T@U)
(declare-fun Tagclass._module.ValidSeqUint8 () T@U)
(declare-fun Tagclass._module.MoreThanOne () T@U)
(declare-fun Tagclass._module.DummyType () T@U)
(declare-fun Tagclass._module.TestOwnershipConstructor () T@U)
(declare-fun Tagclass._module.TestOwnershipConstructor? () T@U)
(declare-fun tytagFamily$uint8 () T@U)
(declare-fun tytagFamily$ValidSeqUint8 () T@U)
(declare-fun tytagFamily$MoreThanOne () T@U)
(declare-fun tytagFamily$DummyType () T@U)
(declare-fun tytagFamily$TestOwnershipConstructor () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Test (T@U T@U) Bool)
(declare-fun |_module.__default.Test#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Tclass._module.ValidSeqUint8 () T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.DummyType (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.uint8 () T@U)
(declare-fun Tclass._module.MoreThanOne () T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun refType () T@T)
(declare-fun Tclass._module.TestOwnershipConstructor? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.TestOwnershipConstructor () T@U)
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
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun _module.__default.SubtypePredicate (T@U) Bool)
(declare-fun |_module.__default.SubtypePredicate#canCall| (T@U) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.DummyType_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._module.uint8 Tagclass._module.ValidSeqUint8 Tagclass._module.MoreThanOne Tagclass._module.DummyType Tagclass._module.TestOwnershipConstructor Tagclass._module.TestOwnershipConstructor? tytagFamily$uint8 tytagFamily$ValidSeqUint8 tytagFamily$MoreThanOne tytagFamily$DummyType tytagFamily$TestOwnershipConstructor)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|contextKeys#0| T@U) (|result#0| T@U) ) (!  (=> (or (|_module.__default.Test#canCall| |contextKeys#0| |result#0|) (and (< 5 $FunctionContextHeight) (and ($Is SeqType |contextKeys#0| (TSeq Tclass._module.ValidSeqUint8)) ($Is SeqType |result#0| (TSeq Tclass._module.ValidSeqUint8))))) (= (_module.__default.Test |contextKeys#0| |result#0|) (forall ((|k#0| T@U) ) (!  (=> (and ($Is SeqType |k#0| Tclass._module.ValidSeqUint8) (|Seq#Contains| |contextKeys#0| ($Box SeqType |k#0|))) (|Seq#Contains| |result#0| ($Box SeqType |k#0|)))
 :qid |subsetconstraintsdfy.16:10|
 :skolemid |536|
 :pattern ( (|Seq#Contains| |result#0| ($Box SeqType |k#0|)))
 :pattern ( (|Seq#Contains| |contextKeys#0| ($Box SeqType |k#0|)))
))))
 :qid |subsetconstraintsdfy.15:16|
 :skolemid |537|
 :pattern ( (_module.__default.Test |contextKeys#0| |result#0|))
))))
(assert (forall ((_module.DummyType$T T@U) (|x#0| T@U) ($h T@U) ) (! (= ($IsAllocBox |x#0| (Tclass._module.DummyType _module.DummyType$T) $h) ($IsAllocBox |x#0| _module.DummyType$T $h))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($IsAllocBox |x#0| (Tclass._module.DummyType _module.DummyType$T) $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.uint8 $h@@0)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.uint8 $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._module.MoreThanOne $h@@1)
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._module.MoreThanOne $h@@1))
)))
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
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.TestOwnershipConstructor?)  (or (= $o null) (= (dtype $o) Tclass._module.TestOwnershipConstructor?)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Is refType $o Tclass._module.TestOwnershipConstructor?))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.TestOwnershipConstructor $h@@2) ($IsAlloc refType |c#0| Tclass._module.TestOwnershipConstructor? $h@@2))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TestOwnershipConstructor $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TestOwnershipConstructor? $h@@2))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.TestOwnershipConstructor? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.TestOwnershipConstructor? $h@@3))
)))
(assert (forall ((|i#0| T@U) ($h@@4 T@U) ) (! (= ($IsAlloc SeqType |i#0| Tclass._module.ValidSeqUint8 $h@@4) ($IsAlloc SeqType |i#0| (TSeq Tclass._module.uint8) $h@@4))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc SeqType |i#0| Tclass._module.ValidSeqUint8 $h@@4))
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
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._module.MoreThanOne)  (and (and (<= (LitInt 0) (U_2_int |x#0@@2|)) (< (U_2_int |x#0@@2|) 256)) (> (U_2_int |x#0@@2|) 1)))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($Is intType |x#0@@2| Tclass._module.MoreThanOne))
)))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@1 h@@1) ($IsAllocBox bx@@0 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.DummyType$T@@0 T@U) ) (!  (and (= (Tag (Tclass._module.DummyType _module.DummyType$T@@0)) Tagclass._module.DummyType) (= (TagFamily (Tclass._module.DummyType _module.DummyType$T@@0)) tytagFamily$DummyType))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (Tclass._module.DummyType _module.DummyType$T@@0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.uint8) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._module.uint8)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@1 Tclass._module.uint8))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.ValidSeqUint8) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) Tclass._module.ValidSeqUint8)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@2 Tclass._module.ValidSeqUint8))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.MoreThanOne) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.MoreThanOne)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsBox bx@@3 Tclass._module.MoreThanOne))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.TestOwnershipConstructor) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.TestOwnershipConstructor)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsBox bx@@4 Tclass._module.TestOwnershipConstructor))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.TestOwnershipConstructor?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.TestOwnershipConstructor?)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsBox bx@@5 Tclass._module.TestOwnershipConstructor?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.TestOwnershipConstructor)  (and ($Is refType |c#0@@0| Tclass._module.TestOwnershipConstructor?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.TestOwnershipConstructor))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.TestOwnershipConstructor?))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|i#0@@0| T@U) ) (!  (=> (or (|_module.__default.SubtypePredicate#canCall| |i#0@@0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |i#0@@0| (TSeq Tclass._module.uint8)))) (= (_module.__default.SubtypePredicate |i#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |subsetconstraintsdfy.9:28|
 :skolemid |531|
 :pattern ( (_module.__default.SubtypePredicate |i#0@@0|))
))))
(assert  (=> (<= 5 $FunctionContextHeight) (forall ((|contextKeys#0@@0| T@U) (|result#0@@0| T@U) ) (!  (=> (or (|_module.__default.Test#canCall| (Lit SeqType |contextKeys#0@@0|) (Lit SeqType |result#0@@0|)) (and (< 5 $FunctionContextHeight) (and ($Is SeqType |contextKeys#0@@0| (TSeq Tclass._module.ValidSeqUint8)) ($Is SeqType |result#0@@0| (TSeq Tclass._module.ValidSeqUint8))))) (= (_module.__default.Test (Lit SeqType |contextKeys#0@@0|) (Lit SeqType |result#0@@0|)) (forall ((|k#1| T@U) ) (!  (=> (and ($Is SeqType |k#1| Tclass._module.ValidSeqUint8) (|Seq#Contains| |contextKeys#0@@0| ($Box SeqType |k#1|))) (|Seq#Contains| |result#0@@0| ($Box SeqType |k#1|)))
 :qid |subsetconstraintsdfy.16:10|
 :skolemid |538|
 :pattern ( (|Seq#Contains| |result#0@@0| ($Box SeqType |k#1|)))
 :pattern ( (|Seq#Contains| |contextKeys#0@@0| ($Box SeqType |k#1|)))
))))
 :qid |subsetconstraintsdfy.15:16|
 :weight 3
 :skolemid |539|
 :pattern ( (_module.__default.Test (Lit SeqType |contextKeys#0@@0|) (Lit SeqType |result#0@@0|)))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@4 T@U) ) (! (<= 0 (|Seq#Length| s@@4))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((_module.DummyType$T@@1 T@U) ) (! (= (Tclass._module.DummyType_0 (Tclass._module.DummyType _module.DummyType$T@@1)) _module.DummyType$T@@1)
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (Tclass._module.DummyType _module.DummyType$T@@1))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|i#0@@1| T@U) ) (!  (=> (or (|_module.__default.SubtypePredicate#canCall| (Lit SeqType |i#0@@1|)) (and (< 1 $FunctionContextHeight) ($Is SeqType |i#0@@1| (TSeq Tclass._module.uint8)))) (= (_module.__default.SubtypePredicate (Lit SeqType |i#0@@1|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |subsetconstraintsdfy.9:28|
 :weight 3
 :skolemid |532|
 :pattern ( (_module.__default.SubtypePredicate (Lit SeqType |i#0@@1|)))
))))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |583|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((_module.DummyType$T@@2 T@U) (|x#0@@3| T@U) ) (! (= ($IsBox |x#0@@3| (Tclass._module.DummyType _module.DummyType$T@@2))  (and ($IsBox |x#0@@3| _module.DummyType$T@@2) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsBox |x#0@@3| (Tclass._module.DummyType _module.DummyType$T@@2)))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((bx@@7 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@6)))
)))
(assert (= (Tag Tclass._module.uint8) Tagclass._module.uint8))
(assert (= (TagFamily Tclass._module.uint8) tytagFamily$uint8))
(assert (= (Tag Tclass._module.ValidSeqUint8) Tagclass._module.ValidSeqUint8))
(assert (= (TagFamily Tclass._module.ValidSeqUint8) tytagFamily$ValidSeqUint8))
(assert (= (Tag Tclass._module.MoreThanOne) Tagclass._module.MoreThanOne))
(assert (= (TagFamily Tclass._module.MoreThanOne) tytagFamily$MoreThanOne))
(assert (= (Tag Tclass._module.TestOwnershipConstructor) Tagclass._module.TestOwnershipConstructor))
(assert (= (TagFamily Tclass._module.TestOwnershipConstructor) tytagFamily$TestOwnershipConstructor))
(assert (= (Tag Tclass._module.TestOwnershipConstructor?) Tagclass._module.TestOwnershipConstructor?))
(assert (= (TagFamily Tclass._module.TestOwnershipConstructor?) tytagFamily$TestOwnershipConstructor))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass._module.uint8)  (and (<= (LitInt 0) (U_2_int |x#0@@4|)) (< (U_2_int |x#0@@4|) 256)))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( ($Is intType |x#0@@4| Tclass._module.uint8))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@4 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@4))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@2) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@2))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((|i#0@@2| T@U) ) (! (= ($Is SeqType |i#0@@2| Tclass._module.ValidSeqUint8)  (and ($Is SeqType |i#0@@2| (TSeq Tclass._module.uint8)) (_module.__default.SubtypePredicate |i#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($Is SeqType |i#0@@2| Tclass._module.ValidSeqUint8))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |col#0@0| () T@U)
(declare-fun |newtype$check#14@0| () Int)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun |n#0@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun |##contextKeys#1@0| () T@U)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |##result#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |##result#0@0| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |sSub#0| () T@U)
(declare-fun |col#0| () T@U)
(declare-fun |x#0@@5| () Int)
(declare-fun |y#0| () Int)
(declare-fun |defass#y1#0| () Bool)
(declare-fun |y1#0| () Int)
(declare-fun |defass#z#0| () Bool)
(declare-fun |z#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 45) (let ((anon14_Else_correct  (=> (and (forall ((|n#1| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |n#1|)) (|Seq#Contains| |col#0@0| ($Box intType |n#1|))) (> (U_2_int |n#1|) 0))
 :qid |subsetconstraintsdfy.38:17|
 :skolemid |556|
 :pattern ( (|Seq#Contains| |col#0@0| ($Box intType |n#1|)))
)) (= |newtype$check#14@0| (LitInt 2))) (and (=> (= (ControlFlow 0 5) (- 0 17)) (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#14@0|) (< |newtype$check#14@0| 256)) (=> (= |newtype$check#15@0| (LitInt 2)) (and (=> (= (ControlFlow 0 5) (- 0 16)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 256)) (=> (and (= |x#0@0| (LitInt 2)) (= |newtype$check#16@0| (LitInt 2))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 256)) (and (=> (= (ControlFlow 0 5) (- 0 14)) ($Is intType (int_2_U (LitInt 2)) Tclass._module.MoreThanOne)) (=> ($Is intType (int_2_U (LitInt 2)) Tclass._module.MoreThanOne) (=> (= |y#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 5) (- 0 13)) ($IsBox ($Box intType (int_2_U |y#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne))) (=> ($IsBox ($Box intType (int_2_U |y#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne)) (and (=> (= (ControlFlow 0 5) (- 0 12)) ($Is intType (int_2_U |x#0@0|) Tclass._module.MoreThanOne)) (=> ($Is intType (int_2_U |x#0@0|) Tclass._module.MoreThanOne) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |subsetconstraintsdfy.19:8|
 :skolemid |543|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 5) (- 0 11)) ($IsBox ($Box intType (int_2_U |x#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne))) (=> ($IsBox ($Box intType (int_2_U |x#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |subsetconstraintsdfy.25:8|
 :skolemid |550|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 5) (- 0 10)) ($Is intType (int_2_U |x#0@0|) Tclass._module.MoreThanOne)) (=> ($Is intType (int_2_U |x#0@0|) Tclass._module.MoreThanOne) (and (=> (= (ControlFlow 0 5) (- 0 9)) true) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4)))
 :qid |subsetconstraintsdfy.19:8|
 :skolemid |543|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 5) (- 0 8)) ($IsBox ($Box intType (int_2_U |x#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne))) (=> ($IsBox ($Box intType (int_2_U |x#0@0|)) (Tclass._module.DummyType Tclass._module.MoreThanOne)) (and (=> (= (ControlFlow 0 5) (- 0 7)) true) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |subsetconstraintsdfy.25:8|
 :skolemid |550|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 5) (- 0 6)) ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8)) (=> (= (ControlFlow 0 5) (- 0 4)) ($Is intType (int_2_U |x#0@0|) Tclass._module.MoreThanOne))))))))))))))))))))))))))))))))))
(let ((anon14_Then_correct true))
(let ((anon7_correct  (and (=> (= (ControlFlow 0 18) 3) anon14_Then_correct) (=> (= (ControlFlow 0 18) 5) anon14_Else_correct))))
(let ((anon13_Else_correct  (=> (and (not (|Seq#Contains| |col#0@0| ($Box intType (int_2_U |n#0@0|)))) (= (ControlFlow 0 21) 18)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (|Seq#Contains| |col#0@0| ($Box intType (int_2_U |n#0@0|))) (= (ControlFlow 0 20) 18)) anon7_correct)))
(let ((anon12_Then_correct  (=> (<= (LitInt 0) |n#0@0|) (and (=> (= (ControlFlow 0 22) 20) anon13_Then_correct) (=> (= (ControlFlow 0 22) 21) anon13_Else_correct)))))
(let ((anon12_Else_correct  (=> (and (< |n#0@0| (LitInt 0)) (= (ControlFlow 0 19) 18)) anon7_correct)))
(let ((anon11_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U (_module.__default.Test (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))))))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))))))) (= |col#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt (- 0 1))))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))))) (and (=> (= (ControlFlow 0 23) 22) anon12_Then_correct) (=> (= (ControlFlow 0 23) 19) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> (and (_module.__default.Test |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))) (= |newtype$check#6@0| (LitInt 1))) (and (=> (= (ControlFlow 0 24) (- 0 34)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256)) (=> (= |newtype$check#7@0| (LitInt 1)) (and (=> (= (ControlFlow 0 24) (- 0 33)) (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (< |newtype$check#7@0| 256)) (=> (= |newtype$check#8@0| (LitInt 3)) (and (=> (= (ControlFlow 0 24) (- 0 32)) (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (< |newtype$check#8@0| 256)) (=> (= |newtype$check#9@0| (LitInt 3)) (and (=> (= (ControlFlow 0 24) (- 0 31)) (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#9@0|) (< |newtype$check#9@0| 256)) (and (=> (= (ControlFlow 0 24) (- 0 30)) ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))))))) (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))))))) (TSeq Tclass._module.ValidSeqUint8)) (=> (= |##contextKeys#1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3))))))))) (=> (and ($IsAlloc SeqType |##contextKeys#1@0| (TSeq Tclass._module.ValidSeqUint8) $Heap) (= |newtype$check#10@0| (LitInt 1))) (and (=> (= (ControlFlow 0 24) (- 0 29)) (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#10@0|) (< |newtype$check#10@0| 256)) (=> (= |newtype$check#11@0| (LitInt 1)) (and (=> (= (ControlFlow 0 24) (- 0 28)) (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#11@0|) (< |newtype$check#11@0| 256)) (=> (= |newtype$check#12@0| (LitInt 2)) (and (=> (= (ControlFlow 0 24) (- 0 27)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 256)) (=> (= |newtype$check#13@0| (LitInt 2)) (and (=> (= (ControlFlow 0 24) (- 0 26)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 256)) (and (=> (= (ControlFlow 0 24) (- 0 25)) ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))))) (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))))) (TSeq Tclass._module.ValidSeqUint8)) (=> (and (and (= |##result#1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))) ($IsAlloc SeqType |##result#1@0| (TSeq Tclass._module.ValidSeqUint8) $Heap)) (and (|_module.__default.Test#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))))))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))) (|_module.__default.Test#canCall| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 3)))))))) (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))))) (and (=> (= (ControlFlow 0 24) 2) anon11_Then_correct) (=> (= (ControlFlow 0 24) 23) anon11_Else_correct))))))))))))))))))))))))))))))))))
(let ((anon10_Then_correct true))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |newtype$check#0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 35) (- 0 44)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256)) (=> (= |newtype$check#1@0| (LitInt 1)) (and (=> (= (ControlFlow 0 35) (- 0 43)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256)) (=> (= |s#0@0| (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))))) (and (=> (= (ControlFlow 0 35) (- 0 42)) ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8)) (and (=> (= (ControlFlow 0 35) (- 0 41)) ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8)) (=> (and ($IsAlloc SeqType |s#0@0| (TSeq Tclass._module.ValidSeqUint8) $Heap) (= |newtype$check#2@0| (LitInt 1))) (and (=> (= (ControlFlow 0 35) (- 0 40)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256)) (=> (= |newtype$check#3@0| (LitInt 1)) (and (=> (= (ControlFlow 0 35) (- 0 39)) (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#3@0|) (< |newtype$check#3@0| 256)) (=> (= |newtype$check#4@0| (LitInt 2)) (and (=> (= (ControlFlow 0 35) (- 0 38)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256)) (=> (= |newtype$check#5@0| (LitInt 2)) (and (=> (= (ControlFlow 0 35) (- 0 37)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256)) (and (=> (= (ControlFlow 0 35) (- 0 36)) ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))))) (TSeq Tclass._module.ValidSeqUint8))) (=> ($Is SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2)))))))) (TSeq Tclass._module.ValidSeqUint8)) (=> (and (and (= |##result#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))) ($IsAlloc SeqType |##result#0@0| (TSeq Tclass._module.ValidSeqUint8) $Heap)) (and (|_module.__default.Test#canCall| |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))) (|_module.__default.Test#canCall| |s#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1))))))) ($Box SeqType (Lit SeqType (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 2))))))))))) (and (=> (= (ControlFlow 0 35) 1) anon10_Then_correct) (=> (= (ControlFlow 0 35) 24) anon10_Else_correct))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is SeqType |s#0| (TSeq (TSeq Tclass._module.uint8))) ($IsAlloc SeqType |s#0| (TSeq (TSeq Tclass._module.uint8)) $Heap)) true) (and (and ($Is SeqType |sSub#0| (TSeq Tclass._module.ValidSeqUint8)) ($IsAlloc SeqType |sSub#0| (TSeq Tclass._module.ValidSeqUint8) $Heap)) true)) (and (and (and ($Is SeqType |col#0| (TSeq TInt)) ($IsAlloc SeqType |col#0| (TSeq TInt) $Heap)) true) (and (and (<= (LitInt 0) |x#0@@5|) (< |x#0@@5| 256)) true))) (=> (and (and (and (and (and (<= (LitInt 0) |y#0|) (< |y#0| 256)) (> |y#0| 1)) true) (and (=> |defass#y1#0| (and (and (<= (LitInt 0) |y1#0|) (< |y1#0| 256)) (> |y1#0| 1))) true)) (and (and (=> |defass#z#0| (and ($Is refType |z#0| Tclass._module.TestOwnershipConstructor) ($IsAlloc refType |z#0| Tclass._module.TestOwnershipConstructor $Heap))) true) (and (= 6 $FunctionContextHeight) (= (ControlFlow 0 45) 35)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
