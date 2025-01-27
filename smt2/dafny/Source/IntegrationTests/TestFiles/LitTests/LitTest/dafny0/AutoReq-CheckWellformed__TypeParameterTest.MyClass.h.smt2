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
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._System.Tuple3 () T@U)
(declare-fun Tagclass.TypeParameterTest.MyClass? () T@U)
(declare-fun Tagclass.TypeParameterTest.MyClass () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun |tytagFamily$_tuple#3| () T@U)
(declare-fun tytagFamily$MyClass () T@U)
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
(declare-fun Tclass._System.Tuple3 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3_2 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TypeParameterTest.MyClass (T@U) T@U)
(declare-fun Tclass.TypeParameterTest.MyClass? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun TypeParameterTest.MyClass.g (T@U T@U T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |TypeParameterTest.MyClass.g#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun TSeq (T@U) T@U)
(declare-fun TypeParameterTest.MyClass.P (T@U T@U T@U T@U) Bool)
(declare-fun |TypeParameterTest.MyClass.P#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun TypeParameterTest.MyClass.h (T@U T@U T@U T@U) Bool)
(declare-fun |TypeParameterTest.MyClass.h#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.TypeParameterTest.MyClass?_0 (T@U) T@U)
(declare-fun Tclass.TypeParameterTest.MyClass_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSeq alloc Tagclass._System.Tuple2 Tagclass._System.Tuple3 Tagclass.TypeParameterTest.MyClass? Tagclass.TypeParameterTest.MyClass |tytagFamily$_tuple#2| |tytagFamily$_tuple#3| tytagFamily$MyClass)
)
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|_System._tuple#3$T0| T@U) (|_System._tuple#3$T1| T@U) (|_System._tuple#3$T2| T@U) ) (! (= (Tclass._System.Tuple3_0 (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|)) |_System._tuple#3$T0|)
 :qid |unknown.0:0|
 :skolemid |6999|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0| |_System._tuple#3$T1| |_System._tuple#3$T2|))
)))
(assert (forall ((|_System._tuple#3$T0@@0| T@U) (|_System._tuple#3$T1@@0| T@U) (|_System._tuple#3$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3_1 (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|)) |_System._tuple#3$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |7000|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@0| |_System._tuple#3$T1@@0| |_System._tuple#3$T2@@0|))
)))
(assert (forall ((|_System._tuple#3$T0@@1| T@U) (|_System._tuple#3$T1@@1| T@U) (|_System._tuple#3$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3_2 (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|)) |_System._tuple#3$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |7001|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@1| |_System._tuple#3$T1@@1| |_System._tuple#3$T2@@1|))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((TypeParameterTest.MyClass$X T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X) $h) ($IsAlloc refType |c#0| (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X) $h))
 :qid |unknown.0:0|
 :skolemid |7049|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X) $h))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|_System._tuple#3$T0@@2| T@U) (|_System._tuple#3$T1@@2| T@U) (|_System._tuple#3$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) Tagclass._System.Tuple3) (= (TagFamily (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|)) |tytagFamily$_tuple#3|))
 :qid |unknown.0:0|
 :skolemid |6998|
 :pattern ( (Tclass._System.Tuple3 |_System._tuple#3$T0@@2| |_System._tuple#3$T1@@2| |_System._tuple#3$T2@@2|))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@0 T@U) (TypeParameterTest.MyClass.g$Z T@U) (this T@U) (|s#0| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@0 TypeParameterTest.MyClass.g$Z (Lit refType this) (Lit SeqType |s#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@0))) ($Is SeqType |s#0| (TSeq TInt))) (U_2_bool (Lit boolType (bool_2_U (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@0 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@0 TInt TypeParameterTest.MyClass.g$Z) (Lit refType this) (Lit SeqType |s#0|)))))))) (= (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@0 TypeParameterTest.MyClass.g$Z (Lit refType this) (Lit SeqType |s#0|)) (> (|Seq#Length| (Lit SeqType |s#0|)) 2)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7039|
 :pattern ( (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@0 TypeParameterTest.MyClass.g$Z (Lit refType this) (Lit SeqType |s#0|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@1 T@U) (TypeParameterTest.MyClass.P$W T@U) (this@@0 T@U) (|s#0@@0| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.P#canCall| TypeParameterTest.MyClass$X@@1 TypeParameterTest.MyClass.P$W this@@0 |s#0@@0|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@1))) ($Is SeqType |s#0@@0| (TSeq TInt))))) (= (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@1 TypeParameterTest.MyClass.P$W this@@0 |s#0@@0|) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :skolemid |7032|
 :pattern ( (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@1 TypeParameterTest.MyClass.P$W this@@0 |s#0@@0|))
))))
(assert (= (Ctor DatatypeTypeType) 5))
(assert (forall ((|_System._tuple#3$T0@@3| T@U) (|_System._tuple#3$T1@@3| T@U) (|_System._tuple#3$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |7002|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3 |_System._tuple#3$T0@@3| |_System._tuple#3$T1@@3| |_System._tuple#3$T2@@3|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((TypeParameterTest.MyClass$X@@2 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@2) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7026|
 :pattern ( ($IsAlloc refType $o (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@2) $h@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6481|
 :pattern ( (Lit T x@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@3 T@U) (TypeParameterTest.MyClass.P$W@@0 T@U) (this@@1 T@U) (|s#0@@1| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.P#canCall| TypeParameterTest.MyClass$X@@3 TypeParameterTest.MyClass.P$W@@0 this@@1 (Lit SeqType |s#0@@1|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@3))) ($Is SeqType |s#0@@1| (TSeq TInt))))) (= (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@3 TypeParameterTest.MyClass.P$W@@0 this@@1 (Lit SeqType |s#0@@1|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7033|
 :pattern ( (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@3 TypeParameterTest.MyClass.P$W@@0 this@@1 (Lit SeqType |s#0@@1|)))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@4 T@U) (TypeParameterTest.MyClass.g$Z@@0 T@U) (this@@2 T@U) (|s#0@@2| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@4 TypeParameterTest.MyClass.g$Z@@0 this@@2 |s#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@4))) ($Is SeqType |s#0@@2| (TSeq TInt))) (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@4 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@4 TInt TypeParameterTest.MyClass.g$Z@@0) this@@2 |s#0@@2|)))) (= (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@4 TypeParameterTest.MyClass.g$Z@@0 this@@2 |s#0@@2|) (> (|Seq#Length| |s#0@@2|) 2)))
 :qid |unknown.0:0|
 :skolemid |7037|
 :pattern ( (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@4 TypeParameterTest.MyClass.g$Z@@0 this@@2 |s#0@@2|))
))))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6492|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@5 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@5))  (and ($Is refType |c#0@@0| (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@5)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7048|
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@5)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@5)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6505|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@6 T@U) ) (!  (and (= (Tag (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@6)) Tagclass.TypeParameterTest.MyClass?) (= (TagFamily (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@6)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |7022|
 :pattern ( (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@6))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@7 T@U) ) (!  (and (= (Tag (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@7)) Tagclass.TypeParameterTest.MyClass) (= (TagFamily (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@7)) tytagFamily$MyClass))
 :qid |unknown.0:0|
 :skolemid |7027|
 :pattern ( (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@7))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@8 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@8))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@8))))
 :qid |unknown.0:0|
 :skolemid |7025|
 :pattern ( ($Is refType $o@@0 (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@9 T@U) (TypeParameterTest.MyClass.g$Z@@1 T@U) (this@@3 T@U) (|s#0@@3| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@9 TypeParameterTest.MyClass.g$Z@@1 this@@3 (Lit SeqType |s#0@@3|)) (and (< 1 $FunctionContextHeight) (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@9))) ($Is SeqType |s#0@@3| (TSeq TInt))) (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@9 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@9 TInt TypeParameterTest.MyClass.g$Z@@1) this@@3 (Lit SeqType |s#0@@3|))))) (= (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@9 TypeParameterTest.MyClass.g$Z@@1 this@@3 (Lit SeqType |s#0@@3|)) (> (|Seq#Length| (Lit SeqType |s#0@@3|)) 2)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7038|
 :pattern ( (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@9 TypeParameterTest.MyClass.g$Z@@1 this@@3 (Lit SeqType |s#0@@3|)))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@10 T@U) (TypeParameterTest.MyClass.h$Y T@U) (this@@4 T@U) (|s#0@@4| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.h#canCall| TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y this@@4 |s#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@10))) ($Is SeqType |s#0@@4| (TSeq TInt))) (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@10 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@10 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y)) this@@4 |s#0@@4|)))) (and (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@10 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y) this@@4 |s#0@@4|) (= (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y this@@4 |s#0@@4|) (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@10 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y) this@@4 |s#0@@4|))))
 :qid |unknown.0:0|
 :skolemid |7043|
 :pattern ( (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@10 TypeParameterTest.MyClass.h$Y this@@4 |s#0@@4|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6493|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |6495|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6504|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |6687|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) |_System._tuple#2$T0|)
 :qid |unknown.0:0|
 :skolemid |6919|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |6920|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((v@@1 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@1))) ($IsAllocBox (|Seq#Index| v@@1 i) t0@@0 h@@0))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |6539|
 :pattern ( (|Seq#Index| v@@1 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |6540|
 :pattern ( ($IsAlloc SeqType v@@1 (TSeq t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSeq (TSeq t@@1)) t@@1)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |6473|
 :pattern ( (TSeq t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSeq t@@2)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |6474|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@11 T@U) ) (! (= (Tclass.TypeParameterTest.MyClass?_0 (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@11)) TypeParameterTest.MyClass$X@@11)
 :qid |unknown.0:0|
 :skolemid |7023|
 :pattern ( (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@11))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@12 T@U) ) (! (= (Tclass.TypeParameterTest.MyClass_0 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@12)) TypeParameterTest.MyClass$X@@12)
 :qid |unknown.0:0|
 :skolemid |7028|
 :pattern ( (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@12))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6491|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@13 T@U) (TypeParameterTest.MyClass.P$W@@1 T@U) (this@@5 T@U) (|s#0@@5| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.P#canCall| TypeParameterTest.MyClass$X@@13 TypeParameterTest.MyClass.P$W@@1 (Lit refType this@@5) (Lit SeqType |s#0@@5|)) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@13))) ($Is SeqType |s#0@@5| (TSeq TInt))))) (= (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@13 TypeParameterTest.MyClass.P$W@@1 (Lit refType this@@5) (Lit SeqType |s#0@@5|)) (U_2_bool (Lit boolType (bool_2_U true)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7034|
 :pattern ( (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@13 TypeParameterTest.MyClass.P$W@@1 (Lit refType this@@5) (Lit SeqType |s#0@@5|)))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@2)) bx@@2) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@2) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))))
 :qid |unknown.0:0|
 :skolemid |6921|
 :pattern ( ($IsBox bx@@2 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7928|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@14 T@U) (TypeParameterTest.MyClass.h$Y@@0 T@U) (this@@6 T@U) (|s#0@@6| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.h#canCall| TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0 (Lit refType this@@6) (Lit SeqType |s#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@14))) ($Is SeqType |s#0@@6| (TSeq TInt))) (U_2_bool (Lit boolType (bool_2_U (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@14 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@14 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0)) (Lit refType this@@6) (Lit SeqType |s#0@@6|)))))))) (and (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@14 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0) (Lit refType this@@6) (Lit SeqType |s#0@@6|)) (= (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0 (Lit refType this@@6) (Lit SeqType |s#0@@6|)) (U_2_bool (Lit boolType (bool_2_U (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@14 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0) (Lit refType this@@6) (Lit SeqType |s#0@@6|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7045|
 :pattern ( (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@14 TypeParameterTest.MyClass.h$Y@@0 (Lit refType this@@6) (Lit SeqType |s#0@@6|)))
))))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |6918|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((bx@@3 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@3 (TSeq t@@3)) (and (= ($Box SeqType ($Unbox SeqType bx@@3)) bx@@3) ($Is SeqType ($Unbox SeqType bx@@3) (TSeq t@@3))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |6501|
 :pattern ( ($IsBox bx@@3 (TSeq t@@3)))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@15 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@15)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@15))))
 :qid |unknown.0:0|
 :skolemid |7024|
 :pattern ( ($IsBox bx@@4 (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@15)))
)))
(assert (forall ((TypeParameterTest.MyClass$X@@16 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@16)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@16))))
 :qid |unknown.0:0|
 :skolemid |7029|
 :pattern ( ($IsBox bx@@5 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@16)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6482|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |6688|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6527|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@1))
)))
(assert (forall ((h@@2 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |6529|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@2)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i@@0) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |6519|
 :pattern ( (|Seq#Index| v@@4 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |6520|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@2)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TypeParameterTest.MyClass$X@@17 T@U) (TypeParameterTest.MyClass.h$Y@@1 T@U) (this@@7 T@U) (|s#0@@7| T@U) ) (!  (=> (or (|TypeParameterTest.MyClass.h#canCall| TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1 this@@7 (Lit SeqType |s#0@@7|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@7 null)) (not true)) ($Is refType this@@7 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@17))) ($Is SeqType |s#0@@7| (TSeq TInt))) (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@17 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@17 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1)) this@@7 (Lit SeqType |s#0@@7|))))) (and (|TypeParameterTest.MyClass.g#canCall| TypeParameterTest.MyClass$X@@17 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1) this@@7 (Lit SeqType |s#0@@7|)) (= (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1 this@@7 (Lit SeqType |s#0@@7|)) (TypeParameterTest.MyClass.g TypeParameterTest.MyClass$X@@17 (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1) this@@7 (Lit SeqType |s#0@@7|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |7044|
 :pattern ( (TypeParameterTest.MyClass.h TypeParameterTest.MyClass$X@@17 TypeParameterTest.MyClass.h$Y@@1 this@@7 (Lit SeqType |s#0@@7|)))
))))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6506|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |6508|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun this@@8 () T@U)
(declare-fun TypeParameterTest.MyClass$X@@18 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s#0@@8| () T@U)
(declare-fun TypeParameterTest.MyClass.h$Y@@2 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$TypeParameterTest.MyClass.h)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon5_Else_correct  (=> ($IsAllocBox ($Box refType this@@8) (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@18) $Heap) (=> (and (and ($IsAlloc SeqType |s#0@@8| (TSeq TInt) $Heap) (= (ControlFlow 0 3) (- 0 2))) (|TypeParameterTest.MyClass.P#canCall| TypeParameterTest.MyClass$X@@18 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@18 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@18 TypeParameterTest.MyClass.h$Y@@2)) this@@8 |s#0@@8|)) (or (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@18 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@18 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@18 TypeParameterTest.MyClass.h$Y@@2)) this@@8 |s#0@@8|) (U_2_bool (Lit boolType (bool_2_U true))))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= this@@8 null)) (not true))) (=> (or (not (= this@@8 null)) (not true)) (=> (and (and ($IsAllocBox ($Box refType this@@8) (Tclass.TypeParameterTest.MyClass? TypeParameterTest.MyClass$X@@18) $Heap) ($IsAlloc SeqType |s#0@@8| (TSeq TInt) $Heap)) (and (|TypeParameterTest.MyClass.P#canCall| TypeParameterTest.MyClass$X@@18 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@18 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@18 TypeParameterTest.MyClass.h$Y@@2)) this@@8 |s#0@@8|) (TypeParameterTest.MyClass.P TypeParameterTest.MyClass$X@@18 (Tclass._System.Tuple3 TypeParameterTest.MyClass$X@@18 TInt (Tclass._System.Tuple2 TypeParameterTest.MyClass$X@@18 TypeParameterTest.MyClass.h$Y@@2)) this@@8 |s#0@@8|))) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon5_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@18)) ($IsAlloc refType this@@8 (Tclass.TypeParameterTest.MyClass TypeParameterTest.MyClass$X@@18) $Heap))) ($Is SeqType |s#0@@8| (TSeq TInt))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 4))) anon0_correct))))
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
