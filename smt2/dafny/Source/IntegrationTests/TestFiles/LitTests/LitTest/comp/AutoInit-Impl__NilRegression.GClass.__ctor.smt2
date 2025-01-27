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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass.NilRegression.GClass () T@U)
(declare-fun class.NilRegression.GClass? () T@U)
(declare-fun Tagclass.NilRegression.GClass? () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun tytagFamily$GClass () T@U)
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
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun NilRegression.GClass.u1 () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun NilRegression.GClass.u_k (T@U T@U T@U T@U) T@U)
(declare-fun NilRegression.GClass.v_k (T@U T@U T@U T@U) T@U)
(declare-fun NilRegression.GClass.w_k (T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass.NilRegression.GClass class.NilRegression.GClass? Tagclass.NilRegression.GClass? tytagFamily$array tytagFamily$array2 tytagFamily$GClass field$u field$v field$w field$u1 field$v1 field$w1 field$u2 field$v2 field$w2)
)
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
(assert (= (Ctor refType) 3))
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
(assert (forall ((NilRegression.GClass$U@@10 T@U) (NilRegression.GClass$V@@10 T@U) (NilRegression.GClass$W@@10 T@U) ($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@10)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10))
)))
(assert (forall ((NilRegression.GClass$U@@11 T@U) (NilRegression.GClass$V@@11 T@U) (NilRegression.GClass$W@@11 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@11)))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11))
)))
(assert (forall ((NilRegression.GClass$U@@12 T@U) (NilRegression.GClass$V@@12 T@U) (NilRegression.GClass$W@@12 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@12)))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12))
)))
(assert (forall ((NilRegression.GClass$U@@13 T@U) (NilRegression.GClass$V@@13 T@U) (NilRegression.GClass$W@@13 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@13)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13))
)))
(assert (forall ((NilRegression.GClass$U@@14 T@U) (NilRegression.GClass$V@@14 T@U) (NilRegression.GClass$W@@14 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@14)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14))
)))
(assert (forall ((NilRegression.GClass$U@@15 T@U) (NilRegression.GClass$V@@15 T@U) (NilRegression.GClass$W@@15 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@15)))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@8 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@8 (Tclass._System.array? _System.array$arg@@1) $h@@7)  (or (= $o@@8 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@8) alloc)))))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($IsAlloc refType $o@@8 (Tclass._System.array? _System.array$arg@@1) $h@@7))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@9 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@9 (Tclass._System.array2? _System.array2$arg@@2) $h@@8)  (or (= $o@@9 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@9) alloc)))))
 :qid |unknown.0:0|
 :skolemid |641|
 :pattern ( ($IsAlloc refType $o@@9 (Tclass._System.array2? _System.array2$arg@@2) $h@@8))
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
(assert ($IsGhostField alloc))
(assert (forall ((NilRegression.GClass$U@@16 T@U) (NilRegression.GClass$V@@16 T@U) (NilRegression.GClass$W@@16 T@U) ($h@@9 T@U) ($o@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) NilRegression.GClass.u) NilRegression.GClass$U@@16 $h@@9))
 :qid |unknown.0:0|
 :skolemid |712|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@10) NilRegression.GClass.u) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16))
)))
(assert (forall ((NilRegression.GClass$U@@17 T@U) (NilRegression.GClass$V@@17 T@U) (NilRegression.GClass$W@@17 T@U) ($h@@10 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) NilRegression.GClass.v) NilRegression.GClass$V@@17 $h@@10))
 :qid |unknown.0:0|
 :skolemid |714|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@11) NilRegression.GClass.v) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17))
)))
(assert (forall ((NilRegression.GClass$U@@18 T@U) (NilRegression.GClass$V@@18 T@U) (NilRegression.GClass$W@@18 T@U) ($h@@11 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) NilRegression.GClass.w) NilRegression.GClass$W@@18 $h@@11))
 :qid |unknown.0:0|
 :skolemid |716|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@12) NilRegression.GClass.w) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18))
)))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@3| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@3| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
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
(assert (forall ((NilRegression.GClass$U@@19 T@U) (NilRegression.GClass$V@@19 T@U) (NilRegression.GClass$W@@19 T@U) ($h@@12 T@U) ($o@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) NilRegression.GClass.u) NilRegression.GClass$U@@19))
 :qid |unknown.0:0|
 :skolemid |711|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@13) NilRegression.GClass.u) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19))
)))
(assert (forall ((NilRegression.GClass$U@@20 T@U) (NilRegression.GClass$V@@20 T@U) (NilRegression.GClass$W@@20 T@U) ($h@@13 T@U) ($o@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) NilRegression.GClass.v) NilRegression.GClass$V@@20))
 :qid |unknown.0:0|
 :skolemid |713|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@14) NilRegression.GClass.v) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20))
)))
(assert (forall ((NilRegression.GClass$U@@21 T@U) (NilRegression.GClass$V@@21 T@U) (NilRegression.GClass$W@@21 T@U) ($h@@14 T@U) ($o@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) NilRegression.GClass.w) NilRegression.GClass$W@@21))
 :qid |unknown.0:0|
 :skolemid |715|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@15) NilRegression.GClass.w) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@4)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@4)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |633|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@5)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |646|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@5))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@16 T@U) ) (! (= ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@16 null) (= (dtype $o@@16) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |381|
 :pattern ( ($Is refType $o@@16 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ($o@@17 T@U) ) (! (= ($Is refType $o@@17 (Tclass._System.array2? _System.array2$arg@@6))  (or (= $o@@17 null) (= (dtype $o@@17) (Tclass._System.array2? _System.array2$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($Is refType $o@@17 (Tclass._System.array2? _System.array2$arg@@6)))
)))
(assert (forall ((NilRegression.GClass$U@@22 T@U) (NilRegression.GClass$V@@22 T@U) (NilRegression.GClass$W@@22 T@U) ($o@@18 T@U) ($h@@15 T@U) ) (! (= ($IsAlloc refType $o@@18 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@15)  (or (= $o@@18 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($IsAlloc refType $o@@18 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@15))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
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
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |377|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@7)) _System.array2$arg@@7)
 :qid |unknown.0:0|
 :skolemid |634|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@7))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@8)) _System.array2$arg@@8)
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@19)) TInt $h@@16))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( (_System.array.Length $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass._System.array2? _System.array2$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@20)) TInt $h@@17))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_System.array2.Length0 $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)) (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass._System.array2? _System.array2$arg@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@21)) TInt $h@@18))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (_System.array2.Length1 $o@@21) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) alloc)) (Tclass._System.array2? _System.array2$arg@@10))
)))
(assert (forall ((NilRegression.GClass$U@@23 T@U) (NilRegression.GClass$V@@23 T@U) (NilRegression.GClass$W@@23 T@U) ($h@@19 T@U) ($o@@22 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@19) (and (or (not (= $o@@22 null)) (not true)) (= (dtype $o@@22) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@23) $h@@19))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@19 $o@@22) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23))
)))
(assert (forall ((NilRegression.GClass$U@@24 T@U) (NilRegression.GClass$V@@24 T@U) (NilRegression.GClass$W@@24 T@U) ($h@@20 T@U) ($o@@23 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@20) (and (or (not (= $o@@23 null)) (not true)) (= (dtype $o@@23) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@24 NilRegression.GClass$V@@24 NilRegression.GClass$W@@24)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@24) $h@@20))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@20 $o@@23) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@24 NilRegression.GClass$V@@24 NilRegression.GClass$W@@24))
)))
(assert (forall ((NilRegression.GClass$U@@25 T@U) (NilRegression.GClass$V@@25 T@U) (NilRegression.GClass$W@@25 T@U) ($h@@21 T@U) ($o@@24 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@21) (and (or (not (= $o@@24 null)) (not true)) (= (dtype $o@@24) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@25 NilRegression.GClass$V@@25 NilRegression.GClass$W@@25)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@25) $h@@21))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@21 $o@@24) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@25 NilRegression.GClass$V@@25 NilRegression.GClass$W@@25))
)))
(assert (forall ((NilRegression.GClass$U@@26 T@U) (NilRegression.GClass$V@@26 T@U) (NilRegression.GClass$W@@26 T@U) ($h@@22 T@U) ($o@@25 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@22) (and (or (not (= $o@@25 null)) (not true)) (= (dtype $o@@25) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@26 NilRegression.GClass$V@@26 NilRegression.GClass$W@@26)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@26) $h@@22))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@22 $o@@25) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@26 NilRegression.GClass$V@@26 NilRegression.GClass$W@@26))
)))
(assert (forall ((NilRegression.GClass$U@@27 T@U) (NilRegression.GClass$V@@27 T@U) (NilRegression.GClass$W@@27 T@U) ($h@@23 T@U) ($o@@26 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@23) (and (or (not (= $o@@26 null)) (not true)) (= (dtype $o@@26) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@27 NilRegression.GClass$V@@27 NilRegression.GClass$W@@27)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@26) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@26) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@27) $h@@23))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@23 $o@@26) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@27 NilRegression.GClass$V@@27 NilRegression.GClass$W@@27))
)))
(assert (forall ((NilRegression.GClass$U@@28 T@U) (NilRegression.GClass$V@@28 T@U) (NilRegression.GClass$W@@28 T@U) ($h@@24 T@U) ($o@@27 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@24) (and (or (not (= $o@@27 null)) (not true)) (= (dtype $o@@27) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@28 NilRegression.GClass$V@@28 NilRegression.GClass$W@@28)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@28) $h@@24))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@24 $o@@27) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@28 NilRegression.GClass$V@@28 NilRegression.GClass$W@@28))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@28 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@28 $f))  (=> (and (or (not (= $o@@28 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@28) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6053|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@28 $f))
)))
(assert (forall ((NilRegression.GClass$U@@29 T@U) (NilRegression.GClass$V@@29 T@U) (NilRegression.GClass$W@@29 T@U) ($o@@29 T@U) ) (! (= ($Is refType $o@@29 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29))  (or (= $o@@29 null) (= (dtype $o@@29) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($Is refType $o@@29 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@29 NilRegression.GClass$V@@29 NilRegression.GClass$W@@29)))
)))
(assert (forall ((NilRegression.GClass$U@@30 T@U) (NilRegression.GClass$V@@30 T@U) (NilRegression.GClass$W@@30 T@U) (|c#0@@4| T@U) ($h@@25 T@U) ) (! (= ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@25) ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@25))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@25))
 :pattern ( ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@30 NilRegression.GClass$V@@30 NilRegression.GClass$W@@30) $h@@25))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array? _System.array$arg@@9))))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |387|
 :pattern ( ($IsBox bx@@4 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((_System.array2$arg@@11 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array2? _System.array2$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array2? _System.array2$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |635|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array2? _System.array2$arg@@11)))
)))
(assert (forall ((_System.array2$arg@@12 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array2 _System.array2$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array2 _System.array2$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array2 _System.array2$arg@@12)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@31 T@U) (NilRegression.GClass$V@@31 T@U) (NilRegression.GClass$W@@31 T@U) ($h@@26 T@U) ($o@@30 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@26) (and (or (not (= $o@@30 null)) (not true)) (= (dtype $o@@30) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@30) alloc)))) ($IsAllocBox (NilRegression.GClass.u_k NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31 $o@@30) NilRegression.GClass$U@@31 $h@@26))
 :qid |unknown.0:0|
 :skolemid |718|
 :pattern ( (NilRegression.GClass.u_k NilRegression.GClass$U@@31 NilRegression.GClass$V@@31 NilRegression.GClass$W@@31 $o@@30) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@26 $o@@30) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@32 T@U) (NilRegression.GClass$V@@32 T@U) (NilRegression.GClass$W@@32 T@U) ($h@@27 T@U) ($o@@31 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@27) (and (or (not (= $o@@31 null)) (not true)) (= (dtype $o@@31) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@31) alloc)))) ($IsAllocBox (NilRegression.GClass.v_k NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32 $o@@31) NilRegression.GClass$V@@32 $h@@27))
 :qid |unknown.0:0|
 :skolemid |720|
 :pattern ( (NilRegression.GClass.v_k NilRegression.GClass$U@@32 NilRegression.GClass$V@@32 NilRegression.GClass$W@@32 $o@@31) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@27 $o@@31) alloc)))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@33 T@U) (NilRegression.GClass$V@@33 T@U) (NilRegression.GClass$W@@33 T@U) ($h@@28 T@U) ($o@@32 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@28) (and (or (not (= $o@@32 null)) (not true)) (= (dtype $o@@32) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@32) alloc)))) ($IsAllocBox (NilRegression.GClass.w_k NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33 $o@@32) NilRegression.GClass$W@@33 $h@@28))
 :qid |unknown.0:0|
 :skolemid |722|
 :pattern ( (NilRegression.GClass.w_k NilRegression.GClass$U@@33 NilRegression.GClass$V@@33 NilRegression.GClass$W@@33 $o@@32) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@28 $o@@32) alloc)))
))))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@34 T@U) (NilRegression.GClass$V@@34 T@U) (NilRegression.GClass$W@@34 T@U) ($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (= (dtype $o@@33) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34))) ($IsBox (NilRegression.GClass.u_k NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34 $o@@33) NilRegression.GClass$U@@34))
 :qid |unknown.0:0|
 :skolemid |717|
 :pattern ( (NilRegression.GClass.u_k NilRegression.GClass$U@@34 NilRegression.GClass$V@@34 NilRegression.GClass$W@@34 $o@@33))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@35 T@U) (NilRegression.GClass$V@@35 T@U) (NilRegression.GClass$W@@35 T@U) ($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (= (dtype $o@@34) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35))) ($IsBox (NilRegression.GClass.v_k NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35 $o@@34) NilRegression.GClass$V@@35))
 :qid |unknown.0:0|
 :skolemid |719|
 :pattern ( (NilRegression.GClass.v_k NilRegression.GClass$U@@35 NilRegression.GClass$V@@35 NilRegression.GClass$W@@35 $o@@34))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((NilRegression.GClass$U@@36 T@U) (NilRegression.GClass$V@@36 T@U) (NilRegression.GClass$W@@36 T@U) ($o@@35 T@U) ) (!  (=> (and (or (not (= $o@@35 null)) (not true)) (= (dtype $o@@35) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36))) ($IsBox (NilRegression.GClass.w_k NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36 $o@@35) NilRegression.GClass$W@@36))
 :qid |unknown.0:0|
 :skolemid |721|
 :pattern ( (NilRegression.GClass.w_k NilRegression.GClass$U@@36 NilRegression.GClass$V@@36 NilRegression.GClass$W@@36 $o@@35))
))))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun NilRegression.GClass$U@@37 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $nw@1 () T@U)
(declare-fun NilRegression.GClass$V@@37 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun NilRegression.GClass$W@@37 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun this () T@U)
(declare-fun this.u () T@U)
(declare-fun this.v () T@U)
(declare-fun this.w () T@U)
(declare-fun |this.u'| () T@U)
(declare-fun |this.v'| () T@U)
(declare-fun |this.w'| () T@U)
(declare-fun $Heap@6 () T@U)
(set-info :boogie-vc-id Impl$$NilRegression.GClass.__ctor)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? NilRegression.GClass$U@@37))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 1)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? NilRegression.GClass$V@@37))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 1)) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? NilRegression.GClass$W@@37))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc))))) (and (and (= (_System.array.Length $nw@2) (LitInt 1)) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array2? NilRegression.GClass$U@@37))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc)))) (= (_System.array2.Length0 $nw@3) (LitInt 1)))) (and (and (= (_System.array2.Length1 $nw@3) (LitInt 1)) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array2? NilRegression.GClass$V@@37))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc)))) (= (_System.array2.Length0 $nw@4) (LitInt 1)))) (and (and (= (_System.array2.Length1 $nw@4) (LitInt 1)) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array2? NilRegression.GClass$W@@37))) (=> (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc)))) (= (_System.array2.Length0 $nw@5) (LitInt 1))) (and (= (_System.array2.Length1 $nw@5) (LitInt 1)) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc ($Box boolType (bool_2_U true))))))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.NilRegression.GClass? NilRegression.GClass$U@@37 NilRegression.GClass$V@@37 NilRegression.GClass$W@@37))))) (=> (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) alloc)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.u) this.u)) (and (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.v) this.v) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.w) this.w))) (and (and (= (NilRegression.GClass.u_k NilRegression.GClass$U@@37 NilRegression.GClass$V@@37 NilRegression.GClass$W@@37 this) |this.u'|) (= (NilRegression.GClass.v_k NilRegression.GClass$U@@37 NilRegression.GClass$V@@37 NilRegression.GClass$W@@37 this) |this.v'|)) (and (= (NilRegression.GClass.w_k NilRegression.GClass$U@@37 NilRegression.GClass$V@@37 NilRegression.GClass$W@@37 this) |this.w'|) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.u1)) $nw@0)))) (and (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.v1)) $nw@1) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.w1)) $nw@2)) (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.u2)) $nw@3) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.v2)) $nw@4))) (and (and (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) NilRegression.GClass.w2)) $nw@5) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 this (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 this) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v1))))) (=> (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v1)))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w1))))) (=> (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w1)))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w1))) (LitInt 1))) (=> (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w1))) (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))))) (=> (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2))))) (=> (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2)))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2))) (LitInt 1))) (=> (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2))) (LitInt 1)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))))) (=> (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2))))) (=> (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.v2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2)))) (=> (= (ControlFlow 0 2) (- 0 1)) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 this) NilRegression.GClass.w2))) (LitInt 1))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 20) 2))) anon0_correct)))
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
