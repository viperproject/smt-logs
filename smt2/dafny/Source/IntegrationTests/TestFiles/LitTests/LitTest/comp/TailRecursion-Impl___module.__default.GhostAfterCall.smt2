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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mod (Int Int) Int)
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
(assert (distinct alloc Tagclass._System.nat tytagFamily$nat)
)
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
 :skolemid |699|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |700|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |598|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |596|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |607|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0|)))
 :qid |unknown.0:0|
 :skolemid |925|
 :pattern ( ($Is intType |x#0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) ) (!  (=> ($HeapSuccGhost h@@0 k@@0) (and ($HeapSucc h@@0 k@@0) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@0 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |689|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@0 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |690|
 :pattern ( ($HeapSuccGhost h@@0 k@@0))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |698|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |606|
 :pattern ( ($Box T@@1 x@@5))
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
 :skolemid |1317|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mod x@@6 y) (mod x@@6 y))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |921|
 :pattern ( (Mod x@@6 y))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |599|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |597|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |acc#0| () Int)
(declare-fun |u#0_0@2| () Int)
(declare-fun |u#0_0| () Int)
(declare-fun |g#0@0| () Int)
(declare-fun |u#0_0@1| () Int)
(declare-fun |u#0_0@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |$decr$loop#1_00@1| () Int)
(declare-fun |$w$loop#1_0@0| () Bool)
(declare-fun |g#0@9| () Int)
(declare-fun |gg#1_0@0| () Int)
(declare-fun |h#1_0@0| () Int)
(declare-fun |$decr_init$loop#1_00@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |g#0@8| () Int)
(declare-fun |g#0@7| () Int)
(declare-fun |g#0@5| () Int)
(declare-fun |g#0@6| () Int)
(declare-fun |g#0@4| () Int)
(declare-fun |g#0@2| () Int)
(declare-fun |g#0@3| () Int)
(declare-fun |n##1_0@0| () Int)
(declare-fun |acc##1_0@0| () Int)
(declare-fun |call3formal@r#0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call3formal@r#0@0| () Int)
(declare-fun |g#0@1| () Int)
(declare-fun |r#0| () Int)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.GhostAfterCall)
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
 (=> (= (ControlFlow 0 0) 57) (let ((anon13_correct true))
(let ((anon45_Else_correct  (=> (and (or (not (= |acc#0| (LitInt 300))) (not true)) (= (ControlFlow 0 45) 43)) anon13_correct)))
(let ((anon45_Then_correct  (=> (= |acc#0| (LitInt 300)) (=> (and (= |u#0_0@2| (+ |u#0_0| 1)) (= (ControlFlow 0 44) 43)) anon13_correct))))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 46) 44) anon45_Then_correct) (=> (= (ControlFlow 0 46) 45) anon45_Else_correct))))
(let ((anon9_correct  (=> (= (ControlFlow 0 48) 46) anon10_correct)))
(let ((anon44_Else_correct  (=> (and (<= 25 |g#0@0|) (= (ControlFlow 0 50) 48)) anon9_correct)))
(let ((anon44_Then_correct  (=> (and (< |g#0@0| 25) (= (ControlFlow 0 49) 48)) anon9_correct)))
(let ((anon43_Else_correct  (=> (or (not (= |acc#0| (LitInt 300))) (not true)) (and (=> (= (ControlFlow 0 51) 49) anon44_Then_correct) (=> (= (ControlFlow 0 51) 50) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (and (= |acc#0| (LitInt 300)) (= (ControlFlow 0 47) 46)) anon10_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 52) 47) anon43_Then_correct) (=> (= (ControlFlow 0 52) 51) anon43_Else_correct))))
(let ((anon42_Else_correct  (=> (and (or (not (= |acc#0| (LitInt 300))) (not true)) (= (ControlFlow 0 54) 52)) anon4_correct)))
(let ((anon42_Then_correct  (=> (= |acc#0| (LitInt 300)) (=> (and (= |u#0_0@1| (+ |u#0_0@0| 1)) (= (ControlFlow 0 53) 52)) anon4_correct))))
(let ((anon41_Then_correct  (=> (and (= |n#0| (LitInt 0)) (= |u#0_0@0| (LitInt 20))) (and (=> (= (ControlFlow 0 55) 53) anon42_Then_correct) (=> (= (ControlFlow 0 55) 54) anon42_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U (< 15 14)))) (= |$decr$loop#1_00@1| (LitInt (- 14 15)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (<= 0 |$decr$loop#1_00@1|) (= (LitInt (- 14 15)) |$decr$loop#1_00@1|))) (=> (or (<= 0 |$decr$loop#1_00@1|) (= (LitInt (- 14 15)) |$decr$loop#1_00@1|)) (=> (= (ControlFlow 0 5) (- 0 4)) (< (LitInt (- 14 15)) |$decr$loop#1_00@1|)))))))
(let ((anon55_Then_correct true))
(let ((anon54_Else_correct  (=> |$w$loop#1_0@0| (and (=> (= (ControlFlow 0 7) 3) anon55_Then_correct) (=> (= (ControlFlow 0 7) 5) anon55_Else_correct)))))
(let ((anon54_Then_correct true))
(let ((anon53_LoopBody_correct  (and (=> (= (ControlFlow 0 8) 2) anon54_Then_correct) (=> (= (ControlFlow 0 8) 7) anon54_Else_correct))))
(let ((anon53_LoopDone_correct true))
(let ((anon53_LoopHead_correct  (=> (and (and (and (and (and (not false) (and (<= 13 |g#0@9|) (< |g#0@9| 25))) (= |gg#1_0@0| 10)) (= |h#1_0@0| 8)) (= |$decr_init$loop#1_00@0| (- 0 1))) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0)))
 :qid |TailRecursiondfy.108:5|
 :skolemid |1135|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSuccGhost $Heap@0 $Heap@0)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |TailRecursiondfy.108:5|
 :skolemid |1136|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) $f@@0))
)) (<= (LitInt (- 14 15)) |$decr_init$loop#1_00@0|)))) (and (=> (= (ControlFlow 0 9) 1) anon53_LoopDone_correct) (=> (= (ControlFlow 0 9) 8) anon53_LoopBody_correct)))))
(let ((anon35_correct  (=> (and (= |$decr_init$loop#1_00@0| (LitInt (- 14 15))) (= (ControlFlow 0 10) 9)) anon53_LoopHead_correct)))
(let ((anon52_Else_correct  (=> (and (or (not (= |n#0| (LitInt 1))) (not true)) (= (ControlFlow 0 13) 10)) anon35_correct)))
(let ((anon52_Then_correct  (=> (= |n#0| (LitInt 1)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (U_2_bool (Lit boolType (bool_2_U true)))) (=> (U_2_bool (Lit boolType (bool_2_U true))) (=> (= (ControlFlow 0 11) 10) anon35_correct))))))
(let ((anon32_correct  (and (=> (= (ControlFlow 0 14) 11) anon52_Then_correct) (=> (= (ControlFlow 0 14) 13) anon52_Else_correct))))
(let ((anon51_Else_correct  (=> (and (or (not (= |n#0| (LitInt 0))) (not true)) (= (ControlFlow 0 16) 14)) anon32_correct)))
(let ((anon51_Then_correct  (=> (and (= |n#0| (LitInt 0)) (= (ControlFlow 0 15) 14)) anon32_correct)))
(let ((anon29_correct  (and (=> (= (ControlFlow 0 17) 15) anon51_Then_correct) (=> (= (ControlFlow 0 17) 16) anon51_Else_correct))))
(let ((anon50_Else_correct  (=> (and (or (not (= (Mod |n#0| (LitInt 5)) (LitInt 0))) (not true)) (= (ControlFlow 0 19) 17)) anon29_correct)))
(let ((anon50_Then_correct  (=> (and (= (Mod |n#0| (LitInt 5)) (LitInt 0)) (= (ControlFlow 0 18) 17)) anon29_correct)))
(let ((anon26_correct  (=> (= |g#0@9| (+ |g#0@8| 1)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (or (not (= (LitInt 5) 0)) (not true))) (=> (or (not (= (LitInt 5) 0)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon50_Then_correct) (=> (= (ControlFlow 0 20) 19) anon50_Else_correct)))))))
(let ((anon25_correct  (=> (and (= |g#0@8| |g#0@7|) (= (ControlFlow 0 23) 20)) anon26_correct)))
(let ((anon49_Else_correct  (=> (or (not (= (Mod |n#0| (LitInt 3)) (LitInt 0))) (not true)) (=> (and (= |g#0@7| |g#0@5|) (= (ControlFlow 0 25) 23)) anon25_correct))))
(let ((anon49_Then_correct  (=> (and (and (= (Mod |n#0| (LitInt 3)) (LitInt 0)) (= |g#0@6| (+ |g#0@5| 1))) (and (= |g#0@7| |g#0@6|) (= (ControlFlow 0 24) 23))) anon25_correct)))
(let ((anon48_Else_correct  (=> (or (not (= (Mod |n#0| (LitInt 2)) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (and (=> (= (ControlFlow 0 26) 24) anon49_Then_correct) (=> (= (ControlFlow 0 26) 25) anon49_Else_correct)))))))
(let ((anon48_Then_correct  (=> (= (Mod |n#0| (LitInt 2)) (LitInt 0)) (=> (and (= |g#0@8| |g#0@5|) (= (ControlFlow 0 22) 20)) anon26_correct))))
(let ((anon20_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 28) 22) anon48_Then_correct) (=> (= (ControlFlow 0 28) 26) anon48_Else_correct))))))
(let ((anon19_correct  (=> (and (= |g#0@5| |g#0@4|) (= (ControlFlow 0 31) 28)) anon20_correct)))
(let ((anon47_Else_correct  (=> (or (not (= (Mod |g#0@2| (LitInt 3)) (LitInt 0))) (not true)) (=> (and (= |g#0@4| |g#0@2|) (= (ControlFlow 0 33) 31)) anon19_correct))))
(let ((anon47_Then_correct  (=> (and (and (= (Mod |g#0@2| (LitInt 3)) (LitInt 0)) (= |g#0@3| (+ |g#0@2| 1))) (and (= |g#0@4| |g#0@3|) (= (ControlFlow 0 32) 31))) anon19_correct)))
(let ((anon46_Else_correct  (=> (or (not (= (Mod |g#0@2| (LitInt 2)) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= (LitInt 3) 0)) (not true))) (=> (or (not (= (LitInt 3) 0)) (not true)) (and (=> (= (ControlFlow 0 34) 32) anon47_Then_correct) (=> (= (ControlFlow 0 34) 33) anon47_Else_correct)))))))
(let ((anon46_Then_correct  (=> (= (Mod |g#0@2| (LitInt 2)) (LitInt 0)) (=> (and (= |g#0@5| |g#0@2|) (= (ControlFlow 0 30) 28)) anon20_correct))))
(let ((anon41_Else_correct  (=> (or (not (= |n#0| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 42)) ($Is intType (int_2_U (- |n#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0| 1)) Tclass._System.nat) (=> (= |n##1_0@0| (- |n#0| 1)) (and (=> (= (ControlFlow 0 36) (- 0 41)) ($Is intType (int_2_U (+ |acc#0| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ |acc#0| 1)) Tclass._System.nat) (=> (= |acc##1_0@0| (+ |acc#0| 1)) (and (=> (= (ControlFlow 0 36) (- 0 40)) (or (<= 0 |n#0|) (= |n##1_0@0| |n#0|))) (=> (or (<= 0 |n#0|) (= |n##1_0@0| |n#0|)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (or (or (<= 0 |acc#0|) (< |n##1_0@0| |n#0|)) (= |acc##1_0@0| |acc#0|))) (=> (or (or (<= 0 |acc#0|) (< |n##1_0@0| |n#0|)) (= |acc##1_0@0| |acc#0|)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (or (< |n##1_0@0| |n#0|) (and (= |n##1_0@0| |n#0|) (< |acc##1_0@0| |acc#0|)))) (=> (or (< |n##1_0@0| |n#0|) (and (= |n##1_0@0| |n#0|) (< |acc##1_0@0| |acc#0|))) (=> (<= (LitInt 0) |call3formal@r#0|) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (<= (LitInt 0) |call3formal@r#0@0|)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@2)))
 :qid |TailRecursiondfy.54:25|
 :skolemid |1132|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@2))
)) ($HeapSucc $Heap $Heap@0))) (and (and (= |gg#1_0@0| (LitInt 10)) (= |g#0@1| (+ |g#0@0| 1))) (and (= |h#1_0@0| (LitInt 8)) (= |g#0@2| (+ |g#0@1| 1))))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (or (not (= (LitInt 2) 0)) (not true))) (=> (or (not (= (LitInt 2) 0)) (not true)) (and (=> (= (ControlFlow 0 36) 30) anon46_Then_correct) (=> (= (ControlFlow 0 36) 34) anon46_Else_correct)))))))))))))))))))))
(let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |g#0@0| (LitInt 10))) (and (=> (= (ControlFlow 0 56) 55) anon41_Then_correct) (=> (= (ControlFlow 0 56) 36) anon41_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (<= (LitInt 0) |n#0|)) (and (and (<= (LitInt 0) |acc#0|) (<= (LitInt 0) |r#0|)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 57) 56)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
