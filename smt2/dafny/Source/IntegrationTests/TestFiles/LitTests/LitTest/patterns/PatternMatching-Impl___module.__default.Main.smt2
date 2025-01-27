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
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.Alt () T@U)
(declare-fun Tagclass._module.PairOfNumbers () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Alt.A| () T@U)
(declare-fun |##_module.Alt.B| () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.PairOfNumbers.P| () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
(declare-fun |##_module.Tree.Branch| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Alt () T@U)
(declare-fun tytagFamily$PairOfNumbers () T@U)
(declare-fun tytagFamily$Tree () T@U)
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
(declare-fun |#_module.Tree.Branch| (T@U Bool T@U) T@U)
(declare-fun _module.Tree.b (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Tree.left (T@U) T@U)
(declare-fun _module.Tree.right (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun _module.PairOfNumbers.P_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.PairOfNumbers () T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun |#_module.PairOfNumbers.P| (Int Int) T@U)
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
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.Alt.A_q (T@U) Bool)
(declare-fun _module.Alt.B_q (T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun _module.Tree.Branch_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Alt.A| (Int) T@U)
(declare-fun |#_module.Alt.B| (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.Alt () T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.PairOfNumbers._0 (T@U) Int)
(declare-fun _module.PairOfNumbers._1 (T@U) Int)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun _module.Alt._h0 (T@U) Int)
(declare-fun _module.Alt._h1 (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.nat Tagclass._module.List Tagclass._module.Alt Tagclass._module.PairOfNumbers Tagclass._module.Tree |##_module.Alt.A| |##_module.Alt.B| |##_module.List.Nil| |##_module.List.Cons| |##_module.PairOfNumbers.P| |##_module.Tree.Leaf| |##_module.Tree.Branch| tytagFamily$nat tytagFamily$List tytagFamily$Alt tytagFamily$PairOfNumbers tytagFamily$Tree)
)
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| Bool) (|a#16#2#0| T@U) ) (! (= (_module.Tree.b (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0| |a#16#2#0|)) |a#16#1#0|)
 :qid |PatternMatchingdfy.151:31|
 :skolemid |649|
 :pattern ( (|#_module.Tree.Branch| |a#16#0#0| |a#16#1#0| |a#16#2#0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| Bool) (|a#10#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Tree.Branch| |a#10#0#0| |a#10#1#0| |a#10#2#0|)) |##_module.Tree.Branch|)
 :qid |PatternMatchingdfy.151:31|
 :skolemid |638|
 :pattern ( (|#_module.Tree.Branch| |a#10#0#0| |a#10#1#0| |a#10#2#0|))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| Bool) (|a#14#2#0| T@U) ) (! (= (_module.Tree.left (|#_module.Tree.Branch| |a#14#0#0| |a#14#1#0| |a#14#2#0|)) |a#14#0#0|)
 :qid |PatternMatchingdfy.151:31|
 :skolemid |647|
 :pattern ( (|#_module.Tree.Branch| |a#14#0#0| |a#14#1#0| |a#14#2#0|))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| Bool) (|a#17#2#0| T@U) ) (! (= (_module.Tree.right (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0| |a#17#2#0|)) |a#17#2#0|)
 :qid |PatternMatchingdfy.151:31|
 :skolemid |650|
 :pattern ( (|#_module.Tree.Branch| |a#17#0#0| |a#17#1#0| |a#17#2#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass._module.PairOfNumbers) (_module.PairOfNumbers.P_q d))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (_module.PairOfNumbers.P_q d) ($Is DatatypeTypeType d Tclass._module.PairOfNumbers))
)))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.PairOfNumbers.P| |a#2#0#0| |a#2#1#0|) Tclass._module.PairOfNumbers)  (and ($Is intType (int_2_U |a#2#0#0|) TInt) ($Is intType (int_2_U |a#2#1#0|) TInt)))
 :qid |PatternMatchingdfy.138:28|
 :skolemid |625|
 :pattern ( ($Is DatatypeTypeType (|#_module.PairOfNumbers.P| |a#2#0#0| |a#2#1#0|) Tclass._module.PairOfNumbers))
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
(assert (forall ((_module.List$T@@1 T@U) (|a#34#0#0| T@U) (|a#34#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#34#0#0| |a#34#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#34#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#34#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#34#0#0| |a#34#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Alt.A_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Alt.A|))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.Alt.A_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Alt.B_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Alt.B|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Alt.B_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Nil_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.List.Nil_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.List.Cons_q d@@3) (= (DatatypeCtorId d@@3) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.PairOfNumbers.P_q d@@4) (= (DatatypeCtorId d@@4) |##_module.PairOfNumbers.P|))
 :qid |unknown.0:0|
 :skolemid |622|
 :pattern ( (_module.PairOfNumbers.P_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (! (= (_module.Tree.Leaf_q d@@5) (= (DatatypeCtorId d@@5) |##_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( (_module.Tree.Leaf_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (! (= (_module.Tree.Branch_q d@@6) (= (DatatypeCtorId d@@6) |##_module.Tree.Branch|))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( (_module.Tree.Branch_q d@@6))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.Tree.Branch_q d@@7) (exists ((|a#11#0#0| T@U) (|a#11#1#0| Bool) (|a#11#2#0| T@U) ) (! (= d@@7 (|#_module.Tree.Branch| |a#11#0#0| |a#11#1#0| |a#11#2#0|))
 :qid |PatternMatchingdfy.151:31|
 :skolemid |640|
)))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( (_module.Tree.Branch_q d@@7))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> (_module.List.Cons_q d@@8) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@8 (|#_module.List.Cons| |a#33#0#0| |a#33#1#0|))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |602|
)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (_module.List.Cons_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.PairOfNumbers.P_q d@@9) (exists ((|a#1#0#0| Int) (|a#1#1#0| Int) ) (! (= d@@9 (|#_module.PairOfNumbers.P| |a#1#0#0| |a#1#1#0|))
 :qid |PatternMatchingdfy.138:28|
 :skolemid |623|
)))
 :qid |unknown.0:0|
 :skolemid |624|
 :pattern ( (_module.PairOfNumbers.P_q d@@9))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> (_module.List.Nil_q d@@10) (= d@@10 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( (_module.List.Nil_q d@@10))
)))
(assert (forall ((d@@11 T@U) ) (!  (=> (_module.Tree.Leaf_q d@@11) (= d@@11 |#_module.Tree.Leaf|))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_module.Tree.Leaf_q d@@11))
)))
(assert (forall ((d@@12 T@U) ) (!  (=> (_module.Alt.A_q d@@12) (exists ((|a#1#0#0@@0| Int) ) (! (= d@@12 (|#_module.Alt.A| |a#1#0#0@@0|))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |541|
)))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( (_module.Alt.A_q d@@12))
)))
(assert (forall ((d@@13 T@U) ) (!  (=> (_module.Alt.B_q d@@13) (exists ((|a#6#0#0| Int) ) (! (= d@@13 (|#_module.Alt.B| |a#6#0#0|))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |549|
)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_module.Alt.B_q d@@13))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
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
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Alt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Alt)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@1 Tclass._module.Alt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.PairOfNumbers) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) Tclass._module.PairOfNumbers)))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($IsBox bx@@2 Tclass._module.PairOfNumbers))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsBox bx@@3 Tclass._module.Tree))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@14 T@U) ) (!  (=> ($Is DatatypeTypeType d@@14 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@14) (_module.List.Cons_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.List.Cons_q d@@14) ($Is DatatypeTypeType d@@14 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@14) ($Is DatatypeTypeType d@@14 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> ($Is DatatypeTypeType d@@15 Tclass._module.Alt) (or (_module.Alt.A_q d@@15) (_module.Alt.B_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_module.Alt.B_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.Alt))
 :pattern ( (_module.Alt.A_q d@@15) ($Is DatatypeTypeType d@@15 Tclass._module.Alt))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> ($Is DatatypeTypeType d@@16 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@16) (_module.Tree.Branch_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (_module.Tree.Branch_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@16) ($Is DatatypeTypeType d@@16 Tclass._module.Tree))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#32#0#0| |a#32#1#0|)) |##_module.List.Cons|)
 :qid |PatternMatchingdfy.11:31|
 :skolemid |600|
 :pattern ( (|#_module.List.Cons| |a#32#0#0| |a#32#1#0|))
)))
(assert (forall ((|a#36#0#0| T@U) (|a#36#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#36#0#0| |a#36#1#0|)) |a#36#0#0|)
 :qid |PatternMatchingdfy.11:31|
 :skolemid |609|
 :pattern ( (|#_module.List.Cons| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#38#0#0| T@U) (|a#38#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#38#0#0| |a#38#1#0|)) |a#38#1#0|)
 :qid |PatternMatchingdfy.11:31|
 :skolemid |611|
 :pattern ( (|#_module.List.Cons| |a#38#0#0| |a#38#1#0|))
)))
(assert (forall ((|a#0#0#0| Int) (|a#0#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.PairOfNumbers.P| |a#0#0#0| |a#0#1#0|)) |##_module.PairOfNumbers.P|)
 :qid |PatternMatchingdfy.138:28|
 :skolemid |621|
 :pattern ( (|#_module.PairOfNumbers.P| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) ) (! (= (_module.PairOfNumbers._0 (|#_module.PairOfNumbers.P| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |PatternMatchingdfy.138:28|
 :skolemid |629|
 :pattern ( (|#_module.PairOfNumbers.P| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) ) (! (= (_module.PairOfNumbers._1 (|#_module.PairOfNumbers.P| |a#5#0#0| |a#5#1#0|)) |a#5#1#0|)
 :qid |PatternMatchingdfy.138:28|
 :skolemid |630|
 :pattern ( (|#_module.PairOfNumbers.P| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) ) (! (= (|#_module.Tree.Branch| (Lit DatatypeTypeType |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|)) (Lit DatatypeTypeType |a#13#2#0|)) (Lit DatatypeTypeType (|#_module.Tree.Branch| |a#13#0#0| (U_2_bool |a#13#1#0|) |a#13#2#0|)))
 :qid |PatternMatchingdfy.151:31|
 :skolemid |646|
 :pattern ( (|#_module.Tree.Branch| (Lit DatatypeTypeType |a#13#0#0|) (U_2_bool (Lit boolType |a#13#1#0|)) (Lit DatatypeTypeType |a#13#2#0|)))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((|a#0#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#_module.Alt.A| |a#0#0#0@@0|)) |##_module.Alt.A|)
 :qid |PatternMatchingdfy.8:18|
 :skolemid |539|
 :pattern ( (|#_module.Alt.A| |a#0#0#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) ) (! (= (_module.Alt._h0 (|#_module.Alt.A| |a#4#0#0@@0|)) |a#4#0#0@@0|)
 :qid |PatternMatchingdfy.8:18|
 :skolemid |546|
 :pattern ( (|#_module.Alt.A| |a#4#0#0@@0|))
)))
(assert (forall ((|a#5#0#0@@0| Int) ) (! (= (DatatypeCtorId (|#_module.Alt.B| |a#5#0#0@@0|)) |##_module.Alt.B|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |547|
 :pattern ( (|#_module.Alt.B| |a#5#0#0@@0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (_module.Alt._h1 (|#_module.Alt.B| |a#9#0#0|)) |a#9#0#0|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |554|
 :pattern ( (|#_module.Alt.B| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| Bool) (|a#15#2#0| T@U) ) (! (< (DtRank |a#15#0#0|) (DtRank (|#_module.Tree.Branch| |a#15#0#0| |a#15#1#0| |a#15#2#0|)))
 :qid |PatternMatchingdfy.151:31|
 :skolemid |648|
 :pattern ( (|#_module.Tree.Branch| |a#15#0#0| |a#15#1#0| |a#15#2#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| Bool) (|a#18#2#0| T@U) ) (! (< (DtRank |a#18#2#0|) (DtRank (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0| |a#18#2#0|)))
 :qid |PatternMatchingdfy.151:31|
 :skolemid |651|
 :pattern ( (|#_module.Tree.Branch| |a#18#0#0| |a#18#1#0| |a#18#2#0|))
)))
(assert (forall ((|a#37#0#0| T@U) (|a#37#1#0| T@U) ) (! (< (BoxRank |a#37#0#0|) (DtRank (|#_module.List.Cons| |a#37#0#0| |a#37#1#0|)))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |610|
 :pattern ( (|#_module.List.Cons| |a#37#0#0| |a#37#1#0|))
)))
(assert (forall ((|a#39#0#0| T@U) (|a#39#1#0| T@U) ) (! (< (DtRank |a#39#1#0|) (DtRank (|#_module.List.Cons| |a#39#0#0| |a#39#1#0|)))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |612|
 :pattern ( (|#_module.List.Cons| |a#39#0#0| |a#39#1#0|))
)))
(assert (forall ((|a#2#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0@@0|) Tclass._module.Alt) ($Is intType (int_2_U |a#2#0#0@@0|) TInt))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |543|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0@@0|) Tclass._module.Alt))
)))
(assert (forall ((|a#7#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0|) Tclass._module.Alt) ($Is intType (int_2_U |a#7#0#0|) TInt))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |551|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0|) Tclass._module.Alt))
)))
(assert (forall ((d@@17 T@U) (_module.List$T@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.List.Cons_q d@@17) ($IsAlloc DatatypeTypeType d@@17 (Tclass._module.List _module.List$T@@5) $h@@1))) ($IsAllocBox (_module.List.head d@@17) _module.List$T@@5 $h@@1))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsAllocBox (_module.List.head d@@17) _module.List$T@@5 $h@@1))
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
 :skolemid |658|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@18 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Alt.A_q d@@18) ($IsAlloc DatatypeTypeType d@@18 Tclass._module.Alt $h@@2))) ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@18)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@18)) TInt $h@@2))
)))
(assert (forall ((d@@19 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Alt.B_q d@@19) ($IsAlloc DatatypeTypeType d@@19 Tclass._module.Alt $h@@3))) ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@19)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@19)) TInt $h@@3))
)))
(assert (forall ((d@@20 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.PairOfNumbers.P_q d@@20) ($IsAlloc DatatypeTypeType d@@20 Tclass._module.PairOfNumbers $h@@4))) ($IsAlloc intType (int_2_U (_module.PairOfNumbers._0 d@@20)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |626|
 :pattern ( ($IsAlloc intType (int_2_U (_module.PairOfNumbers._0 d@@20)) TInt $h@@4))
)))
(assert (forall ((d@@21 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.PairOfNumbers.P_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.PairOfNumbers $h@@5))) ($IsAlloc intType (int_2_U (_module.PairOfNumbers._1 d@@21)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |627|
 :pattern ( ($IsAlloc intType (int_2_U (_module.PairOfNumbers._1 d@@21)) TInt $h@@5))
)))
(assert (forall ((d@@22 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Tree.Branch_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Tree $h@@6))) ($IsAlloc boolType (bool_2_U (_module.Tree.b d@@22)) TBool $h@@6))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Tree.b d@@22)) TBool $h@@6))
)))
(assert (forall ((d@@23 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@23)) (DtRank d@@23))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@23)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@6 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@24 T@U) (_module.List$T@@7 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.List.Cons_q d@@24) ($IsAlloc DatatypeTypeType d@@24 (Tclass._module.List _module.List$T@@7) $h@@7))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@24) (Tclass._module.List _module.List$T@@7) $h@@7))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@24) (Tclass._module.List _module.List$T@@7) $h@@7))
)))
(assert (forall ((d@@25 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@25 Tclass._module.Alt)) ($IsAlloc DatatypeTypeType d@@25 Tclass._module.Alt $h@@8))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@25 Tclass._module.Alt $h@@8))
)))
(assert (forall ((d@@26 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) ($Is DatatypeTypeType d@@26 Tclass._module.PairOfNumbers)) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.PairOfNumbers $h@@9))
 :qid |unknown.0:0|
 :skolemid |631|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass._module.PairOfNumbers $h@@9))
)))
(assert (forall ((d@@27 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) ($Is DatatypeTypeType d@@27 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Tree $h@@10))
 :qid |unknown.0:0|
 :skolemid |652|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Tree $h@@10))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Alt) Tagclass._module.Alt))
(assert (= (TagFamily Tclass._module.Alt) tytagFamily$Alt))
(assert (= (Tag Tclass._module.PairOfNumbers) Tagclass._module.PairOfNumbers))
(assert (= (TagFamily Tclass._module.PairOfNumbers) tytagFamily$PairOfNumbers))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@28 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Tree.Branch_q d@@28) ($IsAlloc DatatypeTypeType d@@28 Tclass._module.Tree $h@@11))) ($IsAlloc DatatypeTypeType (_module.Tree.left d@@28) Tclass._module.Tree $h@@11))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.left d@@28) Tclass._module.Tree $h@@11))
)))
(assert (forall ((d@@29 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Tree.Branch_q d@@29) ($IsAlloc DatatypeTypeType d@@29 Tclass._module.Tree $h@@12))) ($IsAlloc DatatypeTypeType (_module.Tree.right d@@29) Tclass._module.Tree $h@@12))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.right d@@29) Tclass._module.Tree $h@@12))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#35#0#0| |a#35#1#0|)))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |608|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) ) (! (= (|#_module.PairOfNumbers.P| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|)) (Lit DatatypeTypeType (|#_module.PairOfNumbers.P| |a#3#0#0| |a#3#1#0|)))
 :qid |PatternMatchingdfy.138:28|
 :skolemid |628|
 :pattern ( (|#_module.PairOfNumbers.P| (LitInt |a#3#0#0|) (LitInt |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0@@0| Int) ) (! (= (|#_module.Alt.A| (LitInt |a#3#0#0@@0|)) (Lit DatatypeTypeType (|#_module.Alt.A| |a#3#0#0@@0|)))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |545|
 :pattern ( (|#_module.Alt.A| (LitInt |a#3#0#0@@0|)))
)))
(assert (forall ((|a#8#0#0| Int) ) (! (= (|#_module.Alt.B| (LitInt |a#8#0#0|)) (Lit DatatypeTypeType (|#_module.Alt.B| |a#8#0#0|)))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |553|
 :pattern ( (|#_module.Alt.B| (LitInt |a#8#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@4))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| Bool) (|a#12#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass._module.Tree)  (and (and ($Is DatatypeTypeType |a#12#0#0| Tclass._module.Tree) ($Is boolType (bool_2_U |a#12#1#0|) TBool)) ($Is DatatypeTypeType |a#12#2#0| Tclass._module.Tree)))
 :qid |PatternMatchingdfy.151:31|
 :skolemid |642|
 :pattern ( ($Is DatatypeTypeType (|#_module.Tree.Branch| |a#12#0#0| |a#12#1#0| |a#12#2#0|) Tclass._module.Tree))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#34#0#0@@0| T@U) (|a#34#1#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#34#0#0@@0| |a#34#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@13)  (and ($IsAllocBox |a#34#0#0@@0| _module.List$T@@8 $h@@13) ($IsAlloc DatatypeTypeType |a#34#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@13))))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#34#0#0@@0| |a#34#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@13))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is boolType v@@5 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@5 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |aa#0@0| () T@U)
(declare-fun |bb#0@0| () T@U)
(declare-fun |cc#0@0| () T@U)
(declare-fun |dd#0@0| () T@U)
(declare-fun |ee#0@0| () T@U)
(declare-fun |ff#0@0| () T@U)
(declare-fun |gg#0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |p##0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |call2formal@r#0@0| () Int)
(declare-fun |p##1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |call2formal@r#0@0@@0| () Int)
(declare-fun |t1#0@0| () T@U)
(declare-fun |t2#0@0| () T@U)
(declare-fun |t3#0@0| () T@U)
(declare-fun |t4#0@0| () T@U)
(declare-fun |x##2@0| () T@U)
(declare-fun |call4formal@r#0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |call4formal@r#0@0| () Int)
(declare-fun |x##3@0| () T@U)
(declare-fun |z##1@0| () T@U)
(declare-fun |call4formal@r#0@@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |call4formal@r#0@0@@0| () Int)
(declare-fun |x##4@0| () T@U)
(declare-fun |z##2@0| () T@U)
(declare-fun |call4formal@r#0@@1| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |call4formal@r#0@0@@1| () Int)
(declare-fun |x##5@0| () T@U)
(declare-fun |call4formal@r#0@@2| () Int)
(declare-fun $Heap@8 () T@U)
(declare-fun |call4formal@r#0@0@@2| () Int)
(declare-fun |x##6@0| () T@U)
(declare-fun |call4formal@r#0@@3| () Int)
(declare-fun $Heap@9 () T@U)
(declare-fun |call4formal@r#0@0@@3| () Int)
(declare-fun |x##7@0| () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun |cc#0| () T@U)
(declare-fun |dd#0| () T@U)
(declare-fun |ee#0| () T@U)
(declare-fun |ff#0| () T@U)
(declare-fun |gg#0| () T@U)
(declare-fun |t1#0| () T@U)
(declare-fun |t2#0| () T@U)
(declare-fun |t3#0| () T@U)
(declare-fun |t4#0| () T@U)
(declare-fun |r0#0| () Int)
(declare-fun |r1#0| () Int)
(declare-fun |r2#0| () Int)
(declare-fun |r3#0| () Int)
(declare-fun |r4#0| () Int)
(declare-fun |r5#0| () Int)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |aa#0@0| (Lit DatatypeTypeType (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 6))) (Lit DatatypeTypeType |#_module.List.Nil|))))) (and (= |bb#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 5))) |aa#0@0|)) (= |cc#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 4))) |bb#0@0|)))) (=> (and (and (and (= |dd#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 4))) |cc#0@0|)) (= |ee#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 3))) |dd#0@0|))) (and (= |ff#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 2))) |ee#0@0|)) (= |gg#0@0| (|#_module.List.Cons| ($Box intType (int_2_U (LitInt 1))) |ff#0@0|)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |PatternMatchingdfy.14:8|
 :skolemid |483|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0)))) (=> (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |PatternMatchingdfy.25:8|
 :skolemid |486|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |PatternMatchingdfy.56:8|
 :skolemid |497|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)))) (and (and (and ($HeapSucc $Heap@1 $Heap@2) (= |p##0@0| (Lit DatatypeTypeType (|#_module.PairOfNumbers.P| (LitInt 11) (LitInt 10))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and (_module.PairOfNumbers.P_q |p##0@0|) (=> (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11)) (_module.PairOfNumbers.P_q |p##0@0|))) (=> (and (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11)) (= (_module.PairOfNumbers._1 |p##0@0|) (LitInt 10))) (= |call2formal@r#0@0| (LitInt 0)))))) (=> (and (and (and (and (and (_module.PairOfNumbers.P_q |p##0@0|) (=> (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11)) (_module.PairOfNumbers.P_q |p##0@0|))) (=> (and (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11)) (or (not (= (_module.PairOfNumbers._1 |p##0@0|) 10)) (not true))) (= |call2formal@r#0@0| (LitInt 1)))) (and (and (_module.PairOfNumbers.P_q |p##0@0|) (=> (or (not (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11))) (not true)) (_module.PairOfNumbers.P_q |p##0@0|))) (and (or (or (= (_module.PairOfNumbers._0 |p##0@0|) (LitInt 11)) (= (_module.PairOfNumbers._1 |p##0@0|) (LitInt 11))) (= |call2formal@r#0@0| (LitInt 3))) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |PatternMatchingdfy.139:8|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))))) (and (and (and ($HeapSucc $Heap@2 $Heap@3) (= |p##1@0| (Lit DatatypeTypeType (|#_module.PairOfNumbers.P| (LitInt (- 0 1)) (LitInt 10))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (and (and (_module.PairOfNumbers.P_q |p##1@0|) (=> (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11)) (_module.PairOfNumbers.P_q |p##1@0|))) (=> (and (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11)) (= (_module.PairOfNumbers._1 |p##1@0|) (LitInt 10))) (= |call2formal@r#0@0@@0| (LitInt 0)))))) (and (and (and (and (_module.PairOfNumbers.P_q |p##1@0|) (=> (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11)) (_module.PairOfNumbers.P_q |p##1@0|))) (=> (and (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11)) (or (not (= (_module.PairOfNumbers._1 |p##1@0|) 10)) (not true))) (= |call2formal@r#0@0@@0| (LitInt 1)))) (and (_module.PairOfNumbers.P_q |p##1@0|) (=> (or (not (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11))) (not true)) (_module.PairOfNumbers.P_q |p##1@0|)))) (and (and (and (or (or (= (_module.PairOfNumbers._0 |p##1@0|) (LitInt 11)) (= (_module.PairOfNumbers._1 |p##1@0|) (LitInt 11))) (= |call2formal@r#0@0@@0| (LitInt 3))) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4)))
 :qid |PatternMatchingdfy.139:8|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@4))
))) (and ($HeapSucc $Heap@3 $Heap@4) (= |t1#0@0| (Lit DatatypeTypeType (|#_module.Tree.Branch| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (U_2_bool (Lit boolType (bool_2_U true))) (Lit DatatypeTypeType |#_module.Tree.Leaf|)))))) (and (and (= |t2#0@0| (|#_module.Tree.Branch| |t1#0@0| (U_2_bool (Lit boolType (bool_2_U false))) (Lit DatatypeTypeType |#_module.Tree.Leaf|))) (= |t3#0@0| (|#_module.Tree.Branch| |t2#0@0| (U_2_bool (Lit boolType (bool_2_U true))) |t2#0@0|))) (and (= |t4#0@0| (|#_module.Tree.Branch| (Lit DatatypeTypeType |#_module.Tree.Leaf|) (U_2_bool (Lit boolType (bool_2_U false))) |t3#0@0|)) (= |x##2@0| (Lit DatatypeTypeType (|#_module.Alt.A| (LitInt 0))))))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is DatatypeTypeType |gg#0@0| (Tclass._module.List Tclass._System.nat))) (=> ($Is DatatypeTypeType |gg#0@0| (Tclass._module.List Tclass._System.nat)) (=> (<= (LitInt 0) |call4formal@r#0|) (=> (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (=> (and (and (<= (LitInt 0) |call4formal@r#0@0|) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@5)))
 :qid |PatternMatchingdfy.153:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@5))
))) (and ($HeapSucc $Heap@4 $Heap@5) (= |x##3@0| (Lit DatatypeTypeType (|#_module.Alt.A| (LitInt 0)))))) (=> (and (and (and (and (= |z##1@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (<= (LitInt 0) |call4formal@r#0@@0|)) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (and (and (<= (LitInt 0) |call4formal@r#0@0@@0|) (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@6)))
 :qid |PatternMatchingdfy.153:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@6))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |x##4@0| (Lit DatatypeTypeType (|#_module.Alt.A| (LitInt 0))))))) (and (and (and (= |z##2@0| (Lit DatatypeTypeType |#_module.List.Nil|)) (<= (LitInt 0) |call4formal@r#0@@1|)) (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7))) (and (and (<= (LitInt 0) |call4formal@r#0@0@@1|) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@7)))
 :qid |PatternMatchingdfy.153:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@7))
))) (and ($HeapSucc $Heap@6 $Heap@7) (= |x##5@0| (Lit DatatypeTypeType (|#_module.Alt.B| (LitInt 0)))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is DatatypeTypeType |ff#0@0| (Tclass._module.List Tclass._System.nat))) (=> ($Is DatatypeTypeType |ff#0@0| (Tclass._module.List Tclass._System.nat)) (=> (<= (LitInt 0) |call4formal@r#0@@2|) (=> (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (=> (and (and (<= (LitInt 0) |call4formal@r#0@0@@2|) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@8)))
 :qid |PatternMatchingdfy.153:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@8))
))) (and ($HeapSucc $Heap@7 $Heap@8) (= |x##6@0| (Lit DatatypeTypeType (|#_module.Alt.A| (LitInt 0)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is DatatypeTypeType |ee#0@0| (Tclass._module.List Tclass._System.nat))) (=> ($Is DatatypeTypeType |ee#0@0| (Tclass._module.List Tclass._System.nat)) (=> (<= (LitInt 0) |call4formal@r#0@@3|) (=> (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (<= (LitInt 0) |call4formal@r#0@0@@3|)) (and (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@9)))
 :qid |PatternMatchingdfy.153:8|
 :skolemid |523|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@9))
)) ($HeapSucc $Heap@8 $Heap@9)) (and (= |x##7@0| (Lit DatatypeTypeType (|#_module.Alt.A| (LitInt 0)))) (= (ControlFlow 0 2) (- 0 1))))) ($Is DatatypeTypeType |bb#0@0| (Tclass._module.List Tclass._System.nat)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |aa#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |aa#0| (Tclass._module.List TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |bb#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |bb#0| (Tclass._module.List TInt) $Heap)) true)) (=> (and (and (and (and (and (and ($Is DatatypeTypeType |cc#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |cc#0| (Tclass._module.List TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |dd#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |dd#0| (Tclass._module.List TInt) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |ee#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |ee#0| (Tclass._module.List TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |ff#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |ff#0| (Tclass._module.List TInt) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |gg#0| (Tclass._module.List TInt)) ($IsAlloc DatatypeTypeType |gg#0| (Tclass._module.List TInt) $Heap)) true) (and (and ($Is DatatypeTypeType |t1#0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t1#0| Tclass._module.Tree $Heap)) true)) (and (and (and ($Is DatatypeTypeType |t2#0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t2#0| Tclass._module.Tree $Heap)) true) (and (and ($Is DatatypeTypeType |t3#0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t3#0| Tclass._module.Tree $Heap)) true)))) (and (and (and (and (and ($Is DatatypeTypeType |t4#0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |t4#0| Tclass._module.Tree $Heap)) true) (and (<= (LitInt 0) |r0#0|) true)) (and (and (<= (LitInt 0) |r1#0|) true) (and (<= (LitInt 0) |r2#0|) true))) (and (and (and (<= (LitInt 0) |r3#0|) true) (and (<= (LitInt 0) |r4#0|) true)) (and (and (<= (LitInt 0) |r5#0|) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))))) anon0_correct)))))
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
