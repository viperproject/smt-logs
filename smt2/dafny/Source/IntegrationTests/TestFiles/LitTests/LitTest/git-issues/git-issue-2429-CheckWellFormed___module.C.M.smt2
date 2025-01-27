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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.T? () T@U)
(declare-fun Tagclass._module.T () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.C () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$T () T@U)
(declare-fun tytagFamily$C () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.T (T@U) T@U)
(declare-fun Tclass._module.T? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Update| (T@U Int T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._module.C () T@U)
(declare-fun implements$_module.T (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Q (T@U T@U) Bool)
(declare-fun |_module.__default.Q#canCall| (T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun _module.__default.P (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass._module.T?_0 (T@U) T@U)
(declare-fun Tclass._module.T_0 (T@U) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.T? Tagclass._module.T Tagclass._module.C? Tagclass._module.C tytagFamily$object tytagFamily$T tytagFamily$C)
)
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.T$A T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.T _module.T$A) $h) ($IsAlloc refType |c#0| (Tclass._module.T? _module.T$A) $h))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.T _module.T$A) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.T? _module.T$A) $h))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((s T@U) (i Int) (v T@U) (n Int) ) (!  (=> (and (<= 0 n) (< n (|Seq#Length| s))) (and (=> (= i n) (= (|Seq#Index| (|Seq#Update| s i v) n) v)) (=> (or (not (= i n)) (not true)) (= (|Seq#Index| (|Seq#Update| s i v) n) (|Seq#Index| s n)))))
 :qid |DafnyPreludebpl.1171:15|
 :skolemid |229|
 :pattern ( (|Seq#Index| (|Seq#Update| s i v) n))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1) ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass._module.C? $h@@1))
)))
(assert (implements$_module.T Tclass._module.C? Tclass._System.object))
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
(assert (forall ((_module.T$A@@0 T@U) ($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._module.T? _module.T$A@@0) $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._module.T? _module.T$A@@0) $h@@2))
)))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@2 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.C? $h@@4)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.C? $h@@4))
)))
(assert (forall ((bx T@U) ($h@@5 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.C? $h@@5) ($IsGoodHeap $h@@5)) ($IsAllocBox bx (Tclass._module.T? Tclass._System.object) $h@@5))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAllocBox bx Tclass._module.C? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (= (Ctor SeqType) 7))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Q$A T@U) (|s#0| T@U) ) (!  (=> (or (|_module.__default.Q#canCall| _module._default.Q$A |s#0|) (and (< 1 $FunctionContextHeight) ($Is SeqType |s#0| (TSeq _module._default.Q$A)))) (=> (_module.__default.Q _module._default.Q$A |s#0|) (_module.__default.P _module._default.Q$A |s#0|)))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (_module.__default.Q _module._default.Q$A |s#0|))
))))
(assert (forall ((s@@0 T@U) (bx@@0 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s@@0 (TSeq t)) ($IsBox bx@@0 t)) ($Is SeqType (|Seq#Build| s@@0 bx@@0) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s@@0 bx@@0) (TSeq t)))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (forall ((s@@1 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@1 v@@0)) (+ 1 (|Seq#Length| s@@1)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@1 v@@0))
)))
(assert (forall ((_module.T$A@@1 T@U) (|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| (Tclass._module.T _module.T$A@@1))  (and ($Is refType |c#0@@2| (Tclass._module.T? _module.T$A@@1)) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.T _module.T$A@@1)))
 :pattern ( ($Is refType |c#0@@2| (Tclass._module.T? _module.T$A@@1)))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0) ($IsAlloc T@@1 v@@1 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t@@0 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@2 h@@2) ($IsAlloc T@@2 v@@2 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@2 t@@2 h@@2))
)))
(assert (forall ((_module.T$A@@2 T@U) ) (!  (and (= (Tag (Tclass._module.T? _module.T$A@@2)) Tagclass._module.T?) (= (TagFamily (Tclass._module.T? _module.T$A@@2)) tytagFamily$T))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.T? _module.T$A@@2))
)))
(assert (forall ((_module.T$A@@3 T@U) ) (!  (and (= (Tag (Tclass._module.T _module.T$A@@3)) Tagclass._module.T) (= (TagFamily (Tclass._module.T _module.T$A@@3)) tytagFamily$T))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( (Tclass._module.T _module.T$A@@3))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.C?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($IsBox bx@@4 Tclass._module.C?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._module.C) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._module.C)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@5 Tclass._module.C))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass._System.object)  (and ($Is refType |c#0@@3| Tclass._System.object?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@3| Tclass._System.object?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass._module.C)  (and ($Is refType |c#0@@4| Tclass._module.C?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@4| Tclass._module.C?))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@3 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@0) v@@3)) (=> (or (not (= i@@0 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@0) (|Seq#Index| s@@2 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@3) i@@0))
)))
(assert (forall (($o@@3 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@3 Tclass._module.C? $heap) ($IsAlloc refType $o@@3 (Tclass._module.T? Tclass._System.object) $heap))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( ($IsAlloc refType $o@@3 Tclass._module.C? $heap))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((v@@4 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@4) t@@3) ($Is T@@3 v@@4 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@4) t@@3))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@5))) ($IsAllocBox (|Seq#Index| v@@5 i@@1) t0@@0 h@@3))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |73|
 :pattern ( (|Seq#Index| v@@5 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |74|
 :pattern ( ($IsAlloc SeqType v@@5 (TSeq t0@@0) h@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((_module.T$A@@4 T@U) ) (! (= (Tclass._module.T?_0 (Tclass._module.T? _module.T$A@@4)) _module.T$A@@4)
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Tclass._module.T? _module.T$A@@4))
)))
(assert (forall ((_module.T$A@@5 T@U) ) (! (= (Tclass._module.T_0 (Tclass._module.T _module.T$A@@5)) _module.T$A@@5)
 :qid |unknown.0:0|
 :skolemid |489|
 :pattern ( (Tclass._module.T _module.T$A@@5))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((_module.T$A@@6 T@U) ($o@@5 T@U) ) (! (= ($Is refType $o@@5 (Tclass._module.T? _module.T$A@@6))  (or (= $o@@5 null) (implements$_module.T (dtype $o@@5) _module.T$A@@6)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($Is refType $o@@5 (Tclass._module.T? _module.T$A@@6)))
)))
(assert (forall ((s@@4 T@U) (i@@2 Int) (v@@6 T@U) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length| s@@4))) (= (|Seq#Length| (|Seq#Update| s@@4 i@@2 v@@6)) (|Seq#Length| s@@4)))
 :qid |DafnyPreludebpl.1167:15|
 :skolemid |228|
 :pattern ( (|Seq#Length| (|Seq#Update| s@@4 i@@2 v@@6)))
)))
(assert (forall ((s@@5 T@U) (val@@1 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@1)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@1)) val@@1))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@5 val@@1))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((_module.T$A@@7 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.T? _module.T$A@@7)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.T? _module.T$A@@7))))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( ($IsBox bx@@7 (Tclass._module.T? _module.T$A@@7)))
)))
(assert (forall ((_module.T$A@@8 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._module.T _module.T$A@@8)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._module.T _module.T$A@@8))))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@8 (Tclass._module.T _module.T$A@@8)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.C?) ($Is refType $o@@6 (Tclass._module.T? Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($Is refType $o@@6 Tclass._module.C?))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass._module.C?) ($IsBox bx@@9 (Tclass._module.T? Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($IsBox bx@@9 Tclass._module.C?))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@2 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@2) x0@@1 x1) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@3 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@3) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@4 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@4) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@7))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |525|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((v@@7 T@U) (t0@@2 T@U) ) (! (= ($Is SeqType v@@7 (TSeq t0@@2)) (forall ((i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length| v@@7))) ($IsBox (|Seq#Index| v@@7 i@@3) t0@@2))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@7 i@@3))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@7 (TSeq t0@@2)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap () T@U)
(declare-fun |a#0| () T@U)
(declare-fun this () T@U)
(declare-fun |##s#2@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##s#0@0| () T@U)
(declare-fun |_module.__default.P#canCall| (T@U T@U) Bool)
(declare-fun |##s#1@0| () T@U)
(set-info :boogie-vc-id CheckWellFormed$$_module.C.M)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon7_correct  (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8)) (|Set#IsMember| (ite (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) |Set#Empty| (|Set#UnionOne| |Set#Empty| ($Box refType this))) ($Box refType $o@@8))))
 :qid |gitissue2429dfy.24:10|
 :skolemid |505|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8))
))) (and ($HeapSucc $Heap $Heap@0) (= (ControlFlow 0 2) (- 0 1)))) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|))))))))
(let ((anon9_Else_correct  (=> (and (not (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|)))) (= (ControlFlow 0 4) 2)) anon7_correct)))
(let ((anon9_Then_correct  (=> (and (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) (= (ControlFlow 0 3) 2)) anon7_correct)))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|))))) (=> (= |##s#2@0| (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) (=> (and ($IsAlloc SeqType |##s#2@0| (TSeq Tclass._System.object) $Heap) (|_module.__default.Q#canCall| Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|)))) (and (=> (= (ControlFlow 0 5) 3) anon9_Then_correct) (=> (= (ControlFlow 0 5) 4) anon9_Else_correct))))))))
(let ((anon8_Else_correct  (=> (and (not (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|)))) (= (ControlFlow 0 8) 5)) anon4_correct)))
(let ((anon8_Then_correct  (=> (and (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) (= (ControlFlow 0 7) 5)) anon4_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap alloc (ite (_module.__default.Q Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) |Set#Empty| (|Set#UnionOne| |Set#Empty| ($Box refType this))))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|))))) (=> (and (and (= |##s#0@0| (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) ($IsAlloc SeqType |##s#0@0| (TSeq Tclass._System.object) $Heap)) (and (|_module.__default.P#canCall| Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) (_module.__default.P Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)))))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (|Seq#Length| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|))))) (=> (= |##s#1@0| (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|))) (=> (and ($IsAlloc SeqType |##s#1@0| (TSeq Tclass._System.object) $Heap) (|_module.__default.Q#canCall| Tclass._System.object (|Seq#Update| (|Seq#Build| |Seq#Empty| ($Box refType |a#0|)) (LitInt 0) ($Box refType |a#0|)))) (and (=> (= (ControlFlow 0 9) 7) anon8_Then_correct) (=> (= (ControlFlow 0 9) 8) anon8_Else_correct))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.C) ($IsAlloc refType this Tclass._module.C $Heap)))) (and (and ($Is refType |a#0| Tclass._System.object) ($IsAlloc refType |a#0| Tclass._System.object $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 12) 9)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
