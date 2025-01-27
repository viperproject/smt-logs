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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.uint32 () T@U)
(declare-fun Tagclass._module.IntList () T@U)
(declare-fun |##_module.IntList.Nil| () T@U)
(declare-fun |##_module.IntList.Cons| () T@U)
(declare-fun tytagFamily$uint32 () T@U)
(declare-fun tytagFamily$IntList () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.IntList.Cons| (Int T@U) T@U)
(declare-fun Tclass._module.IntList () T@U)
(declare-fun Tclass._module.uint32 () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.IntList.Nil| () T@U)
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
(declare-fun _module.IntList.Nil_q (T@U) Bool)
(declare-fun _module.IntList.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |$IsA#_module.IntList| (T@U) Bool)
(declare-fun _module.IntList.hd (T@U) Int)
(declare-fun _module.IntList.tl (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.uint32 Tagclass._module.IntList |##_module.IntList.Nil| |##_module.IntList.Cons| tytagFamily$uint32 tytagFamily$IntList)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#56#0#0| Int) (|a#56#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.IntList.Cons| |a#56#0#0| |a#56#1#0|) Tclass._module.IntList)  (and ($Is intType (int_2_U |a#56#0#0|) Tclass._module.uint32) ($Is DatatypeTypeType |a#56#1#0| Tclass._module.IntList)))
 :qid |datatypesdfy.116:10|
 :skolemid |812|
 :pattern ( ($Is DatatypeTypeType (|#_module.IntList.Cons| |a#56#0#0| |a#56#1#0|) Tclass._module.IntList))
)))
(assert (forall ((|i#0| T@U) ($h T@U) ) (! ($IsAlloc intType |i#0| Tclass._module.uint32 $h)
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( ($IsAlloc intType |i#0| Tclass._module.uint32 $h))
)))
(assert (= (DatatypeCtorId |#_module.IntList.Nil|) |##_module.IntList.Nil|))
(assert ($Is DatatypeTypeType |#_module.IntList.Nil| Tclass._module.IntList))
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
(assert (forall ((d T@U) ) (! (= (_module.IntList.Nil_q d) (= (DatatypeCtorId d) |##_module.IntList.Nil|))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (_module.IntList.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.IntList.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.IntList.Cons|))
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (_module.IntList.Cons_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.IntList.Cons_q d@@1) (exists ((|a#55#0#0| Int) (|a#55#1#0| T@U) ) (! (= d@@1 (|#_module.IntList.Cons| |a#55#0#0| |a#55#1#0|))
 :qid |datatypesdfy.116:10|
 :skolemid |810|
)))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( (_module.IntList.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.IntList.Nil_q d@@2) (= d@@2 |#_module.IntList.Nil|))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (_module.IntList.Nil_q d@@2))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (|$IsA#_module.IntList| d@@3) (or (_module.IntList.Nil_q d@@3) (_module.IntList.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( (|$IsA#_module.IntList| d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> ($Is DatatypeTypeType d@@4 Tclass._module.IntList) (or (_module.IntList.Nil_q d@@4) (_module.IntList.Cons_q d@@4)))
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (_module.IntList.Cons_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.IntList))
 :pattern ( (_module.IntList.Nil_q d@@4) ($Is DatatypeTypeType d@@4 Tclass._module.IntList))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#54#0#0| Int) (|a#54#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.IntList.Cons| |a#54#0#0| |a#54#1#0|)) |##_module.IntList.Cons|)
 :qid |datatypesdfy.116:10|
 :skolemid |808|
 :pattern ( (|#_module.IntList.Cons| |a#54#0#0| |a#54#1#0|))
)))
(assert (forall ((|a#58#0#0| Int) (|a#58#1#0| T@U) ) (! (= (_module.IntList.hd (|#_module.IntList.Cons| |a#58#0#0| |a#58#1#0|)) |a#58#0#0|)
 :qid |datatypesdfy.116:10|
 :skolemid |816|
 :pattern ( (|#_module.IntList.Cons| |a#58#0#0| |a#58#1#0|))
)))
(assert (forall ((|a#59#0#0| Int) (|a#59#1#0| T@U) ) (! (= (_module.IntList.tl (|#_module.IntList.Cons| |a#59#0#0| |a#59#1#0|)) |a#59#1#0|)
 :qid |datatypesdfy.116:10|
 :skolemid |817|
 :pattern ( (|#_module.IntList.Cons| |a#59#0#0| |a#59#1#0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#60#0#0| Int) (|a#60#1#0| T@U) ) (! (< (DtRank |a#60#1#0|) (DtRank (|#_module.IntList.Cons| |a#60#0#0| |a#60#1#0|)))
 :qid |datatypesdfy.116:10|
 :skolemid |818|
 :pattern ( (|#_module.IntList.Cons| |a#60#0#0| |a#60#1#0|))
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
 :skolemid |874|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@5 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d@@5 Tclass._module.IntList)) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.IntList $h@@0))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 Tclass._module.IntList $h@@0))
)))
(assert (= (Tag Tclass._module.uint32) Tagclass._module.uint32))
(assert (= (TagFamily Tclass._module.uint32) tytagFamily$uint32))
(assert (= (Tag Tclass._module.IntList) Tagclass._module.IntList))
(assert (= (TagFamily Tclass._module.IntList) tytagFamily$IntList))
(assert (= |#_module.IntList.Nil| (Lit DatatypeTypeType |#_module.IntList.Nil|)))
(assert (forall ((d@@6 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.IntList.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.IntList $h@@1))) ($IsAlloc intType (int_2_U (_module.IntList.hd d@@6)) Tclass._module.uint32 $h@@1))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc intType (int_2_U (_module.IntList.hd d@@6)) Tclass._module.uint32 $h@@1))
)))
(assert (forall ((d@@7 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.IntList.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.IntList $h@@2))) ($IsAlloc DatatypeTypeType (_module.IntList.tl d@@7) Tclass._module.IntList $h@@2))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.IntList.tl d@@7) Tclass._module.IntList $h@@2))
)))
(assert (forall ((|i#0@@0| T@U) ) (! (= ($Is intType |i#0@@0| Tclass._module.uint32)  (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($Is intType |i#0@@0| Tclass._module.uint32))
)))
(assert (forall ((|a#57#0#0| Int) (|a#57#1#0| T@U) ) (! (= (|#_module.IntList.Cons| (LitInt |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|)) (Lit DatatypeTypeType (|#_module.IntList.Cons| |a#57#0#0| |a#57#1#0|)))
 :qid |datatypesdfy.116:10|
 :skolemid |815|
 :pattern ( (|#_module.IntList.Cons| (LitInt |a#57#0#0|) (Lit DatatypeTypeType |a#57#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@len#0@0| () Int)
(declare-fun |newtype$check#0_0_0@0| () Int)
(declare-fun |newtype$check#0_0_1@0| () Int)
(declare-fun |l#0@@0| () T@U)
(declare-fun |_mcc#0#0_0@0| () Int)
(declare-fun |_mcc#1#0_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |tl#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |hd#0_0@0| () Int)
(declare-fun |let#0_1#0#0| () Int)
(declare-fun |call2formal@len#0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun null () T@U)
(declare-fun |newtype$check#0_0@0| () Int)
(declare-fun |newtype$check#1_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |len#0| () Int)
(declare-fun |len_rest#0_0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.IntListLen)
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
 (=> (= (ControlFlow 0 0) 13) (let ((anon8_Else_correct true))
(let ((anon8_Then_correct  (=> (and (< |call2formal@len#0@0| 4294967295) (= |newtype$check#0_0_0@0| (LitInt 1))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= (LitInt 0) |newtype$check#0_0_0@0|) (< |newtype$check#0_0_0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_0_0@0|) (< |newtype$check#0_0_0@0| 4294967296)) (=> (and (= |newtype$check#0_0_1@0| (+ |call2formal@len#0@0| 1)) (= (ControlFlow 0 5) (- 0 4))) (and (<= (LitInt 0) |newtype$check#0_0_1@0|) (< |newtype$check#0_0_1@0| 4294967296))))))))
(let ((anon7_Then_correct  (=> (= |l#0@@0| (|#_module.IntList.Cons| |_mcc#0#0_0@0| |_mcc#1#0_0@0|)) (=> (and (and (<= (LitInt 0) |_mcc#0#0_0@0|) (< |_mcc#0#0_0@0| 4294967296)) (and ($Is DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.IntList) ($IsAlloc DatatypeTypeType |_mcc#1#0_0@0| Tclass._module.IntList $Heap))) (=> (and (and (and (and ($Is DatatypeTypeType |tl#0_0@0| Tclass._module.IntList) ($IsAlloc DatatypeTypeType |tl#0_0@0| Tclass._module.IntList $Heap)) (= |let#0_0#0#0| |_mcc#1#0_0@0|)) (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.IntList) (= |tl#0_0@0| |let#0_0#0#0|))) (and (and (and (<= (LitInt 0) |hd#0_0@0|) (< |hd#0_0@0| 4294967296)) (= |let#0_1#0#0| |_mcc#0#0_0@0|)) (and ($Is intType (int_2_U |let#0_1#0#0|) Tclass._module.uint32) (= |hd#0_0@0| |let#0_1#0#0|)))) (and (=> (= (ControlFlow 0 8) (- 0 10)) (< (DtRank |tl#0_0@0|) (DtRank |l#0@@0|))) (=> (< (DtRank |tl#0_0@0|) (DtRank |l#0@@0|)) (=> (and (and (<= (LitInt 0) |call2formal@len#0|) (< |call2formal@len#0| 4294967296)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (<= (LitInt 0) |call2formal@len#0@0|) (< |call2formal@len#0@0| 4294967296)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |datatypesdfy.118:8|
 :skolemid |532|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0_0@0| (LitInt 4294967295)))) (and (=> (= (ControlFlow 0 8) (- 0 9)) (and (<= (LitInt 0) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 4294967296))) (=> (and (<= (LitInt 0) |newtype$check#0_0@0|) (< |newtype$check#0_0@0| 4294967296)) (and (=> (= (ControlFlow 0 8) 5) anon8_Then_correct) (=> (= (ControlFlow 0 8) 7) anon8_Else_correct)))))))))))))
(let ((anon7_Else_correct true))
(let ((anon6_Else_correct  (=> (or (not (= |l#0@@0| |#_module.IntList.Nil|)) (not true)) (and (=> (= (ControlFlow 0 11) 8) anon7_Then_correct) (=> (= (ControlFlow 0 11) 3) anon7_Else_correct)))))
(let ((anon6_Then_correct  (=> (= |l#0@@0| |#_module.IntList.Nil|) (=> (and (= |newtype$check#1_0@0| (LitInt 0)) (= (ControlFlow 0 2) (- 0 1))) (and (<= (LitInt 0) |newtype$check#1_0@0|) (< |newtype$check#1_0@0| 4294967296))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 12) 2) anon6_Then_correct) (=> (= (ControlFlow 0 12) 11) anon6_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |l#0@@0| Tclass._module.IntList) ($IsAlloc DatatypeTypeType |l#0@@0| Tclass._module.IntList $Heap)) (|$IsA#_module.IntList| |l#0@@0|)) (and (<= (LitInt 0) |len#0|) (< |len#0| 4294967296))) (and (and (and (<= (LitInt 0) |len_rest#0_0|) (< |len_rest#0_0| 4294967296)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 13) 12)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
