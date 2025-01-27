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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |ArrayAllocationInitialization.__default.CharF#requires| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun ArrayAllocationInitialization.__default.CharF (Int) T@U)
(declare-fun |ArrayAllocationInitialization.__default.CharF#canCall| (Int) Bool)
(declare-fun |char#Plus| (T@U T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |Seq#FromArray| (T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun |ArrayAllocationInitialization.__default.CharF#Handle| () T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSeq alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 tytagFamily$nat tytagFamily$array |tytagFamily$_#Func1|)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |4058|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |4044|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
 :qid |unknown.0:0|
 :skolemid |4064|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3808|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s i v) n) (|Seq#Index| s n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |3912|
 :pattern ( (|Seq#Index| (|Seq#Update| s i v) n))
)))
(assert (= (Ctor HandleTypeType) 4))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0) ($IsBox bx t0))
 :qid |unknown.0:0|
 :skolemid |4088|
 :pattern ( ($IsBox bx u0))
 :pattern ( ($IsBox bx t0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1) ($IsBox bx@@0 u1))
 :qid |unknown.0:0|
 :skolemid |4089|
 :pattern ( ($IsBox bx@@0 t1))
 :pattern ( ($IsBox bx@@0 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |4090|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1@@0 (MapType0Store t0@@0 t1@@0 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0@@0 u1@@0 (MapType0Store u0@@0 u1@@0 m@@0 x0@@0 val@@0) y0) (MapType0Select u0@@0 u1@@0 m@@0 y0)))
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
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4057|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((|i#0| Int) ) (!  (=> (<= (LitInt 0) |i#0|) (= (|ArrayAllocationInitialization.__default.CharF#requires| |i#0|) true))
 :qid |Arraysdfy.570:18|
 :skolemid |4411|
 :pattern ( (|ArrayAllocationInitialization.__default.CharF#requires| |i#0|))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |3801|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |3802|
 :pattern ( ($HeapSucc h k))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0@@0| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.CharF#canCall| (LitInt |i#0@@0|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0@@0|))) (= (ArrayAllocationInitialization.__default.CharF (LitInt |i#0@@0|)) (ite  (and (<= (LitInt 20) (LitInt |i#0@@0|)) (< |i#0@@0| 30)) (|char#Plus| (|char#FromInt| 97) (|char#FromInt| (LitInt (- |i#0@@0| 20)))) (|char#FromInt| 103))))
 :qid |Arraysdfy.570:18|
 :weight 3
 :skolemid |4413|
 :pattern ( (ArrayAllocationInitialization.__default.CharF (LitInt |i#0@@0|)))
))))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |3700|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |3698|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |4084|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@2 T@U) ($o@@1 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@1)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) _System.array$arg@@2 $h@@2))
 :qid |unknown.0:0|
 :skolemid |4055|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3709|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@2) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@2 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |4076|
))) (= (Requires1 t0@@2 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |4077|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |4078|
))) (= (Requires1 t0@@3 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |4079|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |4043|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4063|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3722|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3794|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3793|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@4) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |4072|
))) (= (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |4073|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@5) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |4074|
))) (= (Reads1 t0@@5 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |4075|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@6) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |4080|
))) (= (Apply1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |4081|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@7) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@7 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |4082|
))) (= (Apply1 t0@@7 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |4083|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (= (Ctor charType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0@@1| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.CharF#canCall| |i#0@@1|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0@@1|))) ($Is charType (ArrayAllocationInitialization.__default.CharF |i#0@@1|) TChar))
 :qid |Arraysdfy.570:18|
 :skolemid |4410|
 :pattern ( (ArrayAllocationInitialization.__default.CharF |i#0@@1|))
))))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |4051|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |4060|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((s0 T@U) (s1 T@U) ) (! (= (|Seq#Length| (|Seq#Append| s0 s1)) (+ (|Seq#Length| s0) (|Seq#Length| s1)))
 :qid |DafnyPreludebpl.1153:15|
 :skolemid |3909|
 :pattern ( (|Seq#Length| (|Seq#Append| s0 s1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |4042|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@2 T@U) ) (! (= ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@2 null) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |4056|
 :pattern ( ($Is refType $o@@2 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|char#Plus| a b) (|char#FromInt| (+ (|char#ToInt| a) (|char#ToInt| b))))
 :qid |DafnyPreludebpl.142:15|
 :skolemid |3706|
 :pattern ( (|char#Plus| a b))
)))
(assert (forall ((h@@3 T@U) (a@@0 T@U) ) (! (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| (|Seq#FromArray| h@@3 a@@0)))) (= (|Seq#Index| (|Seq#FromArray| h@@3 a@@0) i@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@0) (IndexField i@@0))))
 :qid |DafnyPreludebpl.1328:11|
 :skolemid |3945|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 a@@0) (IndexField i@@0)))
 :pattern ( (|Seq#Index| (|Seq#FromArray| h@@3 a@@0) i@@0))
))
 :qid |DafnyPreludebpl.1326:15|
 :skolemid |3946|
 :pattern ( (|Seq#FromArray| h@@3 a@@0))
)))
(assert (forall ((f@@7 T@U) (t0@@8 T@U) (t1@@8 T@U) (h@@4 T@U) ) (!  (=> (and ($IsGoodHeap h@@4) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@4)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@8 h@@4) (Requires1 t0@@8 t1@@8 h@@4 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@8 t1@@8 h@@4 f@@7 bx0@@6) t1@@8 h@@4))
 :qid |unknown.0:0|
 :skolemid |4094|
 :pattern ( (Apply1 t0@@8 t1@@8 h@@4 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |4095|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|i#0@@2| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.CharF#canCall| |i#0@@2|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0@@2|))) (= (ArrayAllocationInitialization.__default.CharF |i#0@@2|) (ite  (and (<= (LitInt 20) |i#0@@2|) (< |i#0@@2| 30)) (|char#Plus| (|char#FromInt| 97) (|char#FromInt| (- |i#0@@2| 20))) (|char#FromInt| 103))))
 :qid |Arraysdfy.570:18|
 :skolemid |4412|
 :pattern ( (ArrayAllocationInitialization.__default.CharF |i#0@@2|))
))))
(assert (forall ((a@@1 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@1 b@@0) (= a@@1 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3833|
 :pattern ( (|Set#Equal| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3800|
 :pattern ( ($HeapSucc a@@2 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((f@@8 T@U) (t0@@9 T@U) (t1@@9 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)) (forall ((h@@5 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@5) ($IsBox bx0@@7 t0@@9)) (Requires1 t0@@9 t1@@9 h@@5 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@9 t1@@9 h@@5 f@@8 bx0@@7) t1@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4086|
 :pattern ( (Apply1 t0@@9 t1@@9 h@@5 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |4087|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3710|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TChar) (and (= ($Box charType ($Unbox charType bx@@4)) bx@@4) ($Is charType ($Unbox charType bx@@4) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |3713|
 :pattern ( ($IsBox bx@@4 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3721|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |3795|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3904|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |4066|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |4067|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((v@@3 T@U) (t0@@10 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@10) h@@6) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i@@1) t0@@10 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3756|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3757|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@10) h@@6))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3690|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3691|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((i@@2 Int) ) (! (= (FDim (IndexField i@@2)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |3786|
 :pattern ( (IndexField i@@2))
)))
(assert (forall ((i@@3 Int) ) (! (= (IndexField_Inverse (IndexField i@@3)) i@@3)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |3787|
 :pattern ( (IndexField i@@3))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |4052|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |4061|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3708|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((h@@7 T@U) (i@@4 Int) (v@@4 T@U) (a@@3 T@U) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (_System.array.Length a@@3))) (= (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 a@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 a@@3) (IndexField i@@4) v@@4)) a@@3) (|Seq#Update| (|Seq#FromArray| h@@7 a@@3) i@@4 v@@4)))
 :qid |DafnyPreludebpl.1343:15|
 :skolemid |3948|
 :pattern ( (|Seq#FromArray| (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 a@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 a@@3) (IndexField i@@4) v@@4)) a@@3))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@3)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |4059|
 :pattern ( (_System.array.Length $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall (($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Requires1 Tclass._System.nat TChar $heap |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0|) (|ArrayAllocationInitialization.__default.CharF#requires| (U_2_int ($Unbox intType |$fh$0x#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4444|
 :pattern ( (Requires1 Tclass._System.nat TChar $heap |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0|))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@4 T@U) ($o@@4 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@4)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |4054|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (or (and (<= 0 n@@0) (< n@@0 55296)) (and (<= 57344 n@@0) (< n@@0 1114112))) (= (|char#ToInt| (|char#FromInt| n@@0)) n@@0))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |3704|
 :pattern ( (|char#FromInt| n@@0))
)))
(assert (forall ((f@@9 T@U) (t0@@11 T@U) (t1@@10 T@U) (h@@8 T@U) ) (!  (=> ($IsGoodHeap h@@8) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@11 t1@@10) h@@8) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@11) ($IsAllocBox bx0@@8 t0@@11 h@@8)) (Requires1 t0@@11 t1@@10 h@@8 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@11 t1@@10 h@@8 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |4091|
 :pattern ( (|Set#IsMember| (Reads1 t0@@11 t1@@10 h@@8 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |4092|
 :pattern ( (Apply1 t0@@11 t1@@10 h@@8 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@11 t1@@10 h@@8 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |4093|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@11 t1@@10) h@@8))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |4068|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| Int) ) (! (= (ArrayAllocationInitialization.__default.CharF |$fh$0x#0@@0|) ($Unbox charType (Apply1 Tclass._System.nat TChar $heap@@0 |ArrayAllocationInitialization.__default.CharF#Handle| ($Box intType (int_2_U |$fh$0x#0@@0|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4446|
 :pattern ( (ArrayAllocationInitialization.__default.CharF |$fh$0x#0@@0|) ($IsGoodHeap $heap@@0))
)))
(assert  (and (forall ((t0@@12 T@T) (t1@@11 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@12 t1@@11 t2 (MapType1Store t0@@12 t1@@11 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7820|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((h0@@5 T@U) (h1@@5 T@U) (a@@4 T@U) ) (!  (=> (and (and (and ($IsGoodHeap h0@@5) ($IsGoodHeap h1@@5)) ($HeapSucc h0@@5 h1@@5)) (= (MapType0Select refType (MapType0Type FieldType BoxType) h0@@5 a@@4) (MapType0Select refType (MapType0Type FieldType BoxType) h1@@5 a@@4))) (= (|Seq#FromArray| h0@@5 a@@4) (|Seq#FromArray| h1@@5 a@@4)))
 :qid |DafnyPreludebpl.1338:15|
 :skolemid |3947|
 :pattern ( (|Seq#FromArray| h1@@5 a@@4) ($HeapSucc h0@@5 h1@@5))
)))
(assert (forall ((s@@1 T@U) (i@@5 Int) (v@@5 T@U) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| s@@1))) (= (|Seq#Length| (|Seq#Update| s@@1 i@@5 v@@5)) (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |3911|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@1 i@@5 v@@5)))
)))
(assert (forall ((h@@9 T@U) (a@@5 T@U) ) (! (= (|Seq#Length| (|Seq#FromArray| h@@9 a@@5)) (_System.array.Length a@@5))
 :qid |DafnyPreludebpl.1323:15|
 :skolemid |3944|
 :pattern ( (|Seq#Length| (|Seq#FromArray| h@@9 a@@5)))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |4065|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@13 T@U) (t1@@12 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@13) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@13 t1@@12)))) (|Set#Equal| (Reads1 t0@@13 t1@@12 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@13 t1@@12 $OneHeap f@@10 bx0@@9) (Requires1 t0@@13 t1@@12 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |4085|
 :pattern ( (Requires1 t0@@13 t1@@12 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@13 t1@@12 heap@@0 f@@10 bx0@@9))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3718|
 :pattern ( ($IsBox bx@@6 (TSeq t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |4053|
 :pattern ( ($IsBox bx@@7 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |4062|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |3705|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 Tclass._System.nat TChar $heap@@1 |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |4445|
 :pattern ( (|Set#IsMember| (Reads1 Tclass._System.nat TChar $heap@@1 |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0@@1|) $bx))
)))
(assert (forall ((h@@10 T@U) (r@@0 T@U) (f@@11 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@0) f@@11 x@@6))) ($HeapSucc h@@10 (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@0) f@@11 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |3799|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@0) f@@11 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@6 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@6 b@@2) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@6 o@@8) (|Set#IsMember| b@@2 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3831|
 :pattern ( (|Set#IsMember| a@@6 o@@8))
 :pattern ( (|Set#IsMember| b@@2 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3832|
 :pattern ( (|Set#Equal| a@@6 b@@2))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n@@1 Int) ) (!  (and (=> (< n@@1 (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1) (|Seq#Index| s0@@0 n@@1))) (=> (<= (|Seq#Length| s0@@0) n@@1) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1) (|Seq#Index| s1@@0 (- n@@1 (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3910|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n@@1))
)))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Apply1 Tclass._System.nat TChar $heap@@2 |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0@@2|) ($Box charType (ArrayAllocationInitialization.__default.CharF (U_2_int ($Unbox intType |$fh$0x#0@@2|)))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4443|
 :pattern ( (Apply1 Tclass._System.nat TChar $heap@@2 |ArrayAllocationInitialization.__default.CharF#Handle| |$fh$0x#0@@2|))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |3701|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |3699|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3905|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((h@@11 T@U) (v@@6 T@U) ) (! ($IsAlloc intType v@@6 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3744|
 :pattern ( ($IsAlloc intType v@@6 TInt h@@11))
)))
(assert (forall ((h@@12 T@U) (v@@7 T@U) ) (! ($IsAlloc charType v@@7 TChar h@@12)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |3747|
 :pattern ( ($IsAlloc charType v@@7 TChar h@@12))
)))
(assert (forall ((v@@8 T@U) (t0@@14 T@U) ) (! (= ($Is SeqType v@@8 (TSeq t0@@14)) (forall ((i@@6 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length| v@@8))) ($IsBox (|Seq#Index| v@@8 i@@6) t0@@14))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3736|
 :pattern ( (|Seq#Index| v@@8 i@@6))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3737|
 :pattern ( ($Is SeqType v@@8 (TSeq t0@@14)))
)))
(assert (forall ((v@@9 T@U) ) (! ($Is intType v@@9 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3723|
 :pattern ( ($Is intType v@@9 TInt))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is charType v@@10 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |3726|
 :pattern ( ($Is charType v@@10 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |a#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@1| () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |s#0@2| () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |s#0@3| () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |s#0@4| () T@U)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |s#0@5| () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |s#0@6| () T@U)
(declare-fun $nw@6 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |s#0@7| () T@U)
(declare-fun $nw@7 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |s#0| () T@U)
(set-info :boogie-vc-id Impl$$ArrayAllocationInitialization.__default.TestChar)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |$rhs#0@0| (LitInt 0)) (= |$rhs#1@0| (LitInt 5))) (=> (and (and ($Is refType |a#0@0| (Tclass._System.array TChar)) ($IsAlloc refType |a#0@0| (Tclass._System.array TChar) $Heap)) (= |s#0@0| (Lit SeqType |Seq#Empty|))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TChar))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) |$rhs#0@0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |s#0@1| (|Seq#Append| |s#0@0| (|Seq#FromArray| $Heap@0 $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? TChar))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) |$rhs#1@0|) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (=> (= |s#0@2| (|Seq#Append| |s#0@1| (|Seq#FromArray| $Heap@1 $nw@1))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 20)) (= |$rhs#0@0| 0)) (=> (= |$rhs#0@0| 0) (=> (and (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? TChar))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc))))) (and (and (= (_System.array.Length $nw@2) |$rhs#0@0|) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (=> (= |s#0@3| (|Seq#Append| |s#0@2| (|Seq#FromArray| $Heap@2 $nw@2))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= 0 (LitInt 0))) (=> (<= 0 (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (= (LitInt 0) 0)) (=> (= (LitInt 0) 0) (=> (and (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array? TChar))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc))))) (and (and (= (_System.array.Length $nw@3) (LitInt 0)) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= $nw@3 null)) (not true))) (=> (or (not (= $nw@3 null)) (not true)) (=> (= |s#0@4| (|Seq#Append| |s#0@3| (|Seq#FromArray| $Heap@3 $nw@3))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (and (=> (= (ControlFlow 0 2) (- 0 14)) (= |$rhs#1@0| 5)) (=> (= |$rhs#1@0| 5) (=> (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array? TChar))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc)))) (= (_System.array.Length $nw@4) |$rhs#1@0|))) (=> (and (and (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (IndexField 0))) (Lit charType (|char#FromInt| 97))) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (IndexField 1))) (Lit charType (|char#FromInt| 98)))) (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (IndexField 2))) (Lit charType (|char#FromInt| 99))) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (IndexField 3))) (Lit charType (|char#FromInt| 100))))) (and (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (IndexField 4))) (Lit charType (|char#FromInt| 101))) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= $nw@4 null)) (not true))) (=> (or (not (= $nw@4 null)) (not true)) (=> (= |s#0@5| (|Seq#Append| |s#0@4| (|Seq#FromArray| $Heap@4 $nw@4))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= 0 (LitInt 5))) (=> (<= 0 (LitInt 5)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (= (LitInt 5) 5)) (=> (= (LitInt 5) 5) (=> (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array? TChar))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc)))) (= (_System.array.Length $nw@5) (LitInt 5)))) (=> (and (and (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (IndexField 0))) (Lit charType (|char#FromInt| 97))) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (IndexField 1))) (Lit charType (|char#FromInt| 98)))) (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (IndexField 2))) (Lit charType (|char#FromInt| 99))) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (IndexField 3))) (Lit charType (|char#FromInt| 100))))) (and (and (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (IndexField 4))) (Lit charType (|char#FromInt| 101))) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $nw@5 null)) (not true))) (=> (or (not (= $nw@5 null)) (not true)) (=> (= |s#0@6| (|Seq#Append| |s#0@5| (|Seq#FromArray| $Heap@5 $nw@5))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (and (or (not (= $nw@6 null)) (not true)) ($Is refType $nw@6 (Tclass._System.array? TChar))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) alloc)))) (= (_System.array.Length $nw@6) |$rhs#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| |$rhs#0@0|)) (Requires1 Tclass._System.nat TChar $Heap@5 |ArrayAllocationInitialization.__default.CharF#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |Arraysdfy.686:10|
 :skolemid |4492|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| |$rhs#0@0|)) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) (IndexField |arrayinit#0#i0#0@@0|))) ($Unbox charType (Apply1 Tclass._System.nat TChar $Heap@5 |ArrayAllocationInitialization.__default.CharF#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0@@0|))))))
 :qid |Arraysdfy.686:10|
 :skolemid |4493|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) (IndexField |arrayinit#0#i0#0@@0|)))
)) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@6 null)) (not true))) (=> (or (not (= $nw@6 null)) (not true)) (=> (= |s#0@7| (|Seq#Append| |s#0@6| (|Seq#FromArray| $Heap@6 $nw@6))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (and (or (not (= $nw@7 null)) (not true)) ($Is refType $nw@7 (Tclass._System.array? TChar))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7) alloc)))) (= (_System.array.Length $nw@7) |$rhs#1@0|))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((|arrayinit#1#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#1#i0#0|) (< |arrayinit#1#i0#0| |$rhs#1@0|)) (Requires1 Tclass._System.nat TChar $Heap@6 |ArrayAllocationInitialization.__default.CharF#Handle| ($Box intType (int_2_U |arrayinit#1#i0#0|))))
 :qid |Arraysdfy.688:10|
 :skolemid |4494|
))) (=> (forall ((|arrayinit#1#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#1#i0#0@@0|) (< |arrayinit#1#i0#0@@0| |$rhs#1@0|)) (= ($Unbox charType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7) (IndexField |arrayinit#1#i0#0@@0|))) ($Unbox charType (Apply1 Tclass._System.nat TChar $Heap@6 |ArrayAllocationInitialization.__default.CharF#Handle| ($Box intType (int_2_U |arrayinit#1#i0#0@@0|))))))
 :qid |Arraysdfy.688:10|
 :skolemid |4495|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7) (IndexField |arrayinit#1#i0#0@@0|)))
)) (=> (and (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@7)) (and ($IsHeapAnchor $Heap@7) (= (ControlFlow 0 2) (- 0 1)))) (or (not (= $nw@7 null)) (not true)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TChar)) ($IsAlloc refType |a#0| (Tclass._System.array TChar) $Heap)) true) (=> (and (and (and ($Is SeqType |s#0| (TSeq TChar)) ($IsAlloc SeqType |s#0| (TSeq TChar) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 2))) anon0_correct)))))
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
