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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass.NewSyntax.NumericNames () T@U)
(declare-fun |##NewSyntax.NumericNames.NumNam| () T@U)
(declare-fun tytagFamily$NumericNames () T@U)
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
(declare-fun |#NewSyntax.NumericNames.NumNam| (Int Real Bool) T@U)
(declare-fun NewSyntax.NumericNames.f (T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun |$IsA#NewSyntax.NumericNames| (T@U) Bool)
(declare-fun NewSyntax.NumericNames.NumNam_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun NewSyntax.NumericNames._010 (T@U) Int)
(declare-fun NewSyntax.NumericNames._10 (T@U) Real)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.NewSyntax.NumericNames () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
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
(assert (distinct TBool TInt TReal TagBool TagInt TagReal alloc Tagclass.NewSyntax.NumericNames |##NewSyntax.NumericNames.NumNam| tytagFamily$NumericNames)
)
(assert (forall ((|a#28#0#0| Int) (|a#28#1#0| Real) (|a#28#2#0| Bool) ) (! (= (NewSyntax.NumericNames.f (|#NewSyntax.NumericNames.NumNam| |a#28#0#0| |a#28#1#0| |a#28#2#0|)) |a#28#2#0|)
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |564|
 :pattern ( (|#NewSyntax.NumericNames.NumNam| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#NewSyntax.NumericNames| d) (NewSyntax.NumericNames.NumNam_q d))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (|$IsA#NewSyntax.NumericNames| d))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| Real) (|a#22#2#0| Bool) ) (! (= (DatatypeCtorId (|#NewSyntax.NumericNames.NumNam| |a#22#0#0| |a#22#1#0| |a#22#2#0|)) |##NewSyntax.NumericNames.NumNam|)
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |553|
 :pattern ( (|#NewSyntax.NumericNames.NumNam| |a#22#0#0| |a#22#1#0| |a#22#2#0|))
)))
(assert (forall ((|a#26#0#0| Int) (|a#26#1#0| Real) (|a#26#2#0| Bool) ) (! (= (NewSyntax.NumericNames._010 (|#NewSyntax.NumericNames.NumNam| |a#26#0#0| |a#26#1#0| |a#26#2#0|)) |a#26#0#0|)
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |562|
 :pattern ( (|#NewSyntax.NumericNames.NumNam| |a#26#0#0| |a#26#1#0| |a#26#2#0|))
)))
(assert (forall ((|a#27#0#0| Int) (|a#27#1#0| Real) (|a#27#2#0| Bool) ) (! (= (NewSyntax.NumericNames._10 (|#NewSyntax.NumericNames.NumNam| |a#27#0#0| |a#27#1#0| |a#27#2#0|)) |a#27#1#0|)
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |563|
 :pattern ( (|#NewSyntax.NumericNames.NumNam| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass.NewSyntax.NumericNames) (NewSyntax.NumericNames.NumNam_q d@@0))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (NewSyntax.NumericNames.NumNam_q d@@0) ($Is DatatypeTypeType d@@0 Tclass.NewSyntax.NumericNames))
)))
(assert (forall ((|a#24#0#0| Int) (|a#24#1#0| Real) (|a#24#2#0| Bool) ) (! (= ($Is DatatypeTypeType (|#NewSyntax.NumericNames.NumNam| |a#24#0#0| |a#24#1#0| |a#24#2#0|) Tclass.NewSyntax.NumericNames)  (and (and ($Is intType (int_2_U |a#24#0#0|) TInt) ($Is realType (real_2_U |a#24#1#0|) TReal)) ($Is boolType (bool_2_U |a#24#2#0|) TBool)))
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |557|
 :pattern ( ($Is DatatypeTypeType (|#NewSyntax.NumericNames.NumNam| |a#24#0#0| |a#24#1#0| |a#24#2#0|) Tclass.NewSyntax.NumericNames))
)))
(assert (forall ((d@@1 T@U) ) (! (= (NewSyntax.NumericNames.NumNam_q d@@1) (= (DatatypeCtorId d@@1) |##NewSyntax.NumericNames.NumNam|))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (NewSyntax.NumericNames.NumNam_q d@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (NewSyntax.NumericNames.NumNam_q d@@2) (exists ((|a#23#0#0| Int) (|a#23#1#0| Real) (|a#23#2#0| Bool) ) (! (= d@@2 (|#NewSyntax.NumericNames.NumNam| |a#23#0#0| |a#23#1#0| |a#23#2#0|))
 :qid |DatatypeUpdatedfy.33:34|
 :skolemid |555|
)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (NewSyntax.NumericNames.NumNam_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Unbox T@@0 ($Box T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@0 x@@3))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
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
 :skolemid |1150|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@3 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (NewSyntax.NumericNames.NumNam_q d@@3) ($IsAlloc DatatypeTypeType d@@3 Tclass.NewSyntax.NumericNames $h))) ($IsAlloc intType (int_2_U (NewSyntax.NumericNames._010 d@@3)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( ($IsAlloc intType (int_2_U (NewSyntax.NumericNames._010 d@@3)) TInt $h))
)))
(assert (forall ((d@@4 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (NewSyntax.NumericNames.NumNam_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.NewSyntax.NumericNames $h@@0))) ($IsAlloc realType (real_2_U (NewSyntax.NumericNames._10 d@@4)) TReal $h@@0))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( ($IsAlloc realType (real_2_U (NewSyntax.NumericNames._10 d@@4)) TReal $h@@0))
)))
(assert (forall ((d@@5 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (NewSyntax.NumericNames.NumNam_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass.NewSyntax.NumericNames $h@@1))) ($IsAlloc boolType (bool_2_U (NewSyntax.NumericNames.f d@@5)) TBool $h@@1))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($IsAlloc boolType (bool_2_U (NewSyntax.NumericNames.f d@@5)) TBool $h@@1))
)))
(assert (forall ((d@@6 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@6 Tclass.NewSyntax.NumericNames)) ($IsAlloc DatatypeTypeType d@@6 Tclass.NewSyntax.NumericNames $h@@2))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 Tclass.NewSyntax.NumericNames $h@@2))
)))
(assert (= (Tag Tclass.NewSyntax.NumericNames) Tagclass.NewSyntax.NumericNames))
(assert (= (TagFamily Tclass.NewSyntax.NumericNames) tytagFamily$NumericNames))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc realType v@@0 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@0 TReal h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@1 T@U) ) (! ($IsAlloc boolType v@@1 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@1 TBool h@@1))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is realType v@@3 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@3 TReal))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |nn#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |y#0| () Int)
(declare-fun |dt_update#010#0#Z#0@0| () Int)
(declare-fun |pp#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |pp#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$NewSyntax.__default.UpdateNumNam)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |let#0#0#0| |nn#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass.NewSyntax.NumericNames)) (=> (and (and (and (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |y#0|)) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |dt_update#010#0#Z#0@0| |let#1#0#0|))) (and (and (NewSyntax.NumericNames.NumNam_q |dt_update_tmp#0#Z#0@0|) (NewSyntax.NumericNames.NumNam_q |dt_update_tmp#0#Z#0@0|)) (and (let ((|dt_update_tmp#0#0| |nn#0|))
 (and (NewSyntax.NumericNames.NumNam_q |dt_update_tmp#0#0|) (NewSyntax.NumericNames.NumNam_q |dt_update_tmp#0#0|))) (= |pp#0@0| (let ((|dt_update_tmp#0#0@@0| |nn#0|))
(let ((|dt_update#010#0#0| |y#0|))
(|#NewSyntax.NumericNames.NumNam| |dt_update#010#0#0| (NewSyntax.NumericNames._10 |dt_update_tmp#0#0@@0|) (NewSyntax.NumericNames.f |dt_update_tmp#0#0@@0|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (NewSyntax.NumericNames._10 |pp#0@0|) (NewSyntax.NumericNames._10 |nn#0|))) (=> (= (NewSyntax.NumericNames._10 |pp#0@0|) (NewSyntax.NumericNames._10 |nn#0|)) (=> (= (ControlFlow 0 2) (- 0 1)) (= (NewSyntax.NumericNames._010 |pp#0@0|) |y#0|)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |nn#0| Tclass.NewSyntax.NumericNames) ($IsAlloc DatatypeTypeType |nn#0| Tclass.NewSyntax.NumericNames $Heap)) (|$IsA#NewSyntax.NumericNames| |nn#0|)) (and (and ($Is DatatypeTypeType |pp#0| Tclass.NewSyntax.NumericNames) ($IsAlloc DatatypeTypeType |pp#0| Tclass.NewSyntax.NumericNames $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 4) 2)))) anon0_correct))))
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
