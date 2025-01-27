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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Attempt__Smallest.__default.Pick (T@U) Int)
(declare-fun |Attempt__Smallest.__default.Pick#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |$let#0$canCall| (T@U) Bool)
(declare-fun |$let#0_x| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1189|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1081|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1079|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1210|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1211|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1090|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (or (|Attempt__Smallest.__default.Pick#canCall| |s#0|) (and (< 1 $FunctionContextHeight) (and ($Is SetType |s#0| (TSet TInt)) (not (|Set#Equal| |s#0| |Set#Empty|))))) (|Set#IsMember| |s#0| ($Box intType (int_2_U (Attempt__Smallest.__default.Pick |s#0|)))))
 :qid |DeterministicPickdfy.5:17|
 :skolemid |1592|
 :pattern ( (Attempt__Smallest.__default.Pick |s#0|))
))))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1110|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1111|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (|s#0@@0| T@U) ) (!  (=> (or (|Attempt__Smallest.__default.Pick#canCall| |s#0@@0|) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is SetType |s#0@@0| (TSet TInt))) (not (|Set#Equal| |s#0@@0| |Set#Empty|))))) (and (|$let#0$canCall| |s#0@@0|) (= (Attempt__Smallest.__default.Pick |s#0@@0|) (let ((|x#0| (|$let#0_x| |s#0@@0|)))
|x#0|))))
 :qid |DeterministicPickdfy.19:12|
 :skolemid |1596|
 :pattern ( (Attempt__Smallest.__default.Pick |s#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1103|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1214|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((s T@U) ) (!  (=> (|$let#0$canCall| s) (and (|Set#IsMember| s ($Box intType (int_2_U (|$let#0_x| s)))) (forall ((|y#0| T@U) ) (!  (=> (|Set#IsMember| s ($Box intType |y#0|)) (<= (|$let#0_x| s) (U_2_int |y#0|)))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1594|
 :pattern ( (|Set#IsMember| s ($Box intType |y#0|)))
))))
 :qid |DeterministicPickdfy.22:5|
 :skolemid |1595|
 :pattern ( (|$let#0_x| s))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap@@0 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|Attempt__Smallest.__default.Pick#canCall| (Lit SetType |s#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is SetType |s#0@@1| (TSet TInt))) (not (|Set#Equal| |s#0@@1| |Set#Empty|))))) (and (|$let#0$canCall| (Lit SetType |s#0@@1|)) (= (Attempt__Smallest.__default.Pick (Lit SetType |s#0@@1|)) (let ((|x#1| (|$let#0_x| (Lit SetType |s#0@@1|))))
|x#1|))))
 :qid |DeterministicPickdfy.19:12|
 :weight 3
 :skolemid |1597|
 :pattern ( (Attempt__Smallest.__default.Pick (Lit SetType |s#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1091|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1102|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@1) ($IsAllocBox bx@@1 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1131|
 :pattern ( (|Set#IsMember| v@@2 bx@@1))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1132|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1065|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1066|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1089|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |2161|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@2 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@2 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@2)) bx@@2) ($Is SetType ($Unbox SetType bx@@2) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1096|
 :pattern ( ($IsBox bx@@2 (TSet t@@3)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1212|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1213|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1082|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1080|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1125|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1104|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@@2| () T@U)
(declare-fun |x#2@0| () Int)
(declare-fun |x#4@0| () Int)
(declare-fun |y#1@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(set-info :boogie-vc-id CheckWellformed$$Attempt__Smallest.__default.Pick)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon14_Else_correct true))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U (Attempt__Smallest.__default.Pick |s#0@@2|)))))))
(let ((anon9_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U (LitInt 0)))) (forall ((|y#3| Int) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#3|))) (<= (LitInt 0) |y#3|))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1601|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#3|))))
)))) (exists ((|x#3| T@U) ) (!  (and (|Set#IsMember| |s#0@@2| ($Box intType |x#3|)) (forall ((|y#2| Int) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#2|))) (<= (U_2_int |x#3|) |y#2|))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1599|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#2|))))
)))
 :qid |DeterministicPickdfy.22:9|
 :skolemid |1600|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U (LitInt 0)))) (forall ((|y#3@@0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#3@@0|)) (<= (LitInt 0) (U_2_int |y#3@@0|)))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1601|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#3@@0|)))
)))) (exists ((|x#3@@0| Int) ) (!  (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#3@@0|))) (forall ((|y#2@@0| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#2@@0|)) (<= |x#3@@0| (U_2_int |y#2@@0|)))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1599|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#2@@0|)))
)))
 :qid |DeterministicPickdfy.22:9|
 :skolemid |1600|
))) (=> (and (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#2@0|))) (forall ((|y#4| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#4|)) (<= |x#2@0| (U_2_int |y#4|)))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1602|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#4|)))
))) (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#4@0|))) (forall ((|y#5| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#5|)) (<= |x#4@0| (U_2_int |y#5|)))
 :qid |DeterministicPickdfy.22:31|
 :skolemid |1603|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#5|)))
)))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (= |x#2@0| |x#4@0|)) (=> (= |x#2@0| |x#4@0|) (=> (and (and (|$let#0$canCall| |s#0@@2|) (= (Attempt__Smallest.__default.Pick |s#0@@2|) |x#2@0|)) (and ($Is intType (int_2_U (Attempt__Smallest.__default.Pick |s#0@@2|)) TInt) (= (ControlFlow 0 7) 6))) GeneratedUnifiedExit_correct))))))))
(let ((anon15_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#1@0|)))) (= (ControlFlow 0 13) 7)) anon9_correct)))
(let ((anon15_Then_correct  (=> (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |y#1@0|))) (= (ControlFlow 0 12) 7)) anon9_correct)))
(let ((anon14_Then_correct  (and (=> (= (ControlFlow 0 14) 12) anon15_Then_correct) (=> (= (ControlFlow 0 14) 13) anon15_Else_correct))))
(let ((anon13_Then_correct  (=> (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#2@0|))) (and (=> (= (ControlFlow 0 15) 14) anon14_Then_correct) (=> (= (ControlFlow 0 15) 11) anon14_Else_correct)))))
(let ((anon13_Else_correct  (=> (and (not (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#2@0|)))) (= (ControlFlow 0 10) 7)) anon9_correct)))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 16) 15) anon13_Then_correct) (=> (= (ControlFlow 0 16) 10) anon13_Else_correct))))
(let ((anon12_Else_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (not (|Set#Equal| |s#0@@2| |Set#Empty|))) (=> (not (|Set#Equal| |s#0@@2| |Set#Empty|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (exists ((|x#1@@0| Int) ) (!  (and (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#1@@0|))) (forall ((|y#2@@1| T@U) ) (!  (=> (|Set#IsMember| |s#0@@2| ($Box intType |y#2@@1|)) (<= |x#1@@0| (U_2_int |y#2@@1|)))
 :qid |DeterministicPickdfy.27:42|
 :skolemid |1605|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType |y#2@@1|)))
)))
 :qid |DeterministicPickdfy.27:20|
 :skolemid |1606|
 :pattern ( (|Set#IsMember| |s#0@@2| ($Box intType (int_2_U |x#1@@0|))))
)) (= $Heap@@1 $Heap@0))) (and (=> (= (ControlFlow 0 17) 16) anon12_Then_correct) (=> (= (ControlFlow 0 17) 4) anon12_Else_correct)))))))
(let ((anon11_Then_correct  (=> ($IsAlloc SetType |s#0@@2| (TSet TInt) $Heap@@1) (and (=> (= (ControlFlow 0 2) (- 0 3)) (not (|Set#Equal| |s#0@@2| |Set#Empty|))) (=> (and (not (|Set#Equal| |s#0@@2| |Set#Empty|)) (= (ControlFlow 0 2) (- 0 1))) (or (|Set#Equal| |s#0@@2| |s#0@@2|) (and (|Set#Subset| |s#0@@2| |s#0@@2|) (not (|Set#Subset| |s#0@@2| |s#0@@2|)))))))))
(let ((anon0_correct  (=> (and (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (not (|Set#Equal| |s#0@@2| |Set#Empty|))) (and (=> (= (ControlFlow 0 19) 2) anon11_Then_correct) (=> (= (ControlFlow 0 19) 17) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) ($Is SetType |s#0@@2| (TSet TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 20) 19))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
