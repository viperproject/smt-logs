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
(declare-fun alloc () T@U)
(declare-fun Tagclass.Regressions.byte () T@U)
(declare-fun tytagFamily$byte () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.Regressions.byte () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun Regressions.__default.P (Int) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |Regressions.__default.P#canCall| (Int) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass.Regressions.byte tytagFamily$byte)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass.Regressions.byte $h)
 :qid |unknown.0:0|
 :skolemid |4097|
 :pattern ( ($IsAlloc intType |x#0| Tclass.Regressions.byte $h))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3612|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3610|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3621|
 :pattern ( ($Unbox T@@0 x@@4))
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
 :skolemid |3748|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |3641|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |3642|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (and (<= |l#1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|)) (Regressions.__default.P (U_2_int ($Unbox intType |$y#0|))))))
 :qid |gitissue697jdfy.254:8|
 :skolemid |5357|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0| |l#1| |l#2|) |$y#0|))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3634|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|Regressions.__default.P#canCall| |x#0@@0|) (< 0 $FunctionContextHeight)) (= (Regressions.__default.P |x#0@@0|)  (or (= |x#0@@0| (LitInt 7)) (= |x#0@@0| (LitInt 9)))))
 :qid |gitissue697jdfy.256:15|
 :skolemid |4076|
 :pattern ( (Regressions.__default.P |x#0@@0|))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.Regressions.byte) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass.Regressions.byte)))
 :qid |unknown.0:0|
 :skolemid |4081|
 :pattern ( ($IsBox bx@@1 Tclass.Regressions.byte))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3622|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|Regressions.__default.P#canCall| (LitInt |x#0@@1|)) (< 0 $FunctionContextHeight)) (= (Regressions.__default.P (LitInt |x#0@@1|))  (or (= (LitInt |x#0@@1|) (LitInt 7)) (= (LitInt |x#0@@1|) (LitInt 9)))))
 :qid |gitissue697jdfy.256:15|
 :weight 3
 :skolemid |4077|
 :pattern ( (Regressions.__default.P (LitInt |x#0@@1|)))
))))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3633|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |3662|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |3663|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |3596|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |3597|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3620|
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
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5356|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |3627|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (= (Tag Tclass.Regressions.byte) Tagclass.Regressions.byte))
(assert (= (TagFamily Tclass.Regressions.byte) tytagFamily$byte))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3613|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3611|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3656|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3635|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.Regressions.byte)  (and (and (< (U_2_int |x#0@@2|) 256) (or (not (= (U_2_int |x#0@@2|) 7)) (not true))) (<= (LitInt 0) (U_2_int |x#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |4096|
 :pattern ( ($Is intType |x#0@@2| Tclass.Regressions.byte))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@0| () T@U)
(declare-fun |b#0@0| () Int)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(set-info :boogie-vc-id Impl$$Regressions.__default.Test0)
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
 (=> (= (ControlFlow 0 0) 15) (let ((anon14_Else_correct true))
(let ((anon14_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |s#0@0| ($Box intType (int_2_U (LitInt 0))))) (exists ((|$as#u0#0| T@U) ) (! (|Set#IsMember| |s#0@0| ($Box intType |$as#u0#0|))
 :qid |gitissue697jdfy.261:9|
 :skolemid |4083|
))))))
(let ((anon7_correct  (=> (and (forall ((|b#1| Int) ) (!  (=> (and (and (< |b#1| 256) (or (not (= |b#1| 7)) (not true))) (<= (LitInt 0) |b#1|)) (=> (and (<= (LitInt 5) |b#1|) (< |b#1| 12)) (|Regressions.__default.P#canCall| |b#1|)))
 :qid |gitissue697jdfy.259:18|
 :skolemid |4082|
)) (= |s#0@0| (|Set#FromBoogieMap| (|lambda#1| Tclass.Regressions.byte (LitInt 5) 12)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|Set#IsMember| |s#0@0| ($Box intType (int_2_U (LitInt 9))))) (=> (|Set#IsMember| |s#0@0| ($Box intType (int_2_U (LitInt 9)))) (and (=> (= (ControlFlow 0 4) 2) anon14_Then_correct) (=> (= (ControlFlow 0 4) 3) anon14_Else_correct)))))))
(let ((anon13_Else_correct  (=> (and (not (and (and (<= (LitInt 5) |b#0@0|) (< |b#0@0| 12)) (Regressions.__default.P |b#0@0|))) (= (ControlFlow 0 8) 4)) anon7_correct)))
(let ((anon13_Then_correct  (=> (and (and (and (<= (LitInt 5) |b#0@0|) (< |b#0@0| 12)) (Regressions.__default.P |b#0@0|)) (= (ControlFlow 0 7) 4)) anon7_correct)))
(let ((anon12_Else_correct  (=> (not (and (<= (LitInt 5) |b#0@0|) (< |b#0@0| 12))) (and (=> (= (ControlFlow 0 10) 7) anon13_Then_correct) (=> (= (ControlFlow 0 10) 8) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (and (and (<= (LitInt 5) |b#0@0|) (< |b#0@0| 12)) (and ($IsAlloc intType (int_2_U |b#0@0|) TInt $Heap) (|Regressions.__default.P#canCall| |b#0@0|))) (and (=> (= (ControlFlow 0 9) 7) anon13_Then_correct) (=> (= (ControlFlow 0 9) 8) anon13_Else_correct)))))
(let ((anon11_Else_correct  (=> (< |b#0@0| (LitInt 5)) (and (=> (= (ControlFlow 0 12) 9) anon12_Then_correct) (=> (= (ControlFlow 0 12) 10) anon12_Else_correct)))))
(let ((anon11_Then_correct  (=> (<= (LitInt 5) |b#0@0|) (and (=> (= (ControlFlow 0 11) 9) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (and (< |b#0@0| 256) (or (not (= |b#0@0| 7)) (not true))) (<= (LitInt 0) |b#0@0|)) (and (=> (= (ControlFlow 0 13) 11) anon11_Then_correct) (=> (= (ControlFlow 0 13) 12) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and (and (< |b#0@0| 256) (or (not (= |b#0@0| 7)) (not true))) (<= (LitInt 0) |b#0@0|))) (= (ControlFlow 0 6) 4)) anon7_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 14) 13) anon10_Then_correct) (=> (= (ControlFlow 0 14) 6) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is SetType |s#0| (TSet Tclass.Regressions.byte)) ($IsAlloc SetType |s#0| (TSet Tclass.Regressions.byte) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 15) 14))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
