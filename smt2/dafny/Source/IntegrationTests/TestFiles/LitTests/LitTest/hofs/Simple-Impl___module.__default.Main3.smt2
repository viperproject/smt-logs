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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
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
(declare-fun _module.__default.Id (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |_module.__default.Id#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |Requires1#Handle| (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.__default.Id#Handle| (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Reads1#Handle| (T@U T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun |_module.__default.Id#requires| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#30| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#10| () T@U)
(declare-fun |lambda#3| (T@U) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1|)
)
(assert (= (Ctor BoxType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Id$A T@U) (|x#0| T@U) ) (!  (=> (or (|_module.__default.Id#canCall| _module._default.Id$A (Lit BoxType |x#0|)) (and (< 0 $FunctionContextHeight) ($IsBox |x#0| _module._default.Id$A))) (= (_module.__default.Id _module._default.Id$A (Lit BoxType |x#0|)) (Lit BoxType |x#0|)))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |554|
 :pattern ( (_module.__default.Id _module._default.Id$A (Lit BoxType |x#0|)))
))))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Requires1 |#$T0| |#$R| $heap $self |$fh$0x#0|) (U_2_bool ($Unbox boolType (Apply1 |#$T0| TBool $heap (|Requires1#Handle| |#$T0| |#$R| $self) |$fh$0x#0|))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (Requires1 |#$T0| |#$R| $heap $self |$fh$0x#0|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Apply1 |#$T0@@0| TBool $heap@@0 (|Requires1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$0x#0@@0|) ($Box boolType (bool_2_U (Requires1 |#$T0@@0| |#$R@@0| $heap@@0 $self@@0 |$fh$0x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (Apply1 |#$T0@@0| TBool $heap@@0 (|Requires1#Handle| |#$T0@@0| |#$R@@0| $self@@0) |$fh$0x#0@@0|))
)))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#x#0|)) ($IsBox |$l#0#x#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#x#0|))
)))
(assert (forall ((_module._default.Id$A@@0 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (_module.__default.Id _module._default.Id$A@@0 |$fh$0x#0@@1|) (Apply1 _module._default.Id$A@@0 _module._default.Id$A@@0 $heap@@1 (|_module.__default.Id#Handle| _module._default.Id$A@@0) |$fh$0x#0@@1|))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (_module.__default.Id _module._default.Id$A@@0 |$fh$0x#0@@1|) ($IsGoodHeap $heap@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall (($bx T@U) (|#$T0@@1| T@U) (|#$R@@1| T@U) ($self@@1 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (!  (=> (Requires1 |#$T0@@1| |#$R@@1| $heap@@2 $self@@1 |$fh$0x#0@@2|) (= (|Set#IsMember| (Reads1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@2 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$0x#0@@2|) $bx) (|Set#IsMember| (Reads1 |#$T0@@1| |#$R@@1| $heap@@2 $self@@1 |$fh$0x#0@@2|) $bx)))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@1| (TSet Tclass._System.object?) $heap@@2 (|Reads1#Handle| |#$T0@@1| |#$R@@1| $self@@1) |$fh$0x#0@@2|) $bx))
)))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Id$A@@1 T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.Id#canCall| _module._default.Id$A@@1 |x#0@@0|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@0| _module._default.Id$A@@1))) ($IsBox (_module.__default.Id _module._default.Id$A@@1 |x#0@@0|) _module._default.Id$A@@1))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( (_module.__default.Id _module._default.Id$A@@1 |x#0@@0|))
))))
(assert (forall ((_module._default.Id$A@@2 T@U) ($heap@@3 T@U) (|$fh$0x#0@@3| T@U) ) (! (= (Requires1 _module._default.Id$A@@2 _module._default.Id$A@@2 $heap@@3 (|_module.__default.Id#Handle| _module._default.Id$A@@2) |$fh$0x#0@@3|) (|_module.__default.Id#requires| _module._default.Id$A@@2 |$fh$0x#0@@3|))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (Requires1 _module._default.Id$A@@2 _module._default.Id$A@@2 $heap@@3 (|_module.__default.Id#Handle| _module._default.Id$A@@2) |$fh$0x#0@@3|))
)))
(assert (forall (($bx@@0 T@U) (|#$T0@@2| T@U) (|#$R@@2| T@U) ($self@@2 T@U) ($heap@@4 T@U) (|$fh$0x#0@@4| T@U) ) (!  (=> (Requires1 |#$T0@@2| |#$R@@2| $heap@@4 $self@@2 |$fh$0x#0@@4|) (= (|Set#IsMember| (Reads1 |#$T0@@2| TBool $heap@@4 (|Requires1#Handle| |#$T0@@2| |#$R@@2| $self@@2) |$fh$0x#0@@4|) $bx@@0) (|Set#IsMember| (Reads1 |#$T0@@2| |#$R@@2| $heap@@4 $self@@2 |$fh$0x#0@@4|) $bx@@0)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@2| TBool $heap@@4 (|Requires1#Handle| |#$T0@@2| |#$R@@2| $self@@2) |$fh$0x#0@@4|) $bx@@0))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
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
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((_module._default.Id$A@@3 T@U) ($heap@@5 T@U) (|$fh$0x#0@@5| T@U) ) (! (= (Apply1 _module._default.Id$A@@3 _module._default.Id$A@@3 $heap@@5 (|_module.__default.Id#Handle| _module._default.Id$A@@3) |$fh$0x#0@@5|) (_module.__default.Id _module._default.Id$A@@3 |$fh$0x#0@@5|))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (Apply1 _module._default.Id$A@@3 _module._default.Id$A@@3 $heap@@5 (|_module.__default.Id#Handle| _module._default.Id$A@@3) |$fh$0x#0@@5|))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ($self@@3 T@U) ($heap@@6 T@U) (|$fh$0x#0@@6| T@U) ) (! (= (Requires1 |#$T0@@3| TBool $heap@@6 (|Requires1#Handle| |#$T0@@3| |#$R@@3| $self@@3) |$fh$0x#0@@6|) true)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Requires1 |#$T0@@3| TBool $heap@@6 (|Requires1#Handle| |#$T0@@3| |#$R@@3| $self@@3) |$fh$0x#0@@6|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) (|f#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|) $h@@1) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0@@4| |#$R@@4|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@4| |#$R@@4|) $h@@1))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (|f#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|) $h@@2) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|) $h@@2))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) ($self@@4 T@U) ($heap@@7 T@U) (|$fh$0x#0@@7| T@U) ) (! (= (Reads1 |#$T0@@6| |#$R@@6| $heap@@7 $self@@4 |$fh$0x#0@@7|) ($Unbox SetType (Apply1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@7 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@4) |$fh$0x#0@@7|)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (Reads1 |#$T0@@6| |#$R@@6| $heap@@7 $self@@4 |$fh$0x#0@@7|))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Simpledfy.5:3|
 :skolemid |609|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((_module._default.Id$A@@4 T@U) (|x#0@@1| T@U) ) (!  (=> ($IsBox |x#0@@1| _module._default.Id$A@@4) (= (|_module.__default.Id#requires| _module._default.Id$A@@4 |x#0@@1|) true))
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( (|_module.__default.Id#requires| _module._default.Id$A@@4 |x#0@@1|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) ($self@@5 T@U) ($heap@@8 T@U) (|$fh$0x#0@@8| T@U) ) (! (= (Requires1 |#$T0@@7| (TSet Tclass._System.object?) $heap@@8 (|Reads1#Handle| |#$T0@@7| |#$R@@7| $self@@5) |$fh$0x#0@@8|) (Requires1 |#$T0@@7| |#$R@@7| $heap@@8 $self@@5 |$fh$0x#0@@8|))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (Requires1 |#$T0@@7| (TSet Tclass._System.object?) $heap@@8 (|Reads1#Handle| |#$T0@@7| |#$R@@7| $self@@5) |$fh$0x#0@@8|))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TBool) (and (= ($Box boolType ($Unbox boolType bx@@8)) bx@@8) ($Is boolType ($Unbox boolType bx@@8) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@8 TBool))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|)) |#$T0@@8|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@8| |#$R@@8|))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|)) |#$R@@9|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|)) |#$T0@@10|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) |#$R@@11|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) |#$T0@@12|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@13|)) |#$R@@13|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@14| |#$R@@14|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@14|) (Requires1 |#$T0@@14| |#$R@@14| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@14| |#$R@@14|)))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$R@@15| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@15|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@15| |#$R@@15|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@15|) (|Set#Equal| (Reads1 |#$T0@@15| |#$R@@15| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@15|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@16| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@16|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@16|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@16| |#$R@@16|)))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@17| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@17|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@17|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hPartialFunc1 |#$T0@@17| |#$R@@17|)))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@18| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#30| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |612|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#30| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.Id$A@@5 T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.Id#canCall| _module._default.Id$A@@5 |x#0@@2|) (and (< 0 $FunctionContextHeight) ($IsBox |x#0@@2| _module._default.Id$A@@5))) (= (_module.__default.Id _module._default.Id$A@@5 |x#0@@2|) |x#0@@2|))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (_module.__default.Id _module._default.Id$A@@5 |x#0@@2|))
))))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@19| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@19| |#$R@@19|))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@20| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@21| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@21| |#$R@@21|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@21| |#$R@@21|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@21| |#$R@@21|))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#y#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#10| |$l#0#heap#0@@0| |$l#0#y#0|) ($Box intType ($Unbox intType |$l#0#y#0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |610|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#10| |$l#0#heap#0@@0| |$l#0#y#0|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@22| T@U) ($self@@6 T@U) ($heap@@9 T@U) (|$fh$0x#0@@9| T@U) ) (! (= (Apply1 |#$T0@@22| (TSet Tclass._System.object?) $heap@@9 (|Reads1#Handle| |#$T0@@22| |#$R@@22| $self@@6) |$fh$0x#0@@9|) ($Box SetType (Reads1 |#$T0@@22| |#$R@@22| $heap@@9 $self@@6 |$fh$0x#0@@9|)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Apply1 |#$T0@@22| (TSet Tclass._System.object?) $heap@@9 (|Reads1#Handle| |#$T0@@22| |#$R@@22| $self@@6) |$fh$0x#0@@9|))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.Id$A@@6 T@U) (|x#0@@3| T@U) ) (!  (=> (and (or (|_module.__default.Id#canCall| _module._default.Id$A@@6 |x#0@@3|) (and (< 0 $FunctionContextHeight) (and ($IsBox |x#0@@3| _module._default.Id$A@@6) ($IsAllocBox |x#0@@3| _module._default.Id$A@@6 $Heap)))) ($IsGoodHeap $Heap)) ($IsAllocBox (_module.__default.Id _module._default.Id$A@@6 |x#0@@3|) _module._default.Id$A@@6 $Heap))
 :qid |Simpledfy.64:10|
 :skolemid |551|
 :pattern ( ($IsAllocBox (_module.__default.Id _module._default.Id$A@@6 |x#0@@3|) _module._default.Id$A@@6 $Heap))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall (($bx@@1 T@U) (_module._default.Id$A@@7 T@U) ($heap@@10 T@U) (|$fh$0x#0@@10| T@U) ) (! (= (|Set#IsMember| (Reads1 _module._default.Id$A@@7 _module._default.Id$A@@7 $heap@@10 (|_module.__default.Id#Handle| _module._default.Id$A@@7) |$fh$0x#0@@10|) $bx@@1) false)
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (|Set#IsMember| (Reads1 _module._default.Id$A@@7 _module._default.Id$A@@7 $heap@@10 (|_module.__default.Id#Handle| _module._default.Id$A@@7) |$fh$0x#0@@10|) $bx@@1))
)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
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
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@11)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@11))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#x#0@@0|) |l#0@@3|)
 :qid |Simpledfy.5:3|
 :skolemid |608|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#x#0@@0|))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is boolType v@@7 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@7 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun |id#0@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |id#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main3)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct true))
(let ((anon14_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@@0 |$lambdaHeap#0@0|) ($HeapSucc $Heap@@0 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon18_Else_correct true))
(let ((anon18_Then_correct true))
(let ((anon17_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@@0 |$lambdaHeap#1@0|) ($HeapSucc $Heap@@0 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 7) 5) anon18_Then_correct) (=> (= (ControlFlow 0 7) 6) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (|_module.__default.Id#canCall| (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|)) (= (ControlFlow 0 4) (- 0 3))) (forall ((|x#3| Int) ) (! (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType (int_2_U |x#3|))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#10| (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 2)))))))
 :qid |Simpledfy.73:17|
 :skolemid |565|
 :pattern ( ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType (int_2_U |x#3|)))))
)))))
(let ((anon16_Then_correct  (=> (and ($IsAlloc HandleTypeType |id#0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@0) (|_module.__default.Id#canCall| (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) (and (=> (= (ControlFlow 0 8) 7) anon17_Then_correct) (=> (= (ControlFlow 0 8) 4) anon17_Else_correct)))))
(let ((anon16_Else_correct true))
(let ((anon14_Else_correct  (=> (|_module.__default.Id#canCall| (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|)) (and (=> (= (ControlFlow 0 9) (- 0 10)) (forall ((|x#1| Int) ) (! (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType (int_2_U |x#1|))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#10| (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType (int_2_U |x#1|))))))
 :qid |Simpledfy.72:17|
 :skolemid |563|
 :pattern ( ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType (int_2_U |x#1|)))))
))) (=> (forall ((|x#1@@0| T@U) ) (! (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType |x#1@@0|)))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#10| (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))) ($Box intType |x#1@@0|)))))
 :qid |Simpledfy.72:17|
 :skolemid |563|
 :pattern ( ($Unbox intType (Apply1 TInt TInt $Heap@@0 ($Unbox HandleTypeType (_module.__default.Id (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) ($Box intType |x#1@@0|))))
)) (and (=> (= (ControlFlow 0 9) 8) anon16_Then_correct) (=> (= (ControlFlow 0 9) 2) anon16_Else_correct)))))))
(let ((anon13_Then_correct  (=> (and ($IsAlloc HandleTypeType |id#0@0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@0) (|_module.__default.Id#canCall| (Tclass._System.___hTotalFunc1 TInt TInt) ($Box HandleTypeType |id#0@0|))) (and (=> (= (ControlFlow 0 14) 13) anon14_Then_correct) (=> (= (ControlFlow 0 14) 9) anon14_Else_correct)))))
(let ((anon13_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#30| null $Heap@@0 alloc false)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |id#0@0| (|_module.__default.Id#Handle| TInt)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) (LitInt 3)) (and (=> (= (ControlFlow 0 15) 14) anon13_Then_correct) (=> (= (ControlFlow 0 15) 1) anon13_Else_correct))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and ($Is HandleTypeType |id#0| (Tclass._System.___hTotalFunc1 TInt TInt)) ($IsAlloc HandleTypeType |id#0| (Tclass._System.___hTotalFunc1 TInt TInt) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 15))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 4) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
