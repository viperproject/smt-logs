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
(declare-fun Tagclass.True.B () T@U)
(declare-fun Tagclass.True.B? () T@U)
(declare-fun Tagclass.True.A () T@U)
(declare-fun Tagclass.True.A? () T@U)
(declare-fun tytagFamily$B () T@U)
(declare-fun tytagFamily$A () T@U)
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
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.True.B? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.True.A? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.True.A () T@U)
(declare-fun Tclass.True.B () T@U)
(declare-fun null () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun True.A.Valid (T@U) Bool)
(declare-fun True.B.Valid (Bool T@U) Bool)
(declare-fun reveal_True.B.Valid () Bool)
(declare-fun |True.B.Valid#canCall| (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$True.A (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun implements$True.B (T@U) Bool)
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
(assert (distinct alloc Tagclass.True.B Tagclass.True.B? Tagclass.True.A Tagclass.True.A? tytagFamily$B tytagFamily$A)
)
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.True.B? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass.True.A? $h))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAllocBox bx Tclass.True.B? $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.True.A $h@@0) ($IsAlloc refType |c#0| Tclass.True.A? $h@@0))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsAlloc refType |c#0| Tclass.True.A $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.True.A? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.True.B $h@@1) ($IsAlloc refType |c#0@@0| Tclass.True.B? $h@@1))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.True.B $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.True.B? $h@@1))
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
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass.True.A? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsAlloc refType $o Tclass.True.A? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.True.B? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.True.B? $h@@3))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.True.A)  (and ($Is refType |c#0@@1| Tclass.True.A?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( ($Is refType |c#0@@1| Tclass.True.A))
 :pattern ( ($Is refType |c#0@@1| Tclass.True.A?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.True.B)  (and ($Is refType |c#0@@2| Tclass.True.B?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is refType |c#0@@2| Tclass.True.B))
 :pattern ( ($Is refType |c#0@@2| Tclass.True.B?))
)))
(assert (forall (($o@@1 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@1 Tclass.True.B? $heap) ($IsAlloc refType $o@@1 Tclass.True.A? $heap))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.True.B? $heap))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@2 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))  (=> (and (or (not (= $o@@2 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@2) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2077|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@2 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|True.B.Valid#canCall| this) (and (< 0 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.True.B)))) (= (True.A.Valid this) (True.B.Valid reveal_True.B.Valid this)))
 :qid |gitissue5017adfy.5:21|
 :skolemid |502|
 :pattern ( (True.A.Valid this) ($Is refType this Tclass.True.B))
 :pattern ( (True.A.Valid this) (True.B.Valid reveal_True.B.Valid this))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 T@U) ) (!  (=> (or (|True.B.Valid#canCall| this@@0) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.True.B)))) (= (True.B.Valid true this@@0) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue5017adfy.9:28|
 :skolemid |500|
 :pattern ( (True.B.Valid true this@@0))
))))
(assert (forall (($o@@3 T@U) ) (!  (=> ($Is refType $o@@3 Tclass.True.B?) ($Is refType $o@@3 Tclass.True.A?))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($Is refType $o@@3 Tclass.True.B?))
)))
(assert (= (Tag Tclass.True.B) Tagclass.True.B))
(assert (= (TagFamily Tclass.True.B) tytagFamily$B))
(assert (= (Tag Tclass.True.B?) Tagclass.True.B?))
(assert (= (TagFamily Tclass.True.B?) tytagFamily$B))
(assert (= (Tag Tclass.True.A) Tagclass.True.A))
(assert (= (TagFamily Tclass.True.A) tytagFamily$A))
(assert (= (Tag Tclass.True.A?) Tagclass.True.A?))
(assert (= (TagFamily Tclass.True.A?) tytagFamily$A))
(assert (forall (($o@@4 T@U) ) (! (= ($Is refType $o@@4 Tclass.True.A?)  (or (= $o@@4 null) (implements$True.A (dtype $o@@4))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($Is refType $o@@4 Tclass.True.A?))
)))
(assert (forall (($o@@5 T@U) ) (! (= ($Is refType $o@@5 Tclass.True.B?)  (or (= $o@@5 null) (implements$True.B (dtype $o@@5))))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( ($Is refType $o@@5 Tclass.True.B?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|True.B.Valid#canCall| (Lit refType this@@1)) (and (< 0 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass.True.B)))) (= (True.B.Valid true (Lit refType this@@1)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |gitissue5017adfy.9:28|
 :weight 3
 :skolemid |501|
 :pattern ( (True.B.Valid true (Lit refType this@@1)))
))))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |b#0| () T@U)
(declare-fun |True.A.Valid#canCall| (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#a#0| () Bool)
(declare-fun |a#0| () T@U)
(set-info :boogie-vc-id Impl$$True.__default.TestByReveal)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_Else_correct true))
(let ((anon3_Then_correct  (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= $Heap $Heap@0) reveal_True.B.Valid)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |b#0| null)) (not true))) (=> (and (and ($IsAllocBox ($Box refType |b#0|) Tclass.True.A? $Heap@0) (|True.A.Valid#canCall| |b#0|)) (and (|True.A.Valid#canCall| |b#0|) (= (ControlFlow 0 2) (- 0 1)))) (True.A.Valid |b#0|)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 6) 2) anon3_Then_correct) (=> (= (ControlFlow 0 6) 5) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |b#0| Tclass.True.B) ($IsAlloc refType |b#0| Tclass.True.B $Heap))) (and (and (=> |defass#a#0| (and ($Is refType |a#0| Tclass.True.A) ($IsAlloc refType |a#0| Tclass.True.A $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 7) 6)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
