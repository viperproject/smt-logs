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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass.NilRegression.Trait? () T@U)
(declare-fun Tagclass.NilRegression.MyClass? () T@U)
(declare-fun Tagclass.NilRegression.GClass () T@U)
(declare-fun Tagclass.NilRegression.Trait () T@U)
(declare-fun class.NilRegression.GClass? () T@U)
(declare-fun Tagclass.NilRegression.GClass? () T@U)
(declare-fun |##NilRegression.DaTy.DaTy| () T@U)
(declare-fun Tagclass.NilRegression.DaTy () T@U)
(declare-fun |##NilRegression.DaTy2.Nothing| () T@U)
(declare-fun Tagclass.NilRegression.DaTy2 () T@U)
(declare-fun |##NilRegression.DaTy2.DaTy2| () T@U)
(declare-fun Tagclass.NilRegression.MyClass () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$Trait () T@U)
(declare-fun tytagFamily$MyClass () T@U)
(declare-fun tytagFamily$GClass () T@U)
(declare-fun tytagFamily$DaTy () T@U)
(declare-fun tytagFamily$DaTy2 () T@U)
(declare-fun field$u () T@U)
(declare-fun field$v () T@U)
(declare-fun field$w () T@U)
(declare-fun field$u1 () T@U)
(declare-fun field$v1 () T@U)
(declare-fun field$w1 () T@U)
(declare-fun field$u2 () T@U)
(declare-fun field$v2 () T@U)
(declare-fun field$w2 () T@U)
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
(declare-fun NilRegression.__default.Id (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |NilRegression.__default.Id#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun Tclass.NilRegression.GClass (T@U T@U T@U) T@U)
(declare-fun Tclass.NilRegression.GClass_0 (T@U) T@U)
(declare-fun Tclass.NilRegression.GClass_1 (T@U) T@U)
(declare-fun Tclass.NilRegression.GClass_2 (T@U) T@U)
(declare-fun Tclass.NilRegression.GClass? (T@U T@U T@U) T@U)
(declare-fun Tclass.NilRegression.GClass?_0 (T@U) T@U)
(declare-fun Tclass.NilRegression.GClass?_1 (T@U) T@U)
(declare-fun Tclass.NilRegression.GClass?_2 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#NilRegression.DaTy2.Nothing| () T@U)
(declare-fun NilRegression.DaTy.DaTy_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.NilRegression.DaTy (T@U) T@U)
(declare-fun Tclass.NilRegression.MyClass? () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.NilRegression.Trait () T@U)
(declare-fun Tclass.NilRegression.Trait? () T@U)
(declare-fun Tclass.NilRegression.MyClass () T@U)
(declare-fun Tclass.NilRegression.DaTy2 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun NilRegression.GClass.u1 () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun NilRegression.GClass.v1 () T@U)
(declare-fun NilRegression.GClass.w1 () T@U)
(declare-fun NilRegression.GClass.u2 () T@U)
(declare-fun NilRegression.GClass.v2 () T@U)
(declare-fun NilRegression.GClass.w2 () T@U)
(declare-fun NilRegression.GClass.u () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun NilRegression.GClass.v () T@U)
(declare-fun NilRegression.GClass.w () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun NilRegression.DaTy2.Nothing_q (T@U) Bool)
(declare-fun NilRegression.DaTy2.DaTy2_q (T@U) Bool)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun |#NilRegression.DaTy.DaTy| (T@U) T@U)
(declare-fun |#NilRegression.DaTy2.DaTy2| (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun Tclass.NilRegression.DaTy_0 (T@U) T@U)
(declare-fun NilRegression.DaTy.get (T@U) T@U)
(declare-fun Tclass.NilRegression.DaTy2_0 (T@U) T@U)
(declare-fun NilRegression.DaTy2.get (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun NilRegression.GClass.u_k (T@U T@U T@U T@U) T@U)
(declare-fun NilRegression.GClass.v_k (T@U T@U T@U T@U) T@U)
(declare-fun NilRegression.GClass.w_k (T@U T@U T@U T@U) T@U)
(declare-fun implements$NilRegression.Trait (T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass.NilRegression.Trait? Tagclass.NilRegression.MyClass? Tagclass.NilRegression.GClass Tagclass.NilRegression.Trait class.NilRegression.GClass? Tagclass.NilRegression.GClass? |##NilRegression.DaTy.DaTy| Tagclass.NilRegression.DaTy |##NilRegression.DaTy2.Nothing| Tagclass.NilRegression.DaTy2 |##NilRegression.DaTy2.DaTy2| Tagclass.NilRegression.MyClass tytagFamily$object tytagFamily$array tytagFamily$array2 tytagFamily$Trait tytagFamily$MyClass tytagFamily$GClass tytagFamily$DaTy tytagFamily$DaTy2 field$u field$v field$w field$u1 field$v1 field$w1 field$u2 field$v2 field$w2)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((NilRegression._default.Id$X T@U) (|x#0| T@U) ) (!  (=> (or (|NilRegression.__default.Id#canCall| NilRegression._default.Id$X (Lit BoxType |x#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |x#0| NilRegression._default.Id$X))) (= (NilRegression.__default.Id NilRegression._default.Id$X (Lit BoxType |x#0|)) (Lit BoxType |x#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |680|
 :pattern ( (NilRegression.__default.Id NilRegression._default.Id$X (Lit BoxType |x#0|)))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |383|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array2$arg T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( (_System.array2.Length0 $o@@0) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |644|
 :pattern ( (_System.array2.Length1 $o@@1) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((NilRegression.GClass$U T@U) (NilRegression.GClass$V T@U) (NilRegression.GClass$W T@U) ) (! (= (Tclass.NilRegression.GClass_0 (Tclass.NilRegression.GClass NilRegression.GClass$U NilRegression.GClass$V NilRegression.GClass$W)) NilRegression.GClass$U)
 :qid |unknown.0:0|
 :skolemid |689|
 :pattern ( (Tclass.NilRegression.GClass NilRegression.GClass$U NilRegression.GClass$V NilRegression.GClass$W))
)))
(assert (forall ((NilRegression.GClass$U@@0 T@U) (NilRegression.GClass$V@@0 T@U) (NilRegression.GClass$W@@0 T@U) ) (! (= (Tclass.NilRegression.GClass_1 (Tclass.NilRegression.GClass NilRegression.GClass$U@@0 NilRegression.GClass$V@@0 NilRegression.GClass$W@@0)) NilRegression.GClass$V@@0)
 :qid |unknown.0:0|
 :skolemid |690|
 :pattern ( (Tclass.NilRegression.GClass NilRegression.GClass$U@@0 NilRegression.GClass$V@@0 NilRegression.GClass$W@@0))
)))
(assert (forall ((NilRegression.GClass$U@@1 T@U) (NilRegression.GClass$V@@1 T@U) (NilRegression.GClass$W@@1 T@U) ) (! (= (Tclass.NilRegression.GClass_2 (Tclass.NilRegression.GClass NilRegression.GClass$U@@1 NilRegression.GClass$V@@1 NilRegression.GClass$W@@1)) NilRegression.GClass$W@@1)
 :qid |unknown.0:0|
 :skolemid |691|
 :pattern ( (Tclass.NilRegression.GClass NilRegression.GClass$U@@1 NilRegression.GClass$V@@1 NilRegression.GClass$W@@1))
)))
(assert (forall ((NilRegression.GClass$U@@2 T@U) (NilRegression.GClass$V@@2 T@U) (NilRegression.GClass$W@@2 T@U) ) (! (= (Tclass.NilRegression.GClass?_0 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@2 NilRegression.GClass$V@@2 NilRegression.GClass$W@@2)) NilRegression.GClass$U@@2)
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( (Tclass.NilRegression.GClass? NilRegression.GClass$U@@2 NilRegression.GClass$V@@2 NilRegression.GClass$W@@2))
)))
(assert (forall ((NilRegression.GClass$U@@3 T@U) (NilRegression.GClass$V@@3 T@U) (NilRegression.GClass$W@@3 T@U) ) (! (= (Tclass.NilRegression.GClass?_1 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@3 NilRegression.GClass$V@@3 NilRegression.GClass$W@@3)) NilRegression.GClass$V@@3)
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( (Tclass.NilRegression.GClass? NilRegression.GClass$U@@3 NilRegression.GClass$V@@3 NilRegression.GClass$W@@3))
)))
(assert (forall ((NilRegression.GClass$U@@4 T@U) (NilRegression.GClass$V@@4 T@U) (NilRegression.GClass$W@@4 T@U) ) (! (= (Tclass.NilRegression.GClass?_2 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@4 NilRegression.GClass$V@@4 NilRegression.GClass$W@@4)) NilRegression.GClass$W@@4)
 :qid |unknown.0:0|
 :skolemid |707|
 :pattern ( (Tclass.NilRegression.GClass? NilRegression.GClass$U@@4 NilRegression.GClass$V@@4 NilRegression.GClass$W@@4))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (= (DatatypeCtorId |#NilRegression.DaTy2.Nothing|) |##NilRegression.DaTy2.Nothing|))
(assert (= (Ctor DatatypeTypeType) 5))
(assert (forall ((NilRegression.DaTy$X T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.NilRegression.DaTy NilRegression.DaTy$X)) (NilRegression.DaTy.DaTy_q d))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( (NilRegression.DaTy.DaTy_q d) ($Is DatatypeTypeType d (Tclass.NilRegression.DaTy NilRegression.DaTy$X)))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.NilRegression.MyClass?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.NilRegression.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |779|
 :pattern ( ($Is refType $o@@2 Tclass.NilRegression.MyClass?))
)))
(assert (forall ((NilRegression.GClass$U@@5 T@U) (NilRegression.GClass$V@@5 T@U) (NilRegression.GClass$W@@5 T@U) ) (!  (and (= (Tag (Tclass.NilRegression.GClass NilRegression.GClass$U@@5 NilRegression.GClass$V@@5 NilRegression.GClass$W@@5)) Tagclass.NilRegression.GClass) (= (TagFamily (Tclass.NilRegression.GClass NilRegression.GClass$U@@5 NilRegression.GClass$V@@5 NilRegression.GClass$W@@5)) tytagFamily$GClass))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (Tclass.NilRegression.GClass NilRegression.GClass$U@@5 NilRegression.GClass$V@@5 NilRegression.GClass$W@@5))
)))
(assert (forall ((NilRegression.GClass$U@@6 T@U) (NilRegression.GClass$V@@6 T@U) (NilRegression.GClass$W@@6 T@U) ) (!  (and (= (Tag (Tclass.NilRegression.GClass? NilRegression.GClass$U@@6 NilRegression.GClass$V@@6 NilRegression.GClass$W@@6)) Tagclass.NilRegression.GClass?) (= (TagFamily (Tclass.NilRegression.GClass? NilRegression.GClass$U@@6 NilRegression.GClass$V@@6 NilRegression.GClass$W@@6)) tytagFamily$GClass))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (Tclass.NilRegression.GClass? NilRegression.GClass$U@@6 NilRegression.GClass$V@@6 NilRegression.GClass$W@@6))
)))
(assert (forall ((NilRegression.GClass$U@@7 T@U) (NilRegression.GClass$V@@7 T@U) (NilRegression.GClass$W@@7 T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass.NilRegression.GClass NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7)) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) (Tclass.NilRegression.GClass NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7))))
 :qid |unknown.0:0|
 :skolemid |692|
 :pattern ( ($IsBox bx (Tclass.NilRegression.GClass NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7)))
)))
(assert (forall ((NilRegression.GClass$U@@8 T@U) (NilRegression.GClass$V@@8 T@U) (NilRegression.GClass$W@@8 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@8 NilRegression.GClass$V@@8 NilRegression.GClass$W@@8)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@8 NilRegression.GClass$V@@8 NilRegression.GClass$W@@8))))
 :qid |unknown.0:0|
 :skolemid |708|
 :pattern ( ($IsBox bx@@0 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@8 NilRegression.GClass$V@@8 NilRegression.GClass$W@@8)))
)))
(assert (forall ((NilRegression.GClass$U@@9 T@U) (NilRegression.GClass$V@@9 T@U) (NilRegression.GClass$W@@9 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.NilRegression.GClass NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9))  (and ($Is refType |c#0@@1| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType |c#0@@1| (Tclass.NilRegression.GClass NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9)))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |375|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass._System.object? $h@@1))
)))
(assert (forall ((|c#0@@3| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@3| Tclass.NilRegression.Trait $h@@2) ($IsAlloc refType |c#0@@3| Tclass.NilRegression.Trait? $h@@2))
 :qid |unknown.0:0|
 :skolemid |698|
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.NilRegression.Trait $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@3| Tclass.NilRegression.Trait? $h@@2))
)))
(assert (forall ((|c#0@@4| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@4| Tclass.NilRegression.MyClass $h@@3) ($IsAlloc refType |c#0@@4| Tclass.NilRegression.MyClass? $h@@3))
 :qid |unknown.0:0|
 :skolemid |783|
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.NilRegression.MyClass $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@4| Tclass.NilRegression.MyClass? $h@@3))
)))
(assert (forall ((NilRegression.DaTy2$X T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) ($IsAlloc DatatypeTypeType |#NilRegression.DaTy2.Nothing| (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X) $h@@4))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( ($IsAlloc DatatypeTypeType |#NilRegression.DaTy2.Nothing| (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X) $h@@4))
)))
(assert  (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((NilRegression.GClass$U@@10 T@U) (NilRegression.GClass$V@@10 T@U) (NilRegression.GClass$W@@10 T@U) ($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@10)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10))
)))
(assert (forall ((NilRegression.GClass$U@@11 T@U) (NilRegression.GClass$V@@11 T@U) (NilRegression.GClass$W@@11 T@U) ($h@@6 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@11)))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11))
)))
(assert (forall ((NilRegression.GClass$U@@12 T@U) (NilRegression.GClass$V@@12 T@U) (NilRegression.GClass$W@@12 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@12)))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12))
)))
(assert (forall ((NilRegression.GClass$U@@13 T@U) (NilRegression.GClass$V@@13 T@U) (NilRegression.GClass$W@@13 T@U) ($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@13)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13))
)))
(assert (forall ((NilRegression.GClass$U@@14 T@U) (NilRegression.GClass$V@@14 T@U) (NilRegression.GClass$W@@14 T@U) ($h@@9 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@14)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@7) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14))
)))
(assert (forall ((NilRegression.GClass$U@@15 T@U) (NilRegression.GClass$V@@15 T@U) (NilRegression.GClass$W@@15 T@U) ($h@@10 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@15)))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@8) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@9 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@9 (Tclass._System.array? _System.array$arg@@1) $h@@11)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._System.array? _System.array$arg@@1) $h@@11))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@10 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@10 (Tclass._System.array2? _System.array2$arg@@2) $h@@12)  (or (= $o@@10 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@10) alloc)))))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc refType $o@@10 (Tclass._System.array2? _System.array2$arg@@2) $h@@12))
)))
(assert (= (FDim NilRegression.GClass.u) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$u) NilRegression.GClass.u))
(assert  (not ($IsGhostField NilRegression.GClass.u)))
(assert (= (FDim NilRegression.GClass.v) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$v) NilRegression.GClass.v))
(assert  (not ($IsGhostField NilRegression.GClass.v)))
(assert (= (FDim NilRegression.GClass.w) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$w) NilRegression.GClass.w))
(assert  (not ($IsGhostField NilRegression.GClass.w)))
(assert (= (FDim NilRegression.GClass.u1) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$u1) NilRegression.GClass.u1))
(assert  (not ($IsGhostField NilRegression.GClass.u1)))
(assert (= (FDim NilRegression.GClass.v1) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$v1) NilRegression.GClass.v1))
(assert  (not ($IsGhostField NilRegression.GClass.v1)))
(assert (= (FDim NilRegression.GClass.w1) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$w1) NilRegression.GClass.w1))
(assert  (not ($IsGhostField NilRegression.GClass.w1)))
(assert (= (FDim NilRegression.GClass.u2) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$u2) NilRegression.GClass.u2))
(assert  (not ($IsGhostField NilRegression.GClass.u2)))
(assert (= (FDim NilRegression.GClass.v2) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$v2) NilRegression.GClass.v2))
(assert  (not ($IsGhostField NilRegression.GClass.v2)))
(assert (= (FDim NilRegression.GClass.w2) 0))
(assert (= (FieldOfDecl class.NilRegression.GClass? field$w2) NilRegression.GClass.w2))
(assert  (not ($IsGhostField NilRegression.GClass.w2)))
(assert (forall ((NilRegression.DaTy2$X@@0 T@U) ) (! ($Is DatatypeTypeType |#NilRegression.DaTy2.Nothing| (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@0))
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( ($Is DatatypeTypeType |#NilRegression.DaTy2.Nothing| (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@0)))
)))
(assert (forall (($o@@11 T@U) ($h@@13 T@U) ) (! (= ($IsAlloc refType $o@@11 Tclass._System.object? $h@@13)  (or (= $o@@11 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@11) alloc)))))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( ($IsAlloc refType $o@@11 Tclass._System.object? $h@@13))
)))
(assert (forall (($o@@12 T@U) ($h@@14 T@U) ) (! (= ($IsAlloc refType $o@@12 Tclass.NilRegression.Trait? $h@@14)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |695|
 :pattern ( ($IsAlloc refType $o@@12 Tclass.NilRegression.Trait? $h@@14))
)))
(assert (forall (($o@@13 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@13 Tclass.NilRegression.MyClass? $h@@15)  (or (= $o@@13 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@13) alloc)))))
 :qid |unknown.0:0|
 :skolemid |780|
 :pattern ( ($IsAlloc refType $o@@13 Tclass.NilRegression.MyClass? $h@@15))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((NilRegression._default.Id$X@@0 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|NilRegression.__default.Id#canCall| NilRegression._default.Id$X@@0 |x#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@0| NilRegression._default.Id$X@@0))) ($IsBox (NilRegression.__default.Id NilRegression._default.Id$X@@0 |x#0@@0|) NilRegression._default.Id$X@@0))
 :qid |unknown.0:0|
 :skolemid |676|
 :pattern ( (NilRegression.__default.Id NilRegression._default.Id$X@@0 |x#0@@0|))
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
(assert (forall ((_System.array$arg@@2 T@U) ($h@@16 T@U) ($o@@14 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@14)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) (IndexField $i0)) _System.array$arg@@2 $h@@16))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@14) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (NilRegression.DaTy.DaTy_q d@@0) (= (DatatypeCtorId d@@0) |##NilRegression.DaTy.DaTy|))
 :qid |unknown.0:0|
 :skolemid |741|
 :pattern ( (NilRegression.DaTy.DaTy_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (NilRegression.DaTy2.Nothing_q d@@1) (= (DatatypeCtorId d@@1) |##NilRegression.DaTy2.Nothing|))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (NilRegression.DaTy2.Nothing_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (NilRegression.DaTy2.DaTy2_q d@@2) (= (DatatypeCtorId d@@2) |##NilRegression.DaTy2.DaTy2|))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( (NilRegression.DaTy2.DaTy2_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (NilRegression.DaTy2.Nothing_q d@@3) (= d@@3 |#NilRegression.DaTy2.Nothing|))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( (NilRegression.DaTy2.Nothing_q d@@3))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (NilRegression.DaTy.DaTy_q d@@4) (exists ((|a#1#0#0| T@U) ) (! (= d@@4 (|#NilRegression.DaTy.DaTy| |a#1#0#0|))
 :qid |AutoInitdfy.185:27|
 :skolemid |742|
)))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( (NilRegression.DaTy.DaTy_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (NilRegression.DaTy2.DaTy2_q d@@5) (exists ((|a#11#0#0| T@U) ) (! (= d@@5 (|#NilRegression.DaTy2.DaTy2| |a#11#0#0|))
 :qid |AutoInitdfy.186:39|
 :skolemid |766|
)))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (NilRegression.DaTy2.DaTy2_q d@@5))
)))
(assert ($IsGhostField alloc))
(assert (forall ((NilRegression.GClass$U@@16 T@U) (NilRegression.GClass$V@@16 T@U) (NilRegression.GClass$W@@16 T@U) ($h@@17 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) NilRegression.GClass.u) NilRegression.GClass$U@@16 $h@@17))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@15) NilRegression.GClass.u) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16))
)))
(assert (forall ((NilRegression.GClass$U@@17 T@U) (NilRegression.GClass$V@@17 T@U) (NilRegression.GClass$W@@17 T@U) ($h@@18 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) NilRegression.GClass.v) NilRegression.GClass$V@@17 $h@@18))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@16) NilRegression.GClass.v) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17))
)))
(assert (forall ((NilRegression.GClass$U@@18 T@U) (NilRegression.GClass$V@@18 T@U) (NilRegression.GClass$W@@18 T@U) ($h@@19 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) NilRegression.GClass.w) NilRegression.GClass$W@@18 $h@@19))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@17) NilRegression.GClass.w) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@5| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@5| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@6| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( ($Is refType |c#0@@6| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@6| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@20 T@U) ($o@@18 T@U) ($i0@@0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@18))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@18))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) (MultiIndexField (IndexField $i0@@0) $i1)) _System.array2$arg@@4 $h@@20))
 :qid |unknown.0:0|
 :skolemid |639|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@18) (MultiIndexField (IndexField $i0@@0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((NilRegression.GClass$U@@19 T@U) (NilRegression.GClass$V@@19 T@U) (NilRegression.GClass$W@@19 T@U) ($h@@21 T@U) ($o@@19 T@U) ) (!  (=> (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) NilRegression.GClass.u) NilRegression.GClass$U@@19))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@19) NilRegression.GClass.u) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19))
)))
(assert (forall ((NilRegression.GClass$U@@20 T@U) (NilRegression.GClass$V@@20 T@U) (NilRegression.GClass$W@@20 T@U) ($h@@22 T@U) ($o@@20 T@U) ) (!  (=> (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) NilRegression.GClass.v) NilRegression.GClass$V@@20))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@20) NilRegression.GClass.v) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20))
)))
(assert (forall ((NilRegression.GClass$U@@21 T@U) (NilRegression.GClass$V@@21 T@U) (NilRegression.GClass$W@@21 T@U) ($h@@23 T@U) ($o@@21 T@U) ) (!  (=> (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) NilRegression.GClass.w) NilRegression.GClass$W@@21))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@21) NilRegression.GClass.w) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((NilRegression.DaTy$X@@0 T@U) ) (!  (and (= (Tag (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@0)) Tagclass.NilRegression.DaTy) (= (TagFamily (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@0)) tytagFamily$DaTy))
 :qid |unknown.0:0|
 :skolemid |744|
 :pattern ( (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@0))
)))
(assert (forall ((NilRegression.DaTy2$X@@1 T@U) ) (!  (and (= (Tag (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@1)) Tagclass.NilRegression.DaTy2) (= (TagFamily (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@1)) tytagFamily$DaTy2))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@1))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |373|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.NilRegression.Trait?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.NilRegression.Trait?)))
 :qid |unknown.0:0|
 :skolemid |666|
 :pattern ( ($IsBox bx@@4 Tclass.NilRegression.Trait?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.NilRegression.MyClass?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.NilRegression.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( ($IsBox bx@@5 Tclass.NilRegression.MyClass?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.NilRegression.Trait) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.NilRegression.Trait)))
 :qid |unknown.0:0|
 :skolemid |696|
 :pattern ( ($IsBox bx@@6 Tclass.NilRegression.Trait))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.NilRegression.MyClass) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.NilRegression.MyClass)))
 :qid |unknown.0:0|
 :skolemid |781|
 :pattern ( ($IsBox bx@@7 Tclass.NilRegression.MyClass))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@22 T@U) ) (! (= ($Is refType $o@@22 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@22 null) (= (dtype $o@@22) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |381|
 :pattern ( ($Is refType $o@@22 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@23 T@U) ) (! (= ($Is refType $o@@23 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@23 null) (= (dtype $o@@23) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($Is refType $o@@23 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass._System.object)  (and ($Is refType |c#0@@7| Tclass._System.object?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@7| Tclass._System.object?))
)))
(assert (forall ((|c#0@@8| T@U) ) (! (= ($Is refType |c#0@@8| Tclass.NilRegression.Trait)  (and ($Is refType |c#0@@8| Tclass.NilRegression.Trait?) (or (not (= |c#0@@8| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |697|
 :pattern ( ($Is refType |c#0@@8| Tclass.NilRegression.Trait))
 :pattern ( ($Is refType |c#0@@8| Tclass.NilRegression.Trait?))
)))
(assert (forall ((|c#0@@9| T@U) ) (! (= ($Is refType |c#0@@9| Tclass.NilRegression.MyClass)  (and ($Is refType |c#0@@9| Tclass.NilRegression.MyClass?) (or (not (= |c#0@@9| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |782|
 :pattern ( ($Is refType |c#0@@9| Tclass.NilRegression.MyClass))
 :pattern ( ($Is refType |c#0@@9| Tclass.NilRegression.MyClass?))
)))
(assert (forall ((NilRegression.GClass$U@@22 T@U) (NilRegression.GClass$V@@22 T@U) (NilRegression.GClass$W@@22 T@U) ($o@@24 T@U) ($h@@24 T@U) ) (! (= ($IsAlloc refType $o@@24 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@24)  (or (= $o@@24 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@24) alloc)))))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($IsAlloc refType $o@@24 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@24))
)))
(assert (forall ((NilRegression.DaTy$X@@1 T@U) (|a#2#0#0| T@U) ($h@@25 T@U) ) (!  (=> ($IsGoodHeap $h@@25) (= ($IsAlloc DatatypeTypeType (|#NilRegression.DaTy.DaTy| |a#2#0#0|) (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@1) $h@@25) ($IsAllocBox |a#2#0#0| NilRegression.DaTy$X@@1 $h@@25)))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NilRegression.DaTy.DaTy| |a#2#0#0|) (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@1) $h@@25))
)))
(assert (forall ((NilRegression.DaTy2$X@@2 T@U) (|a#12#0#0| T@U) ($h@@26 T@U) ) (!  (=> ($IsGoodHeap $h@@26) (= ($IsAlloc DatatypeTypeType (|#NilRegression.DaTy2.DaTy2| |a#12#0#0|) (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@2) $h@@26) ($IsAllocBox |a#12#0#0| NilRegression.DaTy2$X@@2 $h@@26)))
 :qid |unknown.0:0|
 :skolemid |769|
 :pattern ( ($IsAlloc DatatypeTypeType (|#NilRegression.DaTy2.DaTy2| |a#12#0#0|) (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@2) $h@@26))
)))
(assert (forall ((NilRegression.DaTy2$X@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@3)) (or (NilRegression.DaTy2.Nothing_q d@@6) (NilRegression.DaTy2.DaTy2_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |775|
 :pattern ( (NilRegression.DaTy2.DaTy2_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@3)))
 :pattern ( (NilRegression.DaTy2.Nothing_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@3)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@27 T@U) ($o@@25 T@U) ($i0@@1 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@1) (< $i0@@1 (_System.array2.Length0 $o@@25))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@25))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@25) (MultiIndexField (IndexField $i0@@1) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |638|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@25) (MultiIndexField (IndexField $i0@@1) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |636|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |637|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall (($o@@26 T@U) ) (! ($Is refType $o@@26 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( ($Is refType $o@@26 Tclass._System.object?))
)))
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |377|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#NilRegression.DaTy.DaTy| |a#0#0#0|)) |##NilRegression.DaTy.DaTy|)
 :qid |AutoInitdfy.185:27|
 :skolemid |740|
 :pattern ( (|#NilRegression.DaTy.DaTy| |a#0#0#0|))
)))
(assert (forall ((NilRegression.DaTy$X@@2 T@U) ) (! (= (Tclass.NilRegression.DaTy_0 (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@2)) NilRegression.DaTy$X@@2)
 :qid |unknown.0:0|
 :skolemid |745|
 :pattern ( (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@2))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (NilRegression.DaTy.get (|#NilRegression.DaTy.DaTy| |a#4#0#0|)) |a#4#0#0|)
 :qid |AutoInitdfy.185:27|
 :skolemid |751|
 :pattern ( (|#NilRegression.DaTy.DaTy| |a#4#0#0|))
)))
(assert (forall ((NilRegression.DaTy2$X@@4 T@U) ) (! (= (Tclass.NilRegression.DaTy2_0 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@4)) NilRegression.DaTy2$X@@4)
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@4))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (DatatypeCtorId (|#NilRegression.DaTy2.DaTy2| |a#10#0#0|)) |##NilRegression.DaTy2.DaTy2|)
 :qid |AutoInitdfy.186:39|
 :skolemid |764|
 :pattern ( (|#NilRegression.DaTy2.DaTy2| |a#10#0#0|))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= (NilRegression.DaTy2.get (|#NilRegression.DaTy2.DaTy2| |a#14#0#0|)) |a#14#0#0|)
 :qid |AutoInitdfy.186:39|
 :skolemid |772|
 :pattern ( (|#NilRegression.DaTy2.DaTy2| |a#14#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((NilRegression.DaTy$X@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#NilRegression.DaTy.DaTy| |a#2#0#0@@0|) (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@3)) ($IsBox |a#2#0#0@@0| NilRegression.DaTy$X@@3))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($Is DatatypeTypeType (|#NilRegression.DaTy.DaTy| |a#2#0#0@@0|) (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@3)))
)))
(assert (forall ((NilRegression.DaTy2$X@@5 T@U) (|a#12#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#NilRegression.DaTy2.DaTy2| |a#12#0#0@@0|) (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@5)) ($IsBox |a#12#0#0@@0| NilRegression.DaTy2$X@@5))
 :qid |unknown.0:0|
 :skolemid |768|
 :pattern ( ($Is DatatypeTypeType (|#NilRegression.DaTy2.DaTy2| |a#12#0#0@@0|) (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@5)))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@28 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@27)) TInt $h@@28))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( (_System.array.Length $o@@27) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@27) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@29 T@U) ($o@@28 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@29) (and (or (not (= $o@@28 null)) (not true)) (= (dtype $o@@28) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@28)) TInt $h@@29))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_System.array2.Length0 $o@@28) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@29 $o@@28) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@30 T@U) ($o@@29 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@30) (and (or (not (= $o@@29 null)) (not true)) (= (dtype $o@@29) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@29)) TInt $h@@30))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (_System.array2.Length1 $o@@29) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@30 $o@@29) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@31 T@U) ($o@@30 T@U) ($i0@@2 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@31) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@2) (< $i0@@2 (_System.array.Length $o@@30)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) (IndexField $i0@@2)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |379|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@31 $o@@30) (IndexField $i0@@2)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((NilRegression.GClass$U@@23 T@U) (NilRegression.GClass$V@@23 T@U) (NilRegression.GClass$W@@23 T@U) ($h@@32 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@32) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@23) $h@@32))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@32 $o@@31) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23))
)))
(assert (forall ((NilRegression.GClass$U@@24 T@U) (NilRegression.GClass$V@@24 T@U) (NilRegression.GClass$W@@24 T@U) ($h@@33 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@33) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@24 NilRegression.GClass$V@@24 NilRegression.GClass$W@@24)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@24) $h@@33))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@33 $o@@32) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@24 NilRegression.GClass$V@@24 NilRegression.GClass$W@@24))
)))
(assert (forall ((NilRegression.GClass$U@@25 T@U) (NilRegression.GClass$V@@25 T@U) (NilRegression.GClass$W@@25 T@U) ($h@@34 T@U) ($o@@33 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@34) (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@25 NilRegression.GClass$V@@25 NilRegression.GClass$W@@25)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@25) $h@@34))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@34 $o@@33) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@25 NilRegression.GClass$V@@25 NilRegression.GClass$W@@25))
)))
(assert (forall ((NilRegression.GClass$U@@26 T@U) (NilRegression.GClass$V@@26 T@U) (NilRegression.GClass$W@@26 T@U) ($h@@35 T@U) ($o@@34 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@35) (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@26 NilRegression.GClass$V@@26 NilRegression.GClass$W@@26)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@34) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@34) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@26) $h@@35))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@35 $o@@34) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@26 NilRegression.GClass$V@@26 NilRegression.GClass$W@@26))
)))
(assert (forall ((NilRegression.GClass$U@@27 T@U) (NilRegression.GClass$V@@27 T@U) (NilRegression.GClass$W@@27 T@U) ($h@@36 T@U) ($o@@35 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@36) (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@27 NilRegression.GClass$V@@27 NilRegression.GClass$W@@27)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@35) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@35) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@27) $h@@36))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@36 $o@@35) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@27 NilRegression.GClass$V@@27 NilRegression.GClass$W@@27))
)))
(assert (forall ((NilRegression.GClass$U@@28 T@U) (NilRegression.GClass$V@@28 T@U) (NilRegression.GClass$W@@28 T@U) ($h@@37 T@U) ($o@@36 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@37) (and (or (not (= $o@@36 null)) (not true)) (= (dtype $o@@36) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@28 NilRegression.GClass$V@@28 NilRegression.GClass$W@@28)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@36) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@36) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@28) $h@@37))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@37 $o@@36) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@28 NilRegression.GClass$V@@28 NilRegression.GClass$W@@28))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#NilRegression.DaTy.DaTy| |a#5#0#0|)))
 :qid |AutoInitdfy.185:27|
 :skolemid |752|
 :pattern ( (|#NilRegression.DaTy.DaTy| |a#5#0#0|))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (< (BoxRank |a#15#0#0|) (DtRank (|#NilRegression.DaTy2.DaTy2| |a#15#0#0|)))
 :qid |AutoInitdfy.186:39|
 :skolemid |773|
 :pattern ( (|#NilRegression.DaTy2.DaTy2| |a#15#0#0|))
)))
(assert (forall ((d@@7 T@U) (NilRegression.DaTy$X@@4 T@U) ($h@@38 T@U) ) (!  (=> (and ($IsGoodHeap $h@@38) (and (NilRegression.DaTy.DaTy_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@4) $h@@38))) ($IsAllocBox (NilRegression.DaTy.get d@@7) NilRegression.DaTy$X@@4 $h@@38))
 :qid |unknown.0:0|
 :skolemid |749|
 :pattern ( ($IsAllocBox (NilRegression.DaTy.get d@@7) NilRegression.DaTy$X@@4 $h@@38))
)))
(assert (forall ((d@@8 T@U) (NilRegression.DaTy2$X@@6 T@U) ($h@@39 T@U) ) (!  (=> (and ($IsGoodHeap $h@@39) (and (NilRegression.DaTy2.DaTy2_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@6) $h@@39))) ($IsAllocBox (NilRegression.DaTy2.get d@@8) NilRegression.DaTy2$X@@6 $h@@39))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( ($IsAllocBox (NilRegression.DaTy2.get d@@8) NilRegression.DaTy2$X@@6 $h@@39))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@37 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@37 $f))  (=> (and (or (not (= $o@@37 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@37) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6053|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@37 $f))
)))
(assert (forall ((NilRegression.GClass$U@@29 T@U) (NilRegression.GClass$V@@29 T@U) (NilRegression.GClass$W@@29 T@U) ($o@@38 T@U) ) (! (= ($Is refType $o@@38 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29))  (or (= $o@@38 null) (= (dtype $o@@38) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($Is refType $o@@38 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29)))
)))
(assert (forall ((NilRegression.GClass$U@@30 T@U) (NilRegression.GClass$V@@30 T@U) (NilRegression.GClass$W@@30 T@U) (|c#0@@10| T@U) ($h@@40 T@U) ) (! (= ($IsAlloc refType |c#0@@10| (Tclass.NilRegression.GClass NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@40) ($IsAlloc refType |c#0@@10| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@40))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType |c#0@@10| (Tclass.NilRegression.GClass NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@40))
 :pattern ( ($IsAlloc refType |c#0@@10| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@40))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((NilRegression._default.Id$X@@1 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|NilRegression.__default.Id#canCall| NilRegression._default.Id$X@@1 |x#0@@1|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@1| NilRegression._default.Id$X@@1))) (= (NilRegression.__default.Id NilRegression._default.Id$X@@1 |x#0@@1|) |x#0@@1|))
 :qid |unknown.0:0|
 :skolemid |679|
 :pattern ( (NilRegression.__default.Id NilRegression._default.Id$X@@1 |x#0@@1|))
))))
(assert (forall ((f@@0 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@0 i@@2)) f@@0) (= (MultiIndexField_Inverse1 (MultiIndexField f@@0 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@0 i@@2))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |387|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( ($IsBox bx@@11 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($IsBox bx@@12 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((NilRegression.DaTy$X@@5 T@U) (bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@13)) bx@@13) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@13) (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@5))))
 :qid |unknown.0:0|
 :skolemid |746|
 :pattern ( ($IsBox bx@@13 (Tclass.NilRegression.DaTy NilRegression.DaTy$X@@5)))
)))
(assert (forall ((NilRegression.DaTy2$X@@7 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@14)) bx@@14) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@14) (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@7))))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( ($IsBox bx@@14 (Tclass.NilRegression.DaTy2 NilRegression.DaTy2$X@@7)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@31 T@U) (NilRegression.GClass$V@@31 T@U) (NilRegression.GClass$W@@31 T@U) ($h@@41 T@U) ($o@@39 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@41) (and (or (not (= $o@@39 null)) (not true)) (= (dtype $o@@39) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@39) alloc)))) ($IsAllocBox (NilRegression.GClass.u_k NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31 $o@@39) NilRegression.GClass$U@@31 $h@@41))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (NilRegression.GClass.u_k NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31 $o@@39) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@41 $o@@39) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@32 T@U) (NilRegression.GClass$V@@32 T@U) (NilRegression.GClass$W@@32 T@U) ($h@@42 T@U) ($o@@40 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@42) (and (or (not (= $o@@40 null)) (not true)) (= (dtype $o@@40) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@40) alloc)))) ($IsAllocBox (NilRegression.GClass.v_k NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32 $o@@40) NilRegression.GClass$V@@32 $h@@42))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (NilRegression.GClass.v_k NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32 $o@@40) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@42 $o@@40) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@33 T@U) (NilRegression.GClass$V@@33 T@U) (NilRegression.GClass$W@@33 T@U) ($h@@43 T@U) ($o@@41 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@43) (and (or (not (= $o@@41 null)) (not true)) (= (dtype $o@@41) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@41) alloc)))) ($IsAllocBox (NilRegression.GClass.w_k NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33 $o@@41) NilRegression.GClass$W@@33 $h@@43))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (NilRegression.GClass.w_k NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33 $o@@41) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@43 $o@@41) alloc)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (NilRegression._default.Id$X@@2 T@U) (|x#0@@2| T@U) ) (!  (=> (and (or (|NilRegression.__default.Id#canCall| NilRegression._default.Id$X@@2 |x#0@@2|) (and (< 0 $FunctionContextHeight) (and ($IsBox |x#0@@2| NilRegression._default.Id$X@@2) ($IsAllocBox |x#0@@2| NilRegression._default.Id$X@@2 $Heap)))) ($IsGoodHeap $Heap)) ($IsAllocBox (NilRegression.__default.Id NilRegression._default.Id$X@@2 |x#0@@2|) NilRegression._default.Id$X@@2 $Heap))
 :qid |AutoInitdfy.193:12|
 :skolemid |677|
 :pattern ( ($IsAllocBox (NilRegression.__default.Id NilRegression._default.Id$X@@2 |x#0@@2|) NilRegression._default.Id$X@@2 $Heap))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.NilRegression.Trait?) Tagclass.NilRegression.Trait?))
(assert (= (TagFamily Tclass.NilRegression.Trait?) tytagFamily$Trait))
(assert (= (Tag Tclass.NilRegression.MyClass?) Tagclass.NilRegression.MyClass?))
(assert (= (TagFamily Tclass.NilRegression.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass.NilRegression.Trait) Tagclass.NilRegression.Trait))
(assert (= (TagFamily Tclass.NilRegression.Trait) tytagFamily$Trait))
(assert (= (Tag Tclass.NilRegression.MyClass) Tagclass.NilRegression.MyClass))
(assert (= (TagFamily Tclass.NilRegression.MyClass) tytagFamily$MyClass))
(assert (= |#NilRegression.DaTy2.Nothing| (Lit DatatypeTypeType |#NilRegression.DaTy2.Nothing|)))
(assert (forall (($o@@42 T@U) ) (! (= ($Is refType $o@@42 Tclass.NilRegression.Trait?)  (or (= $o@@42 null) (implements$NilRegression.Trait (dtype $o@@42))))
 :qid |unknown.0:0|
 :skolemid |694|
 :pattern ( ($Is refType $o@@42 Tclass.NilRegression.Trait?))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#NilRegression.DaTy.DaTy| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#NilRegression.DaTy.DaTy| |a#3#0#0|)))
 :qid |AutoInitdfy.185:27|
 :skolemid |750|
 :pattern ( (|#NilRegression.DaTy.DaTy| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#13#0#0| T@U) ) (! (= (|#NilRegression.DaTy2.DaTy2| (Lit BoxType |a#13#0#0|)) (Lit DatatypeTypeType (|#NilRegression.DaTy2.DaTy2| |a#13#0#0|)))
 :qid |AutoInitdfy.186:39|
 :skolemid |771|
 :pattern ( (|#NilRegression.DaTy2.DaTy2| (Lit BoxType |a#13#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@34 T@U) (NilRegression.GClass$V@@34 T@U) (NilRegression.GClass$W@@34 T@U) ($o@@43 T@U) ) (!  (=> (and (or (not (= $o@@43 null)) (not true)) (= (dtype $o@@43) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34))) ($IsBox (NilRegression.GClass.u_k NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34 $o@@43) NilRegression.GClass$U@@34))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (NilRegression.GClass.u_k NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34 $o@@43))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@35 T@U) (NilRegression.GClass$V@@35 T@U) (NilRegression.GClass$W@@35 T@U) ($o@@44 T@U) ) (!  (=> (and (or (not (= $o@@44 null)) (not true)) (= (dtype $o@@44) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35))) ($IsBox (NilRegression.GClass.v_k NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35 $o@@44) NilRegression.GClass$V@@35))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (NilRegression.GClass.v_k NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35 $o@@44))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@36 T@U) (NilRegression.GClass$V@@36 T@U) (NilRegression.GClass$W@@36 T@U) ($o@@45 T@U) ) (!  (=> (and (or (not (= $o@@45 null)) (not true)) (= (dtype $o@@45) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36))) ($IsBox (NilRegression.GClass.w_k NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36 $o@@45) NilRegression.GClass$W@@36))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (NilRegression.GClass.w_k NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36 $o@@45))
))))
(assert (forall ((h@@3 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@3))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@0| () T@U)
(declare-fun |$rhs#6@0| () T@U)
(declare-fun |$rhs#7@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call4formal@this@0 () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |$rhs#9@0| () T@U)
(declare-fun |$rhs#10@0| () T@U)
(declare-fun |$rhs#8@0| () T@U)
(declare-fun |$rhs#11@0| () T@U)
(declare-fun |$rhs#12@0| () T@U)
(declare-fun |$rhs#13@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |call2formal@r#0| () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie$R () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie$R@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@r#0@0| () T@U)
(declare-fun |$rhs##0@0| () T@U)
(declare-fun |call2formal@r#0@@0| () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie$R@@0 () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie$R@0@@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |call2formal@r#0@0@@0| () T@U)
(declare-fun |$rhs##1@0| () T@U)
(declare-fun |call3formal@r#0| () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie2$R () T@U)
(declare-fun |call4formal@s#0| () T@U)
(declare-fun call1formal@NilRegression._default.Gimmie2$S () T@U)
(declare-fun call0formal@NilRegression._default.Gimmie2$R@0 () T@U)
(declare-fun call1formal@NilRegression._default.Gimmie2$S@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@r#0@0| () T@U)
(declare-fun |call4formal@s#0@0| () T@U)
(declare-fun |$rhs##2@0| () T@U)
(declare-fun |$rhs##3@0| () T@U)
(declare-fun call4formal@this () T@U)
(declare-fun call0formal@NilRegression.GClass$U () T@U)
(declare-fun call1formal@NilRegression.GClass$V () T@U)
(declare-fun call2formal@NilRegression.GClass$W () T@U)
(declare-fun call0formal@NilRegression.GClass$U@0 () T@U)
(declare-fun call1formal@NilRegression.GClass$V@0 () T@U)
(declare-fun call2formal@NilRegression.GClass$W@0 () T@U)
(declare-fun |u#0@0| () T@U)
(declare-fun |v#0@0| () T@U)
(declare-fun |w#0@0| () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |$rhs#4@0| () T@U)
(declare-fun |$rhs#5@0| () T@U)
(declare-fun |x0#0| () T@U)
(declare-fun |x1#0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@11| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |v#0| () T@U)
(declare-fun |w#0| () T@U)
(declare-fun |x#0@@3| () T@U)
(declare-fun |y#0| () T@U)
(set-info :boogie-vc-id Impl$$NilRegression.__default.NilRegression3)
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
 (=> (= (ControlFlow 0 0) 51) (let ((anon3_correct  (=> (and (= |x#0@0| (ite (= |$rhs#6@0| |$rhs#7@0|) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v)) ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v)))) ($IsAlloc refType |x#0@0| Tclass.NilRegression.Trait? $Heap@3)) (=> (and (and (|NilRegression.__default.Id#canCall| Tclass.NilRegression.Trait? ($Box refType |x#0@0|)) (|NilRegression.__default.Id#canCall| Tclass.NilRegression.Trait? ($Box refType |x#0@0|))) (and (= |y#0@0| ($Unbox refType (NilRegression.__default.Id Tclass.NilRegression.Trait? ($Box refType |x#0@0|)))) (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#6@0|))))) (=> (and (and (and (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#6@0|))) (= |$rhs#9@0| ($Unbox refType (NilRegression.DaTy.get (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#6@0|)))))) (and (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#7@0|))) (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#7@0|))))) (and (and (= |$rhs#10@0| ($Unbox refType (NilRegression.DaTy.get (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#7@0|))))) (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#8@0|)))) (and (NilRegression.DaTy.DaTy_q (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#8@0|))) (= |$rhs#11@0| ($Unbox refType (NilRegression.DaTy.get (|#NilRegression.DaTy.DaTy| ($Box refType |$rhs#8@0|)))))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (NilRegression.DaTy2.DaTy2_q (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#9@0|)))) (=> (NilRegression.DaTy2.DaTy2_q (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#9@0|))) (=> (= |$rhs#12@0| ($Unbox refType (NilRegression.DaTy2.get (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#9@0|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (NilRegression.DaTy2.DaTy2_q (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#10@0|)))) (=> (NilRegression.DaTy2.DaTy2_q (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#10@0|))) (=> (and (= |$rhs#13@0| ($Unbox refType (NilRegression.DaTy2.get (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#10@0|))))) (= (ControlFlow 0 2) (- 0 1))) (NilRegression.DaTy2.DaTy2_q (|#NilRegression.DaTy2.DaTy2| ($Box refType |$rhs#11@0|))))))))))))))
(let ((anon4_Else_correct  (=> (or (not (= |$rhs#6@0| |$rhs#7@0|)) (not true)) (and (=> (= (ControlFlow 0 8) (- 0 10)) true) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= (ControlFlow 0 8) 2) anon3_correct)))))))
(let ((anon4_Then_correct  (=> (= |$rhs#6@0| |$rhs#7@0|) (and (=> (= (ControlFlow 0 5) (- 0 7)) true) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= (ControlFlow 0 5) 2) anon3_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and (and (and ($IsBox |call2formal@r#0| call0formal@NilRegression._default.Gimmie$R) ($IsAllocBox |call2formal@r#0| call0formal@NilRegression._default.Gimmie$R $Heap@@0)) (= call0formal@NilRegression._default.Gimmie$R@0 Tclass._System.object?)) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (=> (and (and (and (and (and (and ($IsBox |call2formal@r#0@0| call0formal@NilRegression._default.Gimmie$R@0) ($IsAllocBox |call2formal@r#0@0| call0formal@NilRegression._default.Gimmie$R@0 $Heap@0)) (forall (($o@@46 T@U) ) (!  (=> (and (or (not (= $o@@46 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@46) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@46) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@46)))
 :qid |AutoInitdfy.190:10|
 :skolemid |671|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@46))
))) (and ($HeapSucc $Heap@@0 $Heap@0) (= |$rhs##0@0| ($Unbox refType |call2formal@r#0@0|)))) (and (and (and ($IsBox |call2formal@r#0@@0| call0formal@NilRegression._default.Gimmie$R@@0) ($IsAllocBox |call2formal@r#0@@0| call0formal@NilRegression._default.Gimmie$R@@0 $Heap@@0)) (= call0formal@NilRegression._default.Gimmie$R@0@@0 Tclass.NilRegression.Trait?)) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (and ($IsBox |call2formal@r#0@0@@0| call0formal@NilRegression._default.Gimmie$R@0@@0) ($IsAllocBox |call2formal@r#0@0@@0| call0formal@NilRegression._default.Gimmie$R@0@@0 $Heap@1)) (forall (($o@@47 T@U) ) (!  (=> (and (or (not (= $o@@47 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@47) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@47) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@47)))
 :qid |AutoInitdfy.190:10|
 :skolemid |671|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@47))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |$rhs##1@0| ($Unbox refType |call2formal@r#0@0@@0|)))) (and (and (and ($IsBox |call3formal@r#0| call0formal@NilRegression._default.Gimmie2$R) ($IsAllocBox |call3formal@r#0| call0formal@NilRegression._default.Gimmie2$R $Heap@@0)) (and ($IsBox |call4formal@s#0| call1formal@NilRegression._default.Gimmie2$S) ($IsAllocBox |call4formal@s#0| call1formal@NilRegression._default.Gimmie2$S $Heap@@0))) (and (and (= call0formal@NilRegression._default.Gimmie2$R@0 Tclass._System.object?) (= call1formal@NilRegression._default.Gimmie2$S@0 Tclass.NilRegression.Trait?)) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))))) (and (and (and (and (and ($IsBox |call3formal@r#0@0| call0formal@NilRegression._default.Gimmie2$R@0) ($IsAllocBox |call3formal@r#0@0| call0formal@NilRegression._default.Gimmie2$R@0 $Heap@2)) (and ($IsBox |call4formal@s#0@0| call1formal@NilRegression._default.Gimmie2$S@0) ($IsAllocBox |call4formal@s#0@0| call1formal@NilRegression._default.Gimmie2$S@0 $Heap@2))) (and (and (forall (($o@@48 T@U) ) (!  (=> (and (or (not (= $o@@48 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@48) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@48) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@48)))
 :qid |AutoInitdfy.191:10|
 :skolemid |674|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@48))
)) ($HeapSucc $Heap@1 $Heap@2)) (and (= |$rhs##2@0| ($Unbox refType |call3formal@r#0@0|)) (= |$rhs##3@0| ($Unbox refType |call4formal@s#0@0|))))) (and (and (and (or (not (= call4formal@this null)) (not true)) (and ($Is refType call4formal@this (Tclass.NilRegression.GClass call0formal@NilRegression.GClass$U call1formal@NilRegression.GClass$V call2formal@NilRegression.GClass$W)) ($IsAlloc refType call4formal@this (Tclass.NilRegression.GClass call0formal@NilRegression.GClass$U call1formal@NilRegression.GClass$V call2formal@NilRegression.GClass$W) $Heap@@0))) (= call0formal@NilRegression.GClass$U@0 Tclass._System.object?)) (and (= call1formal@NilRegression.GClass$V@0 Tclass.NilRegression.Trait?) (= call2formal@NilRegression.GClass$W@0 Tclass.NilRegression.MyClass?)))) (and (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (or (not (= call4formal@this@0 null)) (not true)) (and ($Is refType call4formal@this@0 (Tclass.NilRegression.GClass call0formal@NilRegression.GClass$U@0 call1formal@NilRegression.GClass$V@0 call2formal@NilRegression.GClass$W@0)) ($IsAlloc refType call4formal@this@0 (Tclass.NilRegression.GClass call0formal@NilRegression.GClass$U@0 call1formal@NilRegression.GClass$V@0 call2formal@NilRegression.GClass$W@0) $Heap@3)))) (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1))))) (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1))) (LitInt 1)) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))))))) (and (and (and (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)))) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2))) (LitInt 1))) (and (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)))))) (and (and (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2))) (LitInt 1)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 call4formal@this@0) alloc))))) (and (forall (($o@@49 T@U) ) (!  (=> (and (or (not (= $o@@49 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@49) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@49) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@49)))
 :qid |AutoInitdfy.175:5|
 :skolemid |736|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@49))
)) ($HeapSucc $Heap@2 $Heap@3))))))) (and (=> (= (ControlFlow 0 11) (- 0 50)) true) (and (=> (= (ControlFlow 0 11) (- 0 49)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |u#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u))) (and (=> (= (ControlFlow 0 11) (- 0 48)) true) (and (=> (= (ControlFlow 0 11) (- 0 47)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |v#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v))) (and (=> (= (ControlFlow 0 11) (- 0 46)) true) (and (=> (= (ControlFlow 0 11) (- 0 45)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |w#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w))) (and (=> (= (ControlFlow 0 11) (- 0 44)) true) (and (=> (= (ControlFlow 0 11) (- 0 43)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |$rhs#0@0| ($Unbox refType (NilRegression.GClass.u_k Tclass._System.object? Tclass.NilRegression.Trait? Tclass.NilRegression.MyClass? call4formal@this@0))) (and (=> (= (ControlFlow 0 11) (- 0 42)) true) (and (=> (= (ControlFlow 0 11) (- 0 41)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |$rhs#1@0| ($Unbox refType (NilRegression.GClass.v_k Tclass._System.object? Tclass.NilRegression.Trait? Tclass.NilRegression.MyClass? call4formal@this@0))) (and (=> (= (ControlFlow 0 11) (- 0 40)) true) (and (=> (= (ControlFlow 0 11) (- 0 39)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (=> (= |$rhs#2@0| ($Unbox refType (NilRegression.GClass.w_k Tclass._System.object? Tclass.NilRegression.Trait? Tclass.NilRegression.MyClass? call4formal@this@0))) (and (=> (= (ControlFlow 0 11) (- 0 38)) true) (and (=> (= (ControlFlow 0 11) (- 0 37)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 36)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 35)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1))))) (=> (= |$rhs#3@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u1))) (IndexField (LitInt 0))))) (and (=> (= (ControlFlow 0 11) (- 0 34)) true) (and (=> (= (ControlFlow 0 11) (- 0 33)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 32)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 31)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1))))) (=> (= |$rhs#4@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v1))) (IndexField (LitInt 0))))) (and (=> (= (ControlFlow 0 11) (- 0 30)) true) (and (=> (= (ControlFlow 0 11) (- 0 29)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 28)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 27)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1))))) (=> (= |$rhs#5@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w1))) (IndexField (LitInt 0))))) (and (=> (= (ControlFlow 0 11) (- 0 26)) true) (and (=> (= (ControlFlow 0 11) (- 0 25)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 24)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 23)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2))))) (and (=> (= (ControlFlow 0 11) (- 0 22)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2))))) (=> (= |$rhs#6@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.u2))) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) (and (=> (= (ControlFlow 0 11) (- 0 21)) true) (and (=> (= (ControlFlow 0 11) (- 0 20)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 19)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 18)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))))) (and (=> (= (ControlFlow 0 11) (- 0 17)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))))) (=> (= |$rhs#7@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.v2))) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) (and (=> (= (ControlFlow 0 11) (- 0 16)) true) (and (=> (= (ControlFlow 0 11) (- 0 15)) (or (not (= call4formal@this@0 null)) (not true))) (=> (or (not (= call4formal@this@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)) null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2))))) (=> (= |$rhs#8@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 call4formal@this@0) NilRegression.GClass.w2))) (MultiIndexField (IndexField (LitInt 0)) (LitInt 0))))) (and (=> (= (ControlFlow 0 11) 5) anon4_Then_correct) (=> (= (ControlFlow 0 11) 8) anon4_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($Is refType |x0#0| Tclass._System.object?) ($IsAlloc refType |x0#0| Tclass._System.object? $Heap@@0)) true) (=> (and (and (and (and (and ($Is refType |x1#0| Tclass.NilRegression.Trait?) ($IsAlloc refType |x1#0| Tclass.NilRegression.Trait? $Heap@@0)) true) (and (=> |defass#c#0| (and ($Is refType |c#0@@11| (Tclass.NilRegression.GClass Tclass._System.object? Tclass.NilRegression.Trait? Tclass.NilRegression.MyClass?)) ($IsAlloc refType |c#0@@11| (Tclass.NilRegression.GClass Tclass._System.object? Tclass.NilRegression.Trait? Tclass.NilRegression.MyClass?) $Heap@@0))) true)) (and (and (and ($Is refType |u#0| Tclass._System.object?) ($IsAlloc refType |u#0| Tclass._System.object? $Heap@@0)) true) (and (and ($Is refType |v#0| Tclass.NilRegression.Trait?) ($IsAlloc refType |v#0| Tclass.NilRegression.Trait? $Heap@@0)) true))) (and (and (and (and ($Is refType |w#0| Tclass.NilRegression.MyClass?) ($IsAlloc refType |w#0| Tclass.NilRegression.MyClass? $Heap@@0)) true) (and (and ($Is refType |x#0@@3| Tclass.NilRegression.Trait?) ($IsAlloc refType |x#0@@3| Tclass.NilRegression.Trait? $Heap@@0)) true)) (and (and (and ($Is refType |y#0| Tclass.NilRegression.Trait?) ($IsAlloc refType |y#0| Tclass.NilRegression.Trait? $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 51) 11))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
