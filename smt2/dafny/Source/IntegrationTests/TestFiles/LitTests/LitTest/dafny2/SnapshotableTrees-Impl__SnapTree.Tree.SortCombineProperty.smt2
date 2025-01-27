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
(declare-fun SnapTree.Tree.IsSorted (Bool T@U) Bool)
(declare-fun |SnapTree.Tree.IsSorted#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun SnapTree.Tree.AllAbove (Int T@U) Bool)
(declare-fun |SnapTree.Tree.AllAbove#canCall| (Int T@U) Bool)
(declare-fun SnapTree.Tree.SortedSplit (T@U Int T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |SnapTree.Tree.SortedSplit#canCall| (T@U Int T@U) Bool)
(declare-fun reveal_SnapTree.Tree.IsSorted () Bool)
(declare-fun |SnapTree.Tree.AllBelow#canCall| (T@U Int) Bool)
(declare-fun SnapTree.Tree.AllBelow (T@U Int) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSeq alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| |c#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true |c#0|) (forall ((|i#0| Int) (|j#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#0|) (< |i#0| |j#0|)) (< |j#0| (|Seq#Length| |c#0|))) (< (U_2_int ($Unbox intType (|Seq#Index| |c#0| |i#0|))) (U_2_int ($Unbox intType (|Seq#Index| |c#0| |j#0|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |686|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0| |j#0|)) ($Unbox intType (|Seq#Index| |c#0| |i#0|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :skolemid |687|
 :pattern ( (SnapTree.Tree.IsSorted true |c#0|))
))))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|d#0| Int) (|s#0| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| |d#0| |s#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0| (TSeq TInt)))) (= (SnapTree.Tree.AllAbove |d#0| |s#0|) (forall ((|i#0@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@0|) (< |i#0@@0| (|Seq#Length| |s#0|))) (< |d#0| (U_2_int ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |707|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0| |i#0@@0|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :skolemid |708|
 :pattern ( (SnapTree.Tree.AllAbove |d#0| |s#0|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0| T@U) (|data#0| Int) (|right#0| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|)) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0| (TSeq TInt)) ($Is SeqType |right#0| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |left#0|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0|)) (and (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |right#0|)) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0|)) (and (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |left#0|) (LitInt |data#0|)) (=> (U_2_bool (Lit boolType (bool_2_U (SnapTree.Tree.AllBelow (Lit SeqType |left#0|) (LitInt |data#0|))))) (|SnapTree.Tree.AllAbove#canCall| (LitInt |data#0|) (Lit SeqType |right#0|)))))))) (= (SnapTree.Tree.SortedSplit (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|))  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |left#0|)) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (Lit SeqType |right#0|))) (SnapTree.Tree.AllBelow (Lit SeqType |left#0|) (LitInt |data#0|))) (SnapTree.Tree.AllAbove (LitInt |data#0|) (Lit SeqType |right#0|))))))
 :qid |SnapshotableTreesdfy.132:40|
 :weight 3
 :skolemid |716|
 :pattern ( (SnapTree.Tree.SortedSplit (Lit SeqType |left#0|) (LitInt |data#0|) (Lit SeqType |right#0|)))
))))
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
(assert (forall ((s T@U) (bx T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx t)) ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx) (TSeq t)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|c#0@@0| T@U) ) (!  (=> (or (|SnapTree.Tree.IsSorted#canCall| (Lit SeqType |c#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |c#0@@0| (TSeq TInt)))) (= (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@0|)) (forall ((|i#1| Int) (|j#1| Int) ) (!  (=> (and (and (<= (LitInt 0) |i#1|) (< |i#1| |j#1|)) (< |j#1| (|Seq#Length| (Lit SeqType |c#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@0|) |i#1|))) (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |c#0@@0|) |j#1|)))))
 :qid |SnapshotableTreesdfy.112:14|
 :skolemid |688|
 :pattern ( ($Unbox intType (|Seq#Index| |c#0@@0| |j#1|)) ($Unbox intType (|Seq#Index| |c#0@@0| |i#1|)))
))))
 :qid |SnapshotableTreesdfy.110:47|
 :weight 3
 :skolemid |689|
 :pattern ( (SnapTree.Tree.IsSorted true (Lit SeqType |c#0@@0|)))
))))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h) ($IsAlloc T@@1 v@@0 t@@0 h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@0| T@U) (|d#0@@0| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@0| (TSeq TInt)))) (= (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)) (forall ((|i#1@@0| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@0|) (< |i#1@@0| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (< (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@0|) |i#1@@0|))) |d#0@@0|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |701|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@0| |i#1@@0|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :weight 3
 :skolemid |702|
 :pattern ( (SnapTree.Tree.AllBelow (Lit SeqType |s#0@@0|) (LitInt |d#0@@0|)))
))))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |226|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((s@@1 T@U) (i Int) (v@@1 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) v@@1)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@1) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@1) i))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@2) t@@1) ($Is T@@2 v@@2 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@2) t@@1))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@3 T@U) (t0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0) h@@0) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@0) t0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@3 i@@0))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0) h@@0))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@1| T@U) (|d#0@@1| Int) ) (!  (=> (or (|SnapTree.Tree.AllBelow#canCall| |s#0@@1| |d#0@@1|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@1| (TSeq TInt)))) (= (SnapTree.Tree.AllBelow |s#0@@1| |d#0@@1|) (forall ((|i#0@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@1|) (< |i#0@@1| (|Seq#Length| |s#0@@1|))) (< (U_2_int ($Unbox intType (|Seq#Index| |s#0@@1| |i#0@@1|))) |d#0@@1|))
 :qid |SnapshotableTreesdfy.126:14|
 :skolemid |699|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@1| |i#0@@1|)))
))))
 :qid |SnapshotableTreesdfy.124:37|
 :skolemid |700|
 :pattern ( (SnapTree.Tree.AllBelow |s#0@@1| |d#0@@1|))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@0 t1 t2 (MapType0Store t0@@0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@1 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 (MapType1Store t0@@1 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1950|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|left#0@@0| T@U) (|data#0@@0| Int) (|right#0@@0| T@U) ) (!  (=> (or (|SnapTree.Tree.SortedSplit#canCall| |left#0@@0| |data#0@@0| |right#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is SeqType |left#0@@0| (TSeq TInt)) ($Is SeqType |right#0@@0| (TSeq TInt))))) (and (and (|SnapTree.Tree.IsSorted#canCall| |left#0@@0|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@0|) (and (|SnapTree.Tree.IsSorted#canCall| |right#0@@0|) (=> (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@0|) (and (|SnapTree.Tree.AllBelow#canCall| |left#0@@0| |data#0@@0|) (=> (SnapTree.Tree.AllBelow |left#0@@0| |data#0@@0|) (|SnapTree.Tree.AllAbove#canCall| |data#0@@0| |right#0@@0|))))))) (= (SnapTree.Tree.SortedSplit |left#0@@0| |data#0@@0| |right#0@@0|)  (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@0|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@0|)) (SnapTree.Tree.AllBelow |left#0@@0| |data#0@@0|)) (SnapTree.Tree.AllAbove |data#0@@0| |right#0@@0|)))))
 :qid |SnapshotableTreesdfy.132:40|
 :skolemid |715|
 :pattern ( (SnapTree.Tree.SortedSplit |left#0@@0| |data#0@@0| |right#0@@0|))
))))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((bx@@1 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@1 (TSeq t@@4)) (and (= ($Box SeqType ($Unbox SeqType bx@@1)) bx@@1) ($Is SeqType ($Unbox SeqType bx@@1) (TSeq t@@4))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@1 (TSeq t@@4)))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |227|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
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
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|d#0@@2| Int) (|s#0@@2| T@U) ) (!  (=> (or (|SnapTree.Tree.AllAbove#canCall| (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@2| (TSeq TInt)))) (= (SnapTree.Tree.AllAbove (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)) (forall ((|i#1@@1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1@@1|) (< |i#1@@1| (|Seq#Length| (Lit SeqType |s#0@@2|)))) (< |d#0@@2| (U_2_int ($Unbox intType (|Seq#Index| (Lit SeqType |s#0@@2|) |i#1@@1|)))))
 :qid |SnapshotableTreesdfy.130:14|
 :skolemid |709|
 :pattern ( ($Unbox intType (|Seq#Index| |s#0@@2| |i#1@@1|)))
))))
 :qid |SnapshotableTreesdfy.128:37|
 :weight 3
 :skolemid |710|
 :pattern ( (SnapTree.Tree.AllAbove (LitInt |d#0@@2|) (Lit SeqType |s#0@@2|)))
))))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@2)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@1) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@2)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |left#0@@1| () T@U)
(declare-fun |data#0@@1| () Int)
(declare-fun |right#0@@1| () T@U)
(set-info :boogie-vc-id Impl$$SnapTree.Tree.SortCombineProperty)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc false)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap $Heap@0)) (and reveal_SnapTree.Tree.IsSorted (= (ControlFlow 0 2) (- 0 1)))) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted (|Seq#Append| (|Seq#Append| |left#0@@1| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |data#0@@1|)))) |right#0@@1|))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SeqType |left#0@@1| (TSeq TInt)) ($IsAlloc SeqType |left#0@@1| (TSeq TInt) $Heap))) (=> (and (and (and ($Is SeqType |right#0@@1| (TSeq TInt)) ($IsAlloc SeqType |right#0@@1| (TSeq TInt) $Heap)) (= 2 $FunctionContextHeight)) (and (and (|SnapTree.Tree.SortedSplit#canCall| |left#0@@1| |data#0@@1| |right#0@@1|) (and (SnapTree.Tree.SortedSplit |left#0@@1| |data#0@@1| |right#0@@1|) (and (and (and (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |left#0@@1|) (SnapTree.Tree.IsSorted reveal_SnapTree.Tree.IsSorted |right#0@@1|)) (SnapTree.Tree.AllBelow |left#0@@1| |data#0@@1|)) (SnapTree.Tree.AllAbove |data#0@@1| |right#0@@1|)))) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
