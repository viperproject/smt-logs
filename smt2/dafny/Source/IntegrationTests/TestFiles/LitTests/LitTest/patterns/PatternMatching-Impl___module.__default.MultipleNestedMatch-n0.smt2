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
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.Alt () T@U)
(declare-fun Tagclass._module.Tree () T@U)
(declare-fun |##_module.Alt.A| () T@U)
(declare-fun |##_module.Alt.B| () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |##_module.Tree.Leaf| () T@U)
(declare-fun |##_module.Tree.Branch| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Alt () T@U)
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
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun |#_module.Tree.Leaf| () T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Tree () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.Alt.A_q (T@U) Bool)
(declare-fun _module.Alt.B_q (T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun _module.Tree.Leaf_q (T@U) Bool)
(declare-fun _module.Tree.Branch_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Alt.A| (Int) T@U)
(declare-fun |#_module.Alt.B| (Int) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._module.Alt () T@U)
(declare-fun |$IsA#_module.Alt| (T@U) Bool)
(declare-fun |$IsA#_module.List| (T@U) Bool)
(declare-fun |$IsA#_module.Tree| (T@U) Bool)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun _module.Alt._h0 (T@U) Int)
(declare-fun _module.Alt._h1 (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun BoxRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
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
(assert (distinct TBool TInt TagBool TagInt alloc Tagclass._System.nat |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List Tagclass._module.Alt Tagclass._module.Tree |##_module.Alt.A| |##_module.Alt.B| |##_module.List.Nil| |##_module.List.Cons| |##_module.Tree.Leaf| |##_module.Tree.Branch| tytagFamily$nat |tytagFamily$_tuple#2| tytagFamily$List tytagFamily$Alt tytagFamily$Tree)
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
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (DatatypeCtorId |#_module.Tree.Leaf|) |##_module.Tree.Leaf|))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Tree.Leaf| Tclass._module.Tree))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
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
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Alt.A_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Alt.A|))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (_module.Alt.A_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Alt.B_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Alt.B|))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (_module.Alt.B_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.List.Nil_q d@@3) (= (DatatypeCtorId d@@3) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( (_module.List.Nil_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.List.Cons_q d@@4) (= (DatatypeCtorId d@@4) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( (_module.List.Cons_q d@@4))
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
(assert (forall ((d@@8 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@8) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@8 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@8))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> (_module.List.Cons_q d@@9) (exists ((|a#33#0#0| T@U) (|a#33#1#0| T@U) ) (! (= d@@9 (|#_module.List.Cons| |a#33#0#0| |a#33#1#0|))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |602|
)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( (_module.List.Cons_q d@@9))
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
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Alt) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Alt)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@0 Tclass._module.Alt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Tree) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.Tree)))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsBox bx@@1 Tclass._module.Tree))
)))
(assert (forall ((d@@14 T@U) ) (!  (=> (|$IsA#_module.Alt| d@@14) (or (_module.Alt.A_q d@@14) (_module.Alt.B_q d@@14)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (|$IsA#_module.Alt| d@@14))
)))
(assert (forall ((d@@15 T@U) ) (!  (=> (|$IsA#_module.List| d@@15) (or (_module.List.Nil_q d@@15) (_module.List.Cons_q d@@15)))
 :qid |unknown.0:0|
 :skolemid |613|
 :pattern ( (|$IsA#_module.List| d@@15))
)))
(assert (forall ((d@@16 T@U) ) (!  (=> (|$IsA#_module.Tree| d@@16) (or (_module.Tree.Leaf_q d@@16) (_module.Tree.Branch_q d@@16)))
 :qid |unknown.0:0|
 :skolemid |653|
 :pattern ( (|$IsA#_module.Tree| d@@16))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@17 T@U) ) (!  (=> ($Is DatatypeTypeType d@@17 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@17) (_module.List.Cons_q d@@17)))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.List.Cons_q d@@17) ($Is DatatypeTypeType d@@17 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@17) ($Is DatatypeTypeType d@@17 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((d@@18 T@U) ) (!  (=> ($Is DatatypeTypeType d@@18 Tclass._module.Alt) (or (_module.Alt.A_q d@@18) (_module.Alt.B_q d@@18)))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_module.Alt.B_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.Alt))
 :pattern ( (_module.Alt.A_q d@@18) ($Is DatatypeTypeType d@@18 Tclass._module.Alt))
)))
(assert (forall ((d@@19 T@U) ) (!  (=> ($Is DatatypeTypeType d@@19 Tclass._module.Tree) (or (_module.Tree.Leaf_q d@@19) (_module.Tree.Branch_q d@@19)))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( (_module.Tree.Branch_q d@@19) ($Is DatatypeTypeType d@@19 Tclass._module.Tree))
 :pattern ( (_module.Tree.Leaf_q d@@19) ($Is DatatypeTypeType d@@19 Tclass._module.Tree))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0|))
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
(assert (forall ((|a#5#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Alt.B| |a#5#0#0|)) |##_module.Alt.B|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |547|
 :pattern ( (|#_module.Alt.B| |a#5#0#0|))
)))
(assert (forall ((|a#9#0#0| Int) ) (! (= (_module.Alt._h1 (|#_module.Alt.B| |a#9#0#0|)) |a#9#0#0|)
 :qid |PatternMatchingdfy.8:27|
 :skolemid |554|
 :pattern ( (|#_module.Alt.B| |a#9#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
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
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
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
(assert (forall ((|a#2#0#0@@1| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0@@1|) Tclass._module.Alt) ($Is intType (int_2_U |a#2#0#0@@1|) TInt))
 :qid |PatternMatchingdfy.8:18|
 :skolemid |543|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.A| |a#2#0#0@@1|) Tclass._module.Alt))
)))
(assert (forall ((|a#7#0#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0@@0|) Tclass._module.Alt) ($Is intType (int_2_U |a#7#0#0@@0|) TInt))
 :qid |PatternMatchingdfy.8:27|
 :skolemid |551|
 :pattern ( ($Is DatatypeTypeType (|#_module.Alt.B| |a#7#0#0@@0|) Tclass._module.Alt))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@20 T@U) (_module.List$T@@5 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.List.Cons_q d@@20) ($IsAlloc DatatypeTypeType d@@20 (Tclass._module.List _module.List$T@@5) $h@@2))) ($IsAllocBox (_module.List.head d@@20) _module.List$T@@5 $h@@2))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsAllocBox (_module.List.head d@@20) _module.List$T@@5 $h@@2))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |658|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@21 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Alt.A_q d@@21) ($IsAlloc DatatypeTypeType d@@21 Tclass._module.Alt $h@@3))) ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@21)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h0 d@@21)) TInt $h@@3))
)))
(assert (forall ((d@@22 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Alt.B_q d@@22) ($IsAlloc DatatypeTypeType d@@22 Tclass._module.Alt $h@@4))) ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@22)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Alt._h1 d@@22)) TInt $h@@4))
)))
(assert (forall ((d@@23 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Tree.Branch_q d@@23) ($IsAlloc DatatypeTypeType d@@23 Tclass._module.Tree $h@@5))) ($IsAlloc boolType (bool_2_U (_module.Tree.b d@@23)) TBool $h@@5))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( ($IsAlloc boolType (bool_2_U (_module.Tree.b d@@23)) TBool $h@@5))
)))
(assert (forall ((d@@24 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@24)) (DtRank d@@24))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@24)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsBox bx@@5 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@25 T@U) (_module.List$T@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.Cons_q d@@25) ($IsAlloc DatatypeTypeType d@@25 (Tclass._module.List _module.List$T@@7) $h@@6))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@25) (Tclass._module.List _module.List$T@@7) $h@@6))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@25) (Tclass._module.List _module.List$T@@7) $h@@6))
)))
(assert (forall ((d@@26 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@26 Tclass._module.Alt)) ($IsAlloc DatatypeTypeType d@@26 Tclass._module.Alt $h@@7))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc DatatypeTypeType d@@26 Tclass._module.Alt $h@@7))
)))
(assert (forall ((d@@27 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) ($Is DatatypeTypeType d@@27 Tclass._module.Tree)) ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Tree $h@@8))
 :qid |unknown.0:0|
 :skolemid |652|
 :pattern ( ($IsAlloc DatatypeTypeType d@@27 Tclass._module.Tree $h@@8))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Alt) Tagclass._module.Alt))
(assert (= (TagFamily Tclass._module.Alt) tytagFamily$Alt))
(assert (= (Tag Tclass._module.Tree) Tagclass._module.Tree))
(assert (= (TagFamily Tclass._module.Tree) tytagFamily$Tree))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (= |#_module.Tree.Leaf| (Lit DatatypeTypeType |#_module.Tree.Leaf|)))
(assert (forall ((d@@28 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple2.___hMake2_q d@@28) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@28 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@9))
)))) ($IsAllocBox (_System.Tuple2._0 d@@28) |_System._tuple#2$T0@@6| $h@@9))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@28) |_System._tuple#2$T0@@6| $h@@9))
)))
(assert (forall ((d@@29 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple2.___hMake2_q d@@29) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@29 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@29 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@10))
)))) ($IsAllocBox (_System.Tuple2._1 d@@29) |_System._tuple#2$T1@@7| $h@@10))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@29) |_System._tuple#2$T1@@7| $h@@10))
)))
(assert (forall ((d@@30 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_module.Tree.Branch_q d@@30) ($IsAlloc DatatypeTypeType d@@30 Tclass._module.Tree $h@@11))) ($IsAlloc DatatypeTypeType (_module.Tree.left d@@30) Tclass._module.Tree $h@@11))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.left d@@30) Tclass._module.Tree $h@@11))
)))
(assert (forall ((d@@31 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_module.Tree.Branch_q d@@31) ($IsAlloc DatatypeTypeType d@@31 Tclass._module.Tree $h@@12))) ($IsAlloc DatatypeTypeType (_module.Tree.right d@@31) Tclass._module.Tree $h@@12))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Tree.right d@@31) Tclass._module.Tree $h@@12))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#35#0#0| |a#35#1#0|)))
 :qid |PatternMatchingdfy.11:31|
 :skolemid |608|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#35#0#0|) (Lit DatatypeTypeType |a#35#1#0|)))
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
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
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
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |_mcc#33#1_0_1_0_0_0@0| () T@U)
(declare-fun |_mcc#32#1_0_1_0_0_0@0| () Bool)
(declare-fun |_mcc#36#1_0_1_0_0_1_0_0_0@0| () Int)
(declare-fun |_mcc#37#1_0_1_0_0_1_0_0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n#1_0_1_0_0_1_0_0_0@0| () Int)
(declare-fun |let#1_0_1_0_0_1_0_0_0#0#0| () Int)
(declare-fun |a#1_0_1_0_0_1_1_0#0#0@0| () T@U)
(declare-fun |a#1_0_1_0_0_1_1_0#1#0@0| () T@U)
(declare-fun |b#1_0_1_0_0@0| () Bool)
(declare-fun |z#0| () T@U)
(declare-fun |_mcc#4#1_0_0@0| () T@U)
(declare-fun |_mcc#8#1_0_1_0_0@0| () T@U)
(declare-fun |_mcc#9#1_0_1_0_0@0| () Bool)
(declare-fun |_mcc#10#1_0_1_0_0@0| () T@U)
(declare-fun |let#1_0_1_0_0#0#0| () Bool)
(declare-fun |_mcc#2#1_0_0@0| () T@U)
(declare-fun |_mcc#41#1_0_0_1_0_0@0| () T@U)
(declare-fun |_mcc#40#1_0_0_1_0_0@0| () Bool)
(declare-fun |_mcc#44#1_0_0_1_0_1_0_0_0@0| () Int)
(declare-fun |_mcc#45#1_0_0_1_0_1_0_0_0@0| () T@U)
(declare-fun |n#1_0_0_1_0_1_0_0_0@0| () Int)
(declare-fun |let#1_0_0_1_0_1_0_0_0#0#0| () Int)
(declare-fun |a#1_0_0_1_0_1_1_0#0#0@0| () T@U)
(declare-fun |a#1_0_0_1_0_1_1_0#1#0@0| () T@U)
(declare-fun |b#1_0_0_1_0@0| () Bool)
(declare-fun |let#1_0_0_1_0#0#0| () Bool)
(declare-fun |_mcc#15#1_0_0_0@0| () Bool)
(declare-fun |_mcc#49#1_0_0_0_0_0@0| () T@U)
(declare-fun |_mcc#48#1_0_0_0_0_0@0| () Bool)
(declare-fun |_mcc#52#1_0_0_0_0_1_0_0_0@0| () Int)
(declare-fun |_mcc#53#1_0_0_0_0_1_0_0_0@0| () T@U)
(declare-fun |n#1_0_0_0_0_1_0_0_0@0| () Int)
(declare-fun |let#1_0_0_0_0_1_0_0_0#0#0| () Int)
(declare-fun |a#1_0_0_0_0_1_1_0#0#0@0| () T@U)
(declare-fun |a#1_0_0_0_0_1_1_0#1#0@0| () T@U)
(declare-fun |b#1_0_0_0_0@0| () Bool)
(declare-fun |_mcc#23#1_0_0_0_0@0| () T@U)
(declare-fun |_mcc#24#1_0_0_0_0@0| () Bool)
(declare-fun |_mcc#25#1_0_0_0_0@0| () T@U)
(declare-fun |let#1_0_0_0_0#0#0| () Bool)
(declare-fun |_mcc#14#1_0_0_0@0| () T@U)
(declare-fun |_mcc#16#1_0_0_0@0| () T@U)
(declare-fun |y#0| () T@U)
(declare-fun |_mcc#3#1_0_0@0| () Bool)
(declare-fun |x#0@@1| () T@U)
(declare-fun |_mcc#0#1_0@0| () Int)
(declare-fun |let#1_0#0#0| () Int)
(declare-fun |i#1_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () Int)
(declare-fun |let#0_0#0#0| () Int)
(declare-fun |i#0_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MultipleNestedMatch)
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
 (=> (= (ControlFlow 0 0) 94) (let ((anon70_Else_correct true))
(let ((anon70_Then_correct true))
(let ((anon69_Else_correct  (=> (or (not (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 84) 82) anon70_Then_correct) (=> (= (ControlFlow 0 84) 83) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 81) (- 0 80))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon68_Then_correct  (=> (= |_mcc#32#1_0_1_0_0_0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 85) 81) anon69_Then_correct) (=> (= (ControlFlow 0 85) 84) anon69_Else_correct)))))
(let ((anon73_Else_correct true))
(let ((anon73_Then_correct  (=> (and (= |_mcc#33#1_0_1_0_0_0@0| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#36#1_0_1_0_0_1_0_0_0@0|)) |_mcc#37#1_0_1_0_0_1_0_0_0@0|)) (<= (LitInt 0) |_mcc#36#1_0_1_0_0_1_0_0_0@0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#37#1_0_1_0_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#37#1_0_1_0_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (<= (LitInt 0) |n#1_0_1_0_0_1_0_0_0@0|)) (and (and (= |let#1_0_1_0_0_1_0_0_0#0#0| |_mcc#36#1_0_1_0_0_1_0_0_0@0|) ($Is intType (int_2_U |let#1_0_1_0_0_1_0_0_0#0#0|) Tclass._System.nat)) (and (= |n#1_0_1_0_0_1_0_0_0@0| |let#1_0_1_0_0_1_0_0_0#0#0|) (= (ControlFlow 0 75) (- 0 74))))) ($Is intType (int_2_U (+ |n#1_0_1_0_0_1_0_0_0@0| 1)) Tclass._System.nat)))))
(let ((anon72_Else_correct  (=> (or (not (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 77) 75) anon73_Then_correct) (=> (= (ControlFlow 0 77) 76) anon73_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 73) (- 0 72))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon71_Then_correct  (=> (= |_mcc#32#1_0_1_0_0_0@0| (U_2_bool (Lit boolType (bool_2_U false)))) (and (=> (= (ControlFlow 0 78) 73) anon72_Then_correct) (=> (= (ControlFlow 0 78) 77) anon72_Else_correct)))))
(let ((anon75_Else_correct true))
(let ((anon75_Then_correct  (=> (and (= |_mcc#33#1_0_1_0_0_0@0| (|#_module.List.Cons| |a#1_0_1_0_0_1_1_0#0#0@0| |a#1_0_1_0_0_1_1_0#1#0@0|)) (= (ControlFlow 0 68) (- 0 67))) false)))
(let ((anon74_Else_correct  (=> (or (not (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 70) 68) anon75_Then_correct) (=> (= (ControlFlow 0 70) 69) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (and (= |_mcc#33#1_0_1_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 66) (- 0 65))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon71_Else_correct  (=> (= |_mcc#32#1_0_1_0_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U false))))) (and (=> (= (ControlFlow 0 71) 66) anon74_Then_correct) (=> (= (ControlFlow 0 71) 70) anon74_Else_correct)))))
(let ((anon68_Else_correct  (=> (= |_mcc#32#1_0_1_0_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 79) 78) anon71_Then_correct) (=> (= (ControlFlow 0 79) 71) anon71_Else_correct)))))
(let ((anon67_Then_correct  (=> (= (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |b#1_0_1_0_0@0|)) ($Box DatatypeTypeType |z#0|)) (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |_mcc#32#1_0_1_0_0_0@0|)) ($Box DatatypeTypeType |_mcc#33#1_0_1_0_0_0@0|))) (=> (and ($Is DatatypeTypeType |_mcc#33#1_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#33#1_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (and (=> (= (ControlFlow 0 86) 85) anon68_Then_correct) (=> (= (ControlFlow 0 86) 79) anon68_Else_correct))))))
(let ((anon67_Else_correct true))
(let ((anon66_Then_correct  (=> (= |_mcc#4#1_0_0@0| (|#_module.Tree.Branch| |_mcc#8#1_0_1_0_0@0| |_mcc#9#1_0_1_0_0@0| |_mcc#10#1_0_1_0_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#8#1_0_1_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#8#1_0_1_0_0@0| Tclass._module.Tree $Heap)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#10#1_0_1_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#10#1_0_1_0_0@0| Tclass._module.Tree $Heap)) (= |let#1_0_1_0_0#0#0| |_mcc#9#1_0_1_0_0@0|)) (and ($Is boolType (bool_2_U |let#1_0_1_0_0#0#0|) TBool) (= |b#1_0_1_0_0@0| |let#1_0_1_0_0#0#0|))) (and (=> (= (ControlFlow 0 87) 86) anon67_Then_correct) (=> (= (ControlFlow 0 87) 64) anon67_Else_correct)))))))
(let ((anon66_Else_correct true))
(let ((anon65_Else_correct  (=> (or (not (= |_mcc#4#1_0_0@0| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 88) 87) anon66_Then_correct) (=> (= (ControlFlow 0 88) 63) anon66_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (= |_mcc#4#1_0_0@0| |#_module.Tree.Leaf|) (= (ControlFlow 0 62) (- 0 61))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon64_Then_correct  (=> (= |_mcc#2#1_0_0@0| |#_module.Tree.Leaf|) (and (=> (= (ControlFlow 0 89) 62) anon65_Then_correct) (=> (= (ControlFlow 0 89) 88) anon65_Else_correct)))))
(let ((anon81_Else_correct true))
(let ((anon81_Then_correct true))
(let ((anon80_Else_correct  (=> (or (not (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 55) 53) anon81_Then_correct) (=> (= (ControlFlow 0 55) 54) anon81_Else_correct)))))
(let ((anon80_Then_correct  (=> (and (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 52) (- 0 51))) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat))))
(let ((anon79_Then_correct  (=> (= |_mcc#40#1_0_0_1_0_0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 56) 52) anon80_Then_correct) (=> (= (ControlFlow 0 56) 55) anon80_Else_correct)))))
(let ((anon84_Else_correct true))
(let ((anon84_Then_correct  (=> (and (= |_mcc#41#1_0_0_1_0_0@0| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#44#1_0_0_1_0_1_0_0_0@0|)) |_mcc#45#1_0_0_1_0_1_0_0_0@0|)) (<= (LitInt 0) |_mcc#44#1_0_0_1_0_1_0_0_0@0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#45#1_0_0_1_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#45#1_0_0_1_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (<= (LitInt 0) |n#1_0_0_1_0_1_0_0_0@0|)) (and (and (= |let#1_0_0_1_0_1_0_0_0#0#0| |_mcc#44#1_0_0_1_0_1_0_0_0@0|) ($Is intType (int_2_U |let#1_0_0_1_0_1_0_0_0#0#0|) Tclass._System.nat)) (and (= |n#1_0_0_1_0_1_0_0_0@0| |let#1_0_0_1_0_1_0_0_0#0#0|) (= (ControlFlow 0 46) (- 0 45))))) ($Is intType (int_2_U (+ |n#1_0_0_1_0_1_0_0_0@0| 1)) Tclass._System.nat)))))
(let ((anon83_Else_correct  (=> (or (not (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 48) 46) anon84_Then_correct) (=> (= (ControlFlow 0 48) 47) anon84_Else_correct)))))
(let ((anon83_Then_correct  (=> (and (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 44) (- 0 43))) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat))))
(let ((anon82_Then_correct  (=> (= |_mcc#40#1_0_0_1_0_0@0| (U_2_bool (Lit boolType (bool_2_U false)))) (and (=> (= (ControlFlow 0 49) 44) anon83_Then_correct) (=> (= (ControlFlow 0 49) 48) anon83_Else_correct)))))
(let ((anon86_Else_correct true))
(let ((anon86_Then_correct  (=> (and (= |_mcc#41#1_0_0_1_0_0@0| (|#_module.List.Cons| |a#1_0_0_1_0_1_1_0#0#0@0| |a#1_0_0_1_0_1_1_0#1#0@0|)) (= (ControlFlow 0 39) (- 0 38))) false)))
(let ((anon85_Else_correct  (=> (or (not (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 41) 39) anon86_Then_correct) (=> (= (ControlFlow 0 41) 40) anon86_Else_correct)))))
(let ((anon85_Then_correct  (=> (and (= |_mcc#41#1_0_0_1_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 37) (- 0 36))) ($Is intType (int_2_U (LitInt 2)) Tclass._System.nat))))
(let ((anon82_Else_correct  (=> (= |_mcc#40#1_0_0_1_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U false))))) (and (=> (= (ControlFlow 0 42) 37) anon85_Then_correct) (=> (= (ControlFlow 0 42) 41) anon85_Else_correct)))))
(let ((anon79_Else_correct  (=> (= |_mcc#40#1_0_0_1_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 50) 49) anon82_Then_correct) (=> (= (ControlFlow 0 50) 42) anon82_Else_correct)))))
(let ((anon78_Then_correct  (=> (= (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |b#1_0_0_1_0@0|)) ($Box DatatypeTypeType |z#0|)) (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |_mcc#40#1_0_0_1_0_0@0|)) ($Box DatatypeTypeType |_mcc#41#1_0_0_1_0_0@0|))) (=> (and ($Is DatatypeTypeType |_mcc#41#1_0_0_1_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#41#1_0_0_1_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (and (=> (= (ControlFlow 0 57) 56) anon79_Then_correct) (=> (= (ControlFlow 0 57) 50) anon79_Else_correct))))))
(let ((anon78_Else_correct true))
(let ((anon77_Then_correct  (=> (and (and (= |_mcc#4#1_0_0@0| |#_module.Tree.Leaf|) (= |let#1_0_0_1_0#0#0| |_mcc#15#1_0_0_0@0|)) (and ($Is boolType (bool_2_U |let#1_0_0_1_0#0#0|) TBool) (= |b#1_0_0_1_0@0| |let#1_0_0_1_0#0#0|))) (and (=> (= (ControlFlow 0 58) 57) anon78_Then_correct) (=> (= (ControlFlow 0 58) 35) anon78_Else_correct)))))
(let ((anon91_Else_correct true))
(let ((anon91_Then_correct true))
(let ((anon90_Else_correct  (=> (or (not (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 30) 28) anon91_Then_correct) (=> (= (ControlFlow 0 30) 29) anon91_Else_correct)))))
(let ((anon90_Then_correct  (=> (and (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 27) (- 0 26))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon89_Then_correct  (=> (= |_mcc#48#1_0_0_0_0_0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (and (=> (= (ControlFlow 0 31) 27) anon90_Then_correct) (=> (= (ControlFlow 0 31) 30) anon90_Else_correct)))))
(let ((anon94_Else_correct true))
(let ((anon94_Then_correct  (=> (and (= |_mcc#49#1_0_0_0_0_0@0| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#52#1_0_0_0_0_1_0_0_0@0|)) |_mcc#53#1_0_0_0_0_1_0_0_0@0|)) (<= (LitInt 0) |_mcc#52#1_0_0_0_0_1_0_0_0@0|)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#53#1_0_0_0_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#53#1_0_0_0_0_1_0_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (<= (LitInt 0) |n#1_0_0_0_0_1_0_0_0@0|)) (and (and (= |let#1_0_0_0_0_1_0_0_0#0#0| |_mcc#52#1_0_0_0_0_1_0_0_0@0|) ($Is intType (int_2_U |let#1_0_0_0_0_1_0_0_0#0#0|) Tclass._System.nat)) (and (= |n#1_0_0_0_0_1_0_0_0@0| |let#1_0_0_0_0_1_0_0_0#0#0|) (= (ControlFlow 0 21) (- 0 20))))) ($Is intType (int_2_U (+ |n#1_0_0_0_0_1_0_0_0@0| 1)) Tclass._System.nat)))))
(let ((anon93_Else_correct  (=> (or (not (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 23) 21) anon94_Then_correct) (=> (= (ControlFlow 0 23) 22) anon94_Else_correct)))))
(let ((anon93_Then_correct  (=> (and (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 19) (- 0 18))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon92_Then_correct  (=> (= |_mcc#48#1_0_0_0_0_0@0| (U_2_bool (Lit boolType (bool_2_U false)))) (and (=> (= (ControlFlow 0 24) 19) anon93_Then_correct) (=> (= (ControlFlow 0 24) 23) anon93_Else_correct)))))
(let ((anon96_Else_correct true))
(let ((anon96_Then_correct  (=> (and (= |_mcc#49#1_0_0_0_0_0@0| (|#_module.List.Cons| |a#1_0_0_0_0_1_1_0#0#0@0| |a#1_0_0_0_0_1_1_0#1#0@0|)) (= (ControlFlow 0 14) (- 0 13))) false)))
(let ((anon95_Else_correct  (=> (or (not (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 16) 14) anon96_Then_correct) (=> (= (ControlFlow 0 16) 15) anon96_Else_correct)))))
(let ((anon95_Then_correct  (=> (and (= |_mcc#49#1_0_0_0_0_0@0| |#_module.List.Nil|) (= (ControlFlow 0 12) (- 0 11))) ($Is intType (int_2_U (LitInt 1)) Tclass._System.nat))))
(let ((anon92_Else_correct  (=> (= |_mcc#48#1_0_0_0_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U false))))) (and (=> (= (ControlFlow 0 17) 12) anon95_Then_correct) (=> (= (ControlFlow 0 17) 16) anon95_Else_correct)))))
(let ((anon89_Else_correct  (=> (= |_mcc#48#1_0_0_0_0_0@0|  (not (U_2_bool (Lit boolType (bool_2_U true))))) (and (=> (= (ControlFlow 0 25) 24) anon92_Then_correct) (=> (= (ControlFlow 0 25) 17) anon92_Else_correct)))))
(let ((anon88_Then_correct  (=> (= (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |b#1_0_0_0_0@0|)) ($Box DatatypeTypeType |z#0|)) (|#_System._tuple#2._#Make2| ($Box boolType (bool_2_U |_mcc#48#1_0_0_0_0_0@0|)) ($Box DatatypeTypeType |_mcc#49#1_0_0_0_0_0@0|))) (=> (and ($Is DatatypeTypeType |_mcc#49#1_0_0_0_0_0@0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |_mcc#49#1_0_0_0_0_0@0| (Tclass._module.List Tclass._System.nat) $Heap)) (and (=> (= (ControlFlow 0 32) 31) anon89_Then_correct) (=> (= (ControlFlow 0 32) 25) anon89_Else_correct))))))
(let ((anon88_Else_correct true))
(let ((anon87_Then_correct  (=> (= |_mcc#4#1_0_0@0| (|#_module.Tree.Branch| |_mcc#23#1_0_0_0_0@0| |_mcc#24#1_0_0_0_0@0| |_mcc#25#1_0_0_0_0@0|)) (=> (and ($Is DatatypeTypeType |_mcc#23#1_0_0_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#23#1_0_0_0_0@0| Tclass._module.Tree $Heap)) (=> (and (and (and ($Is DatatypeTypeType |_mcc#25#1_0_0_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#25#1_0_0_0_0@0| Tclass._module.Tree $Heap)) (= |let#1_0_0_0_0#0#0| |_mcc#24#1_0_0_0_0@0|)) (and ($Is boolType (bool_2_U |let#1_0_0_0_0#0#0|) TBool) (= |b#1_0_0_0_0@0| |let#1_0_0_0_0#0#0|))) (and (=> (= (ControlFlow 0 33) 32) anon88_Then_correct) (=> (= (ControlFlow 0 33) 10) anon88_Else_correct)))))))
(let ((anon87_Else_correct true))
(let ((anon77_Else_correct  (=> (or (not (= |_mcc#4#1_0_0@0| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 34) 33) anon87_Then_correct) (=> (= (ControlFlow 0 34) 9) anon87_Else_correct)))))
(let ((anon76_Then_correct  (=> (= |_mcc#2#1_0_0@0| (|#_module.Tree.Branch| |_mcc#14#1_0_0_0@0| |_mcc#15#1_0_0_0@0| |_mcc#16#1_0_0_0@0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#14#1_0_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#14#1_0_0_0@0| Tclass._module.Tree $Heap)) (and ($Is DatatypeTypeType |_mcc#16#1_0_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#16#1_0_0_0@0| Tclass._module.Tree $Heap))) (and (=> (= (ControlFlow 0 59) 58) anon77_Then_correct) (=> (= (ControlFlow 0 59) 34) anon77_Else_correct))))))
(let ((anon76_Else_correct true))
(let ((anon64_Else_correct  (=> (or (not (= |_mcc#2#1_0_0@0| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 60) 59) anon76_Then_correct) (=> (= (ControlFlow 0 60) 8) anon76_Else_correct)))))
(let ((anon63_Then_correct  (=> (= |y#0| (|#_module.Tree.Branch| |_mcc#2#1_0_0@0| |_mcc#3#1_0_0@0| |_mcc#4#1_0_0@0|)) (=> (and (and ($Is DatatypeTypeType |_mcc#2#1_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#2#1_0_0@0| Tclass._module.Tree $Heap)) (and ($Is DatatypeTypeType |_mcc#4#1_0_0@0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |_mcc#4#1_0_0@0| Tclass._module.Tree $Heap))) (and (=> (= (ControlFlow 0 90) 89) anon64_Then_correct) (=> (= (ControlFlow 0 90) 60) anon64_Else_correct))))))
(let ((anon63_Else_correct true))
(let ((anon62_Else_correct  (=> (or (not (= |y#0| |#_module.Tree.Leaf|)) (not true)) (and (=> (= (ControlFlow 0 91) 90) anon63_Then_correct) (=> (= (ControlFlow 0 91) 7) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (and (= |y#0| |#_module.Tree.Leaf|) (= (ControlFlow 0 6) (- 0 5))) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat))))
(let ((anon61_Then_correct  (=> (and (and (= |x#0@@1| (|#_module.Alt.A| |_mcc#0#1_0@0|)) (= |let#1_0#0#0| |_mcc#0#1_0@0|)) (and ($Is intType (int_2_U |let#1_0#0#0|) TInt) (= |i#1_0@0| |let#1_0#0#0|))) (and (=> (= (ControlFlow 0 92) 6) anon62_Then_correct) (=> (= (ControlFlow 0 92) 91) anon62_Else_correct)))))
(let ((anon97_Else_correct true))
(let ((anon97_Then_correct  (=> (= |x#0@@1| (|#_module.Alt.B| |_mcc#1#0_0@0|)) (=> (and (and (= |let#0_0#0#0| |_mcc#1#0_0@0|) ($Is intType (int_2_U |let#0_0#0#0|) TInt)) (and (= |i#0_0@0| |let#0_0#0#0|) (= (ControlFlow 0 2) (- 0 1)))) ($Is intType (int_2_U (LitInt 3)) Tclass._System.nat)))))
(let ((anon61_Else_correct  (=> (or (not (= |x#0@@1| (|#_module.Alt.A| |_mcc#0#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 4) 2) anon97_Then_correct) (=> (= (ControlFlow 0 4) 3) anon97_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 93) 92) anon61_Then_correct) (=> (= (ControlFlow 0 93) 4) anon61_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |x#0@@1| Tclass._module.Alt) ($IsAlloc DatatypeTypeType |x#0@@1| Tclass._module.Alt $Heap)) (|$IsA#_module.Alt| |x#0@@1|)) (and (and ($Is DatatypeTypeType |y#0| Tclass._module.Tree) ($IsAlloc DatatypeTypeType |y#0| Tclass._module.Tree $Heap)) (|$IsA#_module.Tree| |y#0|))) (=> (and (and (and (and ($Is DatatypeTypeType |z#0| (Tclass._module.List Tclass._System.nat)) ($IsAlloc DatatypeTypeType |z#0| (Tclass._module.List Tclass._System.nat) $Heap)) (|$IsA#_module.List| |z#0|)) (<= (LitInt 0) |r#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 94) 93))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
