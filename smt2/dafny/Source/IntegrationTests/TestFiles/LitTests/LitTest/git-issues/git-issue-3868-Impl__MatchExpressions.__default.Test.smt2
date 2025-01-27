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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.MatchExpressions.AB () T@U)
(declare-fun Tagclass.MatchExpressions.ABC () T@U)
(declare-fun Tagclass.MatchExpressions.Color () T@U)
(declare-fun |##MatchExpressions.Color.Red| () T@U)
(declare-fun |##MatchExpressions.Color.Green| () T@U)
(declare-fun |##MatchExpressions.Color.Blue| () T@U)
(declare-fun |##MatchExpressions.AB.A| () T@U)
(declare-fun |##MatchExpressions.ABC.BB| () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$AB () T@U)
(declare-fun tytagFamily$ABC () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#MatchExpressions.Color.Red| () T@U)
(declare-fun |#MatchExpressions.Color.Green| () T@U)
(declare-fun |#MatchExpressions.Color.Blue| () T@U)
(declare-fun |#MatchExpressions.AB.A| () T@U)
(declare-fun |#MatchExpressions.ABC.BB| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.MatchExpressions.Color () T@U)
(declare-fun Tclass.MatchExpressions.AB () T@U)
(declare-fun Tclass.MatchExpressions.ABC () T@U)
(declare-fun |MatchExpressions.Color#Equal| (T@U T@U) Bool)
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
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass.MatchExpressions.AB Tagclass.MatchExpressions.ABC Tagclass.MatchExpressions.Color |##MatchExpressions.Color.Red| |##MatchExpressions.Color.Green| |##MatchExpressions.Color.Blue| |##MatchExpressions.AB.A| |##MatchExpressions.ABC.BB| tytagFamily$nat tytagFamily$AB tytagFamily$ABC tytagFamily$Color)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#MatchExpressions.Color.Red|) |##MatchExpressions.Color.Red|))
(assert (= (DatatypeCtorId |#MatchExpressions.Color.Green|) |##MatchExpressions.Color.Green|))
(assert (= (DatatypeCtorId |#MatchExpressions.Color.Blue|) |##MatchExpressions.Color.Blue|))
(assert (= (DatatypeCtorId |#MatchExpressions.AB.A|) |##MatchExpressions.AB.A|))
(assert (= (DatatypeCtorId |#MatchExpressions.ABC.BB|) |##MatchExpressions.ABC.BB|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert ($Is DatatypeTypeType |#MatchExpressions.Color.Red| Tclass.MatchExpressions.Color))
(assert ($Is DatatypeTypeType |#MatchExpressions.Color.Green| Tclass.MatchExpressions.Color))
(assert ($Is DatatypeTypeType |#MatchExpressions.Color.Blue| Tclass.MatchExpressions.Color))
(assert ($Is DatatypeTypeType |#MatchExpressions.AB.A| Tclass.MatchExpressions.AB))
(assert ($Is DatatypeTypeType |#MatchExpressions.ABC.BB| Tclass.MatchExpressions.ABC))
(assert (forall ((a T@U) (b T@U) ) (! (= (|MatchExpressions.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (|MatchExpressions.Color#Equal| a b))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
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
 :skolemid |1480|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) ($Is DatatypeTypeType d Tclass.MatchExpressions.Color)) ($IsAlloc DatatypeTypeType d Tclass.MatchExpressions.Color $h@@0))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( ($IsAlloc DatatypeTypeType d Tclass.MatchExpressions.Color $h@@0))
)))
(assert (forall ((d@@0 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@0 Tclass.MatchExpressions.AB)) ($IsAlloc DatatypeTypeType d@@0 Tclass.MatchExpressions.AB $h@@1))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($IsAlloc DatatypeTypeType d@@0 Tclass.MatchExpressions.AB $h@@1))
)))
(assert (forall ((d@@1 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@1 Tclass.MatchExpressions.ABC)) ($IsAlloc DatatypeTypeType d@@1 Tclass.MatchExpressions.ABC $h@@2))
 :qid |unknown.0:0|
 :skolemid |660|
 :pattern ( ($IsAlloc DatatypeTypeType d@@1 Tclass.MatchExpressions.ABC $h@@2))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.MatchExpressions.AB) Tagclass.MatchExpressions.AB))
(assert (= (TagFamily Tclass.MatchExpressions.AB) tytagFamily$AB))
(assert (= (Tag Tclass.MatchExpressions.ABC) Tagclass.MatchExpressions.ABC))
(assert (= (TagFamily Tclass.MatchExpressions.ABC) tytagFamily$ABC))
(assert (= (Tag Tclass.MatchExpressions.Color) Tagclass.MatchExpressions.Color))
(assert (= (TagFamily Tclass.MatchExpressions.Color) tytagFamily$Color))
(assert (= |#MatchExpressions.Color.Red| (Lit DatatypeTypeType |#MatchExpressions.Color.Red|)))
(assert (= |#MatchExpressions.Color.Green| (Lit DatatypeTypeType |#MatchExpressions.Color.Green|)))
(assert (= |#MatchExpressions.Color.Blue| (Lit DatatypeTypeType |#MatchExpressions.Color.Blue|)))
(assert (= |#MatchExpressions.AB.A| (Lit DatatypeTypeType |#MatchExpressions.AB.A|)))
(assert (= |#MatchExpressions.ABC.BB| (Lit DatatypeTypeType |#MatchExpressions.ABC.BB|)))
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
(assert (forall ((h@@1 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@1))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |c##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |c##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |c##2@0| () T@U)
(declare-fun |y##0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |s##0@0| () Int)
(declare-fun |t##0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |abc#0@0| () Int)
(declare-fun |##o#0@0| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |MatchExpressions.__default.TailRecursive#canCall| (T@U Int) Bool)
(declare-fun |##o#1@0| () T@U)
(declare-fun |##n#1@0| () Int)
(declare-fun |MatchExpressions.__default.AutoAccumulator#canCall| (T@U Int) Bool)
(declare-fun |##o#2@0| () T@U)
(declare-fun |MatchExpressions.__default.LastCaseIsDisjunctive#canCall| (T@U) Bool)
(declare-fun |##o#3@0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$MatchExpressions.__default.Test)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |c##0@0| (Lit DatatypeTypeType |#MatchExpressions.Color.Green|))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |gitissue3868dfy.212:10|
 :skolemid |592|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
))) (and ($HeapSucc $Heap $Heap@0) (= |c##1@0| (Lit DatatypeTypeType |#MatchExpressions.Color.Red|)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (|MatchExpressions.Color#Equal| |c##1@0| |#MatchExpressions.Color.Red|)) (=> (|MatchExpressions.Color#Equal| |c##1@0| |#MatchExpressions.Color.Red|) (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |gitissue3868dfy.220:10|
 :skolemid |595|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (= |c##2@0| (Lit DatatypeTypeType |#MatchExpressions.Color.Blue|)) (= |y##0@0| (LitInt 10)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= (LitInt 0) |y##0@0|)) (=> (<= (LitInt 0) |y##0@0|) (=> (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (=> (and (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@2)))
 :qid |gitissue3868dfy.228:10|
 :skolemid |598|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |s##0@0| (LitInt 7)) (= |t##0@0| (LitInt 2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (= |t##0@0| (LitInt 0)) (= |t##0@0| (LitInt 2)))) (=> (or (= |t##0@0| (LitInt 0)) (= |t##0@0| (LitInt 2))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3)))
 :qid |gitissue3868dfy.238:10|
 :skolemid |601|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@3))
))) (and (and ($HeapSucc $Heap@2 $Heap@3) (= |abc#0@0| (LitInt 0))) (and (= |##o#0@0| (Lit DatatypeTypeType |#MatchExpressions.AB.A|)) ($IsAlloc DatatypeTypeType |##o#0@0| Tclass.MatchExpressions.AB $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat) (=> (and (= |##n#0@0| (LitInt 19)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@3)) (=> (and (and (|MatchExpressions.__default.TailRecursive#canCall| (Lit DatatypeTypeType |#MatchExpressions.AB.A|) (LitInt 19)) (|MatchExpressions.__default.TailRecursive#canCall| (Lit DatatypeTypeType |#MatchExpressions.AB.A|) (LitInt 19))) (and (= |##o#1@0| (Lit DatatypeTypeType |#MatchExpressions.AB.A|)) ($IsAlloc DatatypeTypeType |##o#1@0| Tclass.MatchExpressions.AB $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 19)) Tclass._System.nat) (=> (= |##n#1@0| (LitInt 19)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@3) (|MatchExpressions.__default.AutoAccumulator#canCall| (Lit DatatypeTypeType |#MatchExpressions.AB.A|) (LitInt 19))) (=> (and (and (and (|MatchExpressions.__default.AutoAccumulator#canCall| (Lit DatatypeTypeType |#MatchExpressions.AB.A|) (LitInt 19)) (= |##o#2@0| (Lit DatatypeTypeType |#MatchExpressions.ABC.BB|))) (and ($IsAlloc DatatypeTypeType |##o#2@0| Tclass.MatchExpressions.ABC $Heap@3) (|MatchExpressions.__default.LastCaseIsDisjunctive#canCall| (Lit DatatypeTypeType |#MatchExpressions.ABC.BB|)))) (and (and (|MatchExpressions.__default.LastCaseIsDisjunctive#canCall| (Lit DatatypeTypeType |#MatchExpressions.ABC.BB|)) (= |##o#3@0| (Lit DatatypeTypeType |#MatchExpressions.AB.A|))) (and ($IsAlloc DatatypeTypeType |##o#3@0| Tclass.MatchExpressions.AB $Heap@3) (= (ControlFlow 0 2) (- 0 1))))) ($Is intType (int_2_U (LitInt 12)) Tclass._System.nat)))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct)))
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
