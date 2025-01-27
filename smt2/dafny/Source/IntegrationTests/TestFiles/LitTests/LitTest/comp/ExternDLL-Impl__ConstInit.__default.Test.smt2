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
(declare-fun allocName () T@U)
(declare-fun Tagclass.ConstInit.C () T@U)
(declare-fun Tagclass.ConstInit.U () T@U)
(declare-fun Tagclass.ConstInit.C? () T@U)
(declare-fun class.ConstInit.U? () T@U)
(declare-fun Tagclass.ConstInit.U? () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$U () T@U)
(declare-fun field$d () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ConstInit.U.e (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.ConstInit.U? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.ConstInit.C () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tclass.ConstInit.C? () T@U)
(declare-fun Tclass.ConstInit.U () T@U)
(declare-fun ConstInit.U.d () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun ConstInit.__default.c () T@U)
(declare-fun ConstInit.W.f () T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass.ConstInit.C Tagclass.ConstInit.U Tagclass.ConstInit.C? class.ConstInit.U? Tagclass.ConstInit.U? tytagFamily$C tytagFamily$U field$d)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.ConstInit.U?)) ($Is refType (ConstInit.U.e $o) Tclass.ConstInit.C))
 :qid |unknown.0:0|
 :skolemid |1006|
 :pattern ( (ConstInit.U.e $o))
))))
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
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h T@U) ($o@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.ConstInit.U?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))) ($IsAlloc refType (ConstInit.U.e $o@@0) Tclass.ConstInit.C $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1007|
 :pattern ( (ConstInit.U.e $o@@0) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o@@0) alloc)))
))))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.ConstInit.C?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.ConstInit.C?)))
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@1 Tclass.ConstInit.C?))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.ConstInit.U?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.ConstInit.U?)))
 :qid |unknown.0:0|
 :skolemid |1002|
 :pattern ( ($Is refType $o@@2 Tclass.ConstInit.U?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.ConstInit.C $h@@0) ($IsAlloc refType |c#0| Tclass.ConstInit.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($IsAlloc refType |c#0| Tclass.ConstInit.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.ConstInit.C? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.ConstInit.U $h@@1) ($IsAlloc refType |c#0@@0| Tclass.ConstInit.U? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ConstInit.U $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.ConstInit.U? $h@@1))
)))
(assert (= (FDim ConstInit.U.d) 0))
(assert (= (FieldOfDecl class.ConstInit.U? field$d) ConstInit.U.d))
(assert  (not ($IsGhostField ConstInit.U.d)))
(assert (forall (($o@@3 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.ConstInit.C? $h@@2)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.ConstInit.C? $h@@2))
)))
(assert (forall (($o@@4 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass.ConstInit.U? $h@@3)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1003|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.ConstInit.U? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |614|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |615|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |511|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |522|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |606|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is refType ConstInit.__default.c Tclass.ConstInit.C)))
(assert  (=> (< 1 $FunctionContextHeight) ($Is refType ConstInit.W.f Tclass.ConstInit.C)))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc refType ConstInit.__default.c Tclass.ConstInit.C $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |976|
 :pattern ( ($IsAlloc refType ConstInit.__default.c Tclass.ConstInit.C $h@@4))
))))
(assert  (=> (< 1 $FunctionContextHeight) (forall (($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) ($IsAlloc refType ConstInit.W.f Tclass.ConstInit.C $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |997|
 :pattern ( ($IsAlloc refType ConstInit.W.f Tclass.ConstInit.C $h@@5))
))))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.ConstInit.U?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) ConstInit.U.d)) Tclass.ConstInit.C))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1004|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) ConstInit.U.d)))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.ConstInit.C)  (and ($Is refType |c#0@@1| Tclass.ConstInit.C?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($Is refType |c#0@@1| Tclass.ConstInit.C))
 :pattern ( ($Is refType |c#0@@1| Tclass.ConstInit.C?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.ConstInit.U)  (and ($Is refType |c#0@@2| Tclass.ConstInit.U?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( ($Is refType |c#0@@2| Tclass.ConstInit.U))
 :pattern ( ($Is refType |c#0@@2| Tclass.ConstInit.U?))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.ConstInit.U?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) ConstInit.U.d)) Tclass.ConstInit.C $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1005|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) ConstInit.U.d)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |613|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |603|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |521|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2020|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (= (Tag Tclass.ConstInit.C) Tagclass.ConstInit.C))
(assert (= (TagFamily Tclass.ConstInit.C) tytagFamily$C))
(assert (= (Tag Tclass.ConstInit.U) Tagclass.ConstInit.U))
(assert (= (TagFamily Tclass.ConstInit.U) tytagFamily$U))
(assert (= (Tag Tclass.ConstInit.C?) Tagclass.ConstInit.C?))
(assert (= (TagFamily Tclass.ConstInit.C?) tytagFamily$C))
(assert (= (Tag Tclass.ConstInit.U?) Tagclass.ConstInit.U?))
(assert (= (TagFamily Tclass.ConstInit.U?) tytagFamily$U))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |512|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |o##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |o##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |b##0@0| () Bool)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |o##2@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |o##3@0| () T@U)
(declare-fun |defass#u#0| () Bool)
(declare-fun |u#0| () T@U)
(set-info :boogie-vc-id Impl$$ConstInit.__default.Test)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |o##0@0| ConstInit.__default.c)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= |o##0@0| null)) (not true))) (=> (or (not (= |o##0@0| null)) (not true)) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)))
 :qid |ExternDLLdfy.61:10|
 :skolemid |987|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
))) (and ($HeapSucc $Heap $Heap@0) (= |o##1@0| ConstInit.W.f))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= |o##1@0| null)) (not true))) (=> (or (not (= |o##1@0| null)) (not true)) (=> (and (and (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9)))
 :qid |ExternDLLdfy.61:10|
 :skolemid |987|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |b##0@0| (U_2_bool (Lit boolType (bool_2_U true)))))) (and (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.ConstInit.U) ($IsAlloc refType call2formal@this Tclass.ConstInit.U $Heap))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (and (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.ConstInit.U) ($IsAlloc refType call2formal@this@0 Tclass.ConstInit.U $Heap@2))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 call2formal@this@0) alloc))))) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@10)))
 :qid |ExternDLLdfy.49:5|
 :skolemid |1009|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@10))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |o##2@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call2formal@this@0) ConstInit.U.d))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= |o##2@0| null)) (not true))) (=> (or (not (= |o##2@0| null)) (not true)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@11)))
 :qid |ExternDLLdfy.61:10|
 :skolemid |987|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (and (= |o##3@0| (ConstInit.U.e call2formal@this@0)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |o##3@0| null)) (not true))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#u#0| (and ($Is refType |u#0| Tclass.ConstInit.U) ($IsAlloc refType |u#0| Tclass.ConstInit.U $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 10) 2))) anon0_correct))))
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
