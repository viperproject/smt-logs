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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#12| (T@U Int Int Int Int Int Int Int) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
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
(assert (distinct TInt TagInt TagSet alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
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
(assert (forall ((|l#0| T@U) (|l#1| Int) (|l#2| Int) (|l#3| Int) (|l#4| Int) (|l#5| Int) (|l#6| Int) (|l#7| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) |$y#0|))  (and ($IsBox |$y#0| |l#0|) (and (or (or (or (or (or (= (U_2_int ($Unbox intType |$y#0|)) |l#1|) (= (U_2_int ($Unbox intType |$y#0|)) |l#2|)) (= (U_2_int ($Unbox intType |$y#0|)) |l#3|)) (= (U_2_int ($Unbox intType |$y#0|)) |l#4|)) (= (U_2_int ($Unbox intType |$y#0|)) |l#5|)) (= (U_2_int ($Unbox intType |$y#0|)) |l#6|)) (< (U_2_int ($Unbox intType |$y#0|)) |l#7|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |768|
 :pattern ( (MapType0Select BoxType boolType (|lambda#12| |l#0| |l#1| |l#2| |l#3| |l#4| |l#5| |l#6| |l#7|) |$y#0|))
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
(assert (forall ((a@@2 T@U) (b T@U) ) (!  (=> (|Set#Equal| a@@2 b) (= a@@2 b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@2) ($IsAllocBox bx@@2 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@2))
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
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@8))
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
 :skolemid |759|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3@@0|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@3 b@@0) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@3 o@@1) (|Set#IsMember| b@@0 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@3 o@@1))
 :pattern ( (|Set#IsMember| b@@0 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |a#0@0| () T@U)
(declare-fun |b#0@0| () T@U)
(declare-fun |x#1_2@0| () Int)
(declare-fun |x#1_0@0| () Int)
(declare-fun |x#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.SetComprehensionBoxAntecedents)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon13_correct  (=> (= (ControlFlow 0 13) (- 0 12)) (forall ((|x#1_3| Int) ) (!  (=> (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_3|))) (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_3|))))
 :qid |ComprehensionsNewSyntaxdfy.62:19|
 :skolemid |518|
 :pattern ( (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_3|))))
 :pattern ( (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_3|))))
)))))
(let ((anon26_Else_correct  (=> (and (not (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_2@0|)))) (= (ControlFlow 0 15) 13)) anon13_correct)))
(let ((anon26_Then_correct  (=> (and (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_2@0|))) (= (ControlFlow 0 14) 13)) anon13_correct)))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 16) 14) anon26_Then_correct) (=> (= (ControlFlow 0 16) 15) anon26_Else_correct))))
(let ((anon25_Else_correct true))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((|x#1_1| Int) ) (!  (=> (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_1|))) (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_1|))))
 :qid |ComprehensionsNewSyntaxdfy.61:19|
 :skolemid |516|
 :pattern ( (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#1_1|))))
 :pattern ( (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_1|))))
))) (=> (forall ((|x#1_1@@0| T@U) ) (!  (=> (|Set#IsMember| |a#0@0| ($Box intType |x#1_1@@0|)) (|Set#IsMember| |b#0@0| ($Box intType |x#1_1@@0|)))
 :qid |ComprehensionsNewSyntaxdfy.61:19|
 :skolemid |516|
 :pattern ( (|Set#IsMember| |b#0@0| ($Box intType |x#1_1@@0|)))
 :pattern ( (|Set#IsMember| |a#0@0| ($Box intType |x#1_1@@0|)))
)) (and (=> (= (ControlFlow 0 17) 16) anon25_Then_correct) (=> (= (ControlFlow 0 17) 11) anon25_Else_correct))))))
(let ((anon24_Else_correct  (=> (and (not (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_0@0|)))) (= (ControlFlow 0 20) 17)) anon10_correct)))
(let ((anon24_Then_correct  (=> (and (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#1_0@0|))) (= (ControlFlow 0 19) 17)) anon10_correct)))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 21) 19) anon24_Then_correct) (=> (= (ControlFlow 0 21) 20) anon24_Else_correct))))
(let ((anon23_Else_correct true))
(let ((anon22_Then_correct  (and (=> (= (ControlFlow 0 22) 21) anon23_Then_correct) (=> (= (ControlFlow 0 22) 10) anon23_Else_correct))))
(let ((anon28_Else_correct true))
(let ((anon28_Then_correct  (=> (= (ControlFlow 0 7) (- 0 6)) (forall ((|x#0_1| Int) ) (! (= (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#0_1|))) (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#0_1|))))
 :qid |ComprehensionsNewSyntaxdfy.64:19|
 :skolemid |514|
 :pattern ( (|Set#IsMember| |b#0@0| ($Box intType (int_2_U |x#0_1|))))
 :pattern ( (|Set#IsMember| |a#0@0| ($Box intType (int_2_U |x#0_1|))))
)))))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon28_Then_correct) (=> (= (ControlFlow 0 9) 8) anon28_Else_correct))))
(let ((anon27_Else_correct  (=> (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 5) (- 0 4))) false)))
(let ((anon21_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (|Set#Equal| |a#0@0| |b#0@0|))))
(let ((anon5_correct  (=> (and (= |a#0@0| (|Set#FromBoogieMap| (|lambda#12| TInt (LitInt 0) (LitInt 1) (LitInt 2) (LitInt 3) (LitInt 4) (LitInt 5) 3))) (= |b#0@0| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 2))))))) (and (and (and (=> (= (ControlFlow 0 23) 3) anon21_Then_correct) (=> (= (ControlFlow 0 23) 22) anon22_Then_correct)) (=> (= (ControlFlow 0 23) 9) anon27_Then_correct)) (=> (= (ControlFlow 0 23) 5) anon27_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (not (and (or (or (or (or (or (= |x#0@0| (LitInt 0)) (= |x#0@0| (LitInt 1))) (= |x#0@0| (LitInt 2))) (= |x#0@0| (LitInt 3))) (= |x#0@0| (LitInt 4))) (= |x#0@0| (LitInt 5))) (< |x#0@0| 3))) (= (ControlFlow 0 25) 23)) anon5_correct)))
(let ((anon20_Then_correct  (=> (and (and (or (or (or (or (or (= |x#0@0| (LitInt 0)) (= |x#0@0| (LitInt 1))) (= |x#0@0| (LitInt 2))) (= |x#0@0| (LitInt 3))) (= |x#0@0| (LitInt 4))) (= |x#0@0| (LitInt 5))) (< |x#0@0| 3)) (= (ControlFlow 0 24) 23)) anon5_correct)))
(let ((anon19_Else_correct  (=> (not (or (or (or (or (or (= |x#0@0| (LitInt 0)) (= |x#0@0| (LitInt 1))) (= |x#0@0| (LitInt 2))) (= |x#0@0| (LitInt 3))) (= |x#0@0| (LitInt 4))) (= |x#0@0| (LitInt 5)))) (and (=> (= (ControlFlow 0 27) 24) anon20_Then_correct) (=> (= (ControlFlow 0 27) 25) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (or (or (or (or (or (= |x#0@0| (LitInt 0)) (= |x#0@0| (LitInt 1))) (= |x#0@0| (LitInt 2))) (= |x#0@0| (LitInt 3))) (= |x#0@0| (LitInt 4))) (= |x#0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 26) 24) anon20_Then_correct) (=> (= (ControlFlow 0 26) 25) anon20_Else_correct)))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 28) 26) anon19_Then_correct) (=> (= (ControlFlow 0 28) 27) anon19_Else_correct))))
(let ((anon18_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 29) 28) anon18_Then_correct) (=> (= (ControlFlow 0 29) 1) anon18_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |a#0| (TSet TInt)) ($IsAlloc SetType |a#0| (TSet TInt) $Heap)) true) (=> (and (and (and ($Is SetType |b#0| (TSet TInt)) ($IsAlloc SetType |b#0| (TSet TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 30) 29))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
