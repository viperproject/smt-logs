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
(declare-fun Tagclass._module.NatOutcome () T@U)
(declare-fun Tagclass._module.NatOutcome? () T@U)
(declare-fun tytagFamily$NatOutcome () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.NatOutcome () T@U)
(declare-fun Tclass._module.NatOutcome? () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.NatOutcome.PropagateFailure (T@U) T@U)
(declare-fun |_module.NatOutcome.PropagateFailure#canCall| (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.NatOutcome.IsFailure (T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.NatOutcome.Extract (T@U) Int)
(declare-fun |_module.NatOutcome.Extract#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.NatOutcome (T@U) Bool)
(declare-fun dtype (T@U) T@U)
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
(assert (distinct alloc Tagclass._module.NatOutcome Tagclass._module.NatOutcome? tytagFamily$NatOutcome)
)
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor refType) 3))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.NatOutcome $h) ($IsAlloc refType |c#0| Tclass._module.NatOutcome? $h))
 :qid |unknown.0:0|
 :skolemid |611|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NatOutcome $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.NatOutcome? $h))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._module.NatOutcome? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($IsAlloc refType $o Tclass._module.NatOutcome? $h@@0))
)))
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
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (and (or (|_module.NatOutcome.PropagateFailure#canCall| this) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this null)) (not true)) ($IsAlloc refType this Tclass._module.NatOutcome $Heap)) (_module.NatOutcome.IsFailure this)))) ($IsGoodHeap $Heap)) ($IsAlloc refType (_module.NatOutcome.PropagateFailure this) Tclass._module.NatOutcome $Heap))
 :qid |NatOutcomedfy.17:14|
 :skolemid |606|
 :pattern ( ($IsAlloc refType (_module.NatOutcome.PropagateFailure this) Tclass._module.NatOutcome $Heap))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((this@@0 T@U) ) (!  (=> (or (|_module.NatOutcome.Extract#canCall| this@@0) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass._module.NatOutcome)) (not (_module.NatOutcome.IsFailure this@@0))))) (<= (LitInt 0) (_module.NatOutcome.Extract this@@0)))
 :qid |NatOutcomedfy.18:14|
 :skolemid |608|
 :pattern ( (_module.NatOutcome.Extract this@@0))
)))
(assert (forall ((s T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s v))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.NatOutcome)  (and ($Is refType |c#0@@0| Tclass._module.NatOutcome?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.NatOutcome))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.NatOutcome?))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |676|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((this@@1 T@U) ) (!  (=> (or (|_module.NatOutcome.PropagateFailure#canCall| this@@1) (and (< 3 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.NatOutcome)) (_module.NatOutcome.IsFailure this@@1)))) ($Is refType (_module.NatOutcome.PropagateFailure this@@1) Tclass._module.NatOutcome))
 :qid |NatOutcomedfy.17:14|
 :skolemid |605|
 :pattern ( (_module.NatOutcome.PropagateFailure this@@1))
)))
(assert (forall ((s@@1 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@1 val@@4)) s@@1) (= (|Seq#Build_inv1| (|Seq#Build| s@@1 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@1 val@@4))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._module.NatOutcome) Tagclass._module.NatOutcome))
(assert (= (TagFamily Tclass._module.NatOutcome) tytagFamily$NatOutcome))
(assert (= (Tag Tclass._module.NatOutcome?) Tagclass._module.NatOutcome?))
(assert (= (TagFamily Tclass._module.NatOutcome?) tytagFamily$NatOutcome))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass._module.NatOutcome?)  (or (= $o@@1 null) (implements$_module.NatOutcome (dtype $o@@1))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($Is refType $o@@1 Tclass._module.NatOutcome?))
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
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |call2formal@res#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |stmt2#0@1| () Int)
(declare-fun |res#0@5| () T@U)
(declare-fun |call2formal@res#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |stmt2#0@0| () Int)
(declare-fun |defass#valueOrError5#0| () Bool)
(declare-fun |valueOrError5#0@0| () T@U)
(declare-fun |msg##1@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun |call2formal@res#0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |_module.NatOutcome.IsFailure#canCall| (T@U) Bool)
(declare-fun |res#0@4| () T@U)
(declare-fun |valueOrError3#0@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |expr2#0@0| () Int)
(declare-fun |defass#valueOrError4#0| () Bool)
(declare-fun |valueOrError4#0@0| () T@U)
(declare-fun |call2formal@res#0@@0| () T@U)
(declare-fun |res#0@3| () T@U)
(declare-fun |x#Z#1@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |b#0| () Bool)
(declare-fun |o1#0| () T@U)
(declare-fun |o2#0| () T@U)
(declare-fun |call2formal@res#0@0@@1| () T@U)
(declare-fun |stmt1#0@1| () Int)
(declare-fun |valueOrError3#0@0| () T@U)
(declare-fun |res#0@2| () T@U)
(declare-fun |call2formal@res#0@0@@2| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |stmt1#0@0| () Int)
(declare-fun |defass#valueOrError2#0| () Bool)
(declare-fun |valueOrError2#0@0| () T@U)
(declare-fun |msg##0@0| () T@U)
(declare-fun |call2formal@res#0@@1| () T@U)
(declare-fun |res#0@1| () T@U)
(declare-fun |valueOrError0#0@1| () T@U)
(declare-fun |expr1#0@0| () Int)
(declare-fun |defass#valueOrError1#0| () Bool)
(declare-fun |valueOrError1#0@0| () T@U)
(declare-fun |call2formal@res#0@@2| () T@U)
(declare-fun |res#0@0| () T@U)
(declare-fun |x#Z#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |valueOrError0#0@0| () T@U)
(declare-fun |n#0| () Int)
(declare-fun |defass#res#0| () Bool)
(declare-fun |res#0| () T@U)
(declare-fun |expr1#0| () Int)
(declare-fun |valueOrError0#0| () T@U)
(declare-fun |use_expr1#0| () Int)
(declare-fun |stmt1#0| () Int)
(declare-fun |valueOrError1#0| () T@U)
(declare-fun |valueOrError2#0| () T@U)
(declare-fun |use_stmt1#0| () Int)
(declare-fun |expr2#0| () Int)
(declare-fun |valueOrError3#0| () T@U)
(declare-fun |use_expr2#0| () Int)
(declare-fun |stmt2#0| () Int)
(declare-fun |valueOrError4#0| () T@U)
(declare-fun |valueOrError5#0| () T@U)
(declare-fun |use_stmt2#0| () Int)
(assert  (and (= (Ctor SeqType) 7) (= (Ctor charType) 8)))
(set-info :boogie-vc-id Impl$$_module.__default.TestStatementParsing)
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
 (=> (= (ControlFlow 0 0) 69) (let ((anon39_Else_correct  (=> (not (_module.NatOutcome.IsFailure |call2formal@res#0@0|)) (and (=> (= (ControlFlow 0 30) (- 0 33)) true) (and (=> (= (ControlFlow 0 30) (- 0 32)) (or (not (= |call2formal@res#0@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0|) Tclass._module.NatOutcome? $Heap@3) (and (=> (= (ControlFlow 0 30) (- 0 31)) (not (_module.NatOutcome.IsFailure |call2formal@res#0@0|))) (=> (not (_module.NatOutcome.IsFailure |call2formal@res#0@0|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0|) (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0|)) (and (= |stmt2#0@1| (_module.NatOutcome.Extract |call2formal@res#0@0|)) (= (ControlFlow 0 30) (- 0 29)))) true))))))))))
(let ((anon39_Then_correct  (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0|) (and (=> (= (ControlFlow 0 25) (- 0 28)) true) (and (=> (= (ControlFlow 0 25) (- 0 27)) (or (not (= |call2formal@res#0@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0|) Tclass._module.NatOutcome? $Heap@3) (and (=> (= (ControlFlow 0 25) (- 0 26)) (_module.NatOutcome.IsFailure |call2formal@res#0@0|)) (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0|) (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0|)) (and (= |res#0@5| (_module.NatOutcome.PropagateFailure |call2formal@res#0@0|)) (= (ControlFlow 0 25) (- 0 24)))) true))))))))))
(let ((anon38_Else_correct  (=> (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|)) (and (=> (= (ControlFlow 0 34) (- 0 39)) true) (and (=> (= (ControlFlow 0 34) (- 0 38)) (or (not (= |call2formal@res#0@0@@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@0|) Tclass._module.NatOutcome? $Heap@2) (and (=> (= (ControlFlow 0 34) (- 0 37)) (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|))) (=> (and (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|)) (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@0|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@0|) (= |stmt2#0@0| (_module.NatOutcome.Extract |call2formal@res#0@0@@0|))) (and (=> |defass#valueOrError5#0| (and ($Is refType |valueOrError5#0@0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError5#0@0| Tclass._module.NatOutcome $Heap@2))) (= |msg##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 107))))))) (=> (and (and (and ($Is refType |call2formal@res#0| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0| Tclass._module.NatOutcome $Heap@@0)) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and ($Is refType |call2formal@res#0@0| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@0| Tclass._module.NatOutcome $Heap@3)) (and (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@2) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@2)))
 :qid |NatOutcomedfy.57:8|
 :skolemid |533|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@2))
)) ($HeapSucc $Heap@2 $Heap@3)))) (and (=> (= (ControlFlow 0 34) (- 0 36)) true) (and (=> (= (ControlFlow 0 34) (- 0 35)) (or (not (= |call2formal@res#0@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0|) Tclass._module.NatOutcome? $Heap@3) (=> (and (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0|) (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0|)) (and (=> (= (ControlFlow 0 34) 25) anon39_Then_correct) (=> (= (ControlFlow 0 34) 30) anon39_Else_correct))))))))))))))))))
(let ((anon38_Then_correct  (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|) (and (=> (= (ControlFlow 0 20) (- 0 23)) true) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |call2formal@res#0@0@@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@0|) Tclass._module.NatOutcome? $Heap@2) (and (=> (= (ControlFlow 0 20) (- 0 21)) (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|)) (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@0|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@0|) (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@0|)) (and (= |res#0@4| (_module.NatOutcome.PropagateFailure |call2formal@res#0@0@@0|)) (= (ControlFlow 0 20) (- 0 19)))) true))))))))))
(let ((anon37_Else_correct  (=> (not (_module.NatOutcome.IsFailure |valueOrError3#0@1|)) (and (=> (= (ControlFlow 0 40) (- 0 44)) (or (not (= |valueOrError3#0@1| null)) (not true))) (=> (or (not (= |valueOrError3#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError3#0@1|) Tclass._module.NatOutcome? $Heap@1) (and (=> (= (ControlFlow 0 40) (- 0 43)) (not (_module.NatOutcome.IsFailure |valueOrError3#0@1|))) (=> (not (_module.NatOutcome.IsFailure |valueOrError3#0@1|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |valueOrError3#0@1|) (|_module.NatOutcome.Extract#canCall| |valueOrError3#0@1|)) (and (= |expr2#0@0| (_module.NatOutcome.Extract |valueOrError3#0@1|)) (=> |defass#valueOrError4#0| (and ($Is refType |valueOrError4#0@0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError4#0@0| Tclass._module.NatOutcome $Heap@1))))) (=> (and (and (and ($Is refType |call2formal@res#0@@0| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@@0| Tclass._module.NatOutcome $Heap@@0)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($Is refType |call2formal@res#0@0@@0| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@0@@0| Tclass._module.NatOutcome $Heap@2)) (and (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@3)))
 :qid |NatOutcomedfy.53:8|
 :skolemid |532|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@3))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 40) (- 0 42)) true) (and (=> (= (ControlFlow 0 40) (- 0 41)) (or (not (= |call2formal@res#0@0@@0| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@0| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@0|) Tclass._module.NatOutcome? $Heap@2) (=> (and (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@0|) (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@0|)) (and (=> (= (ControlFlow 0 40) 20) anon38_Then_correct) (=> (= (ControlFlow 0 40) 34) anon38_Else_correct)))))))))))))))))
(let ((anon37_Then_correct  (=> (_module.NatOutcome.IsFailure |valueOrError3#0@1|) (and (=> (= (ControlFlow 0 16) (- 0 18)) (or (not (= |valueOrError3#0@1| null)) (not true))) (=> (or (not (= |valueOrError3#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError3#0@1|) Tclass._module.NatOutcome? $Heap@1) (and (=> (= (ControlFlow 0 16) (- 0 17)) (_module.NatOutcome.IsFailure |valueOrError3#0@1|)) (=> (_module.NatOutcome.IsFailure |valueOrError3#0@1|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |valueOrError3#0@1|) (|_module.NatOutcome.PropagateFailure#canCall| |valueOrError3#0@1|)) (and (= |res#0@3| (_module.NatOutcome.PropagateFailure |valueOrError3#0@1|)) (= (ControlFlow 0 16) (- 0 15)))) true)))))))))
(let ((anon18_correct  (=> (and (= |x#Z#1@0| |let#1#0#0|) (= |valueOrError3#0@1| (let ((|x#1| (ite |b#0| |o1#0| |o2#0|)))
|x#1|))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (or (not (= |valueOrError3#0@1| null)) (not true))) (=> (or (not (= |valueOrError3#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError3#0@1|) Tclass._module.NatOutcome? $Heap@1) (=> (and (|_module.NatOutcome.IsFailure#canCall| |valueOrError3#0@1|) (|_module.NatOutcome.IsFailure#canCall| |valueOrError3#0@1|)) (and (=> (= (ControlFlow 0 45) 16) anon37_Then_correct) (=> (= (ControlFlow 0 45) 40) anon37_Else_correct)))))))))
(let ((anon36_Else_correct  (=> (and (and (not |b#0|) (= |let#1#0#0| |o2#0|)) (and ($Is refType |let#1#0#0| Tclass._module.NatOutcome?) (= (ControlFlow 0 48) 45))) anon18_correct)))
(let ((anon36_Then_correct  (=> (and (and |b#0| (= |let#1#0#0| |o1#0|)) (and ($Is refType |let#1#0#0| Tclass._module.NatOutcome?) (= (ControlFlow 0 47) 45))) anon18_correct)))
(let ((anon35_Else_correct  (=> (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|)) (and (=> (= (ControlFlow 0 49) (- 0 52)) true) (and (=> (= (ControlFlow 0 49) (- 0 51)) (or (not (= |call2formal@res#0@0@@1| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@1|) Tclass._module.NatOutcome? $Heap@1) (and (=> (= (ControlFlow 0 49) (- 0 50)) (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|))) (=> (and (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|)) (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@1|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@1|) (= |stmt1#0@1| (_module.NatOutcome.Extract |call2formal@res#0@0@@1|))) (and ($Is refType |valueOrError3#0@0| Tclass._module.NatOutcome?) ($IsAlloc refType |valueOrError3#0@0| Tclass._module.NatOutcome? $Heap@1))) (and (=> (= (ControlFlow 0 49) 47) anon36_Then_correct) (=> (= (ControlFlow 0 49) 48) anon36_Else_correct))))))))))))
(let ((anon35_Then_correct  (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|) (and (=> (= (ControlFlow 0 11) (- 0 14)) true) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= |call2formal@res#0@0@@1| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@1|) Tclass._module.NatOutcome? $Heap@1) (and (=> (= (ControlFlow 0 11) (- 0 12)) (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|)) (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@1|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@1|) (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@1|)) (and (= |res#0@2| (_module.NatOutcome.PropagateFailure |call2formal@res#0@0@@1|)) (= (ControlFlow 0 11) (- 0 10)))) true))))))))))
(let ((anon34_Else_correct  (=> (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|)) (and (=> (= (ControlFlow 0 53) (- 0 58)) true) (and (=> (= (ControlFlow 0 53) (- 0 57)) (or (not (= |call2formal@res#0@0@@2| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@2| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@2|) Tclass._module.NatOutcome? $Heap@0) (and (=> (= (ControlFlow 0 53) (- 0 56)) (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|))) (=> (and (not (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|)) (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@2|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |call2formal@res#0@0@@2|) (= |stmt1#0@0| (_module.NatOutcome.Extract |call2formal@res#0@0@@2|))) (and (=> |defass#valueOrError2#0| (and ($Is refType |valueOrError2#0@0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError2#0@0| Tclass._module.NatOutcome $Heap@0))) (= |msg##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 44))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 99))) ($Box charType (|char#FromInt| 107))))))) (=> (and (and (and ($Is refType |call2formal@res#0@@1| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@@1| Tclass._module.NatOutcome $Heap@@0)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($Is refType |call2formal@res#0@0@@1| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@0@@1| Tclass._module.NatOutcome $Heap@1)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4)))
 :qid |NatOutcomedfy.57:8|
 :skolemid |533|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@4))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 53) (- 0 55)) true) (and (=> (= (ControlFlow 0 53) (- 0 54)) (or (not (= |call2formal@res#0@0@@1| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@1|) Tclass._module.NatOutcome? $Heap@1) (=> (and (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@1|) (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@1|)) (and (=> (= (ControlFlow 0 53) 11) anon35_Then_correct) (=> (= (ControlFlow 0 53) 49) anon35_Else_correct))))))))))))))))))
(let ((anon34_Then_correct  (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|) (and (=> (= (ControlFlow 0 6) (- 0 9)) true) (and (=> (= (ControlFlow 0 6) (- 0 8)) (or (not (= |call2formal@res#0@0@@2| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@2| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@2|) Tclass._module.NatOutcome? $Heap@0) (and (=> (= (ControlFlow 0 6) (- 0 7)) (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|)) (=> (_module.NatOutcome.IsFailure |call2formal@res#0@0@@2|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@2|) (|_module.NatOutcome.PropagateFailure#canCall| |call2formal@res#0@0@@2|)) (and (= |res#0@1| (_module.NatOutcome.PropagateFailure |call2formal@res#0@0@@2|)) (= (ControlFlow 0 6) (- 0 5)))) true))))))))))
(let ((anon33_Else_correct  (=> (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) (and (=> (= (ControlFlow 0 59) (- 0 63)) (or (not (= |valueOrError0#0@1| null)) (not true))) (=> (or (not (= |valueOrError0#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError0#0@1|) Tclass._module.NatOutcome? $Heap@@0) (and (=> (= (ControlFlow 0 59) (- 0 62)) (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|))) (=> (not (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) (=> (and (and (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|) (|_module.NatOutcome.Extract#canCall| |valueOrError0#0@1|)) (and (= |expr1#0@0| (_module.NatOutcome.Extract |valueOrError0#0@1|)) (=> |defass#valueOrError1#0| (and ($Is refType |valueOrError1#0@0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError1#0@0| Tclass._module.NatOutcome $Heap@@0))))) (=> (and (and (and ($Is refType |call2formal@res#0@@2| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@@2| Tclass._module.NatOutcome $Heap@@0)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($Is refType |call2formal@res#0@0@@2| Tclass._module.NatOutcome) ($IsAlloc refType |call2formal@res#0@0@@2| Tclass._module.NatOutcome $Heap@0)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5)))
 :qid |NatOutcomedfy.53:8|
 :skolemid |532|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5))
)) ($HeapSucc $Heap@@0 $Heap@0)))) (and (=> (= (ControlFlow 0 59) (- 0 61)) true) (and (=> (= (ControlFlow 0 59) (- 0 60)) (or (not (= |call2formal@res#0@0@@2| null)) (not true))) (=> (or (not (= |call2formal@res#0@0@@2| null)) (not true)) (=> ($IsAllocBox ($Box refType |call2formal@res#0@0@@2|) Tclass._module.NatOutcome? $Heap@0) (=> (and (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@2|) (|_module.NatOutcome.IsFailure#canCall| |call2formal@res#0@0@@2|)) (and (=> (= (ControlFlow 0 59) 6) anon34_Then_correct) (=> (= (ControlFlow 0 59) 53) anon34_Else_correct)))))))))))))))))
(let ((anon33_Then_correct  (=> (_module.NatOutcome.IsFailure |valueOrError0#0@1|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |valueOrError0#0@1| null)) (not true))) (=> (or (not (= |valueOrError0#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError0#0@1|) Tclass._module.NatOutcome? $Heap@@0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.NatOutcome.IsFailure |valueOrError0#0@1|)) (=> (_module.NatOutcome.IsFailure |valueOrError0#0@1|) (=> (and (and (|_module.NatOutcome.PropagateFailure#canCall| |valueOrError0#0@1|) (|_module.NatOutcome.PropagateFailure#canCall| |valueOrError0#0@1|)) (and (= |res#0@0| (_module.NatOutcome.PropagateFailure |valueOrError0#0@1|)) (= (ControlFlow 0 2) (- 0 1)))) true)))))))))
(let ((anon3_correct  (=> (and (= |x#Z#0@0| |let#0#0#0|) (= |valueOrError0#0@1| (let ((|x#0| (ite |b#0| |o1#0| |o2#0|)))
|x#0|))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (or (not (= |valueOrError0#0@1| null)) (not true))) (=> (or (not (= |valueOrError0#0@1| null)) (not true)) (=> ($IsAllocBox ($Box refType |valueOrError0#0@1|) Tclass._module.NatOutcome? $Heap@@0) (=> (and (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|) (|_module.NatOutcome.IsFailure#canCall| |valueOrError0#0@1|)) (and (=> (= (ControlFlow 0 64) 2) anon33_Then_correct) (=> (= (ControlFlow 0 64) 59) anon33_Else_correct)))))))))
(let ((anon32_Else_correct  (=> (and (and (not |b#0|) (= |let#0#0#0| |o2#0|)) (and ($Is refType |let#0#0#0| Tclass._module.NatOutcome?) (= (ControlFlow 0 67) 64))) anon3_correct)))
(let ((anon32_Then_correct  (=> (and (and |b#0| (= |let#0#0#0| |o1#0|)) (and ($Is refType |let#0#0#0| Tclass._module.NatOutcome?) (= (ControlFlow 0 66) 64))) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and ($Is refType |valueOrError0#0@0| Tclass._module.NatOutcome?) ($IsAlloc refType |valueOrError0#0@0| Tclass._module.NatOutcome? $Heap@@0)) (and (=> (= (ControlFlow 0 68) 66) anon32_Then_correct) (=> (= (ControlFlow 0 68) 67) anon32_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (<= (LitInt 0) |n#0|)) (and ($Is refType |o1#0| Tclass._module.NatOutcome) ($IsAlloc refType |o1#0| Tclass._module.NatOutcome $Heap@@0))) (and (and (and ($Is refType |o2#0| Tclass._module.NatOutcome) ($IsAlloc refType |o2#0| Tclass._module.NatOutcome $Heap@@0)) (=> |defass#res#0| (and ($Is refType |res#0| Tclass._module.NatOutcome) ($IsAlloc refType |res#0| Tclass._module.NatOutcome $Heap@@0)))) (and (<= (LitInt 0) |expr1#0|) true))) (=> (and (and (and (and (and ($Is refType |valueOrError0#0| Tclass._module.NatOutcome?) ($IsAlloc refType |valueOrError0#0| Tclass._module.NatOutcome? $Heap@@0)) true) (and (and (<= (LitInt 0) |use_expr1#0|) true) (and (<= (LitInt 0) |stmt1#0|) true))) (and (and (and (=> |defass#valueOrError1#0| (and ($Is refType |valueOrError1#0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError1#0| Tclass._module.NatOutcome $Heap@@0))) true) (and (=> |defass#valueOrError2#0| (and ($Is refType |valueOrError2#0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError2#0| Tclass._module.NatOutcome $Heap@@0))) true)) (and (and (<= (LitInt 0) |use_stmt1#0|) true) (and (<= (LitInt 0) |expr2#0|) true)))) (and (and (and (and ($Is refType |valueOrError3#0| Tclass._module.NatOutcome?) ($IsAlloc refType |valueOrError3#0| Tclass._module.NatOutcome? $Heap@@0)) true) (and (and (<= (LitInt 0) |use_expr2#0|) true) (and (<= (LitInt 0) |stmt2#0|) true))) (and (and (and (=> |defass#valueOrError4#0| (and ($Is refType |valueOrError4#0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError4#0| Tclass._module.NatOutcome $Heap@@0))) true) (and (=> |defass#valueOrError5#0| (and ($Is refType |valueOrError5#0| Tclass._module.NatOutcome) ($IsAlloc refType |valueOrError5#0| Tclass._module.NatOutcome $Heap@@0))) true)) (and (and (<= (LitInt 0) |use_stmt2#0|) true) (and (= 4 $FunctionContextHeight) (= (ControlFlow 0 69) 68)))))) anon0_correct))))
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
