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
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.array? Tagclass._System.array Tagclass._System.array2? Tagclass._System.array2 Tagclass.NilRegression.GClass class.NilRegression.GClass? Tagclass.NilRegression.GClass? tytagFamily$array tytagFamily$array2 tytagFamily$GClass field$u1 field$v1 field$w1 field$u2 field$v2 field$w2)
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
(assert (forall ((NilRegression.GClass$U@@7 T@U) (NilRegression.GClass$V@@7 T@U) (NilRegression.GClass$W@@7 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.NilRegression.GClass NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7))  (and ($Is refType |c#0@@1| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |738|
 :pattern ( ($Is refType |c#0@@1| (Tclass.NilRegression.GClass NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@7 NilRegression.GClass$V@@7 NilRegression.GClass$W@@7)))
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
(assert (forall ((NilRegression.GClass$U@@8 T@U) (NilRegression.GClass$V@@8 T@U) (NilRegression.GClass$W@@8 T@U) ($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@8 NilRegression.GClass$V@@8 NilRegression.GClass$W@@8)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@8)))
 :qid |unknown.0:0|
 :skolemid |723|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@8 NilRegression.GClass$V@@8 NilRegression.GClass$W@@8))
)))
(assert (forall ((NilRegression.GClass$U@@9 T@U) (NilRegression.GClass$V@@9 T@U) (NilRegression.GClass$W@@9 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@9)))
 :qid |unknown.0:0|
 :skolemid |725|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@9 NilRegression.GClass$V@@9 NilRegression.GClass$W@@9))
)))
(assert (forall ((NilRegression.GClass$U@@10 T@U) (NilRegression.GClass$V@@10 T@U) (NilRegression.GClass$W@@10 T@U) ($h@@3 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@10)))
 :qid |unknown.0:0|
 :skolemid |727|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@10 NilRegression.GClass$V@@10 NilRegression.GClass$W@@10))
)))
(assert (forall ((NilRegression.GClass$U@@11 T@U) (NilRegression.GClass$V@@11 T@U) (NilRegression.GClass$W@@11 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@11)))
 :qid |unknown.0:0|
 :skolemid |729|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@11 NilRegression.GClass$V@@11 NilRegression.GClass$W@@11))
)))
(assert (forall ((NilRegression.GClass$U@@12 T@U) (NilRegression.GClass$V@@12 T@U) (NilRegression.GClass$W@@12 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@12)))
 :qid |unknown.0:0|
 :skolemid |731|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@12 NilRegression.GClass$V@@12 NilRegression.GClass$W@@12))
)))
(assert (forall ((NilRegression.GClass$U@@13 T@U) (NilRegression.GClass$V@@13 T@U) (NilRegression.GClass$W@@13 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13)))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@13)))
 :qid |unknown.0:0|
 :skolemid |733|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@13 NilRegression.GClass$V@@13 NilRegression.GClass$W@@13))
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
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
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
(assert (forall ((_System.array$arg@@5 T@U) ($o@@10 T@U) ) (! (= ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@10 null) (= (dtype $o@@10) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |381|
 :pattern ( ($Is refType $o@@10 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ($o@@11 T@U) ) (! (= ($Is refType $o@@11 (Tclass._System.array2? _System.array2$arg@@6))  (or (= $o@@11 null) (= (dtype $o@@11) (Tclass._System.array2? _System.array2$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |640|
 :pattern ( ($Is refType $o@@11 (Tclass._System.array2? _System.array2$arg@@6)))
)))
(assert (forall ((NilRegression.GClass$U@@14 T@U) (NilRegression.GClass$V@@14 T@U) (NilRegression.GClass$W@@14 T@U) ($o@@12 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@12 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14) $h@@9)  (or (= $o@@12 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))))
 :qid |unknown.0:0|
 :skolemid |710|
 :pattern ( ($IsAlloc refType $o@@12 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@14 NilRegression.GClass$V@@14 NilRegression.GClass$W@@14) $h@@9))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@13)) TInt $h@@10))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( (_System.array.Length $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ($h@@11 T@U) ($o@@14 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@14 null)) (not true)) (= (dtype $o@@14) (Tclass._System.array2? _System.array2$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@14)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |643|
 :pattern ( (_System.array2.Length0 $o@@14) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@14) alloc)) (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ($h@@12 T@U) ($o@@15 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) (Tclass._System.array2? _System.array2$arg@@10)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@15)) TInt $h@@12))
 :qid |unknown.0:0|
 :skolemid |645|
 :pattern ( (_System.array2.Length1 $o@@15) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@15) alloc)) (Tclass._System.array2? _System.array2$arg@@10))
)))
(assert (forall ((NilRegression.GClass$U@@15 T@U) (NilRegression.GClass$V@@15 T@U) (NilRegression.GClass$W@@15 T@U) ($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) NilRegression.GClass.u1)) (Tclass._System.array NilRegression.GClass$U@@15) $h@@13))
 :qid |unknown.0:0|
 :skolemid |724|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) NilRegression.GClass.u1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@15 NilRegression.GClass$V@@15 NilRegression.GClass$W@@15))
)))
(assert (forall ((NilRegression.GClass$U@@16 T@U) (NilRegression.GClass$V@@16 T@U) (NilRegression.GClass$W@@16 T@U) ($h@@14 T@U) ($o@@17 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@14) (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) NilRegression.GClass.v1)) (Tclass._System.array NilRegression.GClass$V@@16) $h@@14))
 :qid |unknown.0:0|
 :skolemid |726|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@14 $o@@17) NilRegression.GClass.v1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@16 NilRegression.GClass$V@@16 NilRegression.GClass$W@@16))
)))
(assert (forall ((NilRegression.GClass$U@@17 T@U) (NilRegression.GClass$V@@17 T@U) (NilRegression.GClass$W@@17 T@U) ($h@@15 T@U) ($o@@18 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) NilRegression.GClass.w1)) (Tclass._System.array NilRegression.GClass$W@@17) $h@@15))
 :qid |unknown.0:0|
 :skolemid |728|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@18) NilRegression.GClass.w1)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@17 NilRegression.GClass$V@@17 NilRegression.GClass$W@@17))
)))
(assert (forall ((NilRegression.GClass$U@@18 T@U) (NilRegression.GClass$V@@18 T@U) (NilRegression.GClass$W@@18 T@U) ($h@@16 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) NilRegression.GClass.u2)) (Tclass._System.array2 NilRegression.GClass$U@@18) $h@@16))
 :qid |unknown.0:0|
 :skolemid |730|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@19) NilRegression.GClass.u2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@18 NilRegression.GClass$V@@18 NilRegression.GClass$W@@18))
)))
(assert (forall ((NilRegression.GClass$U@@19 T@U) (NilRegression.GClass$V@@19 T@U) (NilRegression.GClass$W@@19 T@U) ($h@@17 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) NilRegression.GClass.v2)) (Tclass._System.array2 NilRegression.GClass$V@@19) $h@@17))
 :qid |unknown.0:0|
 :skolemid |732|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@20) NilRegression.GClass.v2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@19 NilRegression.GClass$V@@19 NilRegression.GClass$W@@19))
)))
(assert (forall ((NilRegression.GClass$U@@20 T@U) (NilRegression.GClass$V@@20 T@U) (NilRegression.GClass$W@@20 T@U) ($h@@18 T@U) ($o@@21 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@21 null)) (not true)) (= (dtype $o@@21) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) NilRegression.GClass.w2)) (Tclass._System.array2 NilRegression.GClass$W@@20) $h@@18))
 :qid |unknown.0:0|
 :skolemid |734|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@21) NilRegression.GClass.w2)) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@20 NilRegression.GClass$V@@20 NilRegression.GClass$W@@20))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@22 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f))  (=> (and (or (not (= $o@@22 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@22) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |6052|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@22 $f))
)))
(assert (forall ((NilRegression.GClass$U@@21 T@U) (NilRegression.GClass$V@@21 T@U) (NilRegression.GClass$W@@21 T@U) ($o@@23 T@U) ) (! (= ($Is refType $o@@23 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21))  (or (= $o@@23 null) (= (dtype $o@@23) (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21))))
 :qid |unknown.0:0|
 :skolemid |709|
 :pattern ( ($Is refType $o@@23 (Tclass.NilRegression.GClass? NilRegression.GClass$U@@21 NilRegression.GClass$V@@21 NilRegression.GClass$W@@21)))
)))
(assert (forall ((NilRegression.GClass$U@@22 T@U) (NilRegression.GClass$V@@22 T@U) (NilRegression.GClass$W@@22 T@U) (|c#0@@4| T@U) ($h@@19 T@U) ) (! (= ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@19) ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@19))
 :qid |unknown.0:0|
 :skolemid |739|
 :pattern ( ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@19))
 :pattern ( ($IsAlloc refType |c#0@@4| (Tclass.NilRegression.GClass? NilRegression.GClass$U@@22 NilRegression.GClass$V@@22 NilRegression.GClass$W@@22) $h@@19))
)))
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
(declare-fun $Heap@0 () T@U)
(declare-fun this@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun NilRegression.GClass$U@@23 () T@U)
(declare-fun NilRegression.GClass$V@@23 () T@U)
(declare-fun NilRegression.GClass$W@@23 () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$NilRegression.GClass.__ctor)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon13_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)))))) (= (ControlFlow 0 4) 1)) anon13_correct)))
(let ((anon19_Then_correct  (=> (and (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true)) (=> (= (ControlFlow 0 2) 1) anon13_correct))))))
(let ((anon18_Else_correct  (=> (or (not (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))))) (not true)) (and (=> (= (ControlFlow 0 8) 2) anon19_Then_correct) (=> (= (ControlFlow 0 8) 4) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (= (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true)) (and (=> (= (ControlFlow 0 5) 2) anon19_Then_correct) (=> (= (ControlFlow 0 5) 4) anon19_Else_correct)))))))))
(let ((anon9_correct  (=> (and (and (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2))))) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2))) (LitInt 1))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2)) null)) (not true)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true)) (and (=> (= (ControlFlow 0 9) 5) anon18_Then_correct) (=> (= (ControlFlow 0 9) 8) anon18_Else_correct)))))))))
(let ((anon17_Else_correct  (=> (and (not (and (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)))))) (= (ControlFlow 0 14) 9)) anon9_correct)))
(let ((anon17_Then_correct  (=> (and (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true)) (=> (= (ControlFlow 0 12) 9) anon9_correct))))))
(let ((anon16_Else_correct  (=> (or (not (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2))))) (not true)) (and (=> (= (ControlFlow 0 18) 12) anon17_Then_correct) (=> (= (ControlFlow 0 18) 14) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (= (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2))) (_System.array2.Length0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)))) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w2)) null)) (not true)) (and (=> (= (ControlFlow 0 15) 12) anon17_Then_correct) (=> (= (ControlFlow 0 15) 14) anon17_Else_correct)))))))))
(let ((anon5_correct  (=> (and (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1))))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1))) (LitInt 1))) (and (=> (= (ControlFlow 0 19) (- 0 21)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u2)) null)) (not true)) (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v2)) null)) (not true)) (and (=> (= (ControlFlow 0 19) 15) anon16_Then_correct) (=> (= (ControlFlow 0 19) 18) anon16_Else_correct)))))))))
(let ((anon15_Else_correct  (=> (and (not (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1)))))) (= (ControlFlow 0 24) 19)) anon5_correct)))
(let ((anon15_Then_correct  (=> (and (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)))) (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1))))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1)) null)) (not true)) (=> (= (ControlFlow 0 22) 19) anon5_correct))))))
(let ((anon14_Else_correct  (=> (or (not (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1))))) (not true)) (and (=> (= (ControlFlow 0 28) 22) anon15_Then_correct) (=> (= (ControlFlow 0 28) 24) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (= (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1))) (_System.array.Length ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)) null)) (not true)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.w1)) null)) (not true)) (and (=> (= (ControlFlow 0 25) 22) anon15_Then_correct) (=> (= (ControlFlow 0 25) 24) anon15_Else_correct)))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@24)))
 :qid |AutoInitdfy.175:5|
 :skolemid |735|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@24))
)) ($HeapSucc $Heap $Heap@0)) (and (or (not (= this@0 null)) (not true)) (and ($Is refType this@0 (Tclass.NilRegression.GClass NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23)) ($IsAlloc refType this@0 (Tclass.NilRegression.GClass NilRegression.GClass$U@@23 NilRegression.GClass$V@@23 NilRegression.GClass$W@@23) $Heap@0)))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.u1)) null)) (not true)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@0) NilRegression.GClass.v1)) null)) (not true)) (and (=> (= (ControlFlow 0 29) 25) anon14_Then_correct) (=> (= (ControlFlow 0 29) 28) anon14_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 32) 29))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
