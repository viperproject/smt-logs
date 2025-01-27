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
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.D () T@U)
(declare-fun |##_module.D.A| () T@U)
(declare-fun |##_module.D.B| () T@U)
(declare-fun tytagFamily$D () T@U)
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
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#6| (T@U Bool) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.D.A| () T@U)
(declare-fun |#_module.D.B| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.D () T@U)
(declare-fun |_module.D#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun FieldType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |lambda#8| (T@U T@U Int Int) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Mod (Int Int) Int)
(declare-fun _module.D.A_q (T@U) Bool)
(declare-fun _module.D.B_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |lambda#7| (T@U Int T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun |lambda#4| (Int Int Int Int) T@U)
(declare-fun |lambda#9| (T@U Int Int Int) T@U)
(declare-fun |$IsA#_module.D| (T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |lambda#5| (Bool Int Int) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._module.D |##_module.D.A| |##_module.D.B| tytagFamily$D)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| Bool) (|$y#2| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#6| |l#0| |l#1|) |$y#2|))  (and ($IsBox |$y#2| |l#0|) |l#1|))
 :qid |Comprehensionsdfy.17:10|
 :skolemid |764|
 :pattern ( (MapType0Select BoxType boolType (|lambda#6| |l#0| |l#1|) |$y#2|))
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
(assert (= (DatatypeCtorId |#_module.D.A|) |##_module.D.A|))
(assert (= (DatatypeCtorId |#_module.D.B|) |##_module.D.B|))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#_module.D.A| Tclass._module.D))
(assert ($Is DatatypeTypeType |#_module.D.B| Tclass._module.D))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.D#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (|_module.D#Equal| a b))
)))
(assert  (and (and (and (and (= (Ctor FieldType) 5) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
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
(assert (= (Ctor SeqType) 8))
(assert (forall ((s@@0 T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx) (TSeq t)))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2| Int) (|l#3| Int) (|$y#4| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#8| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$y#4|))  (and ($IsBox |$y#4| |l#0@@0|) (and (|Set#IsMember| |l#1@@0| |$y#4|) (= (Mod (U_2_int ($Unbox intType |$y#4|)) |l#2|) |l#3|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |766|
 :pattern ( (MapType0Select BoxType boolType (|lambda#8| |l#0@@0| |l#1@@0| |l#2| |l#3|) |$y#4|))
)))
(assert (forall ((d T@U) ) (! (= (_module.D.A_q d) (= (DatatypeCtorId d) |##_module.D.A|))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( (_module.D.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.D.B_q d@@0) (= (DatatypeCtorId d@@0) |##_module.D.B|))
 :qid |unknown.0:0|
 :skolemid |527|
 :pattern ( (_module.D.B_q d@@0))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.D.A_q d@@1) (= d@@1 |#_module.D.A|))
 :qid |unknown.0:0|
 :skolemid |526|
 :pattern ( (_module.D.A_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.D.B_q d@@2) (= d@@2 |#_module.D.B|))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.D.B_q d@@2))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v@@0 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@0)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@1) ($IsBox bx@@1 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@0)))
)))
(assert (forall ((s@@1 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@1)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@1))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0) ($IsAlloc T@@1 v@@2 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@2 t@@1 h@@1) ($IsAllocBox bx@@2 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@2 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@2 h@@2) ($IsAlloc T@@2 v@@3 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@2 h@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.D) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.D)))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($IsBox bx@@3 Tclass._module.D))
)))
(assert (forall ((s@@2 T@U) (i Int) (v@@4 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@4) i) v@@4)) (=> (or (not (= i (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@4) i) (|Seq#Index| s@@2 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@4) i))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| Int) (|l#2@@0| T@U) (|$y#3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#7| |l#0@@1| |l#1@@1| |l#2@@0|) |$y#3|)) (exists ((|k#0| Int) ) (!  (and (|Set#IsMember| |l#0@@1| ($Box intType (int_2_U |k#0|))) (= |$y#3| ($Box intType (int_2_U (Mul |l#1@@1| |k#0|)))))
 :qid |Comprehensionsdfy.28:16|
 :skolemid |498|
 :pattern ( (|Set#IsMember| |l#2@@0| ($Box intType (int_2_U |k#0|))))
)))
 :qid |Comprehensionsdfy.22:7|
 :skolemid |765|
 :pattern ( (MapType0Select BoxType boolType (|lambda#7| |l#0@@1| |l#1@@1| |l#2@@0|) |$y#3|))
)))
(assert (forall ((|l#0@@2| Int) (|l#1@@2| Int) (|l#2@@1| Int) (|l#3@@0| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0@@2| |l#1@@2| |l#2@@1| |l#3@@0|) |$y#0|)) (exists ((|i#0| Int) (|j#0| Int) ) (!  (and (and (and (<= |l#0@@2| |i#0|) (< |i#0| |l#1@@2|)) (and (<= |l#2@@1| |j#0|) (< |j#0| |l#3@@0|))) (= |$y#0| ($Box intType (int_2_U (+ |i#0| |j#0|)))))
 :qid |Comprehensionsdfy.22:16|
 :skolemid |491|
)))
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0@@2| |l#1@@2| |l#2@@1| |l#3@@0|) |$y#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@3| Int) (|l#2@@2| Int) (|l#3@@1| Int) (|$y#5| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#9| |l#0@@3| |l#1@@3| |l#2@@2| |l#3@@1|) |$y#5|)) (exists ((|k#5| Int) (|i#3| Int) ) (!  (and (and (and (|Seq#Contains| |l#0@@3| ($Box intType (int_2_U |k#5|))) (and (<= |l#1@@3| |i#3|) (< |i#3| |k#5|))) (= (Mod |i#3| |l#2@@2|) |l#3@@1|)) (= |$y#5| ($Box intType (int_2_U (+ |k#5| |i#3|)))))
 :qid |Comprehensionsdfy.32:16|
 :skolemid |501|
)))
 :qid |Comprehensionsdfy.31:7|
 :skolemid |767|
 :pattern ( (MapType0Select BoxType boolType (|lambda#9| |l#0@@3| |l#1@@3| |l#2@@2| |l#3@@1|) |$y#5|))
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
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.D| d@@3) (or (_module.D.A_q d@@3) (_module.D.B_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (|$IsA#_module.D| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.D) (or (_module.D.A_q d@@4) (_module.D.B_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.D.B_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.D))
 :pattern ( (_module.D.A_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.D))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
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
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.D.A_q a@@1) (_module.D.A_q b@@1)) (|_module.D#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (|_module.D#Equal| a@@1 b@@1) (_module.D.A_q a@@1))
 :pattern ( (|_module.D#Equal| a@@1 b@@1) (_module.D.A_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.D.B_q a@@2) (_module.D.B_q b@@2)) (|_module.D#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (|_module.D#Equal| a@@2 b@@2) (_module.D.B_q a@@2))
 :pattern ( (|_module.D#Equal| a@@2 b@@2) (_module.D.B_q b@@2))
)))
(assert (forall ((v@@6 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@6 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@6 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@6 (TSet t0@@1) h@@3))
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
(assert (forall ((|l#0@@4| Bool) (|l#1@@4| Int) (|l#2@@3| Int) (|$y#1| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#5| |l#0@@4| |l#1@@4| |l#2@@3|) |$y#1|)) (exists ((|b#0| Bool) ) (!  (and |l#0@@4| (= |$y#1| ($Box intType (int_2_U (ite |b#0| |l#1@@4| |l#2@@3|)))))
 :qid |Comprehensionsdfy.24:12|
 :skolemid |493|
)))
 :qid |Comprehensionsdfy.24:22|
 :skolemid |763|
 :pattern ( (MapType0Select BoxType boolType (|lambda#5| |l#0@@4| |l#1@@4| |l#2@@3|) |$y#1|))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@5| T@U) (|l#1@@5| T@U) (|l#2@@4| T@U) (|l#3@@2| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1@@5| |l#2@@4| |l#3@@2|) $o $f))  (=> (and (or (not (= $o |l#0@@5|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@5| $o) |l#2@@4|)))) |l#3@@2|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |759|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@5| |l#1@@5| |l#2@@4| |l#3@@2|) $o $f))
)))
(assert (forall ((x@@9 Int) (y Int) ) (! (= (Mod x@@9 y) (mod x@@9 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@9 y))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((x@@10 Int) (y@@0 Int) ) (! (= (Mul x@@10 y@@0) (* x@@10 y@@0))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@10 y@@0))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@8)))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@9)))
)))
(assert (forall ((d@@5 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@5 Tclass._module.D)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.D $h))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.D $h))
)))
(assert (= (Tag Tclass._module.D) Tagclass._module.D))
(assert (= (TagFamily Tclass._module.D) tytagFamily$D))
(assert (= |#_module.D.A| (Lit DatatypeTypeType |#_module.D.A|)))
(assert (= |#_module.D.B| (Lit DatatypeTypeType |#_module.D.B|)))
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
(assert (forall ((h@@5 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@5))
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
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |sq#0@0| () T@U)
(declare-fun |k#7@0| () Int)
(declare-fun |i#5@0| () Int)
(declare-fun |s##4@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |k#4@0| () Int)
(declare-fun |i#2@0| () Int)
(declare-fun |s##3@0| () T@U)
(declare-fun |q#0@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |k#2@0| () Int)
(declare-fun |m#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |k#1@0| () Int)
(declare-fun |test#0@0| () Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun |d#2@0| () T@U)
(declare-fun |d#0@0| () T@U)
(declare-fun |b#2@0| () T@U)
(declare-fun |b#1@0| () Bool)
(declare-fun |q#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |i#1@0| () Int)
(declare-fun |j#1@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |q#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |m#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 67) (let ((anon43_correct true))
(let ((anon70_Else_correct  (=> (and (not (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|))) (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| |k#7@0|))) (= (Mod |i#5@0| (LitInt 7)) (LitInt 0)))) (= (ControlFlow 0 9) 7)) anon43_correct)))
(let ((anon70_Then_correct  (=> (and (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|))) (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| |k#7@0|))) (= (Mod |i#5@0| (LitInt 7)) (LitInt 0))) (= (ControlFlow 0 8) 7)) anon43_correct)))
(let ((anon69_Else_correct  (=> (not (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|))) (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| |k#7@0|)))) (and (=> (= (ControlFlow 0 12) 8) anon70_Then_correct) (=> (= (ControlFlow 0 12) 9) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|))) (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| |k#7@0|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= (LitInt 7) 0)) (not true))) (=> (or (not (= (LitInt 7) 0)) (not true)) (and (=> (= (ControlFlow 0 10) 8) anon70_Then_correct) (=> (= (ControlFlow 0 10) 9) anon70_Else_correct)))))))
(let ((anon68_Else_correct  (=> (< |i#5@0| (LitInt 0)) (and (=> (= (ControlFlow 0 15) 10) anon69_Then_correct) (=> (= (ControlFlow 0 15) 12) anon69_Else_correct)))))
(let ((anon68_Then_correct  (=> (<= (LitInt 0) |i#5@0|) (and (=> (= (ControlFlow 0 14) 10) anon69_Then_correct) (=> (= (ControlFlow 0 14) 12) anon69_Else_correct)))))
(let ((anon67_Then_correct  (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|))) (and (=> (= (ControlFlow 0 16) 14) anon68_Then_correct) (=> (= (ControlFlow 0 16) 15) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (not (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#7@0|)))) (and (=> (= (ControlFlow 0 13) 10) anon69_Then_correct) (=> (= (ControlFlow 0 13) 12) anon69_Else_correct)))))
(let ((anon66_Then_correct  (and (=> (= (ControlFlow 0 17) 16) anon67_Then_correct) (=> (= (ControlFlow 0 17) 13) anon67_Else_correct))))
(let ((anon66_Else_correct true))
(let ((anon35_correct  (=> (= |s##4@0| (|Set#FromBoogieMap| (|lambda#9| |sq#0@0| (LitInt 0) (LitInt 7) (LitInt 0)))) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@0)))
 :qid |Comprehensionsdfy.36:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@0))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 18) 17) anon66_Then_correct) (=> (= (ControlFlow 0 18) 6) anon66_Else_correct))))))
(let ((anon65_Else_correct  (=> (and (not (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|))) (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |k#4@0|))) (= (Mod |i#2@0| (LitInt 7)) (LitInt 0)))) (= (ControlFlow 0 20) 18)) anon35_correct)))
(let ((anon65_Then_correct  (=> (and (and (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|))) (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |k#4@0|))) (= (Mod |i#2@0| (LitInt 7)) (LitInt 0))) (= (ControlFlow 0 19) 18)) anon35_correct)))
(let ((anon64_Else_correct  (=> (not (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|))) (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |k#4@0|)))) (and (=> (= (ControlFlow 0 23) 19) anon65_Then_correct) (=> (= (ControlFlow 0 23) 20) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (and (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|))) (and (<= (LitInt 0) |i#2@0|) (< |i#2@0| |k#4@0|))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (not (= (LitInt 7) 0)) (not true))) (=> (or (not (= (LitInt 7) 0)) (not true)) (and (=> (= (ControlFlow 0 21) 19) anon65_Then_correct) (=> (= (ControlFlow 0 21) 20) anon65_Else_correct)))))))
(let ((anon63_Else_correct  (=> (< |i#2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 26) 21) anon64_Then_correct) (=> (= (ControlFlow 0 26) 23) anon64_Else_correct)))))
(let ((anon63_Then_correct  (=> (<= (LitInt 0) |i#2@0|) (and (=> (= (ControlFlow 0 25) 21) anon64_Then_correct) (=> (= (ControlFlow 0 25) 23) anon64_Else_correct)))))
(let ((anon62_Then_correct  (=> (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|))) (and (=> (= (ControlFlow 0 27) 25) anon63_Then_correct) (=> (= (ControlFlow 0 27) 26) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (not (|Seq#Contains| |sq#0@0| ($Box intType (int_2_U |k#4@0|)))) (and (=> (= (ControlFlow 0 24) 21) anon64_Then_correct) (=> (= (ControlFlow 0 24) 23) anon64_Else_correct)))))
(let ((anon61_Then_correct  (and (=> (= (ControlFlow 0 28) 27) anon62_Then_correct) (=> (= (ControlFlow 0 28) 24) anon62_Else_correct))))
(let ((anon61_Else_correct true))
(let ((anon27_correct  (=> (= |s##3@0| (|Set#FromBoogieMap| (|lambda#8| TInt |q#0@1| (LitInt 2) (LitInt 0)))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@1)))
 :qid |Comprehensionsdfy.36:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@1))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |sq#0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 30)))) ($Box intType (int_2_U (LitInt 40)))) ($Box intType (int_2_U (LitInt 20)))))))) (and (=> (= (ControlFlow 0 29) 28) anon61_Then_correct) (=> (= (ControlFlow 0 29) 5) anon61_Else_correct))))))
(let ((anon60_Else_correct  (=> (and (not (and (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#2@0|))) (= (Mod |k#2@0| (LitInt 2)) (LitInt 0)))) (= (ControlFlow 0 31) 29)) anon27_correct)))
(let ((anon60_Then_correct  (=> (and (and (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#2@0|))) (= (Mod |k#2@0| (LitInt 2)) (LitInt 0))) (= (ControlFlow 0 30) 29)) anon27_correct)))
(let ((anon59_Else_correct  (=> (not (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#2@0|)))) (and (=> (= (ControlFlow 0 34) 30) anon60_Then_correct) (=> (= (ControlFlow 0 34) 31) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#2@0|))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 32) 30) anon60_Then_correct) (=> (= (ControlFlow 0 32) 31) anon60_Else_correct)))))))
(let ((anon58_Then_correct  (and (=> (= (ControlFlow 0 35) 32) anon59_Then_correct) (=> (= (ControlFlow 0 35) 34) anon59_Else_correct))))
(let ((anon58_Else_correct true))
(let ((anon22_correct  (=> (= |m#0@0| (|Set#FromBoogieMap| (|lambda#7| |q#0@1| (LitInt 2) |q#0@1|))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Comprehensionsdfy.36:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 36) 35) anon58_Then_correct) (=> (= (ControlFlow 0 36) 4) anon58_Else_correct))))))
(let ((anon57_Else_correct  (=> (and (not (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#1@0|)))) (= (ControlFlow 0 38) 36)) anon22_correct)))
(let ((anon57_Then_correct  (=> (and (|Set#IsMember| |q#0@1| ($Box intType (int_2_U |k#1@0|))) (= (ControlFlow 0 37) 36)) anon22_correct)))
(let ((anon56_Then_correct  (and (=> (= (ControlFlow 0 39) 37) anon57_Then_correct) (=> (= (ControlFlow 0 39) 38) anon57_Else_correct))))
(let ((anon56_Else_correct true))
(let ((anon19_correct  (=> (and (forall ((|d#1| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1| Tclass._module.D) (and (|$IsA#_module.D| |d#1|) (=> (not (|_module.D#Equal| |d#1| |#_module.D.A|)) (|$IsA#_module.D| |d#1|))))
 :qid |Comprehensionsdfy.26:22|
 :skolemid |496|
)) (= |test#0@0| (forall ((|d#1@@0| T@U) ) (!  (=> ($Is DatatypeTypeType |d#1@@0| Tclass._module.D) (or (|_module.D#Equal| |d#1@@0| |#_module.D.A|) (|_module.D#Equal| |d#1@@0| |#_module.D.B|)))
 :qid |Comprehensionsdfy.26:22|
 :skolemid |495|
)))) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |Comprehensionsdfy.36:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 40) 39) anon56_Then_correct) (=> (= (ControlFlow 0 40) 3) anon56_Else_correct))))))
(let ((anon55_Else_correct  (=> (and (|_module.D#Equal| |d#2@0| |#_module.D.A|) (= (ControlFlow 0 43) 40)) anon19_correct)))
(let ((anon55_Then_correct  (=> (and (not (|_module.D#Equal| |d#2@0| |#_module.D.A|)) (= (ControlFlow 0 42) 40)) anon19_correct)))
(let ((anon54_Then_correct  (=> (and ($Is DatatypeTypeType |d#2@0| Tclass._module.D) ($IsAlloc DatatypeTypeType |d#2@0| Tclass._module.D $Heap@0)) (and (=> (= (ControlFlow 0 44) 42) anon55_Then_correct) (=> (= (ControlFlow 0 44) 43) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |d#2@0| Tclass._module.D) ($IsAlloc DatatypeTypeType |d#2@0| Tclass._module.D $Heap@0))) (= (ControlFlow 0 41) 40)) anon19_correct)))
(let ((anon16_correct  (=> (= |d#0@0| (|Set#FromBoogieMap| (|lambda#6| Tclass._module.D (U_2_bool (Lit boolType (bool_2_U true)))))) (and (=> (= (ControlFlow 0 45) 44) anon54_Then_correct) (=> (= (ControlFlow 0 45) 41) anon54_Else_correct)))))
(let ((anon53_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 48) 45)) anon16_correct)))
(let ((anon53_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (= (ControlFlow 0 47) 45)) anon16_correct)))
(let ((anon52_Then_correct  (=> (and ($Is DatatypeTypeType |b#2@0| Tclass._module.D) ($IsAlloc DatatypeTypeType |b#2@0| Tclass._module.D $Heap@0)) (and (=> (= (ControlFlow 0 49) 47) anon53_Then_correct) (=> (= (ControlFlow 0 49) 48) anon53_Else_correct)))))
(let ((anon52_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |b#2@0| Tclass._module.D) ($IsAlloc DatatypeTypeType |b#2@0| Tclass._module.D $Heap@0))) (= (ControlFlow 0 46) 45)) anon16_correct)))
(let ((anon13_correct  (=> (= |q#0@1| (|Set#FromBoogieMap| (|lambda#5| (U_2_bool (Lit boolType (bool_2_U true))) 3 7))) (and (=> (= (ControlFlow 0 50) 49) anon52_Then_correct) (=> (= (ControlFlow 0 50) 46) anon52_Else_correct)))))
(let ((anon51_Else_correct  (=> (and (not |b#1@0|) (= (ControlFlow 0 53) 50)) anon13_correct)))
(let ((anon51_Then_correct  (=> (and |b#1@0| (= (ControlFlow 0 52) 50)) anon13_correct)))
(let ((anon50_Then_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 54) 52) anon51_Then_correct) (=> (= (ControlFlow 0 54) 53) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 51) 50)) anon13_correct)))
(let ((anon49_Then_correct  (and (=> (= (ControlFlow 0 55) 54) anon50_Then_correct) (=> (= (ControlFlow 0 55) 51) anon50_Else_correct))))
(let ((anon49_Else_correct true))
(let ((anon8_correct  (=> (= |q#0@0| (|Set#FromBoogieMap| (|lambda#4| (LitInt 0) 10 (LitInt 0) 3))) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |Comprehensionsdfy.36:8|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 56) 55) anon49_Then_correct) (=> (= (ControlFlow 0 56) 2) anon49_Else_correct))))))
(let ((anon48_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10)) (and (<= (LitInt 0) |j#1@0|) (< |j#1@0| 3)))) (= (ControlFlow 0 58) 56)) anon8_correct)))
(let ((anon48_Then_correct  (=> (and (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10)) (and (<= (LitInt 0) |j#1@0|) (< |j#1@0| 3))) (= (ControlFlow 0 57) 56)) anon8_correct)))
(let ((anon47_Else_correct  (=> (< |j#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 61) 57) anon48_Then_correct) (=> (= (ControlFlow 0 61) 58) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (<= (LitInt 0) |j#1@0|) (and (=> (= (ControlFlow 0 60) 57) anon48_Then_correct) (=> (= (ControlFlow 0 60) 58) anon48_Else_correct)))))
(let ((anon46_Then_correct  (=> (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10)) (and (=> (= (ControlFlow 0 62) 60) anon47_Then_correct) (=> (= (ControlFlow 0 62) 61) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10))) (and (=> (= (ControlFlow 0 59) 57) anon48_Then_correct) (=> (= (ControlFlow 0 59) 58) anon48_Else_correct)))))
(let ((anon45_Else_correct  (=> (< |i#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 64) 62) anon46_Then_correct) (=> (= (ControlFlow 0 64) 59) anon46_Else_correct)))))
(let ((anon45_Then_correct  (=> (<= (LitInt 0) |i#1@0|) (and (=> (= (ControlFlow 0 63) 62) anon46_Then_correct) (=> (= (ControlFlow 0 63) 59) anon46_Else_correct)))))
(let ((anon44_Then_correct  (and (=> (= (ControlFlow 0 65) 63) anon45_Then_correct) (=> (= (ControlFlow 0 65) 64) anon45_Else_correct))))
(let ((anon44_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 66) 65) anon44_Then_correct) (=> (= (ControlFlow 0 66) 1) anon44_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |q#0| (TSet TInt)) ($IsAlloc SetType |q#0| (TSet TInt) $Heap)) true) (=> (and (and (and (and ($Is SetType |d#0| (TSet Tclass._module.D)) ($IsAlloc SetType |d#0| (TSet Tclass._module.D) $Heap)) true) (and (and ($Is SetType |m#0| (TSet TInt)) ($IsAlloc SetType |m#0| (TSet TInt) $Heap)) true)) (and (and (and ($Is SeqType |sq#0| (TSeq TInt)) ($IsAlloc SeqType |sq#0| (TSeq TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 67) 66)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
