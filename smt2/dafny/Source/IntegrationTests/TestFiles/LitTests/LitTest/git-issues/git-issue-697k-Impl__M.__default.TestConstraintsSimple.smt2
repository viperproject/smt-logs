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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.M.Not30 () T@U)
(declare-fun Tagclass.M.Not31 () T@U)
(declare-fun tytagFamily$Not30 () T@U)
(declare-fun tytagFamily$Not31 () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.M.Not30 () T@U)
(declare-fun Tclass.M.Not31 () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#8| (T@U Int Int T@U) T@U)
(declare-fun M.__default.P (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |M.__default.P#canCall| (T@U T@U) Bool)
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
(assert (distinct TagSet alloc Tagclass.M.Not30 Tagclass.M.Not31 tytagFamily$Not30 tytagFamily$Not31)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.M.Not30 $h)
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($IsAlloc intType |x#0| Tclass.M.Not30 $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.M.Not31 $h@@0)
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.M.Not31 $h@@0))
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
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass.M.Not30)  (or (not (= (U_2_int |x#0@@1|) 30)) (not true)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($Is intType |x#0@@1| Tclass.M.Not30))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.M.Not31)  (or (not (= (U_2_int |x#0@@2|) 31)) (not true)))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($Is intType |x#0@@2| Tclass.M.Not31))
)))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|l#3| T@U) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|)) (M.__default.P |l#3| |$y#0|))))
 :qid |gitissue697kdfy.43:8|
 :skolemid |1587|
 :pattern ( (MapType0Select BoxType boolType (|lambda#8| |l#0| |l#1| |l#2| |l#3|) |$y#0|))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.M.Not30) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.M.Not30)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsBox bx@@1 Tclass.M.Not30))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.M.Not31) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass.M.Not31)))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsBox bx@@2 Tclass.M.Not31))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1585|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M._default.P$X T@U) (|x#0@@3| T@U) ) (!  (=> (or (|M.__default.P#canCall| M._default.P$X |x#0@@3|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@3| M._default.P$X))) (= (M.__default.P M._default.P$X |x#0@@3|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (M.__default.P M._default.P$X |x#0@@3|))
))))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (= (Tag Tclass.M.Not30) Tagclass.M.Not30))
(assert (= (TagFamily Tclass.M.Not30) tytagFamily$Not30))
(assert (= (Tag Tclass.M.Not31) Tagclass.M.Not31))
(assert (= (TagFamily Tclass.M.Not31) tytagFamily$Not31))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M._default.P$X@@0 T@U) (|x#0@@4| T@U) ) (!  (=> (or (|M.__default.P#canCall| M._default.P$X@@0 (Lit BoxType |x#0@@4|)) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@4| M._default.P$X@@0))) (= (M.__default.P M._default.P$X@@0 (Lit BoxType |x#0@@4|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |491|
 :pattern ( (M.__default.P M._default.P$X@@0 (Lit BoxType |x#0@@4|)))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |b#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |r0#0@1| () T@U)
(declare-fun |a#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun |r0#0@0| () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(set-info :boogie-vc-id Impl$$M.__default.TestConstraintsSimple)
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
 (=> (= (ControlFlow 0 0) 22) (let ((anon14_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (and (<= (LitInt 29) |b#0@0|) (< |b#0@0| 33)) (M.__default.P Tclass.M.Not31 ($Box intType (int_2_U |b#0@0|))))) (= (ControlFlow 0 4) 1)) anon14_correct)))
(let ((anon22_Then_correct  (=> (and (and (and (<= (LitInt 29) |b#0@0|) (< |b#0@0| 33)) (M.__default.P Tclass.M.Not31 ($Box intType (int_2_U |b#0@0|)))) (= (ControlFlow 0 3) 1)) anon14_correct)))
(let ((anon21_Else_correct  (=> (not (and (<= (LitInt 29) |b#0@0|) (< |b#0@0| 33))) (and (=> (= (ControlFlow 0 6) 3) anon22_Then_correct) (=> (= (ControlFlow 0 6) 4) anon22_Else_correct)))))
(let ((anon21_Then_correct  (=> (and (and (<= (LitInt 29) |b#0@0|) (< |b#0@0| 33)) (and ($IsAlloc intType (int_2_U |b#0@0|) Tclass.M.Not31 $Heap) (|M.__default.P#canCall| Tclass.M.Not31 ($Box intType (int_2_U |b#0@0|))))) (and (=> (= (ControlFlow 0 5) 3) anon22_Then_correct) (=> (= (ControlFlow 0 5) 4) anon22_Else_correct)))))
(let ((anon20_Else_correct  (=> (< |b#0@0| (LitInt 29)) (and (=> (= (ControlFlow 0 9) 5) anon21_Then_correct) (=> (= (ControlFlow 0 9) 6) anon21_Else_correct)))))
(let ((anon20_Then_correct  (=> (and (<= (LitInt 29) |b#0@0|) (= |newtype$check#1@0| (LitInt 33))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= |newtype$check#1@0| 31)) (not true))) (=> (or (not (= |newtype$check#1@0| 31)) (not true)) (and (=> (= (ControlFlow 0 7) 5) anon21_Then_correct) (=> (= (ControlFlow 0 7) 6) anon21_Else_correct)))))))
(let ((anon19_Then_correct  (=> (and (or (not (= |b#0@0| 31)) (not true)) (= |newtype$check#0@0| (LitInt 29))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (not (= |newtype$check#0@0| 31)) (not true))) (=> (or (not (= |newtype$check#0@0| 31)) (not true)) (and (=> (= (ControlFlow 0 10) 7) anon20_Then_correct) (=> (= (ControlFlow 0 10) 9) anon20_Else_correct)))))))
(let ((anon19_Else_correct  (=> (and (= |b#0@0| 31) (= (ControlFlow 0 2) 1)) anon14_correct)))
(let ((anon7_correct  (=> (and (forall ((|a#1| T@U) ) (!  (=> (or (not (= (U_2_int |a#1|) 30)) (not true)) (=> (and (<= (LitInt 29) (U_2_int |a#1|)) (< (U_2_int |a#1|) 33)) (|M.__default.P#canCall| Tclass.M.Not30 ($Box intType |a#1|))))
 :qid |gitissue697kdfy.50:15|
 :skolemid |497|
 :pattern ( (M.__default.P Tclass.M.Not30 ($Box intType |a#1|)))
)) (= |r0#0@1| (|Set#FromBoogieMap| (|lambda#8| Tclass.M.Not30 (LitInt 29) 33 Tclass.M.Not30)))) (and (=> (= (ControlFlow 0 12) 10) anon19_Then_correct) (=> (= (ControlFlow 0 12) 2) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (not (and (and (<= (LitInt 29) |a#0@0|) (< |a#0@0| 33)) (M.__default.P Tclass.M.Not30 ($Box intType (int_2_U |a#0@0|))))) (= (ControlFlow 0 15) 12)) anon7_correct)))
(let ((anon18_Then_correct  (=> (and (and (and (<= (LitInt 29) |a#0@0|) (< |a#0@0| 33)) (M.__default.P Tclass.M.Not30 ($Box intType (int_2_U |a#0@0|)))) (= (ControlFlow 0 14) 12)) anon7_correct)))
(let ((anon17_Else_correct  (=> (not (and (<= (LitInt 29) |a#0@0|) (< |a#0@0| 33))) (and (=> (= (ControlFlow 0 17) 14) anon18_Then_correct) (=> (= (ControlFlow 0 17) 15) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (and (<= (LitInt 29) |a#0@0|) (< |a#0@0| 33)) (and ($IsAlloc intType (int_2_U |a#0@0|) Tclass.M.Not30 $Heap) (|M.__default.P#canCall| Tclass.M.Not30 ($Box intType (int_2_U |a#0@0|))))) (and (=> (= (ControlFlow 0 16) 14) anon18_Then_correct) (=> (= (ControlFlow 0 16) 15) anon18_Else_correct)))))
(let ((anon16_Else_correct  (=> (< |a#0@0| (LitInt 29)) (and (=> (= (ControlFlow 0 19) 16) anon17_Then_correct) (=> (= (ControlFlow 0 19) 17) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (<= (LitInt 29) |a#0@0|) (and (=> (= (ControlFlow 0 18) 16) anon17_Then_correct) (=> (= (ControlFlow 0 18) 17) anon17_Else_correct)))))
(let ((anon15_Then_correct  (=> (or (not (= |a#0@0| 30)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct)))))
(let ((anon15_Else_correct  (=> (and (= |a#0@0| 30) (= (ControlFlow 0 13) 12)) anon7_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and ($Is SetType |r0#0@0| (TSet Tclass.M.Not30)) ($IsAlloc SetType |r0#0@0| (TSet Tclass.M.Not30) $Heap)) (and ($Is SetType |r1#0@0| (TSet Tclass.M.Not31)) ($IsAlloc SetType |r1#0@0| (TSet Tclass.M.Not31) $Heap))) (and (=> (= (ControlFlow 0 21) 20) anon15_Then_correct) (=> (= (ControlFlow 0 21) 13) anon15_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |r0#0| (TSet Tclass.M.Not30)) ($IsAlloc SetType |r0#0| (TSet Tclass.M.Not30) $Heap)) true) (=> (and (and (and ($Is SetType |r1#0| (TSet Tclass.M.Not31)) ($IsAlloc SetType |r1#0| (TSet Tclass.M.Not31) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 22) 21))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
