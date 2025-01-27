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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun tytagFamily$array () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
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
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.array? Tagclass._System.array tytagFamily$array)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |234|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |232|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
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
(assert (= (Ctor SeqType) 7))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@1 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@1))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
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
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
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
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
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
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
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
(assert (forall ((i@@2 Int) ) (! (= (FDim (IndexField i@@2)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (IndexField_Inverse (IndexField i@@3)) i@@3)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |790|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((x@@9 Int) (y Int) ) (! (= (Mul x@@9 y) (* x@@9 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@9 y))
)))
(assert (forall ((bx@@2 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@2 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@2)) bx@@2) ($Is SeqType ($Unbox SeqType bx@@2) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@2 (TSeq t@@6)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@10 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10)))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@5 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@5))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@4) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@4))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is intType v@@8 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@8 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0_1@0| () Int)
(declare-fun |i#1_0@0| () Int)
(declare-fun |sq#0@0| () T@U)
(declare-fun |i#1_1@0| () Int)
(declare-fun |t#3_0@0| () Int)
(declare-fun |u#3_0@0| () Int)
(declare-fun |t#3_1@0| () Int)
(declare-fun |u#3_1@0| () Int)
(declare-fun |k#0@1| () Int)
(declare-fun |k#0@2| () Int)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@3 () T@U)
(declare-fun |k#0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |t#2_0@0| () Int)
(declare-fun |t#2_1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |sq#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
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
 (=> (= (ControlFlow 0 0) 55) (let ((anon3_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| 180)) (and (=> (= (ControlFlow 0 46) (- 0 49)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 46) (- 0 48)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 46) (- 0 47)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|))) (=> (and (and (<= (LitInt 0) |i#0_1@0|) (< |i#0_1@0| 180)) (and (or (not (= |i#0_0@0| |i#0_1@0|)) (not true)) (= (ControlFlow 0 46) (- 0 45)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |i#0_0@0|) (IndexField |i#0_1@0|))) (not true))) (= (+ (Mul (LitInt 2) |i#0_0@0|) 100) (+ (Mul (LitInt 2) |i#0_1@0|) 100))))))))))))
(let ((anon32_Else_correct  (=> (and (< |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 51) 46)) anon3_correct)))
(let ((anon32_Then_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (= (ControlFlow 0 50) 46)) anon3_correct)))
(let ((anon31_Then_correct  (and (=> (= (ControlFlow 0 52) 50) anon32_Then_correct) (=> (= (ControlFlow 0 52) 51) anon32_Else_correct))))
(let ((anon8_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (< |i#1_0@0| (|Seq#Length| |sq#0@0|))) (and (=> (= (ControlFlow 0 36) (- 0 40)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (and (<= 0 (+ 20 |i#1_0@0|)) (< (+ 20 |i#1_0@0|) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 36) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (+ 20 |i#1_0@0|))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (+ 20 |i#1_0@0|)))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (<= 0 |i#1_0@0|) (< |i#1_0@0| (|Seq#Length| |sq#0@0|)))) (=> (and (and (<= (LitInt 0) |i#1_1@0|) (< |i#1_1@0| (|Seq#Length| |sq#0@0|))) (and (or (not (= |i#1_0@0| |i#1_1@0|)) (not true)) (= (ControlFlow 0 36) (- 0 35)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField (+ 20 |i#1_0@0|)) (IndexField (+ 20 |i#1_1@0|)))) (not true))) (= (U_2_int ($Unbox intType (|Seq#Index| |sq#0@0| |i#1_0@0|))) (U_2_int ($Unbox intType (|Seq#Index| |sq#0@0| |i#1_1@0|)))))))))))))))
(let ((anon34_Else_correct  (=> (and (< |i#1_0@0| (LitInt 0)) (= (ControlFlow 0 42) 36)) anon8_correct)))
(let ((anon34_Then_correct  (=> (and (<= (LitInt 0) |i#1_0@0|) (= (ControlFlow 0 41) 36)) anon8_correct)))
(let ((anon33_Then_correct  (and (=> (= (ControlFlow 0 43) 41) anon34_Then_correct) (=> (= (ControlFlow 0 43) 42) anon34_Else_correct))))
(let ((anon19_correct  (=> (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_0@0|))) (< |t#3_0@0| 4)) (and (<= (LitInt 10) |u#3_0@0|) (< |u#3_0@0| (+ 10 |t#3_0@0|)))) (and (=> (= (ControlFlow 0 22) (- 0 25)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (and (<= 0 |u#3_0@0|) (< |u#3_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |u#3_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |u#3_0@0|))) (=> (and (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_1@0|))) (< |t#3_1@0| 4)) (and (<= (LitInt 10) |u#3_1@0|) (< |u#3_1@0| (+ 10 |t#3_1@0|)))) (and (not (and (= |t#3_0@0| |t#3_1@0|) (= |u#3_0@0| |u#3_1@0|))) (= (ControlFlow 0 22) (- 0 21)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |u#3_0@0|) (IndexField |u#3_1@0|))) (not true))) (= (+ 6000 |t#3_0@0|) (+ 6000 |t#3_1@0|))))))))))))
(let ((anon39_Else_correct  (=> (and (< |u#3_0@0| (LitInt 10)) (= (ControlFlow 0 28) 22)) anon19_correct)))
(let ((anon39_Then_correct  (=> (and (<= (LitInt 10) |u#3_0@0|) (= (ControlFlow 0 27) 22)) anon19_correct)))
(let ((anon38_Then_correct  (=> (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_0@0|))) (< |t#3_0@0| 4)) (and (=> (= (ControlFlow 0 29) 27) anon39_Then_correct) (=> (= (ControlFlow 0 29) 28) anon39_Else_correct)))))
(let ((anon38_Else_correct  (=> (and (not (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_0@0|))) (< |t#3_0@0| 4))) (= (ControlFlow 0 26) 22)) anon19_correct)))
(let ((anon37_Else_correct  (=> (not (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_0@0|)))) (and (=> (= (ControlFlow 0 31) 29) anon38_Then_correct) (=> (= (ControlFlow 0 31) 26) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_0@0|))) (and (=> (= (ControlFlow 0 30) 29) anon38_Then_correct) (=> (= (ControlFlow 0 30) 26) anon38_Else_correct)))))
(let ((anon36_Then_correct  (and (=> (= (ControlFlow 0 32) 30) anon37_Then_correct) (=> (= (ControlFlow 0 32) 31) anon37_Else_correct))))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 |k#0@1|) (< |k#0@1| (_System.array.Length $nw@0)))) (=> (= |k#0@2| (+ |k#0@1| 1)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (<= 0 |$decr$loop#00@1|) (= (- 180 |k#0@2|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- 180 |k#0@2|) |$decr$loop#00@1|)) (=> (= (ControlFlow 0 10) (- 0 9)) (< (- 180 |k#0@2|) |$decr$loop#00@1|))))))))))
(let ((anon43_Else_correct  (=> (and (= |k#0@1| 0) (= (ControlFlow 0 15) 10)) anon29_correct)))
(let ((anon43_Then_correct  (=> (and (or (not (= |k#0@1| 0)) (not true)) (= (ControlFlow 0 14) 10)) anon29_correct)))
(let ((anon42_Else_correct  (=> (and (< |k#0@1| 180) (= |$decr$loop#00@1| (- 180 |k#0@1|))) (and (=> (= (ControlFlow 0 16) 14) anon43_Then_correct) (=> (= (ControlFlow 0 16) 15) anon43_Else_correct)))))
(let ((anon42_Then_correct true))
(let ((anon41_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 17) 8) anon42_Then_correct) (=> (= (ControlFlow 0 17) 16) anon42_Else_correct)))))
(let ((anon41_Then_correct true))
(let ((anon40_LoopBody_correct  (and (=> (= (ControlFlow 0 18) 7) anon41_Then_correct) (=> (= (ControlFlow 0 18) 17) anon41_Else_correct))))
(let ((anon40_LoopDone_correct true))
(let ((anon40_LoopHead_correct  (=> (and (and (and (not false) (and (<= 0 |k#0@1|) (< |k#0@1| 181))) (= |$decr_init$loop#00@0| 180)) (and (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6)))
 :qid |ForallStmtdfy.169:3|
 :skolemid |670|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6))
)) ($HeapSucc $Heap@4 $Heap@4)) (and (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0))))
 :qid |ForallStmtdfy.169:3|
 :skolemid |671|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) $f@@0))
)) (<= (- 180 |k#0@1|) |$decr_init$loop#00@0|)))) (and (=> (= (ControlFlow 0 19) 6) anon40_LoopDone_correct) (=> (= (ControlFlow 0 19) 18) anon40_LoopBody_correct)))))
(let ((anon36_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and ($HeapSucc $Heap@3 $Heap@4) (forall (($o@@8 T@U) ($f@@1 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) $f@@1)) (exists ((|t#3_2| Int) (|u#3_2| Int) ) (!  (and (and (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_2|))) (< |t#3_2| 4)) (and (<= (LitInt 10) |u#3_2|) (< |u#3_2| (+ 10 |t#3_2|)))) (= $o@@8 $nw@0)) (= $f@@1 (IndexField |u#3_2|)))
 :qid |ForallStmtdfy.165:10|
 :skolemid |667|
)))
 :qid |ForallStmtdfy.165:3|
 :skolemid |668|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) $f@@1))
)))) (and (and (forall ((|t#3_2@@0| Int) (|u#3_2@@0| Int) ) (!  (=> (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#3_2@@0|))) (< |t#3_2@@0| 4)) (and (<= (LitInt 10) |u#3_2@@0|) (< |u#3_2@@0| (+ 10 |t#3_2@@0|)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField |u#3_2@@0|)) ($Box intType (int_2_U (+ 6000 |t#3_2@@0|)))))
 :qid |ForallStmtdfy.165:10|
 :skolemid |669|
)) (= |k#0@0| (LitInt 0))) (and (= |$decr_init$loop#00@0| (- 180 |k#0@0|)) (= (ControlFlow 0 20) 19)))) anon40_LoopHead_correct)))
(let ((anon35_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) ($HeapSucc $Heap@2 $Heap@3)) (and (forall (($o@@9 T@U) ($f@@2 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) $f@@2)) (exists ((|t#2_2| Int) ) (!  (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#2_2|))) (= $o@@9 $nw@0)) (= $f@@2 (IndexField |t#2_2|)))
 :qid |ForallStmtdfy.162:10|
 :skolemid |664|
)))
 :qid |ForallStmtdfy.162:3|
 :skolemid |665|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) $f@@2))
)) (forall ((|t#inv#2_0| Int) ) (!  (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#inv#2_0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |t#inv#2_0|)) ($Box intType (int_2_U (LitInt 1000)))))
 :qid |ForallStmtdfy.162:10|
 :skolemid |666|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@0) (IndexField |t#inv#2_0|)))
)))) (and (=> (= (ControlFlow 0 33) 32) anon36_Then_correct) (=> (= (ControlFlow 0 33) 20) anon36_Else_correct)))))
(let ((anon35_Then_correct  (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#2_0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 |t#2_0@0|) (< |t#2_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |t#2_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |t#2_0@0|))) (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |t#2_1@0|))) (=> (and (or (not (= |t#2_0@0| |t#2_1@0|)) (not true)) (= (ControlFlow 0 2) (- 0 1))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |t#2_0@0|) (IndexField |t#2_1@0|))) (not true))) (= (LitInt 1000) (LitInt 1000)))))))))))))
(let ((anon33_Else_correct  (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) ($HeapSucc $Heap@1 $Heap@2)) (and (forall (($o@@10 T@U) ($f@@3 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) $f@@3)) (exists ((|i#1_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#1_2|) (< |i#1_2| (|Seq#Length| |sq#0@0|))) (= $o@@10 $nw@0)) (= $f@@3 (IndexField (+ 20 |i#1_2|))))
 :qid |ForallStmtdfy.159:10|
 :skolemid |661|
)))
 :qid |ForallStmtdfy.159:3|
 :skolemid |662|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) $f@@3))
)) (forall ((|i#inv#1_0| Int) ) (!  (=> (and (<= (LitInt 0) (- |i#inv#1_0| 20)) (< (- |i#inv#1_0| 20) (|Seq#Length| |sq#0@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#inv#1_0|)) ($Box intType ($Unbox intType (|Seq#Index| |sq#0@0| (- |i#inv#1_0| 20))))))
 :qid |ForallStmtdfy.159:10|
 :skolemid |663|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) (IndexField |i#inv#1_0|)))
)))) (and (=> (= (ControlFlow 0 34) 2) anon35_Then_correct) (=> (= (ControlFlow 0 34) 33) anon35_Else_correct)))))
(let ((anon31_Else_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@11 T@U) ($f@@4 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) $f@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@11) $f@@4)) (exists ((|i#0_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_2|) (< |i#0_2| 180)) (= $o@@11 $nw@0)) (= $f@@4 (IndexField |i#0_2|)))
 :qid |ForallStmtdfy.155:10|
 :skolemid |658|
)))
 :qid |ForallStmtdfy.155:3|
 :skolemid |659|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@11) $f@@4))
))) (and (forall ((|i#inv#0_0| Int) ) (!  (=> (and (<= (LitInt 0) |i#inv#0_0|) (< |i#inv#0_0| 180)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)) ($Box intType (int_2_U (+ (Mul (LitInt 2) |i#inv#0_0|) 100)))))
 :qid |ForallStmtdfy.155:10|
 :skolemid |660|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)))
)) (= |sq#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 5)))) ($Box intType (int_2_U (LitInt 5)))))))) (and (=> (= (ControlFlow 0 44) 43) anon33_Then_correct) (=> (= (ControlFlow 0 44) 34) anon33_Else_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc false)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= 0 (LitInt 180))) (=> (<= 0 (LitInt 180)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 180)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 53) 52) anon31_Then_correct) (=> (= (ControlFlow 0 53) 44) anon31_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true) (=> (and (and (and ($Is SeqType |sq#0| (TSeq TInt)) ($IsAlloc SeqType |sq#0| (TSeq TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 55) 53))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
