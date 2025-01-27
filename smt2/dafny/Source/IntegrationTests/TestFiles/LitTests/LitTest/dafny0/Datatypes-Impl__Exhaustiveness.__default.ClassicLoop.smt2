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
(declare-fun Tagclass.Exhaustiveness.Color () T@U)
(declare-fun |##Exhaustiveness.Color.A| () T@U)
(declare-fun |##Exhaustiveness.Color.B| () T@U)
(declare-fun |##Exhaustiveness.Color.C| () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Exhaustiveness.Color.A| () T@U)
(declare-fun |#Exhaustiveness.Color.B| () T@U)
(declare-fun |#Exhaustiveness.Color.C| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.Exhaustiveness.Color () T@U)
(declare-fun |Exhaustiveness.Color#Equal| (T@U T@U) Bool)
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
(declare-fun Exhaustiveness.Color.A_q (T@U) Bool)
(declare-fun Exhaustiveness.Color.B_q (T@U) Bool)
(declare-fun Exhaustiveness.Color.C_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |$IsA#Exhaustiveness.Color| (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass.Exhaustiveness.Color |##Exhaustiveness.Color.A| |##Exhaustiveness.Color.B| |##Exhaustiveness.Color.C| tytagFamily$Color)
)
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.A|) |##Exhaustiveness.Color.A|))
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.B|) |##Exhaustiveness.Color.B|))
(assert (= (DatatypeCtorId |#Exhaustiveness.Color.C|) |##Exhaustiveness.Color.C|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.A| Tclass.Exhaustiveness.Color))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.B| Tclass.Exhaustiveness.Color))
(assert ($Is DatatypeTypeType |#Exhaustiveness.Color.C| Tclass.Exhaustiveness.Color))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Exhaustiveness.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( (|Exhaustiveness.Color#Equal| a b))
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
 :skolemid |1395|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1396|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1294|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1292|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d T@U) ) (! (= (Exhaustiveness.Color.A_q d) (= (DatatypeCtorId d) |##Exhaustiveness.Color.A|))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( (Exhaustiveness.Color.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (Exhaustiveness.Color.B_q d@@0) (= (DatatypeCtorId d@@0) |##Exhaustiveness.Color.B|))
 :qid |unknown.0:0|
 :skolemid |1886|
 :pattern ( (Exhaustiveness.Color.B_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Exhaustiveness.Color.C_q d@@1) (= (DatatypeCtorId d@@1) |##Exhaustiveness.Color.C|))
 :qid |unknown.0:0|
 :skolemid |1888|
 :pattern ( (Exhaustiveness.Color.C_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1303|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (Exhaustiveness.Color.A_q d@@2) (= d@@2 |#Exhaustiveness.Color.A|))
 :qid |unknown.0:0|
 :skolemid |1885|
 :pattern ( (Exhaustiveness.Color.A_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (Exhaustiveness.Color.B_q d@@3) (= d@@3 |#Exhaustiveness.Color.B|))
 :qid |unknown.0:0|
 :skolemid |1887|
 :pattern ( (Exhaustiveness.Color.B_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Exhaustiveness.Color.C_q d@@4) (= d@@4 |#Exhaustiveness.Color.C|))
 :qid |unknown.0:0|
 :skolemid |1889|
 :pattern ( (Exhaustiveness.Color.C_q d@@4))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1316|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1388|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1387|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.Exhaustiveness.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.Exhaustiveness.Color)))
 :qid |unknown.0:0|
 :skolemid |1858|
 :pattern ( ($IsBox bx@@0 Tclass.Exhaustiveness.Color))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1394|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1315|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1498|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (Exhaustiveness.Color.A_q a@@1) (Exhaustiveness.Color.A_q b@@1)) (|Exhaustiveness.Color#Equal| a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |1893|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@1 b@@1) (Exhaustiveness.Color.A_q a@@1))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@1 b@@1) (Exhaustiveness.Color.A_q b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (Exhaustiveness.Color.B_q a@@2) (Exhaustiveness.Color.B_q b@@2)) (|Exhaustiveness.Color#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@2 b@@2) (Exhaustiveness.Color.B_q a@@2))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@2 b@@2) (Exhaustiveness.Color.B_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (Exhaustiveness.Color.C_q a@@3) (Exhaustiveness.Color.C_q b@@3)) (|Exhaustiveness.Color#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |1895|
 :pattern ( (|Exhaustiveness.Color#Equal| a@@3 b@@3) (Exhaustiveness.Color.C_q a@@3))
 :pattern ( (|Exhaustiveness.Color#Equal| a@@3 b@@3) (Exhaustiveness.Color.C_q b@@3))
)))
(assert (= (Ctor SeqType) 8))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@2))) ($IsAllocBox (|Seq#Index| v@@2 i) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1350|
 :pattern ( (|Seq#Index| v@@2 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1351|
 :pattern ( ($IsAlloc SeqType v@@2 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1284|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1285|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1302|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#Exhaustiveness.Color| d@@5) (or (or (Exhaustiveness.Color.A_q d@@5) (Exhaustiveness.Color.B_q d@@5)) (Exhaustiveness.Color.C_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( (|$IsA#Exhaustiveness.Color| d@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2846|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color) (or (or (Exhaustiveness.Color.A_q d@@6) (Exhaustiveness.Color.B_q d@@6)) (Exhaustiveness.Color.C_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( (Exhaustiveness.Color.C_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
 :pattern ( (Exhaustiveness.Color.B_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
 :pattern ( (Exhaustiveness.Color.A_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.Exhaustiveness.Color))
)))
(assert (forall ((bx@@1 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1312|
 :pattern ( ($IsBox bx@@1 (TSeq t@@5)))
)))
(assert (forall ((d@@7 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) ($Is DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color)) ($IsAlloc DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color $h))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.Exhaustiveness.Color $h))
)))
(assert (= (Tag Tclass.Exhaustiveness.Color) Tagclass.Exhaustiveness.Color))
(assert (= (TagFamily Tclass.Exhaustiveness.Color) tytagFamily$Color))
(assert (= |#Exhaustiveness.Color.A| (Lit DatatypeTypeType |#Exhaustiveness.Color.A|)))
(assert (= |#Exhaustiveness.Color.B| (Lit DatatypeTypeType |#Exhaustiveness.Color.B|)))
(assert (= |#Exhaustiveness.Color.C| (Lit DatatypeTypeType |#Exhaustiveness.Color.C|)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1295|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1293|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1499|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1330|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1331|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |i#0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |c#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$Exhaustiveness.__default.ClassicLoop)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct  (=> (and (not (or (or (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|) (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.B|)) (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.C|))) (= (ControlFlow 0 4) (- 0 3))) (U_2_bool (Lit boolType (bool_2_U false))))))
(let ((anon7_correct  (=> (and (|$IsA#Exhaustiveness.Color| |c#0@0|) (=> (not (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|)) (and (|$IsA#Exhaustiveness.Color| |c#0@0|) (=> (not (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.B|)) (|$IsA#Exhaustiveness.Color| |c#0@0|))))) (and (=> (= (ControlFlow 0 6) 4) anon15_Then_correct) (=> (= (ControlFlow 0 6) 5) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (or (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|) (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.B|)) (= (ControlFlow 0 8) 6)) anon7_correct)))
(let ((anon14_Then_correct  (=> (and (not (or (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|) (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.B|))) (= (ControlFlow 0 7) 6)) anon7_correct)))
(let ((anon13_Else_correct  (=> (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|) (and (=> (= (ControlFlow 0 10) 7) anon14_Then_correct) (=> (= (ControlFlow 0 10) 8) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (not (|Exhaustiveness.Color#Equal| |c#0@0| |#Exhaustiveness.Color.A|)) (and (=> (= (ControlFlow 0 9) 7) anon14_Then_correct) (=> (= (ControlFlow 0 9) 8) anon14_Else_correct)))))
(let ((anon12_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 11) 9) anon13_Then_correct) (=> (= (ControlFlow 0 11) 10) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_LoopBody_correct  (and (=> (= (ControlFlow 0 12) 2) anon12_Then_correct) (=> (= (ControlFlow 0 12) 11) anon12_Else_correct))))
(let ((anon11_LoopDone_correct true))
(let ((anon11_LoopHead_correct  (=> (and (and (not false) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Datatypesdfy.440:5|
 :skolemid |1877|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
))) (and ($HeapSucc $Heap $Heap) (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Datatypesdfy.440:5|
 :skolemid |1878|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)))) (and (=> (= (ControlFlow 0 13) 1) anon11_LoopDone_correct) (=> (= (ControlFlow 0 13) 12) anon11_LoopBody_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |s#0|)))) (=> (and (<= 0 |i#0|) (< |i#0| (|Seq#Length| |s#0|))) (=> (and (= |c#0@0| ($Unbox DatatypeTypeType (|Seq#Index| |s#0| |i#0|))) (= (ControlFlow 0 14) 13)) anon11_LoopHead_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |s#0| (TSeq Tclass.Exhaustiveness.Color)) ($IsAlloc SeqType |s#0| (TSeq Tclass.Exhaustiveness.Color) $Heap))) (=> (and (and (and ($Is DatatypeTypeType |c#0| Tclass.Exhaustiveness.Color) ($IsAlloc DatatypeTypeType |c#0| Tclass.Exhaustiveness.Color $Heap)) true) (and (and (= 1 $FunctionContextHeight) (<= (LitInt 0) |i#0|)) (and (< |i#0| (|Seq#Length| |s#0|)) (= (ControlFlow 0 16) 14)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
