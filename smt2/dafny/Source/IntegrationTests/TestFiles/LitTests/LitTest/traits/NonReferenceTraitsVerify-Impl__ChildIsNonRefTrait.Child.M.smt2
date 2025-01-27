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
(declare-fun Tagclass.ChildIsNonRefTrait.Parent () T@U)
(declare-fun Tagclass.ChildIsNonRefTrait.Child () T@U)
(declare-fun Tagclass.ChildIsNonRefTrait.Child? () T@U)
(declare-fun Tagclass.ChildIsNonRefTrait.Parent? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Parent () T@U)
(declare-fun tytagFamily$Child () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun ChildIsNonRefTrait.Child.F (T@U Int) Int)
(declare-fun |ChildIsNonRefTrait.Child.F#canCall| (T@U Int) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ChildIsNonRefTrait.Child () T@U)
(declare-fun ChildIsNonRefTrait.Parent.yy (T@U) Int)
(declare-fun LitInt (Int) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.ChildIsNonRefTrait.Parent () T@U)
(declare-fun Tclass.ChildIsNonRefTrait.Parent? () T@U)
(declare-fun Tclass.ChildIsNonRefTrait.Child? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$ChildIsNonRefTrait.Parent (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$ChildIsNonRefTrait.Child (T@U) Bool)
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
(assert (distinct alloc Tagclass._System.nat Tagclass.ChildIsNonRefTrait.Parent Tagclass.ChildIsNonRefTrait.Child Tagclass.ChildIsNonRefTrait.Child? Tagclass.ChildIsNonRefTrait.Parent? tytagFamily$nat tytagFamily$Parent tytagFamily$Child)
)
(assert (= (Ctor refType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) (|umpa#0| Int) ) (!  (=> (or (|ChildIsNonRefTrait.Child.F#canCall| this |umpa#0|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($Is refType this Tclass.ChildIsNonRefTrait.Child)) (< (ChildIsNonRefTrait.Parent.yy this) 800)))) (and (< (ChildIsNonRefTrait.Child.F this |umpa#0|) (+ (ChildIsNonRefTrait.Parent.yy this) 100)) (<= (LitInt 0) (ChildIsNonRefTrait.Child.F this |umpa#0|))))
 :qid |NonReferenceTraitsVerifydfy.17:14|
 :skolemid |499|
 :pattern ( (ChildIsNonRefTrait.Child.F this |umpa#0|))
))))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@0 T@U) (|umpa#0@@0| Int) ) (!  (=> (or (|ChildIsNonRefTrait.Child.F#canCall| this@@0 (LitInt |umpa#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.ChildIsNonRefTrait.Child)) (< (ChildIsNonRefTrait.Parent.yy this@@0) 800)))) (= (ChildIsNonRefTrait.Child.F this@@0 (LitInt |umpa#0@@0|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.17:14|
 :weight 3
 :skolemid |502|
 :pattern ( (ChildIsNonRefTrait.Child.F this@@0 (LitInt |umpa#0@@0|)))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ChildIsNonRefTrait.Parent $h@@0) ($IsAlloc refType |c#0| Tclass.ChildIsNonRefTrait.Parent? $h@@0))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ChildIsNonRefTrait.Parent $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ChildIsNonRefTrait.Parent? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ChildIsNonRefTrait.Child $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ChildIsNonRefTrait.Child? $h@@1))
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsNonRefTrait.Child $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ChildIsNonRefTrait.Child? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass.ChildIsNonRefTrait.Parent? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($IsAlloc refType $o Tclass.ChildIsNonRefTrait.Parent? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.ChildIsNonRefTrait.Child? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.ChildIsNonRefTrait.Child? $h@@3))
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
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@4 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass.ChildIsNonRefTrait.Parent?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))) ($IsAlloc intType (int_2_U (ChildIsNonRefTrait.Parent.yy $o@@1)) Tclass._System.nat $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( (ChildIsNonRefTrait.Parent.yy $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) ($Is refType $o@@2 Tclass.ChildIsNonRefTrait.Parent?)) ($Is intType (int_2_U (ChildIsNonRefTrait.Parent.yy $o@@2)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (ChildIsNonRefTrait.Parent.yy $o@@2))
))))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.ChildIsNonRefTrait.Parent)  (and ($Is refType |c#0@@1| Tclass.ChildIsNonRefTrait.Parent?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($Is refType |c#0@@1| Tclass.ChildIsNonRefTrait.Parent))
 :pattern ( ($Is refType |c#0@@1| Tclass.ChildIsNonRefTrait.Parent?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.ChildIsNonRefTrait.Child)  (and ($Is refType |c#0@@2| Tclass.ChildIsNonRefTrait.Child?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($Is refType |c#0@@2| Tclass.ChildIsNonRefTrait.Child))
 :pattern ( ($Is refType |c#0@@2| Tclass.ChildIsNonRefTrait.Child?))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass.ChildIsNonRefTrait.Child? $heap) ($IsAlloc refType $o@@3 Tclass.ChildIsNonRefTrait.Parent? $heap))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ChildIsNonRefTrait.Child? $heap))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) (|umpa#0@@1| Int) ) (!  (=> (or (|ChildIsNonRefTrait.Child.F#canCall| (Lit refType this@@1) (LitInt |umpa#0@@1|)) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.ChildIsNonRefTrait.Child)) (< (ChildIsNonRefTrait.Parent.yy (Lit refType this@@1)) 800)))) (= (ChildIsNonRefTrait.Child.F (Lit refType this@@1) (LitInt |umpa#0@@1|)) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.17:14|
 :weight 3
 :skolemid |503|
 :pattern ( (ChildIsNonRefTrait.Child.F (Lit refType this@@1) (LitInt |umpa#0@@1|)))
))))
(assert (forall ((x@@5 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1697|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall (($o@@5 T@U) ) (!  (=> ($Is refType $o@@5 Tclass.ChildIsNonRefTrait.Child?) ($Is refType $o@@5 Tclass.ChildIsNonRefTrait.Parent?))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is refType $o@@5 Tclass.ChildIsNonRefTrait.Child?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.ChildIsNonRefTrait.Parent) Tagclass.ChildIsNonRefTrait.Parent))
(assert (= (TagFamily Tclass.ChildIsNonRefTrait.Parent) tytagFamily$Parent))
(assert (= (Tag Tclass.ChildIsNonRefTrait.Child) Tagclass.ChildIsNonRefTrait.Child))
(assert (= (TagFamily Tclass.ChildIsNonRefTrait.Child) tytagFamily$Child))
(assert (= (Tag Tclass.ChildIsNonRefTrait.Child?) Tagclass.ChildIsNonRefTrait.Child?))
(assert (= (TagFamily Tclass.ChildIsNonRefTrait.Child?) tytagFamily$Child))
(assert (= (Tag Tclass.ChildIsNonRefTrait.Parent?) Tagclass.ChildIsNonRefTrait.Parent?))
(assert (= (TagFamily Tclass.ChildIsNonRefTrait.Parent?) tytagFamily$Parent))
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass.ChildIsNonRefTrait.Parent?)  (or (= $o@@6 null) (implements$ChildIsNonRefTrait.Parent (dtype $o@@6))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($Is refType $o@@6 Tclass.ChildIsNonRefTrait.Parent?))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass.ChildIsNonRefTrait.Child?)  (or (= $o@@7 null) (implements$ChildIsNonRefTrait.Child (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($Is refType $o@@7 Tclass.ChildIsNonRefTrait.Child?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@7)) (Lit BoxType ($Box T@@2 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@7)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@2 T@U) (|umpa#0@@2| Int) ) (!  (=> (or (|ChildIsNonRefTrait.Child.F#canCall| this@@2 |umpa#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 Tclass.ChildIsNonRefTrait.Child)) (< (ChildIsNonRefTrait.Parent.yy this@@2) 800)))) (= (ChildIsNonRefTrait.Child.F this@@2 |umpa#0@@2|) (LitInt 2)))
 :qid |NonReferenceTraitsVerifydfy.17:14|
 :skolemid |501|
 :pattern ( (ChildIsNonRefTrait.Child.F this@@2 |umpa#0@@2|))
))))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun this@@3 () T@U)
(declare-fun |p#0@0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |p#0| () Int)
(set-info :boogie-vc-id Impl$$ChildIsNonRefTrait.Child.M)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is intType (int_2_U (+ (ChildIsNonRefTrait.Parent.yy this@@3) 101)) Tclass._System.nat)) (=> ($Is intType (int_2_U (+ (ChildIsNonRefTrait.Parent.yy this@@3) 101)) Tclass._System.nat) (=> (and (= |p#0@0| (+ (ChildIsNonRefTrait.Parent.yy this@@3) 101)) (= (ControlFlow 0 2) (- 0 1))) (< |p#0@0| (+ (+ (ChildIsNonRefTrait.Parent.yy this@@3) (ChildIsNonRefTrait.Child.F this@@3 (LitInt 5))) 100))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.ChildIsNonRefTrait.Child) ($IsAlloc refType this@@3 Tclass.ChildIsNonRefTrait.Child $Heap)))) (and (and (<= (LitInt 0) |p#0|) (= 2 $FunctionContextHeight)) (and (< (ChildIsNonRefTrait.Parent.yy this@@3) 800) (= (ControlFlow 0 4) 2)))) anon0_correct)))
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
