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
(declare-fun |##_System._tuple#7._#Make7| () T@U)
(declare-fun Tagclass._System.Tuple7 () T@U)
(declare-fun Tagclass._module.xchar () T@U)
(declare-fun Tagclass._module.xBV10 () T@U)
(declare-fun Tagclass._module.xYes () T@U)
(declare-fun Tagclass._module.xnByte () T@U)
(declare-fun Tagclass._module.xnShort () T@U)
(declare-fun Tagclass._module.xnInt () T@U)
(declare-fun Tagclass._module.xnLong () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_tuple#7| () T@U)
(declare-fun tytagFamily$xchar () T@U)
(declare-fun tytagFamily$xBV10 () T@U)
(declare-fun tytagFamily$xYes () T@U)
(declare-fun tytagFamily$xnByte () T@U)
(declare-fun tytagFamily$xnShort () T@U)
(declare-fun tytagFamily$xnInt () T@U)
(declare-fun tytagFamily$xnLong () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun charType () T@T)
(declare-fun Tclass._module.xchar () T@U)
(declare-fun bv10Type () T@T)
(declare-fun Tclass._module.xBV10 () T@U)
(declare-fun bv10_2_U ((_ BitVec 10)) T@U)
(declare-fun U_2_bv10 (T@U) (_ BitVec 10))
(declare-fun Tclass._module.xYes () T@U)
(declare-fun Tclass._module.xnByte () T@U)
(declare-fun Tclass._module.xnShort () T@U)
(declare-fun Tclass._module.xnInt () T@U)
(declare-fun Tclass._module.xnLong () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun _System.Tuple7.___hMake7_q (T@U) Bool)
(declare-fun |#_System._tuple#7._#Make7| (T@U T@U T@U T@U T@U T@U T@U) T@U)
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
(declare-fun IndexField (Int) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple7 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _System.Tuple7._0 (T@U) T@U)
(declare-fun _System.Tuple7._1 (T@U) T@U)
(declare-fun _System.Tuple7._2 (T@U) T@U)
(declare-fun _System.Tuple7._3 (T@U) T@U)
(declare-fun _System.Tuple7._4 (T@U) T@U)
(declare-fun _System.Tuple7._5 (T@U) T@U)
(declare-fun _System.Tuple7._6 (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.Tuple7_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_1 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_2 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_3 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_4 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_5 (T@U) T@U)
(declare-fun Tclass._System.Tuple7_6 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.array? Tagclass._System.array |##_System._tuple#7._#Make7| Tagclass._System.Tuple7 Tagclass._module.xchar Tagclass._module.xBV10 Tagclass._module.xYes Tagclass._module.xnByte Tagclass._module.xnShort Tagclass._module.xnInt Tagclass._module.xnLong tytagFamily$array |tytagFamily$_tuple#7| tytagFamily$xchar tytagFamily$xBV10 tytagFamily$xYes tytagFamily$xnByte tytagFamily$xnShort tytagFamily$xnInt tytagFamily$xnLong)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7128|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (= (Ctor charType) 3))
(assert (forall ((|ch#0| T@U) ($h T@U) ) (! ($IsAlloc charType |ch#0| Tclass._module.xchar $h)
 :qid |unknown.0:0|
 :skolemid |7635|
 :pattern ( ($IsAlloc charType |ch#0| Tclass._module.xchar $h))
)))
(assert  (and (and (= (Ctor bv10Type) 4) (forall ((arg0@@2 (_ BitVec 10)) ) (! (= (U_2_bv10 (bv10_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv10|
 :pattern ( (bv10_2_U arg0@@2))
))) (forall ((x@@2 T@U) ) (! (= (bv10_2_U (U_2_bv10 x@@2)) x@@2)
 :qid |cast:U_2_bv10|
 :pattern ( (U_2_bv10 x@@2))
))))
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc bv10Type |x#0| Tclass._module.xBV10 $h@@0)
 :qid |unknown.0:0|
 :skolemid |7637|
 :pattern ( ($IsAlloc bv10Type |x#0| Tclass._module.xBV10 $h@@0))
)))
(assert (forall ((|b#0| T@U) ($h@@1 T@U) ) (! ($IsAlloc boolType |b#0| Tclass._module.xYes $h@@1)
 :qid |unknown.0:0|
 :skolemid |7639|
 :pattern ( ($IsAlloc boolType |b#0| Tclass._module.xYes $h@@1))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.xnByte $h@@2)
 :qid |unknown.0:0|
 :skolemid |7641|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.xnByte $h@@2))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._module.xnShort $h@@3)
 :qid |unknown.0:0|
 :skolemid |7643|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._module.xnShort $h@@3))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass._module.xnInt $h@@4)
 :qid |unknown.0:0|
 :skolemid |7645|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass._module.xnInt $h@@4))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@5 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass._module.xnLong $h@@5)
 :qid |unknown.0:0|
 :skolemid |7647|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass._module.xnLong $h@@5))
)))
(assert (= (Ctor refType) 5))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@6) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@6))
 :qid |unknown.0:0|
 :skolemid |7134|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@6))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@6))
)))
(assert (forall ((d T@U) ) (!  (=> (_System.Tuple7.___hMake7_q d) (exists ((|a#13#0#0| T@U) (|a#13#1#0| T@U) (|a#13#2#0| T@U) (|a#13#3#0| T@U) (|a#13#4#0| T@U) (|a#13#5#0| T@U) (|a#13#6#0| T@U) ) (! (= d (|#_System._tuple#7._#Make7| |a#13#0#0| |a#13#1#0| |a#13#2#0| |a#13#3#0| |a#13#4#0| |a#13#5#0| |a#13#6#0|))
 :qid |unknown.0:0|
 :skolemid |7391|
)))
 :qid |unknown.0:0|
 :skolemid |7392|
 :pattern ( (_System.Tuple7.___hMake7_q d))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@3 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@3 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@4 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@4 arg1@@0)) arg0@@4)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@4 arg1@@0))
))) (forall ((arg0@@5 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@5 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@5 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@7)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7127|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@7))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |6871|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |6872|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@3 Int) ) (! (= (LitInt x@@3) x@@3)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6770|
 :pattern ( (LitInt x@@3))
)))
(assert (forall ((x@@4 T@U) (T T@T) ) (! (= (Lit T x@@4) x@@4)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6768|
 :pattern ( (Lit T x@@4))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@8 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@8))
 :qid |unknown.0:0|
 :skolemid |7125|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple7.___hMake7_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#7._#Make7|))
 :qid |unknown.0:0|
 :skolemid |7390|
 :pattern ( (_System.Tuple7.___hMake7_q d@@0))
)))
(assert (forall ((x@@5 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@5)) x@@5)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6779|
 :pattern ( ($Unbox T@@0 x@@5))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is bv10Type |x#0@@4| Tclass._module.xBV10)  (or (not (= (U_2_bv10 |x#0@@4|) #b1111100111)) (not true)))
 :qid |unknown.0:0|
 :skolemid |7636|
 :pattern ( ($Is bv10Type |x#0@@4| Tclass._module.xBV10))
)))
(assert (= (Ctor DatatypeTypeType) 9))
(assert (forall ((|_System._tuple#7$T0| T@U) (|_System._tuple#7$T1| T@U) (|_System._tuple#7$T2| T@U) (|_System._tuple#7$T3| T@U) (|_System._tuple#7$T4| T@U) (|_System._tuple#7$T5| T@U) (|_System._tuple#7$T6| T@U) (d@@1 T@U) ) (!  (=> ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple7 |_System._tuple#7$T0| |_System._tuple#7$T1| |_System._tuple#7$T2| |_System._tuple#7$T3| |_System._tuple#7$T4| |_System._tuple#7$T5| |_System._tuple#7$T6|)) (_System.Tuple7.___hMake7_q d@@1))
 :qid |unknown.0:0|
 :skolemid |7434|
 :pattern ( (_System.Tuple7.___hMake7_q d@@1) ($Is DatatypeTypeType d@@1 (Tclass._System.Tuple7 |_System._tuple#7$T0| |_System._tuple#7$T1| |_System._tuple#7$T2| |_System._tuple#7$T3| |_System._tuple#7$T4| |_System._tuple#7$T5| |_System._tuple#7$T6|)))
)))
(assert (forall ((|x#0@@5| T@U) ) (! (= ($Is intType |x#0@@5| Tclass._module.xnLong)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@5|)) (< (U_2_int |x#0@@5|) 72057594037927936)))
 :qid |unknown.0:0|
 :skolemid |7646|
 :pattern ( ($Is intType |x#0@@5| Tclass._module.xnLong))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7133|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6792|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |6864|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |6863|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7121|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |7130|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.xchar) (and (= ($Box charType ($Unbox charType bx@@0)) bx@@0) ($Is charType ($Unbox charType bx@@0) Tclass._module.xchar)))
 :qid |unknown.0:0|
 :skolemid |7566|
 :pattern ( ($IsBox bx@@0 Tclass._module.xchar))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.xBV10) (and (= ($Box bv10Type ($Unbox bv10Type bx@@1)) bx@@1) ($Is bv10Type ($Unbox bv10Type bx@@1) Tclass._module.xBV10)))
 :qid |unknown.0:0|
 :skolemid |7571|
 :pattern ( ($IsBox bx@@1 Tclass._module.xBV10))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.xYes) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) Tclass._module.xYes)))
 :qid |unknown.0:0|
 :skolemid |7573|
 :pattern ( ($IsBox bx@@2 Tclass._module.xYes))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.xnByte) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.xnByte)))
 :qid |unknown.0:0|
 :skolemid |7575|
 :pattern ( ($IsBox bx@@3 Tclass._module.xnByte))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.xnShort) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass._module.xnShort)))
 :qid |unknown.0:0|
 :skolemid |7577|
 :pattern ( ($IsBox bx@@4 Tclass._module.xnShort))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.xnInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass._module.xnInt)))
 :qid |unknown.0:0|
 :skolemid |7579|
 :pattern ( ($IsBox bx@@5 Tclass._module.xnInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.xnLong) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass._module.xnLong)))
 :qid |unknown.0:0|
 :skolemid |7581|
 :pattern ( ($IsBox bx@@6 Tclass._module.xnLong))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |7126|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((d@@2 T@U) (|_System._tuple#7$T0@@0| T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (_System.Tuple7.___hMake7_q d@@2) (exists ((|_System._tuple#7$T1@@0| T@U) (|_System._tuple#7$T2@@0| T@U) (|_System._tuple#7$T3@@0| T@U) (|_System._tuple#7$T4@@0| T@U) (|_System._tuple#7$T5@@0| T@U) (|_System._tuple#7$T6@@0| T@U) ) (! ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@0| |_System._tuple#7$T1@@0| |_System._tuple#7$T2@@0| |_System._tuple#7$T3@@0| |_System._tuple#7$T4@@0| |_System._tuple#7$T5@@0| |_System._tuple#7$T6@@0|) $h@@9)
 :qid |unknown.0:0|
 :skolemid |7404|
 :pattern ( ($IsAlloc DatatypeTypeType d@@2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@0| |_System._tuple#7$T1@@0| |_System._tuple#7$T2@@0| |_System._tuple#7$T3@@0| |_System._tuple#7$T4@@0| |_System._tuple#7$T5@@0| |_System._tuple#7$T6@@0|) $h@@9))
)))) ($IsAllocBox (_System.Tuple7._0 d@@2) |_System._tuple#7$T0@@0| $h@@9))
 :qid |unknown.0:0|
 :skolemid |7405|
 :pattern ( ($IsAllocBox (_System.Tuple7._0 d@@2) |_System._tuple#7$T0@@0| $h@@9))
)))
(assert (forall ((d@@3 T@U) (|_System._tuple#7$T1@@1| T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (_System.Tuple7.___hMake7_q d@@3) (exists ((|_System._tuple#7$T0@@1| T@U) (|_System._tuple#7$T2@@1| T@U) (|_System._tuple#7$T3@@1| T@U) (|_System._tuple#7$T4@@1| T@U) (|_System._tuple#7$T5@@1| T@U) (|_System._tuple#7$T6@@1| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@1| |_System._tuple#7$T1@@1| |_System._tuple#7$T2@@1| |_System._tuple#7$T3@@1| |_System._tuple#7$T4@@1| |_System._tuple#7$T5@@1| |_System._tuple#7$T6@@1|) $h@@10)
 :qid |unknown.0:0|
 :skolemid |7406|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@1| |_System._tuple#7$T1@@1| |_System._tuple#7$T2@@1| |_System._tuple#7$T3@@1| |_System._tuple#7$T4@@1| |_System._tuple#7$T5@@1| |_System._tuple#7$T6@@1|) $h@@10))
)))) ($IsAllocBox (_System.Tuple7._1 d@@3) |_System._tuple#7$T1@@1| $h@@10))
 :qid |unknown.0:0|
 :skolemid |7407|
 :pattern ( ($IsAllocBox (_System.Tuple7._1 d@@3) |_System._tuple#7$T1@@1| $h@@10))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#7$T2@@2| T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (_System.Tuple7.___hMake7_q d@@4) (exists ((|_System._tuple#7$T0@@2| T@U) (|_System._tuple#7$T1@@2| T@U) (|_System._tuple#7$T3@@2| T@U) (|_System._tuple#7$T4@@2| T@U) (|_System._tuple#7$T5@@2| T@U) (|_System._tuple#7$T6@@2| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@2| |_System._tuple#7$T1@@2| |_System._tuple#7$T2@@2| |_System._tuple#7$T3@@2| |_System._tuple#7$T4@@2| |_System._tuple#7$T5@@2| |_System._tuple#7$T6@@2|) $h@@11)
 :qid |unknown.0:0|
 :skolemid |7408|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@2| |_System._tuple#7$T1@@2| |_System._tuple#7$T2@@2| |_System._tuple#7$T3@@2| |_System._tuple#7$T4@@2| |_System._tuple#7$T5@@2| |_System._tuple#7$T6@@2|) $h@@11))
)))) ($IsAllocBox (_System.Tuple7._2 d@@4) |_System._tuple#7$T2@@2| $h@@11))
 :qid |unknown.0:0|
 :skolemid |7409|
 :pattern ( ($IsAllocBox (_System.Tuple7._2 d@@4) |_System._tuple#7$T2@@2| $h@@11))
)))
(assert (forall ((d@@5 T@U) (|_System._tuple#7$T3@@3| T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (_System.Tuple7.___hMake7_q d@@5) (exists ((|_System._tuple#7$T0@@3| T@U) (|_System._tuple#7$T1@@3| T@U) (|_System._tuple#7$T2@@3| T@U) (|_System._tuple#7$T4@@3| T@U) (|_System._tuple#7$T5@@3| T@U) (|_System._tuple#7$T6@@3| T@U) ) (! ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@3| |_System._tuple#7$T1@@3| |_System._tuple#7$T2@@3| |_System._tuple#7$T3@@3| |_System._tuple#7$T4@@3| |_System._tuple#7$T5@@3| |_System._tuple#7$T6@@3|) $h@@12)
 :qid |unknown.0:0|
 :skolemid |7410|
 :pattern ( ($IsAlloc DatatypeTypeType d@@5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@3| |_System._tuple#7$T1@@3| |_System._tuple#7$T2@@3| |_System._tuple#7$T3@@3| |_System._tuple#7$T4@@3| |_System._tuple#7$T5@@3| |_System._tuple#7$T6@@3|) $h@@12))
)))) ($IsAllocBox (_System.Tuple7._3 d@@5) |_System._tuple#7$T3@@3| $h@@12))
 :qid |unknown.0:0|
 :skolemid |7411|
 :pattern ( ($IsAllocBox (_System.Tuple7._3 d@@5) |_System._tuple#7$T3@@3| $h@@12))
)))
(assert (forall ((d@@6 T@U) (|_System._tuple#7$T4@@4| T@U) ($h@@13 T@U) ) (!  (=> (and ($IsGoodHeap $h@@13) (and (_System.Tuple7.___hMake7_q d@@6) (exists ((|_System._tuple#7$T0@@4| T@U) (|_System._tuple#7$T1@@4| T@U) (|_System._tuple#7$T2@@4| T@U) (|_System._tuple#7$T3@@4| T@U) (|_System._tuple#7$T5@@4| T@U) (|_System._tuple#7$T6@@4| T@U) ) (! ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@4| |_System._tuple#7$T1@@4| |_System._tuple#7$T2@@4| |_System._tuple#7$T3@@4| |_System._tuple#7$T4@@4| |_System._tuple#7$T5@@4| |_System._tuple#7$T6@@4|) $h@@13)
 :qid |unknown.0:0|
 :skolemid |7412|
 :pattern ( ($IsAlloc DatatypeTypeType d@@6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@4| |_System._tuple#7$T1@@4| |_System._tuple#7$T2@@4| |_System._tuple#7$T3@@4| |_System._tuple#7$T4@@4| |_System._tuple#7$T5@@4| |_System._tuple#7$T6@@4|) $h@@13))
)))) ($IsAllocBox (_System.Tuple7._4 d@@6) |_System._tuple#7$T4@@4| $h@@13))
 :qid |unknown.0:0|
 :skolemid |7413|
 :pattern ( ($IsAllocBox (_System.Tuple7._4 d@@6) |_System._tuple#7$T4@@4| $h@@13))
)))
(assert (forall ((d@@7 T@U) (|_System._tuple#7$T5@@5| T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (_System.Tuple7.___hMake7_q d@@7) (exists ((|_System._tuple#7$T0@@5| T@U) (|_System._tuple#7$T1@@5| T@U) (|_System._tuple#7$T2@@5| T@U) (|_System._tuple#7$T3@@5| T@U) (|_System._tuple#7$T4@@5| T@U) (|_System._tuple#7$T6@@5| T@U) ) (! ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple7 |_System._tuple#7$T0@@5| |_System._tuple#7$T1@@5| |_System._tuple#7$T2@@5| |_System._tuple#7$T3@@5| |_System._tuple#7$T4@@5| |_System._tuple#7$T5@@5| |_System._tuple#7$T6@@5|) $h@@14)
 :qid |unknown.0:0|
 :skolemid |7414|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 (Tclass._System.Tuple7 |_System._tuple#7$T0@@5| |_System._tuple#7$T1@@5| |_System._tuple#7$T2@@5| |_System._tuple#7$T3@@5| |_System._tuple#7$T4@@5| |_System._tuple#7$T5@@5| |_System._tuple#7$T6@@5|) $h@@14))
)))) ($IsAllocBox (_System.Tuple7._5 d@@7) |_System._tuple#7$T5@@5| $h@@14))
 :qid |unknown.0:0|
 :skolemid |7415|
 :pattern ( ($IsAllocBox (_System.Tuple7._5 d@@7) |_System._tuple#7$T5@@5| $h@@14))
)))
(assert (forall ((d@@8 T@U) (|_System._tuple#7$T6@@6| T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (_System.Tuple7.___hMake7_q d@@8) (exists ((|_System._tuple#7$T0@@6| T@U) (|_System._tuple#7$T1@@6| T@U) (|_System._tuple#7$T2@@6| T@U) (|_System._tuple#7$T3@@6| T@U) (|_System._tuple#7$T4@@6| T@U) (|_System._tuple#7$T5@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple7 |_System._tuple#7$T0@@6| |_System._tuple#7$T1@@6| |_System._tuple#7$T2@@6| |_System._tuple#7$T3@@6| |_System._tuple#7$T4@@6| |_System._tuple#7$T5@@6| |_System._tuple#7$T6@@6|) $h@@15)
 :qid |unknown.0:0|
 :skolemid |7416|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._System.Tuple7 |_System._tuple#7$T0@@6| |_System._tuple#7$T1@@6| |_System._tuple#7$T2@@6| |_System._tuple#7$T3@@6| |_System._tuple#7$T4@@6| |_System._tuple#7$T5@@6| |_System._tuple#7$T6@@6|) $h@@15))
)))) ($IsAllocBox (_System.Tuple7._6 d@@8) |_System._tuple#7$T6@@6| $h@@15))
 :qid |unknown.0:0|
 :skolemid |7417|
 :pattern ( ($IsAllocBox (_System.Tuple7._6 d@@8) |_System._tuple#7$T6@@6| $h@@15))
)))
(assert (forall ((|ch#0@@0| T@U) ) (! (= ($Is charType |ch#0@@0| Tclass._module.xchar)  (and (<= (|char#ToInt| (Lit charType (|char#FromInt| 0))) (|char#ToInt| |ch#0@@0|)) (<= (|char#ToInt| |ch#0@@0|) (|char#ToInt| (Lit charType (|char#FromInt| 122))))))
 :qid |unknown.0:0|
 :skolemid |7634|
 :pattern ( ($Is charType |ch#0@@0| Tclass._module.xchar))
)))
(assert (forall ((|_System._tuple#7$T0@@7| T@U) (|_System._tuple#7$T1@@7| T@U) (|_System._tuple#7$T2@@7| T@U) (|_System._tuple#7$T3@@7| T@U) (|_System._tuple#7$T4@@7| T@U) (|_System._tuple#7$T5@@7| T@U) (|_System._tuple#7$T6@@7| T@U) (|a#14#0#0| T@U) (|a#14#1#0| T@U) (|a#14#2#0| T@U) (|a#14#3#0| T@U) (|a#14#4#0| T@U) (|a#14#5#0| T@U) (|a#14#6#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@7| |_System._tuple#7$T1@@7| |_System._tuple#7$T2@@7| |_System._tuple#7$T3@@7| |_System._tuple#7$T4@@7| |_System._tuple#7$T5@@7| |_System._tuple#7$T6@@7|))  (and (and (and (and (and (and ($IsBox |a#14#0#0| |_System._tuple#7$T0@@7|) ($IsBox |a#14#1#0| |_System._tuple#7$T1@@7|)) ($IsBox |a#14#2#0| |_System._tuple#7$T2@@7|)) ($IsBox |a#14#3#0| |_System._tuple#7$T3@@7|)) ($IsBox |a#14#4#0| |_System._tuple#7$T4@@7|)) ($IsBox |a#14#5#0| |_System._tuple#7$T5@@7|)) ($IsBox |a#14#6#0| |_System._tuple#7$T6@@7|)))
 :qid |unknown.0:0|
 :skolemid |7402|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0| |a#14#1#0| |a#14#2#0| |a#14#3#0| |a#14#4#0| |a#14#5#0| |a#14#6#0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@7| |_System._tuple#7$T1@@7| |_System._tuple#7$T2@@7| |_System._tuple#7$T3@@7| |_System._tuple#7$T4@@7| |_System._tuple#7$T5@@7| |_System._tuple#7$T6@@7|)))
)))
(assert (forall ((|a#17#0#0| T@U) (|a#17#1#0| T@U) (|a#17#2#0| T@U) (|a#17#3#0| T@U) (|a#17#4#0| T@U) (|a#17#5#0| T@U) (|a#17#6#0| T@U) ) (! (< (BoxRank |a#17#0#0|) (DtRank (|#_System._tuple#7._#Make7| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7420|
 :pattern ( (|#_System._tuple#7._#Make7| |a#17#0#0| |a#17#1#0| |a#17#2#0| |a#17#3#0| |a#17#4#0| |a#17#5#0| |a#17#6#0|))
)))
(assert (forall ((|a#19#0#0| T@U) (|a#19#1#0| T@U) (|a#19#2#0| T@U) (|a#19#3#0| T@U) (|a#19#4#0| T@U) (|a#19#5#0| T@U) (|a#19#6#0| T@U) ) (! (< (BoxRank |a#19#1#0|) (DtRank (|#_System._tuple#7._#Make7| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7422|
 :pattern ( (|#_System._tuple#7._#Make7| |a#19#0#0| |a#19#1#0| |a#19#2#0| |a#19#3#0| |a#19#4#0| |a#19#5#0| |a#19#6#0|))
)))
(assert (forall ((|a#21#0#0| T@U) (|a#21#1#0| T@U) (|a#21#2#0| T@U) (|a#21#3#0| T@U) (|a#21#4#0| T@U) (|a#21#5#0| T@U) (|a#21#6#0| T@U) ) (! (< (BoxRank |a#21#2#0|) (DtRank (|#_System._tuple#7._#Make7| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7424|
 :pattern ( (|#_System._tuple#7._#Make7| |a#21#0#0| |a#21#1#0| |a#21#2#0| |a#21#3#0| |a#21#4#0| |a#21#5#0| |a#21#6#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) (|a#23#2#0| T@U) (|a#23#3#0| T@U) (|a#23#4#0| T@U) (|a#23#5#0| T@U) (|a#23#6#0| T@U) ) (! (< (BoxRank |a#23#3#0|) (DtRank (|#_System._tuple#7._#Make7| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7426|
 :pattern ( (|#_System._tuple#7._#Make7| |a#23#0#0| |a#23#1#0| |a#23#2#0| |a#23#3#0| |a#23#4#0| |a#23#5#0| |a#23#6#0|))
)))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) (|a#25#2#0| T@U) (|a#25#3#0| T@U) (|a#25#4#0| T@U) (|a#25#5#0| T@U) (|a#25#6#0| T@U) ) (! (< (BoxRank |a#25#4#0|) (DtRank (|#_System._tuple#7._#Make7| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7428|
 :pattern ( (|#_System._tuple#7._#Make7| |a#25#0#0| |a#25#1#0| |a#25#2#0| |a#25#3#0| |a#25#4#0| |a#25#5#0| |a#25#6#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) (|a#27#2#0| T@U) (|a#27#3#0| T@U) (|a#27#4#0| T@U) (|a#27#5#0| T@U) (|a#27#6#0| T@U) ) (! (< (BoxRank |a#27#5#0|) (DtRank (|#_System._tuple#7._#Make7| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7430|
 :pattern ( (|#_System._tuple#7._#Make7| |a#27#0#0| |a#27#1#0| |a#27#2#0| |a#27#3#0| |a#27#4#0| |a#27#5#0| |a#27#6#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) (|a#29#2#0| T@U) (|a#29#3#0| T@U) (|a#29#4#0| T@U) (|a#29#5#0| T@U) (|a#29#6#0| T@U) ) (! (< (BoxRank |a#29#6#0|) (DtRank (|#_System._tuple#7._#Make7| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7432|
 :pattern ( (|#_System._tuple#7._#Make7| |a#29#0#0| |a#29#1#0| |a#29#2#0| |a#29#3#0| |a#29#4#0| |a#29#5#0| |a#29#6#0|))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |6870|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((|_System._tuple#7$T0@@8| T@U) (|_System._tuple#7$T1@@8| T@U) (|_System._tuple#7$T2@@8| T@U) (|_System._tuple#7$T3@@8| T@U) (|_System._tuple#7$T4@@8| T@U) (|_System._tuple#7$T5@@8| T@U) (|_System._tuple#7$T6@@8| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|)) Tagclass._System.Tuple7) (= (TagFamily (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|)) |tytagFamily$_tuple#7|))
 :qid |unknown.0:0|
 :skolemid |7393|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@8| |_System._tuple#7$T1@@8| |_System._tuple#7$T2@@8| |_System._tuple#7$T3@@8| |_System._tuple#7$T4@@8| |_System._tuple#7$T5@@8| |_System._tuple#7$T6@@8|))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6780|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6791|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|_System._tuple#7$T0@@9| T@U) (|_System._tuple#7$T1@@9| T@U) (|_System._tuple#7$T2@@9| T@U) (|_System._tuple#7$T3@@9| T@U) (|_System._tuple#7$T4@@9| T@U) (|_System._tuple#7$T5@@9| T@U) (|_System._tuple#7$T6@@9| T@U) (|a#14#0#0@@0| T@U) (|a#14#1#0@@0| T@U) (|a#14#2#0@@0| T@U) (|a#14#3#0@@0| T@U) (|a#14#4#0@@0| T@U) (|a#14#5#0@@0| T@U) (|a#14#6#0@@0| T@U) ($h@@16 T@U) ) (!  (=> ($IsGoodHeap $h@@16) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@9| |_System._tuple#7$T1@@9| |_System._tuple#7$T2@@9| |_System._tuple#7$T3@@9| |_System._tuple#7$T4@@9| |_System._tuple#7$T5@@9| |_System._tuple#7$T6@@9|) $h@@16)  (and (and (and (and (and (and ($IsAllocBox |a#14#0#0@@0| |_System._tuple#7$T0@@9| $h@@16) ($IsAllocBox |a#14#1#0@@0| |_System._tuple#7$T1@@9| $h@@16)) ($IsAllocBox |a#14#2#0@@0| |_System._tuple#7$T2@@9| $h@@16)) ($IsAllocBox |a#14#3#0@@0| |_System._tuple#7$T3@@9| $h@@16)) ($IsAllocBox |a#14#4#0@@0| |_System._tuple#7$T4@@9| $h@@16)) ($IsAllocBox |a#14#5#0@@0| |_System._tuple#7$T5@@9| $h@@16)) ($IsAllocBox |a#14#6#0@@0| |_System._tuple#7$T6@@9| $h@@16))))
 :qid |unknown.0:0|
 :skolemid |7403|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#7._#Make7| |a#14#0#0@@0| |a#14#1#0@@0| |a#14#2#0@@0| |a#14#3#0@@0| |a#14#4#0@@0| |a#14#5#0@@0| |a#14#6#0@@0|) (Tclass._System.Tuple7 |_System._tuple#7$T0@@9| |_System._tuple#7$T1@@9| |_System._tuple#7$T2@@9| |_System._tuple#7$T3@@9| |_System._tuple#7$T4@@9| |_System._tuple#7$T5@@9| |_System._tuple#7$T6@@9|) $h@@16))
)))
(assert (forall ((|b#0@@0| T@U) ) (! (= ($Is boolType |b#0@@0| Tclass._module.xYes)  (not (U_2_bool |b#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |7638|
 :pattern ( ($Is boolType |b#0@@0| Tclass._module.xYes))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) (|a#15#2#0| T@U) (|a#15#3#0| T@U) (|a#15#4#0| T@U) (|a#15#5#0| T@U) (|a#15#6#0| T@U) ) (! (= (|#_System._tuple#7._#Make7| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|)) (Lit DatatypeTypeType (|#_System._tuple#7._#Make7| |a#15#0#0| |a#15#1#0| |a#15#2#0| |a#15#3#0| |a#15#4#0| |a#15#5#0| |a#15#6#0|)))
 :qid |unknown.0:0|
 :skolemid |7418|
 :pattern ( (|#_System._tuple#7._#Make7| (Lit BoxType |a#15#0#0|) (Lit BoxType |a#15#1#0|) (Lit BoxType |a#15#2#0|) (Lit BoxType |a#15#3#0|) (Lit BoxType |a#15#4#0|) (Lit BoxType |a#15#5#0|) (Lit BoxType |a#15#6#0|)))
)))
(assert (forall ((o@@0 T@U) ) (! (<= 0 (_System.array.Length o@@0))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |6865|
 :pattern ( (_System.array.Length o@@0))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |6856|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |6857|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |7122|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |7131|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6778|
 :pattern ( ($Box T@@4 x@@6))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@17 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@17) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@17))
 :qid |unknown.0:0|
 :skolemid |7129|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@17 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@18 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@18) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |7124|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@18 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |6774|
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7823|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((d@@9 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@9)) (DtRank d@@9))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |6837|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@9)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |7123|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |7132|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((|_System._tuple#7$T0@@10| T@U) (|_System._tuple#7$T1@@10| T@U) (|_System._tuple#7$T2@@10| T@U) (|_System._tuple#7$T3@@10| T@U) (|_System._tuple#7$T4@@10| T@U) (|_System._tuple#7$T5@@10| T@U) (|_System._tuple#7$T6@@10| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|))))
 :qid |unknown.0:0|
 :skolemid |7401|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple7 |_System._tuple#7$T0@@10| |_System._tuple#7$T1@@10| |_System._tuple#7$T2@@10| |_System._tuple#7$T3@@10| |_System._tuple#7$T4@@10| |_System._tuple#7$T5@@10| |_System._tuple#7$T6@@10|)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |6775|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@7 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |6869|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@7)))
)))
(assert (= (Tag Tclass._module.xchar) Tagclass._module.xchar))
(assert (= (TagFamily Tclass._module.xchar) tytagFamily$xchar))
(assert (= (Tag Tclass._module.xBV10) Tagclass._module.xBV10))
(assert (= (TagFamily Tclass._module.xBV10) tytagFamily$xBV10))
(assert (= (Tag Tclass._module.xYes) Tagclass._module.xYes))
(assert (= (TagFamily Tclass._module.xYes) tytagFamily$xYes))
(assert (= (Tag Tclass._module.xnByte) Tagclass._module.xnByte))
(assert (= (TagFamily Tclass._module.xnByte) tytagFamily$xnByte))
(assert (= (Tag Tclass._module.xnShort) Tagclass._module.xnShort))
(assert (= (TagFamily Tclass._module.xnShort) tytagFamily$xnShort))
(assert (= (Tag Tclass._module.xnInt) Tagclass._module.xnInt))
(assert (= (TagFamily Tclass._module.xnInt) tytagFamily$xnInt))
(assert (= (Tag Tclass._module.xnLong) Tagclass._module.xnLong))
(assert (= (TagFamily Tclass._module.xnLong) tytagFamily$xnLong))
(assert (forall ((|x#0@@6| T@U) ) (! (= ($Is intType |x#0@@6| Tclass._module.xnByte)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@6|)) (< (U_2_int |x#0@@6|) 100)))
 :qid |unknown.0:0|
 :skolemid |7640|
 :pattern ( ($Is intType |x#0@@6| Tclass._module.xnByte))
)))
(assert (forall ((|x#0@@7| T@U) ) (! (= ($Is intType |x#0@@7| Tclass._module.xnShort)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@7|)) (< (U_2_int |x#0@@7|) 1000)))
 :qid |unknown.0:0|
 :skolemid |7642|
 :pattern ( ($Is intType |x#0@@7| Tclass._module.xnShort))
)))
(assert (forall ((|x#0@@8| T@U) ) (! (= ($Is intType |x#0@@8| Tclass._module.xnInt)  (and (<= (LitInt (- 0 10)) (U_2_int |x#0@@8|)) (< (U_2_int |x#0@@8|) 1000000)))
 :qid |unknown.0:0|
 :skolemid |7644|
 :pattern ( ($Is intType |x#0@@8| Tclass._module.xnInt))
)))
(assert (forall ((x@@8 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@8))) (Lit BoxType ($Box intType (int_2_U x@@8))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6771|
 :pattern ( ($Box intType (int_2_U (LitInt x@@8))))
)))
(assert (forall ((x@@9 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@9)) (Lit BoxType ($Box T@@5 x@@9)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6769|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@9)))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) (|a#12#2#0| T@U) (|a#12#3#0| T@U) (|a#12#4#0| T@U) (|a#12#5#0| T@U) (|a#12#6#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#7._#Make7| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0|)) |##_System._tuple#7._#Make7|)
 :qid |unknown.0:0|
 :skolemid |7389|
 :pattern ( (|#_System._tuple#7._#Make7| |a#12#0#0| |a#12#1#0| |a#12#2#0| |a#12#3#0| |a#12#4#0| |a#12#5#0| |a#12#6#0|))
)))
(assert (forall ((|_System._tuple#7$T0@@11| T@U) (|_System._tuple#7$T1@@11| T@U) (|_System._tuple#7$T2@@11| T@U) (|_System._tuple#7$T3@@11| T@U) (|_System._tuple#7$T4@@11| T@U) (|_System._tuple#7$T5@@11| T@U) (|_System._tuple#7$T6@@11| T@U) ) (! (= (Tclass._System.Tuple7_0 (Tclass._System.Tuple7 |_System._tuple#7$T0@@11| |_System._tuple#7$T1@@11| |_System._tuple#7$T2@@11| |_System._tuple#7$T3@@11| |_System._tuple#7$T4@@11| |_System._tuple#7$T5@@11| |_System._tuple#7$T6@@11|)) |_System._tuple#7$T0@@11|)
 :qid |unknown.0:0|
 :skolemid |7394|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@11| |_System._tuple#7$T1@@11| |_System._tuple#7$T2@@11| |_System._tuple#7$T3@@11| |_System._tuple#7$T4@@11| |_System._tuple#7$T5@@11| |_System._tuple#7$T6@@11|))
)))
(assert (forall ((|_System._tuple#7$T0@@12| T@U) (|_System._tuple#7$T1@@12| T@U) (|_System._tuple#7$T2@@12| T@U) (|_System._tuple#7$T3@@12| T@U) (|_System._tuple#7$T4@@12| T@U) (|_System._tuple#7$T5@@12| T@U) (|_System._tuple#7$T6@@12| T@U) ) (! (= (Tclass._System.Tuple7_1 (Tclass._System.Tuple7 |_System._tuple#7$T0@@12| |_System._tuple#7$T1@@12| |_System._tuple#7$T2@@12| |_System._tuple#7$T3@@12| |_System._tuple#7$T4@@12| |_System._tuple#7$T5@@12| |_System._tuple#7$T6@@12|)) |_System._tuple#7$T1@@12|)
 :qid |unknown.0:0|
 :skolemid |7395|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@12| |_System._tuple#7$T1@@12| |_System._tuple#7$T2@@12| |_System._tuple#7$T3@@12| |_System._tuple#7$T4@@12| |_System._tuple#7$T5@@12| |_System._tuple#7$T6@@12|))
)))
(assert (forall ((|_System._tuple#7$T0@@13| T@U) (|_System._tuple#7$T1@@13| T@U) (|_System._tuple#7$T2@@13| T@U) (|_System._tuple#7$T3@@13| T@U) (|_System._tuple#7$T4@@13| T@U) (|_System._tuple#7$T5@@13| T@U) (|_System._tuple#7$T6@@13| T@U) ) (! (= (Tclass._System.Tuple7_2 (Tclass._System.Tuple7 |_System._tuple#7$T0@@13| |_System._tuple#7$T1@@13| |_System._tuple#7$T2@@13| |_System._tuple#7$T3@@13| |_System._tuple#7$T4@@13| |_System._tuple#7$T5@@13| |_System._tuple#7$T6@@13|)) |_System._tuple#7$T2@@13|)
 :qid |unknown.0:0|
 :skolemid |7396|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@13| |_System._tuple#7$T1@@13| |_System._tuple#7$T2@@13| |_System._tuple#7$T3@@13| |_System._tuple#7$T4@@13| |_System._tuple#7$T5@@13| |_System._tuple#7$T6@@13|))
)))
(assert (forall ((|_System._tuple#7$T0@@14| T@U) (|_System._tuple#7$T1@@14| T@U) (|_System._tuple#7$T2@@14| T@U) (|_System._tuple#7$T3@@14| T@U) (|_System._tuple#7$T4@@14| T@U) (|_System._tuple#7$T5@@14| T@U) (|_System._tuple#7$T6@@14| T@U) ) (! (= (Tclass._System.Tuple7_3 (Tclass._System.Tuple7 |_System._tuple#7$T0@@14| |_System._tuple#7$T1@@14| |_System._tuple#7$T2@@14| |_System._tuple#7$T3@@14| |_System._tuple#7$T4@@14| |_System._tuple#7$T5@@14| |_System._tuple#7$T6@@14|)) |_System._tuple#7$T3@@14|)
 :qid |unknown.0:0|
 :skolemid |7397|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@14| |_System._tuple#7$T1@@14| |_System._tuple#7$T2@@14| |_System._tuple#7$T3@@14| |_System._tuple#7$T4@@14| |_System._tuple#7$T5@@14| |_System._tuple#7$T6@@14|))
)))
(assert (forall ((|_System._tuple#7$T0@@15| T@U) (|_System._tuple#7$T1@@15| T@U) (|_System._tuple#7$T2@@15| T@U) (|_System._tuple#7$T3@@15| T@U) (|_System._tuple#7$T4@@15| T@U) (|_System._tuple#7$T5@@15| T@U) (|_System._tuple#7$T6@@15| T@U) ) (! (= (Tclass._System.Tuple7_4 (Tclass._System.Tuple7 |_System._tuple#7$T0@@15| |_System._tuple#7$T1@@15| |_System._tuple#7$T2@@15| |_System._tuple#7$T3@@15| |_System._tuple#7$T4@@15| |_System._tuple#7$T5@@15| |_System._tuple#7$T6@@15|)) |_System._tuple#7$T4@@15|)
 :qid |unknown.0:0|
 :skolemid |7398|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@15| |_System._tuple#7$T1@@15| |_System._tuple#7$T2@@15| |_System._tuple#7$T3@@15| |_System._tuple#7$T4@@15| |_System._tuple#7$T5@@15| |_System._tuple#7$T6@@15|))
)))
(assert (forall ((|_System._tuple#7$T0@@16| T@U) (|_System._tuple#7$T1@@16| T@U) (|_System._tuple#7$T2@@16| T@U) (|_System._tuple#7$T3@@16| T@U) (|_System._tuple#7$T4@@16| T@U) (|_System._tuple#7$T5@@16| T@U) (|_System._tuple#7$T6@@16| T@U) ) (! (= (Tclass._System.Tuple7_5 (Tclass._System.Tuple7 |_System._tuple#7$T0@@16| |_System._tuple#7$T1@@16| |_System._tuple#7$T2@@16| |_System._tuple#7$T3@@16| |_System._tuple#7$T4@@16| |_System._tuple#7$T5@@16| |_System._tuple#7$T6@@16|)) |_System._tuple#7$T5@@16|)
 :qid |unknown.0:0|
 :skolemid |7399|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@16| |_System._tuple#7$T1@@16| |_System._tuple#7$T2@@16| |_System._tuple#7$T3@@16| |_System._tuple#7$T4@@16| |_System._tuple#7$T5@@16| |_System._tuple#7$T6@@16|))
)))
(assert (forall ((|_System._tuple#7$T0@@17| T@U) (|_System._tuple#7$T1@@17| T@U) (|_System._tuple#7$T2@@17| T@U) (|_System._tuple#7$T3@@17| T@U) (|_System._tuple#7$T4@@17| T@U) (|_System._tuple#7$T5@@17| T@U) (|_System._tuple#7$T6@@17| T@U) ) (! (= (Tclass._System.Tuple7_6 (Tclass._System.Tuple7 |_System._tuple#7$T0@@17| |_System._tuple#7$T1@@17| |_System._tuple#7$T2@@17| |_System._tuple#7$T3@@17| |_System._tuple#7$T4@@17| |_System._tuple#7$T5@@17| |_System._tuple#7$T6@@17|)) |_System._tuple#7$T6@@17|)
 :qid |unknown.0:0|
 :skolemid |7400|
 :pattern ( (Tclass._System.Tuple7 |_System._tuple#7$T0@@17| |_System._tuple#7$T1@@17| |_System._tuple#7$T2@@17| |_System._tuple#7$T3@@17| |_System._tuple#7$T4@@17| |_System._tuple#7$T5@@17| |_System._tuple#7$T6@@17|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) (|a#16#2#0| T@U) (|a#16#3#0| T@U) (|a#16#4#0| T@U) (|a#16#5#0| T@U) (|a#16#6#0| T@U) ) (! (= (_System.Tuple7._0 (|#_System._tuple#7._#Make7| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0|)) |a#16#0#0|)
 :qid |unknown.0:0|
 :skolemid |7419|
 :pattern ( (|#_System._tuple#7._#Make7| |a#16#0#0| |a#16#1#0| |a#16#2#0| |a#16#3#0| |a#16#4#0| |a#16#5#0| |a#16#6#0|))
)))
(assert (forall ((|a#18#0#0| T@U) (|a#18#1#0| T@U) (|a#18#2#0| T@U) (|a#18#3#0| T@U) (|a#18#4#0| T@U) (|a#18#5#0| T@U) (|a#18#6#0| T@U) ) (! (= (_System.Tuple7._1 (|#_System._tuple#7._#Make7| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0|)) |a#18#1#0|)
 :qid |unknown.0:0|
 :skolemid |7421|
 :pattern ( (|#_System._tuple#7._#Make7| |a#18#0#0| |a#18#1#0| |a#18#2#0| |a#18#3#0| |a#18#4#0| |a#18#5#0| |a#18#6#0|))
)))
(assert (forall ((|a#20#0#0| T@U) (|a#20#1#0| T@U) (|a#20#2#0| T@U) (|a#20#3#0| T@U) (|a#20#4#0| T@U) (|a#20#5#0| T@U) (|a#20#6#0| T@U) ) (! (= (_System.Tuple7._2 (|#_System._tuple#7._#Make7| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0|)) |a#20#2#0|)
 :qid |unknown.0:0|
 :skolemid |7423|
 :pattern ( (|#_System._tuple#7._#Make7| |a#20#0#0| |a#20#1#0| |a#20#2#0| |a#20#3#0| |a#20#4#0| |a#20#5#0| |a#20#6#0|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) (|a#22#2#0| T@U) (|a#22#3#0| T@U) (|a#22#4#0| T@U) (|a#22#5#0| T@U) (|a#22#6#0| T@U) ) (! (= (_System.Tuple7._3 (|#_System._tuple#7._#Make7| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0|)) |a#22#3#0|)
 :qid |unknown.0:0|
 :skolemid |7425|
 :pattern ( (|#_System._tuple#7._#Make7| |a#22#0#0| |a#22#1#0| |a#22#2#0| |a#22#3#0| |a#22#4#0| |a#22#5#0| |a#22#6#0|))
)))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) (|a#24#2#0| T@U) (|a#24#3#0| T@U) (|a#24#4#0| T@U) (|a#24#5#0| T@U) (|a#24#6#0| T@U) ) (! (= (_System.Tuple7._4 (|#_System._tuple#7._#Make7| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0|)) |a#24#4#0|)
 :qid |unknown.0:0|
 :skolemid |7427|
 :pattern ( (|#_System._tuple#7._#Make7| |a#24#0#0| |a#24#1#0| |a#24#2#0| |a#24#3#0| |a#24#4#0| |a#24#5#0| |a#24#6#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) (|a#26#2#0| T@U) (|a#26#3#0| T@U) (|a#26#4#0| T@U) (|a#26#5#0| T@U) (|a#26#6#0| T@U) ) (! (= (_System.Tuple7._5 (|#_System._tuple#7._#Make7| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0|)) |a#26#5#0|)
 :qid |unknown.0:0|
 :skolemid |7429|
 :pattern ( (|#_System._tuple#7._#Make7| |a#26#0#0| |a#26#1#0| |a#26#2#0| |a#26#3#0| |a#26#4#0| |a#26#5#0| |a#26#6#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) (|a#28#2#0| T@U) (|a#28#3#0| T@U) (|a#28#4#0| T@U) (|a#28#5#0| T@U) (|a#28#6#0| T@U) ) (! (= (_System.Tuple7._6 (|#_System._tuple#7._#Make7| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0|)) |a#28#6#0|)
 :qid |unknown.0:0|
 :skolemid |7431|
 :pattern ( (|#_System._tuple#7._#Make7| |a#28#0#0| |a#28#1#0| |a#28#2#0| |a#28#3#0| |a#28#4#0| |a#28#5#0| |a#28#6#0|))
)))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6814|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6793|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0_1@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun |i#0_0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |kitchenSink#0@0| () T@U)
(declare-fun |let#1_0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#1_0@0| () T@U)
(declare-fun |let#1_1#0#0| () T@U)
(declare-fun |dt_update#0#0#Z#1_0@0| () T@U)
(declare-fun |kitchenSink#0@1| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call0formal@_module._default.PrintArray$A@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@0 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@1 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@2 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@3 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@4 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $nw@6 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun call0formal@_module._default.PrintArray$A@0@@5 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |vv#0| () T@U)
(declare-fun |yy#0| () T@U)
(declare-fun |a0#0| () T@U)
(declare-fun |a1#0| () T@U)
(declare-fun |a2#0| () T@U)
(declare-fun |a3#0| () T@U)
(declare-fun |kitchenSink#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.MoreWithDefaults)
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
 (=> (= (ControlFlow 0 0) 30) (let ((anon6_correct  (=> (and (and (<= (LitInt 0) |i#0_1@0|) (< |i#0_1@0| (_System.array.Length $nw@0))) (and (or (not (= |i#0_0@0| |i#0_1@0|)) (not true)) (= (ControlFlow 0 13) (- 0 12)))) (or (or (or (not (= $nw@0 $nw@0)) (not true)) (or (not (= (IndexField |i#0_0@0|) (IndexField |i#0_1@0|))) (not true))) (= (ite (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|)))) (ite (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_1@0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_1@0|)))))))))
(let ((anon14_Else_correct  (=> (or (not (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0)))) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (=> (= (ControlFlow 0 15) 13) anon6_correct)))))))
(let ((anon14_Then_correct  (=> (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#0_0@0|))) (Lit charType (|char#FromInt| 0))) (= (ControlFlow 0 14) 13)) anon6_correct)))
(let ((anon3_correct  (=> (and (<= (LitInt 0) |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 22)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|)))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField |i#0_0@0|))) (and (=> (= (ControlFlow 0 18) (- 0 20)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (and (<= 0 |i#0_0@0|) (< |i#0_0@0| (_System.array.Length $nw@0)))) (and (=> (= (ControlFlow 0 18) 14) anon14_Then_correct) (=> (= (ControlFlow 0 18) 15) anon14_Else_correct)))))))))))))
(let ((anon13_Else_correct  (=> (and (< |i#0_0@0| (LitInt 0)) (= (ControlFlow 0 26) 18)) anon3_correct)))
(let ((anon13_Then_correct  (=> (<= (LitInt 0) |i#0_0@0|) (and (=> (= (ControlFlow 0 24) (- 0 25)) (or (not (= $nw@0 null)) (not true))) (=> (= (ControlFlow 0 24) 18) anon3_correct)))))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 27) 24) anon13_Then_correct) (=> (= (ControlFlow 0 27) 26) anon13_Else_correct))))
(let ((anon11_correct true))
(let ((anon15_Else_correct  (=> (and (or (not (= ($Unbox charType (_System.Tuple7._0 |kitchenSink#0@0|)) (Lit charType (|char#FromInt| 0)))) (not true)) (= (ControlFlow 0 4) 1)) anon11_correct)))
(let ((anon15_Then_correct  (=> (and (and (= ($Unbox charType (_System.Tuple7._0 |kitchenSink#0@0|)) (Lit charType (|char#FromInt| 0))) (= |let#1_0#0#0| |kitchenSink#0@0|)) (and ($Is DatatypeTypeType |let#1_0#0#0| (Tclass._System.Tuple7 Tclass._module.xchar Tclass._module.xBV10 Tclass._module.xYes Tclass._module.xnByte Tclass._module.xnShort Tclass._module.xnInt Tclass._module.xnLong)) (= |dt_update_tmp#0#Z#1_0@0| |let#1_0#0#0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is charType (Lit charType (|char#FromInt| 97)) Tclass._module.xchar)) (=> ($Is charType (Lit charType (|char#FromInt| 97)) Tclass._module.xchar) (=> (and (and (= |let#1_1#0#0| (Lit charType (|char#FromInt| 97))) ($Is charType |let#1_1#0#0| Tclass._module.xchar)) (and (= |dt_update#0#0#Z#1_0@0| |let#1_1#0#0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|))) (=> (and (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|)) (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|))) (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#Z#1_0@0|) (let ((|dt_update_tmp#0#1_0| |kitchenSink#0@0|))
 (and (and (and (and (and (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)) (_System.Tuple7.___hMake7_q |dt_update_tmp#0#1_0|)))) (and (= |kitchenSink#0@1| (let ((|dt_update_tmp#0#1_0@@0| |kitchenSink#0@0|))
(let ((|dt_update#0#0#1_0| (Lit charType (|char#FromInt| 97))))
(|#_System._tuple#7._#Make7| ($Box charType |dt_update#0#0#1_0|) (_System.Tuple7._1 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._2 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._3 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._4 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._5 |dt_update_tmp#0#1_0@@0|) (_System.Tuple7._6 |dt_update_tmp#0#1_0@@0|))))) (= (ControlFlow 0 2) 1)))) anon11_correct)))))))
(let ((anon12_Else_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@6) $f@@0)) (exists ((|i#0_2| Int) ) (!  (and (and (and (<= (LitInt 0) |i#0_2|) (< |i#0_2| (_System.array.Length $nw@0))) (= $o@@6 $nw@0)) (= $f@@0 (IndexField |i#0_2|)))
 :qid |Arraysdfy.224:10|
 :skolemid |7567|
)))
 :qid |Arraysdfy.224:3|
 :skolemid |7568|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) $f@@0))
))) (and (forall ((|i#inv#0_0| Int) ) (!  (=> (and (<= (LitInt 0) |i#inv#0_0|) (< |i#inv#0_0| (_System.array.Length $nw@0))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)) ($Box charType (ite (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#inv#0_0|))) (Lit charType (|char#FromInt| 0))) (|char#FromInt| 97) ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField |i#inv#0_0|)))))))
 :qid |Arraysdfy.224:10|
 :skolemid |7569|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField |i#inv#0_0|)))
)) (= call0formal@_module._default.PrintArray$A@0 Tclass._module.xchar))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 5) (- 0 11)) (<= 0 (LitInt 4))) (=> (<= 0 (LitInt 4)) (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass._module.xBV10))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (LitInt 4)))) (=> (and (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@3)) (and ($IsHeapAnchor $Heap@3) (= call0formal@_module._default.PrintArray$A@0@@0 Tclass._module.xBV10))) (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4)))) (and (=> (= (ControlFlow 0 5) (- 0 10)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? Tclass._module.xYes))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 3)))) (=> (and (and (and (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@2) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@5)) (and ($IsHeapAnchor $Heap@5) (= call0formal@_module._default.PrintArray$A@0@@1 Tclass._module.xYes))) (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@9))
)) ($HeapSucc $Heap@5 $Heap@6)))) (and (=> (= (ControlFlow 0 5) (- 0 9)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array? Tclass._module.xnByte))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@3) alloc)))) (= (_System.array.Length $nw@3) (LitInt 5)))) (=> (and (and (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@3) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@7)) (and ($IsHeapAnchor $Heap@7) (= call0formal@_module._default.PrintArray$A@0@@2 Tclass._module.xnByte))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@10)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@10))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array? Tclass._module.xnShort))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@4) alloc)))) (= (_System.array.Length $nw@4) (LitInt 5)))) (=> (and (and (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 $nw@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@4) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@9)) (and ($IsHeapAnchor $Heap@9) (= call0formal@_module._default.PrintArray$A@0@@3 Tclass._module.xnShort))) (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@11)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@11))
)) ($HeapSucc $Heap@9 $Heap@10)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array? Tclass._module.xnInt))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@5) alloc)))) (= (_System.array.Length $nw@5) (LitInt 5)))) (=> (and (and (and (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 $nw@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@5) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@11)) (and ($IsHeapAnchor $Heap@11) (= call0formal@_module._default.PrintArray$A@0@@4 Tclass._module.xnInt))) (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@12)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@12))
)) ($HeapSucc $Heap@11 $Heap@12)))) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (=> (and (and (and (and (or (not (= $nw@6 null)) (not true)) ($Is refType $nw@6 (Tclass._System.array? Tclass._module.xnLong))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@6) alloc)))) (= (_System.array.Length $nw@6) (LitInt 5)))) (and (and (= $Heap@13 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@12 $nw@6 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@6) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@13)) (and ($IsHeapAnchor $Heap@13) (= call0formal@_module._default.PrintArray$A@0@@5 Tclass._module.xnLong)))) (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@13)))
 :qid |Arraysdfy.18:8|
 :skolemid |7471|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@13))
)) ($HeapSucc $Heap@13 $Heap@14))) (and (and ($Is DatatypeTypeType |kitchenSink#0@0| (Tclass._System.Tuple7 Tclass._module.xchar Tclass._module.xBV10 Tclass._module.xYes Tclass._module.xnByte Tclass._module.xnShort Tclass._module.xnInt Tclass._module.xnLong)) ($IsAlloc DatatypeTypeType |kitchenSink#0@0| (Tclass._System.Tuple7 Tclass._module.xchar Tclass._module.xBV10 Tclass._module.xYes Tclass._module.xnByte Tclass._module.xnShort Tclass._module.xnInt Tclass._module.xnLong) $Heap@14)) (and (_System.Tuple7.___hMake7_q |kitchenSink#0@0|) (_System.Tuple7.___hMake7_q |kitchenSink#0@0|))))) (and (=> (= (ControlFlow 0 5) 2) anon15_Then_correct) (=> (= (ControlFlow 0 5) 4) anon15_Else_correct)))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass._module.xchar))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 3)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 28) 27) anon12_Then_correct) (=> (= (ControlFlow 0 28) 5) anon12_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |aa#0| (Tclass._System.array Tclass._module.xchar)) ($IsAlloc refType |aa#0| (Tclass._System.array Tclass._module.xchar) $Heap)) true) (=> (and (and (and (and (and ($Is refType |vv#0| (Tclass._System.array Tclass._module.xBV10)) ($IsAlloc refType |vv#0| (Tclass._System.array Tclass._module.xBV10) $Heap)) true) (and (and ($Is refType |yy#0| (Tclass._System.array Tclass._module.xYes)) ($IsAlloc refType |yy#0| (Tclass._System.array Tclass._module.xYes) $Heap)) true)) (and (and (and ($Is refType |a0#0| (Tclass._System.array Tclass._module.xnByte)) ($IsAlloc refType |a0#0| (Tclass._System.array Tclass._module.xnByte) $Heap)) true) (and (and ($Is refType |a1#0| (Tclass._System.array Tclass._module.xnShort)) ($IsAlloc refType |a1#0| (Tclass._System.array Tclass._module.xnShort) $Heap)) true))) (and (and (and (and ($Is refType |a2#0| (Tclass._System.array Tclass._module.xnInt)) ($IsAlloc refType |a2#0| (Tclass._System.array Tclass._module.xnInt) $Heap)) true) (and (and ($Is refType |a3#0| (Tclass._System.array Tclass._module.xnLong)) ($IsAlloc refType |a3#0| (Tclass._System.array Tclass._module.xnLong) $Heap)) true)) (and (and (and ($Is DatatypeTypeType |kitchenSink#0| (Tclass._System.Tuple7 Tclass._module.xchar Tclass._module.xBV10 Tclass._module.xYes Tclass._module.xnByte Tclass._module.xnShort Tclass._module.xnInt Tclass._module.xnLong)) ($IsAlloc DatatypeTypeType |kitchenSink#0| (Tclass._System.Tuple7 Tclass._module.xchar Tclass._module.xBV10 Tclass._module.xYes Tclass._module.xnByte Tclass._module.xnShort Tclass._module.xnInt Tclass._module.xnLong) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 30) 28))))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
