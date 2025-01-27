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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#14| (T@U T@U Int) T@U)
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
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
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
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
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
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
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
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| Int) (|$y#0_1_0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#0_1_0|))  (and ($IsBox |$y#0_1_0| |l#0|) (and (|Set#IsMember| |l#1| |$y#0_1_0|) (< |l#2| (U_2_int ($Unbox intType |$y#0_1_0|))))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |702|
 :pattern ( (MapType0Select BoxType boolType (|lambda#14| |l#0| |l#1| |l#2|) |$y#0_1_0|))
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
 :skolemid |700|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@0| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@3)) bx@@3) ($Is SetType ($Unbox SetType bx@@3) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@3 (TSet t@@3)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
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
(declare-fun |s'#0@0| () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |y#3@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |x#0_0@1| () Int)
(declare-fun |s'#0@1| () T@U)
(declare-fun |y#0_1_0@1| () Int)
(declare-fun |z#0_1_0@1| () Int)
(declare-fun |y#0_1_1@1| () Int)
(declare-fun |y#0_0@1| () Int)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.LargestElementExists)
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
 (=> (= (ControlFlow 0 0) 54) (let ((anon11_correct true))
(let ((anon38_Else_correct  (=> (and (not (and (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#3@0|)))) (not (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#3@0|)))))) (= (ControlFlow 0 38) 36)) anon11_correct)))
(let ((anon38_Then_correct  (=> (and (and (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#3@0|)))) (not (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#3@0|))))) (= (ControlFlow 0 37) 36)) anon11_correct)))
(let ((anon37_Else_correct  (=> (not (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#3@0|))))) (and (=> (= (ControlFlow 0 40) 37) anon38_Then_correct) (=> (= (ControlFlow 0 40) 38) anon38_Else_correct)))))
(let ((anon37_Then_correct  (=> (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#3@0|)))) (and (=> (= (ControlFlow 0 39) 37) anon38_Then_correct) (=> (= (ControlFlow 0 39) 38) anon38_Else_correct)))))
(let ((anon36_Else_correct  (=> (not (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|)))) (and (=> (= (ControlFlow 0 42) 39) anon37_Then_correct) (=> (= (ControlFlow 0 42) 40) anon37_Else_correct)))))
(let ((anon36_Then_correct  (=> (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#2@0|))) (and (=> (= (ControlFlow 0 41) 39) anon37_Then_correct) (=> (= (ControlFlow 0 41) 40) anon37_Else_correct)))))
(let ((anon35_Then_correct  (and (=> (= (ControlFlow 0 43) 41) anon36_Then_correct) (=> (= (ControlFlow 0 43) 42) anon36_Else_correct))))
(let ((anon35_Else_correct true))
(let ((anon4_correct  (=> (and (not (|Set#Equal| |s'#0@0| |Set#Empty|)) (|Set#Subset| |s'#0@0| |s#0|)) (and (=> (= (ControlFlow 0 44) 43) anon35_Then_correct) (=> (= (ControlFlow 0 44) 35) anon35_Else_correct)))))
(let ((anon34_Else_correct  (=> (and (|Set#Equal| |s'#0@0| |Set#Empty|) (= (ControlFlow 0 46) 44)) anon4_correct)))
(let ((anon34_Then_correct  (=> (and (not (|Set#Equal| |s'#0@0| |Set#Empty|)) (= (ControlFlow 0 45) 44)) anon4_correct)))
(let ((anon33_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 47) 45) anon34_Then_correct) (=> (= (ControlFlow 0 47) 46) anon34_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 24) (- 0 23)) (exists ((|x#1| T@U) ) (!  (and (|Set#IsMember| |s#0| ($Box intType |x#1|)) (forall ((|y#2| Int) ) (!  (=> (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#2|))) (<= |y#2| (U_2_int |x#1|)))
 :qid |Primesdfy.201:40|
 :skolemid |690|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#2|))))
)))
 :qid |Primesdfy.201:18|
 :skolemid |691|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType |x#1|)))
)))))
(let ((anon43_Then_correct  (=> (and (forall ((|y#0_1| T@U) ) (!  (=> (|Set#IsMember| |s'#0@0| ($Box intType |y#0_1|)) (<= (U_2_int |y#0_1|) |x#0_0@1|))
 :qid |Primesdfy.210:15|
 :skolemid |698|
 :pattern ( (|Set#IsMember| |s'#0@0| ($Box intType |y#0_1|)))
)) (= (ControlFlow 0 26) 24)) GeneratedUnifiedExit_correct)))
(let ((anon39_Then_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 25) 24)) GeneratedUnifiedExit_correct)))
(let ((anon30_correct  (=> (= |s'#0@1| (|Set#FromBoogieMap| (|lambda#14| TInt |s#0| |x#0_0@1|))) (and (=> (= (ControlFlow 0 7) (- 0 11)) (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |y#0_1_0@1|)))) (=> (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |y#0_1_0@1|))) (and (=> (= (ControlFlow 0 7) (- 0 10)) (and (|Set#Subset| |s'#0@1| |s'#0@0|) (not (|Set#Subset| |s'#0@0| |s'#0@1|)))) (=> (and (|Set#Subset| |s'#0@1| |s'#0@0|) (not (|Set#Subset| |s'#0@0| |s'#0@1|))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (=> |$w$loop#0@0| (not (|Set#Equal| |s'#0@1| |Set#Empty|)))) (=> (=> |$w$loop#0@0| (not (|Set#Equal| |s'#0@1| |Set#Empty|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (=> |$w$loop#0@0| (|Set#Subset| |s'#0@1| |s#0|))) (=> (=> |$w$loop#0@0| (|Set#Subset| |s'#0@1| |s#0|)) (=> (= (ControlFlow 0 7) (- 0 6)) (=> |$w$loop#0@0| (forall ((|x#3| Int) (|y#4| Int) ) (!  (=> (and (and (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |x#3|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4|)))) (not (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |y#4|))))) (<= |y#4| |x#3|))
 :qid |Primesdfy.206:22|
 :skolemid |694|
 :pattern ( (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |y#4|))) (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |x#3|))))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4|))) (|Set#IsMember| |s'#0@1| ($Box intType (int_2_U |x#3|))))
)))))))))))))))
(let ((anon48_Else_correct  (=> (and (not (and (|Set#IsMember| |s#0| ($Box intType (int_2_U |z#0_1_0@1|))) (< |x#0_0@1| |z#0_1_0@1|))) (= (ControlFlow 0 13) 7)) anon30_correct)))
(let ((anon48_Then_correct  (=> (and (and (|Set#IsMember| |s#0| ($Box intType (int_2_U |z#0_1_0@1|))) (< |x#0_0@1| |z#0_1_0@1|)) (= (ControlFlow 0 12) 7)) anon30_correct)))
(let ((anon47_Else_correct  (=> (not (|Set#IsMember| |s#0| ($Box intType (int_2_U |z#0_1_0@1|)))) (and (=> (= (ControlFlow 0 15) 12) anon48_Then_correct) (=> (= (ControlFlow 0 15) 13) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (|Set#IsMember| |s#0| ($Box intType (int_2_U |z#0_1_0@1|))) (and (=> (= (ControlFlow 0 14) 12) anon48_Then_correct) (=> (= (ControlFlow 0 14) 13) anon48_Else_correct)))))
(let ((anon46_Then_correct  (and (=> (= (ControlFlow 0 16) 14) anon47_Then_correct) (=> (= (ControlFlow 0 16) 15) anon47_Else_correct))))
(let ((anon46_Else_correct true))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (and ($Is intType (int_2_U (+ |x#0_0@1| 1)) TInt) (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (+ |x#0_0@1| 1)))) (< |x#0_0@1| (+ |x#0_0@1| 1)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (LitInt 0)))) (< |x#0_0@1| 0))) (exists ((|$as#y0_1_0#0_1_0| T@U) ) (!  (and (|Set#IsMember| |s'#0@0| ($Box intType |$as#y0_1_0#0_1_0|)) (< |x#0_0@1| (U_2_int |$as#y0_1_0#0_1_0|)))
 :qid |Primesdfy.215:11|
 :skolemid |697|
))))) (=> (or (and ($Is intType (int_2_U (+ |x#0_0@1| 1)) TInt) (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (+ |x#0_0@1| 1)))) (< |x#0_0@1| (+ |x#0_0@1| 1)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (LitInt 0)))) (< |x#0_0@1| 0))) (exists ((|$as#y0_1_0#0_1_0@@0| Int) ) (!  (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |$as#y0_1_0#0_1_0@@0|))) (< |x#0_0@1| |$as#y0_1_0#0_1_0@@0|))
 :qid |Primesdfy.215:11|
 :skolemid |697|
)))) (=> (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_1_0@1|))) (< |x#0_0@1| |y#0_1_0@1|)) (and (=> (= (ControlFlow 0 17) 16) anon46_Then_correct) (=> (= (ControlFlow 0 17) 5) anon46_Else_correct)))))))
(let ((anon45_Else_correct  (=> (and (not (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_1_1@1|)))) (= (ControlFlow 0 20) 17)) anon24_correct)))
(let ((anon45_Then_correct  (=> (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_1_1@1|))) (= (ControlFlow 0 19) 17)) anon24_correct)))
(let ((anon44_Then_correct  (and (=> (= (ControlFlow 0 21) 19) anon45_Then_correct) (=> (= (ControlFlow 0 21) 20) anon45_Else_correct))))
(let ((anon44_Else_correct true))
(let ((anon43_Else_correct  (=> (not (forall ((|y#0_1@@0| Int) ) (!  (=> (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_1@@0|))) (<= |y#0_1@@0| |x#0_0@1|))
 :qid |Primesdfy.210:15|
 :skolemid |698|
 :pattern ( (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_1@@0|))))
))) (and (=> (= (ControlFlow 0 22) 21) anon44_Then_correct) (=> (= (ControlFlow 0 22) 4) anon44_Else_correct)))))
(let ((anon19_correct  (and (=> (= (ControlFlow 0 27) 26) anon43_Then_correct) (=> (= (ControlFlow 0 27) 22) anon43_Else_correct))))
(let ((anon42_Else_correct  (=> (and (not (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_0@1|)))) (= (ControlFlow 0 29) 27)) anon19_correct)))
(let ((anon42_Then_correct  (=> (and (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |y#0_0@1|))) (= (ControlFlow 0 28) 27)) anon19_correct)))
(let ((anon41_Then_correct  (and (=> (= (ControlFlow 0 30) 28) anon42_Then_correct) (=> (= (ControlFlow 0 30) 29) anon42_Else_correct))))
(let ((anon41_Else_correct true))
(let ((anon40_Then_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (LitInt 0))))) (exists ((|$as#x0_0#0_0| T@U) ) (! (|Set#IsMember| |s'#0@0| ($Box intType |$as#x0_0#0_0|))
 :qid |Primesdfy.209:9|
 :skolemid |696|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U (LitInt 0))))) (exists ((|$as#x0_0#0_0@@0| Int) ) (! (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |$as#x0_0#0_0@@0|)))
 :qid |Primesdfy.209:9|
 :skolemid |696|
))) (=> (|Set#IsMember| |s'#0@0| ($Box intType (int_2_U |x#0_0@1|))) (and (=> (= (ControlFlow 0 31) 30) anon41_Then_correct) (=> (= (ControlFlow 0 31) 3) anon41_Else_correct)))))))
(let ((anon40_Else_correct true))
(let ((anon39_Else_correct  (=> (U_2_bool (Lit boolType (bool_2_U true))) (and (=> (= (ControlFlow 0 33) 31) anon40_Then_correct) (=> (= (ControlFlow 0 33) 2) anon40_Else_correct)))))
(let ((anon33_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 34) 25) anon39_Then_correct) (=> (= (ControlFlow 0 34) 33) anon39_Else_correct)))))
(let ((anon32_LoopBody_correct  (and (=> (= (ControlFlow 0 48) 47) anon33_Then_correct) (=> (= (ControlFlow 0 48) 34) anon33_Else_correct))))
(let ((anon32_LoopDone_correct true))
(let ((anon32_LoopHead_correct  (=> (and (and (and (and ($Is SetType |s'#0@0| (TSet TInt)) ($IsAlloc SetType |s'#0@0| (TSet TInt) $Heap)) (not false)) (and (=> |$w$loop#0@0| (not (|Set#Equal| |s'#0@0| |Set#Empty|))) (=> |$w$loop#0@0| (|Set#Subset| |s'#0@0| |s#0|)))) (and (and (=> |$w$loop#0@0| (forall ((|x#3@@0| T@U) (|y#4@@0| T@U) ) (!  (=> (and (and (|Set#IsMember| |s'#0@0| ($Box intType |x#3@@0|)) (|Set#IsMember| |s#0| ($Box intType |y#4@@0|))) (not (|Set#IsMember| |s'#0@0| ($Box intType |y#4@@0|)))) (<= (U_2_int |y#4@@0|) (U_2_int |x#3@@0|)))
 :qid |Primesdfy.206:22|
 :skolemid |694|
 :pattern ( (|Set#IsMember| |s'#0@0| ($Box intType |y#4@@0|)) (|Set#IsMember| |s'#0@0| ($Box intType |x#3@@0|)))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType |y#4@@0|)) (|Set#IsMember| |s'#0@0| ($Box intType |x#3@@0|)))
))) (= $Heap $Heap)) (and (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@0 $f@@0))))
 :qid |Primesdfy.204:3|
 :skolemid |695|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) $f@@0))
)) (|Set#Subset| |s'#0@0| |s#0|)))) (and (=> (= (ControlFlow 0 49) 1) anon32_LoopDone_correct) (=> (= (ControlFlow 0 49) 48) anon32_LoopBody_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (=> |$w$loop#0@0| (not (|Set#Equal| |s#0| |Set#Empty|)))) (=> (=> |$w$loop#0@0| (not (|Set#Equal| |s#0| |Set#Empty|))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (=> |$w$loop#0@0| (|Set#Subset| |s#0| |s#0|))) (=> (=> |$w$loop#0@0| (|Set#Subset| |s#0| |s#0|)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (=> |$w$loop#0@0| (forall ((|x#3@@1| Int) (|y#4@@1| Int) ) (!  (=> (and (and (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#3@@1|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4@@1|)))) (not (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4@@1|))))) (<= |y#4@@1| |x#3@@1|))
 :qid |Primesdfy.206:22|
 :skolemid |694|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4@@1|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#3@@1|))))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType (int_2_U |y#4@@1|))) (|Set#IsMember| |s#0| ($Box intType (int_2_U |x#3@@1|))))
)))) (=> (=> |$w$loop#0@0| (forall ((|x#3@@2| T@U) (|y#4@@2| T@U) ) (!  (=> (and (and (|Set#IsMember| |s#0| ($Box intType |x#3@@2|)) (|Set#IsMember| |s#0| ($Box intType |y#4@@2|))) (not (|Set#IsMember| |s#0| ($Box intType |y#4@@2|)))) (<= (U_2_int |y#4@@2|) (U_2_int |x#3@@2|)))
 :qid |Primesdfy.206:22|
 :skolemid |694|
 :pattern ( (|Set#IsMember| |s#0| ($Box intType |y#4@@2|)) (|Set#IsMember| |s#0| ($Box intType |x#3@@2|)))
 :pattern ( (|Set#IsMember| |s#0| ($Box intType |y#4@@2|)) (|Set#IsMember| |s#0| ($Box intType |x#3@@2|)))
))) (=> (= (ControlFlow 0 50) 49) anon32_LoopHead_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap))) (=> (and (and (and (and ($Is SetType |s'#0| (TSet TInt)) ($IsAlloc SetType |s'#0| (TSet TInt) $Heap)) true) (= 0 $FunctionContextHeight)) (and (not (|Set#Equal| |s#0| |Set#Empty|)) (= (ControlFlow 0 54) 50))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
