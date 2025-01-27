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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun |##_System._tuple#3GOG._#Make3| () T@U)
(declare-fun Tagclass._System.Tuple3GOG () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_tuple#3GOG| () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |$IsA#_System.Tuple3GOG| (T@U) Bool)
(declare-fun _System.Tuple3GOG.___hMake3_q (T@U) Bool)
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
(declare-fun TagFamily (T@U) T@U)
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
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array |##_System._tuple#3GOG._#Make3| Tagclass._System.Tuple3GOG tytagFamily$array |tytagFamily$_tuple#3GOG|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_System.Tuple3GOG| d) (_System.Tuple3GOG.___hMake3_q d))
 :qid |unknown.0:0|
 :skolemid |827|
 :pattern ( (|$IsA#_System.Tuple3GOG| d))
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
(assert (forall ((|_System._tuple#3GOG$T0@@2| T@U) (|_System._tuple#3GOG$T1@@2| T@U) (|_System._tuple#3GOG$T2@@2| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|)) Tagclass._System.Tuple3GOG) (= (TagFamily (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|)) |tytagFamily$_tuple#3GOG|))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@2| |_System._tuple#3GOG$T1@@2| |_System._tuple#3GOG$T2@@2|))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#3GOG$T0@@3| T@U) (|_System._tuple#3GOG$T1@@3| T@U) (|_System._tuple#3GOG$T2@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|))))
 :qid |unknown.0:0|
 :skolemid |811|
 :pattern ( ($IsBox bx (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@3| |_System._tuple#3GOG$T1@@3| |_System._tuple#3GOG$T2@@3|)))
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
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple3GOG.___hMake3_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#3GOG._#Make3|))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple3GOG.___hMake3_q d@@1) (exists ((|a#129#0#0| T@U) (|a#129#1#0| T@U) (|a#129#2#0| T@U) ) (! (= d@@1 (|#_System._tuple#3GOG._#Make3| |a#129#0#0| |a#129#1#0| |a#129#2#0|))
 :qid |unknown.0:0|
 :skolemid |805|
)))
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@1))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@4| T@U) (|_System._tuple#3GOG$T1@@4| T@U) (|_System._tuple#3GOG$T2@@4| T@U) (|a#130#0#0| T@U) (|a#130#1#0| T@U) (|a#130#2#0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0| |a#130#1#0| |a#130#2#0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@4| |_System._tuple#3GOG$T1@@4| |_System._tuple#3GOG$T2@@4|) $h@@1)  (and (and ($IsAllocBox |a#130#0#0| |_System._tuple#3GOG$T0@@4| $h@@1) ($IsAllocBox |a#130#1#0| |_System._tuple#3GOG$T1@@4| $h@@1)) ($IsAllocBox |a#130#2#0| |_System._tuple#3GOG$T2@@4| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#130#0#0| |a#130#1#0| |a#130#2#0|) (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@4| |_System._tuple#3GOG$T1@@4| |_System._tuple#3GOG$T2@@4|) $h@@1))
)))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)))
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
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (= $o@@1 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |920|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((|_System._tuple#3GOG$T0@@5| T@U) (|_System._tuple#3GOG$T1@@5| T@U) (|_System._tuple#3GOG$T2@@5| T@U) (d@@2 T@U) ) (!  (=> ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@5| |_System._tuple#3GOG$T1@@5| |_System._tuple#3GOG$T2@@5|)) (_System.Tuple3GOG.___hMake3_q d@@2))
 :qid |unknown.0:0|
 :skolemid |828|
 :pattern ( (_System.Tuple3GOG.___hMake3_q d@@2) ($Is DatatypeTypeType d@@2 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@5| |_System._tuple#3GOG$T1@@5| |_System._tuple#3GOG$T2@@5|)))
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
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
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
(assert (forall ((|a#131#0#0| T@U) (|a#131#1#0| T@U) (|a#131#2#0| T@U) ) (! (= (|#_System._tuple#3GOG._#Make3| (Lit BoxType |a#131#0#0|) (Lit BoxType |a#131#1#0|) (Lit BoxType |a#131#2#0|)) (Lit DatatypeTypeType (|#_System._tuple#3GOG._#Make3| |a#131#0#0| |a#131#1#0| |a#131#2#0|)))
 :qid |unknown.0:0|
 :skolemid |820|
 :pattern ( (|#_System._tuple#3GOG._#Make3| (Lit BoxType |a#131#0#0|) (Lit BoxType |a#131#1#0|) (Lit BoxType |a#131#2#0|)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
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
(assert (forall ((_System.array$arg@@8 T@U) ($h@@2 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@2))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@8))
)))
(assert (forall ((d@@3 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@3)) (DtRank d@@3))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@3)))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._System.array? _System.array$arg@@9))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@2 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@3 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#3GOG$T0@@7| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple3GOG.___hMake3_q d@@4) (exists ((|_System._tuple#3GOG$T1@@7| T@U) (|_System._tuple#3GOG$T2@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@7| |_System._tuple#3GOG$T1@@7| |_System._tuple#3GOG$T2@@7|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@7| |_System._tuple#3GOG$T1@@7| |_System._tuple#3GOG$T2@@7|) $h@@3))
)))) ($IsAllocBox (_System.Tuple3GOG._0 d@@4) |_System._tuple#3GOG$T0@@7| $h@@3))
 :qid |unknown.0:0|
 :skolemid |815|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._0 d@@4) |_System._tuple#3GOG$T0@@7| $h@@3))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#3GOG$T1@@8| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple3GOG.___hMake3_q d@@5) (exists ((|_System._tuple#3GOG$T0@@8| T@U) (|_System._tuple#3GOG$T2@@8| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@8| |_System._tuple#3GOG$T1@@8| |_System._tuple#3GOG$T2@@8|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@8| |_System._tuple#3GOG$T1@@8| |_System._tuple#3GOG$T2@@8|) $h@@4))
)))) ($IsAllocBox (_System.Tuple3GOG._1 d@@5) |_System._tuple#3GOG$T1@@8| $h@@4))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._1 d@@5) |_System._tuple#3GOG$T1@@8| $h@@4))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#3GOG$T2@@9| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple3GOG.___hMake3_q d@@6) (exists ((|_System._tuple#3GOG$T0@@9| T@U) (|_System._tuple#3GOG$T1@@9| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@9| |_System._tuple#3GOG$T1@@9| |_System._tuple#3GOG$T2@@9|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |818|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple3GOG |_System._tuple#3GOG$T0@@9| |_System._tuple#3GOG$T1@@9| |_System._tuple#3GOG$T2@@9|) $h@@5))
)))) ($IsAllocBox (_System.Tuple3GOG._2 d@@6) |_System._tuple#3GOG$T2@@9| $h@@5))
 :qid |unknown.0:0|
 :skolemid |819|
 :pattern ( ($IsAllocBox (_System.Tuple3GOG._2 d@@6) |_System._tuple#3GOG$T2@@9| $h@@5))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
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
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |arr#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |t#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.UpdateSxArray)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#3| null $Heap alloc |arr#0|)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= |arr#0| null)) (not true)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is refType |arr#0| (Tclass._System.array (Tclass._System.Tuple3GOG TInt TInt TInt))) ($IsAlloc refType |arr#0| (Tclass._System.array (Tclass._System.Tuple3GOG TInt TInt TInt)) $Heap))) (=> (and (and (and ($Is DatatypeTypeType |t#0| (Tclass._System.Tuple3GOG TInt TInt TInt)) ($IsAlloc DatatypeTypeType |t#0| (Tclass._System.Tuple3GOG TInt TInt TInt) $Heap)) (|$IsA#_System.Tuple3GOG| |t#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
