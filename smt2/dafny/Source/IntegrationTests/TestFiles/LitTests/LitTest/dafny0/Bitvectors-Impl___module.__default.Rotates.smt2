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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun TBitvector (Int) T@U)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
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
 :skolemid |663|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |noll#0@0| () Int)
(declare-fun |x#0@1| () Int)
(declare-fun |$rhs#0@0| () (_ BitVec 12))
(declare-fun U_2_bv12 (T@U) (_ BitVec 12))
(declare-fun bv12Type () T@T)
(declare-fun bv12_2_U ((_ BitVec 12)) T@U)
(declare-fun |$rhs#1@0| () (_ BitVec 7))
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |s##0@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun |b##0@0| () (_ BitVec 12))
(declare-fun call0formal@_module._default.PrintRotates$T@0 () T@U)
(declare-fun |call2formal@a#0@0| () T@U)
(declare-fun |call3formal@b#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s##1@0| () T@U)
(declare-fun |b##1@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintRotates$T@0@@0 () T@U)
(declare-fun |call2formal@a#0@0@@0| () T@U)
(declare-fun |call3formal@b#0@0@@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#3@0| () (_ BitVec 2))
(declare-fun U_2_bv2 (T@U) (_ BitVec 2))
(declare-fun bv2Type () T@T)
(declare-fun bv2_2_U ((_ BitVec 2)) T@U)
(declare-fun |$rhs#4@0| () Int)
(declare-fun |s##2@0| () T@U)
(declare-fun |b##2@0| () (_ BitVec 2))
(declare-fun call0formal@_module._default.PrintRotates$T@0@@1 () T@U)
(declare-fun |call2formal@a#0@0@@1| () T@U)
(declare-fun |call3formal@b#0@0@@1| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |x#0@2| () Int)
(declare-fun |s##3@0| () T@U)
(declare-fun |b##3@0| () Int)
(declare-fun call0formal@_module._default.PrintRotates$T@0@@2 () T@U)
(declare-fun |call2formal@a#0@0@@2| () T@U)
(declare-fun |call3formal@b#0@0@@2| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |x#0@3| () Int)
(declare-fun |$rhs#5@0| () (_ BitVec 12))
(declare-fun |$rhs#6@0| () (_ BitVec 7))
(declare-fun |s##4@0| () T@U)
(declare-fun |b##4@0| () (_ BitVec 12))
(declare-fun call0formal@_module._default.PrintRotates$T@0@@3 () T@U)
(declare-fun |call2formal@a#0@0@@3| () T@U)
(declare-fun |call3formal@b#0@0@@3| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |s##5@0| () T@U)
(declare-fun |noll#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (and (and (and (and (and (and (and (and (and (= (Ctor bv12Type) 7) (forall ((arg0@@5 (_ BitVec 12)) ) (! (= (U_2_bv12 (bv12_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv12|
 :pattern ( (bv12_2_U arg0@@5))
))) (forall ((x@@8 T@U) ) (! (= (bv12_2_U (U_2_bv12 x@@8)) x@@8)
 :qid |cast:U_2_bv12|
 :pattern ( (U_2_bv12 x@@8))
))) (= (Ctor bv7Type) 8)) (forall ((arg0@@6 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@6)) arg0@@6)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@6))
))) (forall ((x@@9 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@9)) x@@9)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@9))
))) (= (Ctor SeqType) 9)) (= (Ctor charType) 10)) (= (Ctor bv2Type) 11)) (forall ((arg0@@7 (_ BitVec 2)) ) (! (= (U_2_bv2 (bv2_2_U arg0@@7)) arg0@@7)
 :qid |typeInv:U_2_bv2|
 :pattern ( (bv2_2_U arg0@@7))
))) (forall ((x@@10 T@U) ) (! (= (bv2_2_U (U_2_bv2 x@@10)) x@@10)
 :qid |cast:U_2_bv2|
 :pattern ( (U_2_bv2 x@@10))
))))
(set-info :boogie-vc-id Impl$$_module.__default.Rotates)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= 0 |noll#0@0|) (= |x#0@1| (LitInt 3))) (=> (and (and (= |$rhs#0@0| (U_2_bv12 (Lit bv12Type (bv12_2_U #b000000000101)))) (= |$rhs#1@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b0000101))))) (and (= |$rhs#2@0| (LitInt 0)) (= |s##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 50))))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (<= 0 |x#0@1|)) (=> (<= 0 |x#0@1|) (and (=> (= (ControlFlow 0 2) (- 0 24)) (<= |x#0@1| 12)) (=> (<= |x#0@1| 12) (and (=> (= (ControlFlow 0 2) (- 0 23)) (<= 0 |x#0@1|)) (=> (<= 0 |x#0@1|) (and (=> (= (ControlFlow 0 2) (- 0 22)) (<= |x#0@1| 12)) (=> (<= |x#0@1| 12) (=> (and (and (= |b##0@0| (ext_rotate_right (ext_rotate_left |$rhs#0@0| ((_ int2bv 12) |x#0@1|)) ((_ int2bv 12) |x#0@1|))) (= call0formal@_module._default.PrintRotates$T@0 (TBitvector 12))) (and (= |call2formal@a#0@0| ($Box bv12Type (bv12_2_U |$rhs#0@0|))) (= |call3formal@b#0@0| ($Box bv12Type (bv12_2_U |b##0@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Bitvectorsdfy.258:8|
 :skolemid |658|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |s##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 55))))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (<= 0 |x#0@1|)) (=> (<= 0 |x#0@1|) (and (=> (= (ControlFlow 0 2) (- 0 20)) (<= |x#0@1| 7)) (=> (<= |x#0@1| 7) (and (=> (= (ControlFlow 0 2) (- 0 19)) (<= 0 |x#0@1|)) (=> (<= 0 |x#0@1|) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= |x#0@1| 7)) (=> (<= |x#0@1| 7) (=> (and (and (= |b##1@0| (ext_rotate_right (ext_rotate_left |$rhs#1@0| ((_ int2bv 7) |x#0@1|)) ((_ int2bv 7) |x#0@1|))) (= call0formal@_module._default.PrintRotates$T@0@@0 (TBitvector 7))) (and (= |call2formal@a#0@0@@0| ($Box bv7Type (bv7_2_U |$rhs#1@0|))) (= |call3formal@b#0@0@@0| ($Box bv7Type (bv7_2_U |b##1@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |Bitvectorsdfy.258:8|
 :skolemid |658|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
))) (and (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs#3@0| (U_2_bv2 (Lit bv2Type (bv2_2_U #b01))))) (and (= |$rhs#4@0| (LitInt 1)) (= |s##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 50)))))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (<= 0 |$rhs#4@0|)) (=> (<= 0 |$rhs#4@0|) (and (=> (= (ControlFlow 0 2) (- 0 16)) (<= |$rhs#4@0| 2)) (=> (<= |$rhs#4@0| 2) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= 0 |$rhs#4@0|)) (=> (<= 0 |$rhs#4@0|) (and (=> (= (ControlFlow 0 2) (- 0 14)) (<= |$rhs#4@0| 2)) (=> (<= |$rhs#4@0| 2) (=> (and (= |b##2@0| (ext_rotate_right (ext_rotate_left |$rhs#3@0| ((_ int2bv 2) |$rhs#4@0|)) ((_ int2bv 2) |$rhs#4@0|))) (= call0formal@_module._default.PrintRotates$T@0@@1 (TBitvector 2))) (=> (and (and (and (= |call2formal@a#0@0@@1| ($Box bv2Type (bv2_2_U |$rhs#3@0|))) (= |call3formal@b#0@0@@1| ($Box bv2Type (bv2_2_U |b##2@0|)))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |Bitvectorsdfy.258:8|
 :skolemid |658|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |x#0@2| (LitInt 0)) (= |s##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 48)))))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= 0 |x#0@2|)) (=> (<= 0 |x#0@2|) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= |x#0@2| 0)) (=> (<= |x#0@2| 0) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= 0 |x#0@2|)) (=> (<= 0 |x#0@2|) (and (=> (= (ControlFlow 0 2) (- 0 10)) (<= |x#0@2| 0)) (=> (<= |x#0@2| 0) (=> (and (and (= |b##3@0| 0) (= call0formal@_module._default.PrintRotates$T@0@@2 (TBitvector 0))) (and (= |call2formal@a#0@0@@2| ($Box intType (int_2_U |$rhs#2@0|))) (= |call3formal@b#0@0@@2| ($Box intType (int_2_U |b##3@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |Bitvectorsdfy.258:8|
 :skolemid |658|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (and (= |x#0@3| (LitInt 5)) (= |$rhs#5@0| (U_2_bv12 (Lit bv12Type (bv12_2_U (bvadd #b110000000000 #b011111010000)))))) (and (= |$rhs#6@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1111111)))) (= |s##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 50))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 103))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110)))))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (<= 0 |x#0@3|)) (=> (<= 0 |x#0@3|) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= |x#0@3| 12)) (=> (<= |x#0@3| 12) (and (=> (= (ControlFlow 0 2) (- 0 7)) (<= 0 |x#0@3|)) (=> (<= 0 |x#0@3|) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= |x#0@3| 12)) (=> (<= |x#0@3| 12) (=> (and (and (= |b##4@0| (ext_rotate_right (ext_rotate_left |$rhs#5@0| ((_ int2bv 12) |x#0@3|)) ((_ int2bv 12) |x#0@3|))) (= call0formal@_module._default.PrintRotates$T@0@@3 (TBitvector 12))) (and (= |call2formal@a#0@0@@3| ($Box bv12Type (bv12_2_U |$rhs#5@0|))) (= |call3formal@b#0@0@@3| ($Box bv12Type (bv12_2_U |b##4@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |Bitvectorsdfy.258:8|
 :skolemid |658|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |s##5@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 118))) ($Box charType (|char#FromInt| 55))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 103))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= 0 |x#0@3|)) (=> (<= 0 |x#0@3|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= |x#0@3| 7)) (=> (<= |x#0@3| 7) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= 0 |x#0@3|)) (=> (<= 0 |x#0@3|) (=> (= (ControlFlow 0 2) (- 0 1)) (<= |x#0@3| 7)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (= 0 |noll#0|) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 2))) anon0_correct))))
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
