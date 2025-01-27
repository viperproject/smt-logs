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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun |##_System._tuple#2OG._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2OG () T@U)
(declare-fun |##_System._tuple#3GOG._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3GOG () T@U)
(declare-fun Tagclass._module.SX3 () T@U)
(declare-fun |##_module.SX3.SX3| () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_tuple#2OG| () T@U)
(declare-fun |tytagFamily$_tuple#3GOG| () T@U)
(declare-fun tytagFamily$SX3 () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |#_System._tuple#3GOG._#Make3| (T@U T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple3GOG (T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple3GOG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple3GOG_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple3GOG_2 (T@U) T@U)
(declare-fun _System.Tuple3GOG._0 (T@U) T@U)
(declare-fun _System.Tuple3GOG._1 (T@U) T@U)
(declare-fun _System.Tuple3GOG._2 (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun _System.Tuple2OG.___hMake2_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2OG (T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.SX3.SX3_q (T@U) Bool)
(declare-fun Tclass._module.SX3 () T@U)
(declare-fun |#_System._tuple#2OG._#Make2| (T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun _module.SX3.a (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun _System.Tuple3GOG.___hMake3_q (T@U) Bool)
(declare-fun |#_module.SX3.SX3| (T@U Real) T@U)
(declare-fun Tclass._System.Tuple2OG_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2OG_1 (T@U) T@U)
(declare-fun _System.Tuple2OG._0 (T@U) T@U)
(declare-fun _System.Tuple2OG._1 (T@U) T@U)
(declare-fun _module.SX3.b (T@U) Real)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass._System.array? Tagclass._System.array |##_System._tuple#2OG._#Make2| Tagclass._System.Tuple2OG |##_System._tuple#3GOG._#Make3| Tagclass._System.Tuple3GOG Tagclass._module.SX3 |##_module.SX3.SX3| tytagFamily$array |tytagFamily$_tuple#2OG| |tytagFamily$_tuple#3GOG| tytagFamily$SX3)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|a#128#0#0| T@U) (|a#128#1#0| T@U) (|a#128#2#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#3GOG._#Make3| |a#128#0#0| |a#128#1#0| |a#128#2#0|)) |##_System._tuple#3GOG._#Make3|)
 :qid |unknown.0:0|
 :skolemid |803|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#128#0#0| |a#128#1#0| |a#128#2#0|))
)))
(assert (forall ((|_System._tuple#3GOG$T0| T@U) (|_System._tuple#3GOG$T1| T@U) (|_System._tuple#3GOG$T2| T@U) ) (! (= (Tclass._System.Tuple3GOG_0 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0| |_System._tuple#3GOG$T1| |_System._tuple#3GOG$T2|)) |_System._tuple#3GOG$T0|)
 :qid |unknown.0:0|
 :skolemid |808|
 :pattern ( (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0| |_System._tuple#3GOG$T1| |_System._tuple#3GOG$T2|))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@0| T@U) (|_System._tuple#3GOG$T1@@0| T@U) (|_System._tuple#3GOG$T2@@0| T@U) ) (! (= (Tclass._System.Tuple3GOG_1 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@0| |_System._tuple#3GOG$T1@@0| |_System._tuple#3GOG$T2@@0|)) |_System._tuple#3GOG$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |809|
 :pattern ( (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@0| |_System._tuple#3GOG$T1@@0| |_System._tuple#3GOG$T2@@0|))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@1| T@U) (|_System._tuple#3GOG$T1@@1| T@U) (|_System._tuple#3GOG$T2@@1| T@U) ) (! (= (Tclass._System.Tuple3GOG_2 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@1| |_System._tuple#3GOG$T1@@1| |_System._tuple#3GOG$T2@@1|)) |_System._tuple#3GOG$T2@@1|)
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@1| |_System._tuple#3GOG$T1@@1| |_System._tuple#3GOG$T2@@1|))
)))
(assert (forall ((|a#132#0#0| T@U) (|a#132#1#0| T@U) (|a#132#2#0| T@U) ) (! (= (_System.Tuple3GOG._0 (|#_System._tuple#3GOG._#Make3| |a#132#0#0| |a#132#1#0| |a#132#2#0|)) |a#132#0#0|)
 :qid |unknown.0:0|
 :skolemid |821|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#132#0#0| |a#132#1#0| |a#132#2#0|))
)))
(assert (forall ((|a#134#0#0| T@U) (|a#134#1#0| T@U) (|a#134#2#0| T@U) ) (! (= (_System.Tuple3GOG._1 (|#_System._tuple#3GOG._#Make3| |a#134#0#0| |a#134#1#0| |a#134#2#0|)) |a#134#1#0|)
 :qid |unknown.0:0|
 :skolemid |823|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#134#0#0| |a#134#1#0| |a#134#2#0|))
)))
(assert (forall ((|a#136#0#0| T@U) (|a#136#1#0| T@U) (|a#136#2#0| T@U) ) (! (= (_System.Tuple3GOG._2 (|#_System._tuple#3GOG._#Make3| |a#136#0#0| |a#136#1#0| |a#136#2#0|)) |a#136#2#0|)
 :qid |unknown.0:0|
 :skolemid |825|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#136#0#0| |a#136#1#0| |a#136#2#0|))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2OG$T0| T@U) (|_System._tuple#2OG$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2OG |_System._tuple#2OG$T0| |_System._tuple#2OG$T1|)) (_System.Tuple2OG.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( (_System.Tuple2OG.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2OG |_System._tuple#2OG$T0| |_System._tuple#2OG$T1|)))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@2| T@U) (|_System._tuple#3GOG$T1@@2| T@U) (|_System._tuple#3GOG$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|)) Tagclass._System.Tuple3GOG) (= (TagFamily (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|)) |tytagFamily$_tuple#3GOG|))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@3| T@U) (|_System._tuple#3GOG$T1@@3| T@U) (|_System._tuple#3GOG$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|)))
)))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.SX3) (_module.SX3.SX3_q d@@0))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (_module.SX3.SX3_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.SX3))
)))
(assert (forall ((|_System._tuple#2OG$T0@@0| T@U) (|_System._tuple#2OG$T1@@0| T@U) (|a#110#0#0| T@U) (|a#110#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2OG._#Make2| |a#110#0#0| |a#110#1#0|) (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@0| |_System._tuple#2OG$T1@@0|))  (and ($IsBox |a#110#0#0| |_System._tuple#2OG$T0@@0|) ($IsBox |a#110#1#0| |_System._tuple#2OG$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2OG._#Make2| |a#110#0#0| |a#110#1#0|) (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@0| |_System._tuple#2OG$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@0))
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
(assert (forall ((d@@1 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.SX3.SX3_q d@@1) ($IsAlloc DatatypeTypeType d@@1 Tclass._module.SX3 $h@@1))) ($IsAlloc DatatypeTypeType (_module.SX3.a d@@1) (Tclass._System.Tuple3GOG TInt TInt TInt) $h@@1))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.SX3.a d@@1) (Tclass._System.Tuple3GOG TInt TInt TInt) $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 Real) ) (! (= (LitReal x@@3) x@@3)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((|_System._tuple#2OG$T0@@1| T@U) (|_System._tuple#2OG$T1@@1| T@U) (|a#110#0#0@@0| T@U) (|a#110#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2OG._#Make2| |a#110#0#0@@0| |a#110#1#0@@0|) (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@1| |_System._tuple#2OG$T1@@1|) $h@@2)  (and ($IsAllocBox |a#110#0#0@@0| |_System._tuple#2OG$T0@@1| $h@@2) ($IsAllocBox |a#110#1#0@@0| |_System._tuple#2OG$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |756|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2OG._#Make2| |a#110#0#0@@0| |a#110#1#0@@0|) (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@1| |_System._tuple#2OG$T1@@1|) $h@@2))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_System.Tuple2OG.___hMake2_q d@@2) (= (DatatypeCtorId d@@2) |##_System._tuple#2OG._#Make2|))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( (_System.Tuple2OG.___hMake2_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_System.Tuple3GOG.___hMake3_q d@@3) (= (DatatypeCtorId d@@3) |##_System._tuple#3GOG._#Make3|))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (! (= (_module.SX3.SX3_q d@@4) (= (DatatypeCtorId d@@4) |##_module.SX3.SX3|))
 :qid |unknown.0:0|
 :skolemid |904|
 :pattern ( (_module.SX3.SX3_q d@@4))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_System.Tuple3GOG.___hMake3_q d@@5) (exists ((|a#129#0#0| T@U) (|a#129#1#0| T@U) (|a#129#2#0| T@U) ) (! (= d@@5 (|#_System._tuple#3GOG._#Make3| |a#129#0#0| |a#129#1#0| |a#129#2#0|))
 :qid |unknown.0:0|
 :skolemid |805|
)))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_System.Tuple2OG.___hMake2_q d@@6) (exists ((|a#109#0#0| T@U) (|a#109#1#0| T@U) ) (! (= d@@6 (|#_System._tuple#2OG._#Make2| |a#109#0#0| |a#109#1#0|))
 :qid |unknown.0:0|
 :skolemid |749|
)))
 :qid |unknown.0:0|
 :skolemid |750|
 :pattern ( (_System.Tuple2OG.___hMake2_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.SX3.SX3_q d@@7) (exists ((|a#7#0#0| T@U) (|a#7#1#0| Real) ) (! (= d@@7 (|#_module.SX3.SX3| |a#7#0#0| |a#7#1#0|))
 :qid |Compdfy.119:20|
 :skolemid |905|
)))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( (_module.SX3.SX3_q d@@7))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@4| T@U) (|_System._tuple#3GOG$T1@@4| T@U) (|_System._tuple#3GOG$T2@@4| T@U) (|a#130#0#0| T@U) (|a#130#1#0| T@U) (|a#130#2#0| T@U) ($h@@4 T@U) ) (!  (=> ($IsGoodHeap $h@@4) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0| |a#130#1#0| |a#130#2#0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@4| |_System._tuple#3GOG$T1@@4| |_System._tuple#3GOG$T2@@4|) $h@@4)  (and (and ($IsAllocBox |a#130#0#0| |_System._tuple#3GOG$T0@@4| $h@@4) ($IsAllocBox |a#130#1#0| |_System._tuple#3GOG$T1@@4| $h@@4)) ($IsAllocBox |a#130#2#0| |_System._tuple#3GOG$T2@@4| $h@@4))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0| |a#130#1#0| |a#130#2#0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@4| |_System._tuple#3GOG$T1@@4| |_System._tuple#3GOG$T2@@4|) $h@@4))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.SX3) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.SX3)))
 :qid |unknown.0:0|
 :skolemid |878|
 :pattern ( ($IsBox bx@@1 Tclass._module.SX3))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@5| T@U) (|_System._tuple#3GOG$T1@@5| T@U) (|_System._tuple#3GOG$T2@@5| T@U) (d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@5| |_System._tuple#3GOG$T1@@5| |_System._tuple#3GOG$T2@@5|)) (_System.Tuple3GOG.___hMake3_q d@@8))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@8) ($Is DatatypeTypeType d@@8 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@5| |_System._tuple#3GOG$T1@@5| |_System._tuple#3GOG$T2@@5|)))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@6| T@U) (|_System._tuple#3GOG$T1@@6| T@U) (|_System._tuple#3GOG$T2@@6| T@U) (|a#130#0#0@@0| T@U) (|a#130#1#0@@0| T@U) (|a#130#2#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0@@0| |a#130#1#0@@0| |a#130#2#0@@0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@6| |_System._tuple#3GOG$T1@@6| |_System._tuple#3GOG$T2@@6|))  (and (and ($IsBox |a#130#0#0@@0| |_System._tuple#3GOG$T0@@6|) ($IsBox |a#130#1#0@@0| |_System._tuple#3GOG$T1@@6|)) ($IsBox |a#130#2#0@@0| |_System._tuple#3GOG$T2@@6|)))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0@@0| |a#130#1#0@@0| |a#130#2#0@@0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@6| |_System._tuple#3GOG$T1@@6| |_System._tuple#3GOG$T2@@6|)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.SX3.SX3| |a#8#0#0| |a#8#1#0|) Tclass._module.SX3)  (and ($Is DatatypeTypeType |a#8#0#0| (Tclass._System.Tuple3GOG TInt TInt TInt)) ($Is realType (real_2_U |a#8#1#0|) TReal)))
 :qid |Compdfy.119:20|
 :skolemid |907|
 :pattern ( ($Is DatatypeTypeType (|#_module.SX3.SX3| |a#8#0#0| |a#8#1#0|) Tclass._module.SX3))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TReal) (and (= ($Box realType ($Unbox realType bx@@3)) bx@@3) ($Is realType ($Unbox realType bx@@3) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@3 TReal))
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
(assert (forall ((|a#108#0#0| T@U) (|a#108#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2OG._#Make2| |a#108#0#0| |a#108#1#0|)) |##_System._tuple#2OG._#Make2|)
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( (|#_System._tuple#2OG._#Make2| |a#108#0#0| |a#108#1#0|))
)))
(assert (forall ((|_System._tuple#2OG$T0@@2| T@U) (|_System._tuple#2OG$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2OG_0 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@2| |_System._tuple#2OG$T1@@2|)) |_System._tuple#2OG$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |752|
 :pattern ( (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@2| |_System._tuple#2OG$T1@@2|))
)))
(assert (forall ((|_System._tuple#2OG$T0@@3| T@U) (|_System._tuple#2OG$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2OG_1 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@3| |_System._tuple#2OG$T1@@3|)) |_System._tuple#2OG$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |753|
 :pattern ( (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@3| |_System._tuple#2OG$T1@@3|))
)))
(assert (forall ((|a#112#0#0| T@U) (|a#112#1#0| T@U) ) (! (= (_System.Tuple2OG._0 (|#_System._tuple#2OG._#Make2| |a#112#0#0| |a#112#1#0|)) |a#112#0#0|)
 :qid |unknown.0:0|
 :skolemid |762|
 :pattern ( (|#_System._tuple#2OG._#Make2| |a#112#0#0| |a#112#1#0|))
)))
(assert (forall ((|a#114#0#0| T@U) (|a#114#1#0| T@U) ) (! (= (_System.Tuple2OG._1 (|#_System._tuple#2OG._#Make2| |a#114#0#0| |a#114#1#0|)) |a#114#1#0|)
 :qid |unknown.0:0|
 :skolemid |764|
 :pattern ( (|#_System._tuple#2OG._#Make2| |a#114#0#0| |a#114#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| Real) ) (! (= (DatatypeCtorId (|#_module.SX3.SX3| |a#6#0#0| |a#6#1#0|)) |##_module.SX3.SX3|)
 :qid |Compdfy.119:20|
 :skolemid |903|
 :pattern ( (|#_module.SX3.SX3| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| Real) ) (! (= (_module.SX3.a (|#_module.SX3.SX3| |a#10#0#0| |a#10#1#0|)) |a#10#0#0|)
 :qid |Compdfy.119:20|
 :skolemid |911|
 :pattern ( (|#_module.SX3.SX3| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| Real) ) (! (= (_module.SX3.b (|#_module.SX3.SX3| |a#12#0#0| |a#12#1#0|)) |a#12#1#0|)
 :qid |Compdfy.119:20|
 :skolemid |913|
 :pattern ( (|#_module.SX3.SX3| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((|a#131#0#0| T@U) (|a#131#1#0| T@U) (|a#131#2#0| T@U) ) (! (= (|#_System._tuple#3GOG._#Make3| (Lit BoxType |a#131#0#0|) (Lit BoxType |a#131#1#0|) (Lit BoxType |a#131#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#131#0#0| |a#131#1#0| |a#131#2#0|)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( (|#_System._tuple#3GOG._#Make3| (Lit BoxType |a#131#0#0|) (Lit BoxType |a#131#1#0|) (Lit BoxType |a#131#2#0|)))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((|a#133#0#0| T@U) (|a#133#1#0| T@U) (|a#133#2#0| T@U) ) (! (< (BoxRank |a#133#0#0|) (DtRank (|#_System._tuple#3GOG._#Make3| |a#133#0#0| |a#133#1#0| |a#133#2#0|)))
 :qid |unknown.0:0|
 :skolemid |822|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#133#0#0| |a#133#1#0| |a#133#2#0|))
)))
(assert (forall ((|a#135#0#0| T@U) (|a#135#1#0| T@U) (|a#135#2#0| T@U) ) (! (< (BoxRank |a#135#1#0|) (DtRank (|#_System._tuple#3GOG._#Make3| |a#135#0#0| |a#135#1#0| |a#135#2#0|)))
 :qid |unknown.0:0|
 :skolemid |824|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#135#0#0| |a#135#1#0| |a#135#2#0|))
)))
(assert (forall ((|a#137#0#0| T@U) (|a#137#1#0| T@U) (|a#137#2#0| T@U) ) (! (< (BoxRank |a#137#2#0|) (DtRank (|#_System._tuple#3GOG._#Make3| |a#137#0#0| |a#137#1#0| |a#137#2#0|)))
 :qid |unknown.0:0|
 :skolemid |826|
 :pattern ( (|#_System._tuple#3GOG._#Make3| |a#137#0#0| |a#137#1#0| |a#137#2#0|))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@6 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((|a#113#0#0| T@U) (|a#113#1#0| T@U) ) (! (< (BoxRank |a#113#0#0|) (DtRank (|#_System._tuple#2OG._#Make2| |a#113#0#0| |a#113#1#0|)))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (|#_System._tuple#2OG._#Make2| |a#113#0#0| |a#113#1#0|))
)))
(assert (forall ((|a#115#0#0| T@U) (|a#115#1#0| T@U) ) (! (< (BoxRank |a#115#1#0|) (DtRank (|#_System._tuple#2OG._#Make2| |a#115#0#0| |a#115#1#0|)))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( (|#_System._tuple#2OG._#Make2| |a#115#0#0| |a#115#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| Real) ) (! (< (DtRank |a#11#0#0|) (DtRank (|#_module.SX3.SX3| |a#11#0#0| |a#11#1#0|)))
 :qid |Compdfy.119:20|
 :skolemid |912|
 :pattern ( (|#_module.SX3.SX3| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|_System._tuple#2OG$T0@@4| T@U) (|_System._tuple#2OG$T1@@4| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@4| |_System._tuple#2OG$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@4| |_System._tuple#2OG$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |754|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@4| |_System._tuple#2OG$T1@@4|)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |919|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((|_System._tuple#2OG$T0@@5| T@U) (|_System._tuple#2OG$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@5| |_System._tuple#2OG$T1@@5|)) Tagclass._System.Tuple2OG) (= (TagFamily (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@5| |_System._tuple#2OG$T1@@5|)) |tytagFamily$_tuple#2OG|))
 :qid |unknown.0:0|
 :skolemid |751|
 :pattern ( (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@5| |_System._tuple#2OG$T1@@5|))
)))
(assert (forall ((d@@9 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.SX3.SX3_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.SX3 $h@@7))) ($IsAlloc realType (real_2_U (_module.SX3.b d@@9)) TReal $h@@7))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($IsAlloc realType (real_2_U (_module.SX3.b d@@9)) TReal $h@@7))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@5 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@6 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#3GOG$T0@@7| T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (_System.Tuple3GOG.___hMake3_q d@@11) (exists ((|_System._tuple#3GOG$T1@@7| T@U) (|_System._tuple#3GOG$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@7| |_System._tuple#3GOG$T1@@7| |_System._tuple#3GOG$T2@@7|) $h@@8)
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@7| |_System._tuple#3GOG$T1@@7| |_System._tuple#3GOG$T2@@7|) $h@@8))
)))) ($IsAllocBox (_System.Tuple3GOG._0 d@@11) |_System._tuple#3GOG$T0@@7| $h@@8))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._0 d@@11) |_System._tuple#3GOG$T0@@7| $h@@8))
)))
(assert (forall ((d@@12 T@U) (|_System._tuple#3GOG$T1@@8| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple3GOG.___hMake3_q d@@12) (exists ((|_System._tuple#3GOG$T0@@8| T@U) (|_System._tuple#3GOG$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@8| |_System._tuple#3GOG$T1@@8| |_System._tuple#3GOG$T2@@8|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@8| |_System._tuple#3GOG$T1@@8| |_System._tuple#3GOG$T2@@8|) $h@@9))
)))) ($IsAllocBox (_System.Tuple3GOG._1 d@@12) |_System._tuple#3GOG$T1@@8| $h@@9))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._1 d@@12) |_System._tuple#3GOG$T1@@8| $h@@9))
)))
(assert (forall ((d@@13 T@U) (|_System._tuple#3GOG$T2@@9| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple3GOG.___hMake3_q d@@13) (exists ((|_System._tuple#3GOG$T0@@9| T@U) (|_System._tuple#3GOG$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@9| |_System._tuple#3GOG$T1@@9| |_System._tuple#3GOG$T2@@9|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@9| |_System._tuple#3GOG$T1@@9| |_System._tuple#3GOG$T2@@9|) $h@@10))
)))) ($IsAllocBox (_System.Tuple3GOG._2 d@@13) |_System._tuple#3GOG$T2@@9| $h@@10))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._2 d@@13) |_System._tuple#3GOG$T2@@9| $h@@10))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7)))
)))
(assert (forall ((d@@14 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) ($Is DatatypeTypeType d@@14 Tclass._module.SX3)) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.SX3 $h@@11))
 :qid |unknown.0:0|
 :skolemid |914|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 Tclass._module.SX3 $h@@11))
)))
(assert (= (Tag Tclass._module.SX3) Tagclass._module.SX3))
(assert (= (TagFamily Tclass._module.SX3) tytagFamily$SX3))
(assert (forall ((d@@15 T@U) (|_System._tuple#2OG$T0@@6| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple2OG.___hMake2_q d@@15) (exists ((|_System._tuple#2OG$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@6| |_System._tuple#2OG$T1@@6|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@6| |_System._tuple#2OG$T1@@6|) $h@@12))
)))) ($IsAllocBox (_System.Tuple2OG._0 d@@15) |_System._tuple#2OG$T0@@6| $h@@12))
 :qid |unknown.0:0|
 :skolemid |758|
 :pattern ( ($IsAllocBox (_System.Tuple2OG._0 d@@15) |_System._tuple#2OG$T0@@6| $h@@12))
)))
(assert (forall ((d@@16 T@U) (|_System._tuple#2OG$T1@@7| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple2OG.___hMake2_q d@@16) (exists ((|_System._tuple#2OG$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@7| |_System._tuple#2OG$T1@@7|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 (Tclass._System.Tuple2OG |_System._tuple#2OG$T0@@7| |_System._tuple#2OG$T1@@7|) $h@@13))
)))) ($IsAllocBox (_System.Tuple2OG._1 d@@16) |_System._tuple#2OG$T1@@7| $h@@13))
 :qid |unknown.0:0|
 :skolemid |760|
 :pattern ( ($IsAllocBox (_System.Tuple2OG._1 d@@16) |_System._tuple#2OG$T1@@7| $h@@13))
)))
(assert (forall ((|a#111#0#0| T@U) (|a#111#1#0| T@U) ) (! (= (|#_System._tuple#2OG._#Make2| (Lit BoxType |a#111#0#0|) (Lit BoxType |a#111#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2OG._#Make2| |a#111#0#0| |a#111#1#0|)))
 :qid |unknown.0:0|
 :skolemid |761|
 :pattern ( (|#_System._tuple#2OG._#Make2| (Lit BoxType |a#111#0#0|) (Lit BoxType |a#111#1#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| Real) ) (! (= (|#_module.SX3.SX3| (Lit DatatypeTypeType |a#9#0#0|) (LitReal |a#9#1#0|)) (Lit DatatypeTypeType (|#_module.SX3.SX3| |a#9#0#0| |a#9#1#0|)))
 :qid |Compdfy.119:20|
 :skolemid |910|
 :pattern ( (|#_module.SX3.SX3| (Lit DatatypeTypeType |a#9#0#0|) (LitReal |a#9#1#0|)))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@9))) (Lit BoxType ($Box realType (real_2_U x@@9))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((h@@5 T@U) (v@@3 T@U) ) (! ($IsAlloc realType v@@3 TReal h@@5)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@3 TReal h@@5))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is realType v@@5 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@5 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |r#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |g##0@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |t##0@0| () T@U)
(declare-fun call0formal@_module._default.UpdateArray$T@0 () T@U)
(declare-fun |call2formal@t#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |t##1@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |sx2#0@0| () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |t##2@0| () T@U)
(declare-fun call0formal@_module._default.UpdateArray$T@0@@0 () T@U)
(declare-fun |call2formal@t#0@0@@0| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |sx3#0@0| () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun call0formal@_module._default.UpdateArray$T@0@@1 () T@U)
(declare-fun |call2formal@t#0@0@@1| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |r#0| () T@U)
(declare-fun |arr#0| () T@U)
(declare-fun |sx2#0| () T@U)
(declare-fun |arr2#0| () T@U)
(declare-fun |sx3#0| () T@U)
(declare-fun |arr3#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MoreSingletonTests)
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
 (=> (= (ControlFlow 0 0) 42) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |r#0@0| (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 3))) ($Box intType (int_2_U (LitInt 4))))))) (and (=> (= (ControlFlow 0 2) (- 0 41)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? (Tclass._System.Tuple3GOG TInt TInt TInt)))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 20)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 39)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 3))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 3)))) (=> (= |$rhs#0@0| (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| ($Box intType (int_2_U (LitInt 200))) ($Box intType (int_2_U (LitInt 100))) ($Box intType (int_2_U (LitInt 400)))))) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 3)) ($Box DatatypeTypeType |$rhs#0@0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 37)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 36)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0))) (=> (= |g##0@0| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (LitInt 3))))) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6)))
 :qid |Compdfy.146:8|
 :skolemid |881|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array.Length $nw@0)))) (=> (= |t##0@0| (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| ($Box intType (int_2_U (LitInt 99))) ($Box intType (int_2_U (LitInt 9))) ($Box intType (int_2_U (LitInt 999)))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (forall (($o@@7 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= $o@@7 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@7 $f@@0)))
 :qid |Compdfy.128:14|
 :skolemid |875|
))) (=> (forall (($o@@8 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) alloc)))) (= $o@@8 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@1)))
 :qid |Compdfy.128:14|
 :skolemid |875|
)) (=> (and (= call0formal@_module._default.UpdateArray$T@0 (Tclass._System.Tuple3GOG TInt TInt TInt)) (= |call2formal@t#0@0| ($Box DatatypeTypeType |t##0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (<= (LitInt 10) (_System.array.Length $nw@0))) (=> (<= (LitInt 10) (_System.array.Length $nw@0)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@9)) (= $o@@9 $nw@0)))
 :qid |Compdfy.150:8|
 :skolemid |884|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@9))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 28)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (= |t##1@0| (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| ($Box intType (int_2_U (LitInt 99))) ($Box intType (int_2_U (LitInt 19))) ($Box intType (int_2_U (LitInt 999)))))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (forall (($o@@10 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@10) alloc)))) (= $o@@10 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@10 $f@@2)))
 :qid |Compdfy.130:16|
 :skolemid |876|
))) (=> (forall (($o@@11 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@11) alloc)))) (= $o@@11 $nw@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@3)))
 :qid |Compdfy.130:16|
 :skolemid |876|
)) (and (=> (= (ControlFlow 0 2) (- 0 24)) (<= (LitInt 10) (_System.array.Length $nw@0))) (=> (<= (LitInt 10) (_System.array.Length $nw@0)) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@12)) (= $o@@12 $nw@0)))
 :qid |Compdfy.159:8|
 :skolemid |887|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= 0 (LitInt 4)) (< (LitInt 4) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 5)) (< (LitInt 5) (_System.array.Length $nw@0))) (=> (= |sx2#0@0| (|#_System._tuple#2OG._#Make2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@0) (IndexField (LitInt 5))) ($Box realType (real_2_U (LitReal 2.0))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal)))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (LitInt 20)))) (and (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@1) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@5)) (and ($IsHeapAnchor $Heap@5) (= |t##2@0| (Lit DatatypeTypeType (|#_System._tuple#2OG._#Make2| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 15))) ($Box intType (int_2_U (LitInt 25)))))) ($Box realType (real_2_U (LitReal 3.0))))))))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (forall (($o@@13 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13) alloc)))) (= $o@@13 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@13 $f@@4)))
 :qid |Compdfy.136:14|
 :skolemid |877|
))) (=> (forall (($o@@14 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@14) alloc)))) (= $o@@14 $nw@1)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@5)))
 :qid |Compdfy.136:14|
 :skolemid |877|
)) (=> (and (= call0formal@_module._default.UpdateArray$T@0@@0 (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal)) (= |call2formal@t#0@0@@0| ($Box DatatypeTypeType |t##2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= (LitInt 10) (_System.array.Length $nw@1))) (=> (<= (LitInt 10) (_System.array.Length $nw@1)) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@15) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@15)) (= $o@@15 $nw@1)))
 :qid |Compdfy.150:8|
 :skolemid |884|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@15))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@1)))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@1)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@0))) (=> (= |sx3#0@0| (|#_module.SX3.SX3| ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) (IndexField (LitInt 2)))) (LitReal 4.0))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= 0 (LitInt 20))) (=> (<= 0 (LitInt 20)) (=> (and (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? Tclass._module.SX3))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) alloc))))) (and (and (= (_System.array.Length $nw@2) (LitInt 20)) (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall (($o@@16 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@16) alloc)))) (= $o@@16 $nw@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@16 $f@@6)))
 :qid |Compdfy.142:14|
 :skolemid |879|
))) (=> (forall (($o@@17 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@17) alloc)))) (= $o@@17 $nw@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@7)))
 :qid |Compdfy.142:14|
 :skolemid |879|
)) (=> (and (= call0formal@_module._default.UpdateArray$T@0@@1 Tclass._module.SX3) (= |call2formal@t#0@0@@1| ($Box DatatypeTypeType |sx3#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (<= (LitInt 10) (_System.array.Length $nw@2))) (=> (<= (LitInt 10) (_System.array.Length $nw@2)) (=> (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@18)) (= $o@@18 $nw@2)))
 :qid |Compdfy.150:8|
 :skolemid |884|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@18))
)) ($HeapSucc $Heap@7 $Heap@8))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 1)) (< (LitInt 1) (_System.array.Length $nw@2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (<= 0 (LitInt 2)) (< (LitInt 2) (_System.array.Length $nw@2))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is DatatypeTypeType |r#0| (Tclass._System.Tuple3GOG TInt TInt TInt)) ($IsAlloc DatatypeTypeType |r#0| (Tclass._System.Tuple3GOG TInt TInt TInt) $Heap)) true) (=> (and (and (and ($Is refType |arr#0| (Tclass._System.array (Tclass._System.Tuple3GOG TInt TInt TInt))) ($IsAlloc refType |arr#0| (Tclass._System.array (Tclass._System.Tuple3GOG TInt TInt TInt)) $Heap)) true) (and (and ($Is DatatypeTypeType |sx2#0| (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal)) ($IsAlloc DatatypeTypeType |sx2#0| (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal) $Heap)) true)) (=> (and (and (and (and ($Is refType |arr2#0| (Tclass._System.array (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal))) ($IsAlloc refType |arr2#0| (Tclass._System.array (Tclass._System.Tuple2OG (Tclass._System.Tuple3GOG TInt TInt TInt) TReal)) $Heap)) true) (and (and ($Is DatatypeTypeType |sx3#0| Tclass._module.SX3) ($IsAlloc DatatypeTypeType |sx3#0| Tclass._module.SX3 $Heap)) true)) (and (and (and ($Is refType |arr3#0| (Tclass._System.array Tclass._module.SX3)) ($IsAlloc refType |arr3#0| (Tclass._System.array Tclass._module.SX3) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 42) 2)))) anon0_correct))))))
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
