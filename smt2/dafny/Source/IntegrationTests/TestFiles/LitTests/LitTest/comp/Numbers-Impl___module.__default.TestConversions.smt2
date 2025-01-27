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
(declare-fun |ORD#Less| (T@U T@U) Bool)
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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun alloc () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |ORD#FromNat| (Int) T@U)
(declare-fun |ORD#IsNat| (T@U) Bool)
(declare-fun |ORD#Offset| (T@U) Int)
(declare-fun q@Real (Int) Real)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (forall ((o T@U) (p T@U) (r T@U) ) (!  (=> (and (|ORD#Less| o p) (|ORD#Less| p r)) (|ORD#Less| o r))
 :qid |DafnyPreludebpl.427:15|
 :skolemid |1229|
 :pattern ( (|ORD#Less| o p) (|ORD#Less| p r))
 :pattern ( (|ORD#Less| o p) (|ORD#Less| o r))
)))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1257|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1258|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Real) ) (! (= (q@Int x@@2) (to_int x@@2))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |1252|
 :pattern ( (q@Int x@@2))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1156|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 Real) ) (! (= (LitReal x@@4) x@@4)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |1158|
 :pattern ( (LitReal x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1154|
 :pattern ( (Lit T x@@5))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1165|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((n Int) ) (!  (=> (<= 0 n) (and (|ORD#IsNat| (|ORD#FromNat| n)) (= (|ORD#Offset| (|ORD#FromNat| n)) n)))
 :qid |DafnyPreludebpl.412:15|
 :skolemid |1225|
 :pattern ( (|ORD#FromNat| n))
)))
(assert (forall ((o@@1 T@U) (p@@0 T@U) ) (!  (or (or (|ORD#Less| o@@1 p@@0) (= o@@1 p@@0)) (|ORD#Less| p@@0 o@@1))
 :qid |DafnyPreludebpl.424:15|
 :skolemid |1228|
 :pattern ( (|ORD#Less| o@@1 p@@0) (|ORD#Less| p@@0 o@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= (q@Real x@@7) (to_real x@@7))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |1253|
 :pattern ( (q@Real x@@7))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1256|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (|ORD#Offset| o@@2))
 :qid |DafnyPreludebpl.406:15|
 :skolemid |1224|
 :pattern ( (|ORD#Offset| o@@2))
)))
(assert (forall ((i Int) ) (! (= (q@Int (q@Real i)) i)
 :qid |DafnyPreludebpl.580:15|
 :skolemid |1254|
 :pattern ( (q@Int (q@Real i)))
)))
(assert (forall ((x@@8 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1164|
 :pattern ( ($Box T@@1 x@@8))
)))
(assert (forall ((o@@3 T@U) (p@@1 T@U) ) (!  (and (and (and (=> (|ORD#Less| o@@3 p@@1) (or (not (= o@@3 p@@1)) (not true))) (=> (and (|ORD#IsNat| o@@3) (not (|ORD#IsNat| p@@1))) (|ORD#Less| o@@3 p@@1))) (=> (and (|ORD#IsNat| o@@3) (|ORD#IsNat| p@@1)) (= (|ORD#Less| o@@3 p@@1) (< (|ORD#Offset| o@@3) (|ORD#Offset| p@@1))))) (=> (and (|ORD#Less| o@@3 p@@1) (|ORD#IsNat| p@@1)) (|ORD#IsNat| o@@3)))
 :qid |DafnyPreludebpl.418:15|
 :skolemid |1227|
 :pattern ( (|ORD#Less| o@@3 p@@1))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (or (and (<= 0 n@@0) (< n@@0 55296)) (and (<= 57344 n@@0) (< n@@0 1114112))) (= (|char#ToInt| (|char#FromInt| n@@0)) n@@0))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1160|
 :pattern ( (|char#FromInt| n@@0))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2064|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1161|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((o@@4 T@U) ) (!  (=> (|ORD#IsNat| o@@4) (= o@@4 (|ORD#FromNat| (|ORD#Offset| o@@4))))
 :qid |DafnyPreludebpl.414:15|
 :skolemid |1226|
 :pattern ( (|ORD#Offset| o@@4))
 :pattern ( (|ORD#IsNat| o@@4))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1157|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@10))) (Lit BoxType ($Box realType (real_2_U x@@10))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |1159|
 :pattern ( ($Box realType (real_2_U (LitReal x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@11)) (Lit BoxType ($Box T@@2 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1155|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@11)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x##1@0| () Real)
(declare-fun $Heap@1 () T@U)
(declare-fun |x##2@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |x##3@0| () (_ BitVec 7))
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |x##4@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |x##5@0| () T@U)
(declare-fun charType () T@T)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (and (= (Ctor bv7Type) 7) (forall ((arg0@@5 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@5))
))) (forall ((x@@12 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@12)) x@@12)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@12))
))) (= (Ctor charType) 8)))
(set-info :boogie-vc-id Impl$$_module.__default.TestConversions)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (LitInt 120))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= (LitInt 0) |x##0@0|)) (=> (<= (LitInt 0) |x##0@0|) (and (=> (= (ControlFlow 0 2) (- 0 12)) (< |x##0@0| 128)) (=> (< |x##0@0| 128) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Numbersdfy.502:8|
 :skolemid |1944|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |x##1@0| (LitReal 120.0)))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= (q@Real (q@Int |x##1@0|)) |x##1@0|)) (=> (= (q@Real (q@Int |x##1@0|)) |x##1@0|) (and (=> (= (ControlFlow 0 2) (- 0 10)) (<= (LitInt 0) (q@Int |x##1@0|))) (=> (<= (LitInt 0) (q@Int |x##1@0|)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (< (q@Int |x##1@0|) 128)) (=> (< (q@Int |x##1@0|) 128) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Numbersdfy.508:8|
 :skolemid |1947|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |x##2@0| (Lit BoxType (|ORD#FromNat| 120))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (= (|ORD#FromNat| 0) |x##2@0|) (|ORD#Less| (|ORD#FromNat| 0) |x##2@0|))) (=> (or (= (|ORD#FromNat| 0) |x##2@0|) (|ORD#Less| (|ORD#FromNat| 0) |x##2@0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|ORD#Less| |x##2@0| (|ORD#FromNat| 128))) (=> (|ORD#Less| |x##2@0| (|ORD#FromNat| 128)) (=> (and (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Numbersdfy.515:8|
 :skolemid |1950|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
))) (and ($HeapSucc $Heap@1 $Heap@2) (= |x##3@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1111000)))))) (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |Numbersdfy.522:8|
 :skolemid |1953|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |newtype$check#0@0| (LitInt 120))))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 4294967296)) (=> (= |x##4@0| (LitInt 120)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= (LitInt 0) |x##4@0|)) (=> (<= (LitInt 0) |x##4@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (< |x##4@0| 128)) (=> (< |x##4@0| 128) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |Numbersdfy.527:8|
 :skolemid |1956|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |x##5@0| (Lit charType (|char#FromInt| 120))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= (|char#ToInt| (|char#FromInt| (LitInt 0))) (|char#ToInt| |x##5@0|))) (=> (<= (|char#ToInt| (|char#FromInt| (LitInt 0))) (|char#ToInt| |x##5@0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (< (|char#ToInt| |x##5@0|) (|char#ToInt| (|char#FromInt| (LitInt 128)))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 14) 2))) anon0_correct)))
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
