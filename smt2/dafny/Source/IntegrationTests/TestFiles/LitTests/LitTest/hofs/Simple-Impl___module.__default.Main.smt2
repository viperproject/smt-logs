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
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
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
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.MkId (T@U) T@U)
(declare-fun |_module.__default.MkId#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun |_module.__default.IntId#canCall| () Bool)
(declare-fun _module.__default.IntId () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun |lambda#10| () T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Reads1#Handle| (T@U T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun MapType2Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.DivZero2#canCall| () Bool)
(declare-fun _module.__default.DivZero2 () T@U)
(declare-fun |lambda#54| () T@U)
(declare-fun |lambda#55| (T@U T@U Int) T@U)
(declare-fun |lambda#57| (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#0| () T@U)
(declare-fun Div (Int Int) Int)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |lambda#30| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TBool TInt TagBool TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._System.___hFunc2 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| |tytagFamily$_#Func2|)
)
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
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
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
(assert (forall ((|#$T0@@1| T@U) (|#$T1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@0| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@0| |#$R@@2|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@0| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@1| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@1| |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@1| |#$R@@3|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$T1@@2| T@U) (|#$R@@4| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@4| |#$T1@@2| |#$R@@4|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@4| |#$T1@@2| |#$R@@4|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@4| |#$T1@@2| |#$R@@4|))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MkId$A T@U) ) (!  (=> (or (|_module.__default.MkId#canCall| _module._default.MkId$A) (< 0 $FunctionContextHeight)) ($Is HandleTypeType (_module.__default.MkId _module._default.MkId$A) (Tclass._System.___hTotalFunc1 _module._default.MkId$A _module._default.MkId$A)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( (_module.__default.MkId _module._default.MkId$A))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.IntId#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.IntId (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#10| (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.IntId#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.IntId (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#10| (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@3| T@U) (|#$R@@5| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|)))
)))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 u0@@2) ($IsBox bx@@1 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@1 u0@@2))
 :pattern ( ($IsBox bx@@1 t0@@2))
))) (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 t1@@2) ($IsBox bx@@2 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@2 t1@@2))
 :pattern ( ($IsBox bx@@2 u1@@2))
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
(assert (forall (($bx T@U) (|#$T0@@6| T@U) (|#$R@@6| T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (!  (=> (Requires1 |#$T0@@6| |#$R@@6| $heap@@1 $self@@1 |$fh$0x#0@@1|) (= (|Set#IsMember| (Reads1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@1 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@1) |$fh$0x#0@@1|) $bx) (|Set#IsMember| (Reads1 |#$T0@@6| |#$R@@6| $heap@@1 $self@@1 |$fh$0x#0@@1|) $bx)))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@6| (TSet Tclass._System.object?) $heap@@1 (|Reads1#Handle| |#$T0@@6| |#$R@@6| $self@@1) |$fh$0x#0@@1|) $bx))
)))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall (($bx@@0 T@U) (|#$T0@@7| T@U) (|#$R@@7| T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (!  (=> (Requires1 |#$T0@@7| |#$R@@7| $heap@@2 $self@@2 |$fh$0x#0@@2|) (= (|Set#IsMember| (Reads1 |#$T0@@7| TBool $heap@@2 (|Requires1#Handle| |#$T0@@7| |#$R@@7| $self@@2) |$fh$0x#0@@2|) $bx@@0) (|Set#IsMember| (Reads1 |#$T0@@7| |#$R@@7| $heap@@2 $self@@2 |$fh$0x#0@@2|) $bx@@0)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@7| TBool $heap@@2 (|Requires1#Handle| |#$T0@@7| |#$R@@7| $self@@2) |$fh$0x#0@@2|) $bx@@0))
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
(assert  (and (forall ((t0@@4 T@T) (t1@@4 T@T) (t2@@0 T@T) (t3 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (x1@@2 T@U) (x2 T@U) ) (! (= (MapType2Select t0@@4 t1@@4 t2@@0 t3 (MapType2Store t0@@4 t1@@4 t2@@0 t3 m@@4 x0@@4 x1@@2 x2 val@@4) x0@@4 x1@@2 x2) val@@4)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (and (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@1 T@T) (u3 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) (x2@@0 T@U) (y0@@2 T@U) (y1@@1 T@U) (y2 T@U) ) (!  (or (= x0@@5 y0@@2) (= (MapType2Select u0@@3 u1@@3 u2@@1 u3 (MapType2Store u0@@3 u1@@3 u2@@1 u3 m@@5 x0@@5 x1@@3 x2@@0 val@@5) y0@@2 y1@@1 y2) (MapType2Select u0@@3 u1@@3 u2@@1 u3 m@@5 y0@@2 y1@@1 y2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@2 T@T) (u3@@0 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (x2@@1 T@U) (y0@@3 T@U) (y1@@2 T@U) (y2@@0 T@U) ) (!  (or (= x1@@4 y1@@2) (= (MapType2Select u0@@4 u1@@4 u2@@2 u3@@0 (MapType2Store u0@@4 u1@@4 u2@@2 u3@@0 m@@6 x0@@6 x1@@4 x2@@1 val@@6) y0@@3 y1@@2 y2@@0) (MapType2Select u0@@4 u1@@4 u2@@2 u3@@0 m@@6 y0@@3 y1@@2 y2@@0)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
))) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@3 T@T) (u3@@1 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (x2@@2 T@U) (y0@@4 T@U) (y1@@3 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType2Select u0@@5 u1@@5 u2@@3 u3@@1 (MapType2Store u0@@5 u1@@5 u2@@3 u3@@1 m@@7 x0@@7 x1@@5 x2@@2 val@@7) y0@@4 y1@@3 y2@@1) (MapType2Select u0@@5 u1@@5 u2@@3 u3@@1 m@@7 y0@@4 y1@@3 y2@@1)))
 :qid |mapAx1:MapType2Select:2|
 :weight 0
)))))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (t2@@1 T@U) (heap@@1 T@U) (h@@0 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@1 T@U) (bx1 T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@5 t1@@5 t2@@1 heap@@1 (Handle2 h@@0 r@@0 rd@@0) bx0@@1 bx1) bx@@3) (|Set#IsMember| (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType rd@@0 heap@@1 bx0@@1 bx1) bx@@3))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads2 t0@@5 t1@@5 t2@@1 heap@@1 (Handle2 h@@0 r@@0 rd@@0) bx0@@1 bx1) bx@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v bx@@4) ($IsBox bx@@4 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@4))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType1Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (t2@@2 T@U) (heap@@2 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@2 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@7 t1@@6 t2@@2 heap@@2 (Handle2 h@@2 r@@1 rd@@1) bx0@@2 bx1@@0) (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType h@@2 heap@@2 bx0@@2 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply2 t0@@7 t1@@6 t2@@2 heap@@2 (Handle2 h@@2 r@@1 rd@@1) bx0@@2 bx1@@0))
)))
(assert (forall ((s T@U) (bx@@5 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@5) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@5))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@5))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ($self@@3 T@U) ($heap@@3 T@U) (|$fh$0x#0@@3| T@U) ) (! (= (Requires1 |#$T0@@8| TBool $heap@@3 (|Requires1#Handle| |#$T0@@8| |#$R@@8| $self@@3) |$fh$0x#0@@3|) true)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Requires1 |#$T0@@8| TBool $heap@@3 (|Requires1#Handle| |#$T0@@8| |#$R@@8| $self@@3) |$fh$0x#0@@3|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.DivZero2#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.DivZero2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle2 |lambda#54| (|lambda#55| TInt TInt 0) (|lambda#57| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.DivZero2#canCall| (< 0 $FunctionContextHeight)) (= _module.__default.DivZero2 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle2 |lambda#54| (|lambda#55| TInt TInt 0) (|lambda#57| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (|f#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@9| |#$R@@9|) $h@@1) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc1 |#$T0@@9| |#$R@@9|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@9| |#$R@@9|) $h@@1))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) (|f#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@10| |#$R@@10|) $h@@2) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@10| |#$R@@10|) $h@@2))
 :qid |unknown.0:0|
 :skolemid |410|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc1 |#$T0@@10| |#$R@@10|) $h@@2))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (heap@@3 T@U) (h@@3 T@U) (r@@2 T@U) (rd@@2 T@U) (bx0@@3 T@U) ) (! (= (Apply1 t0@@8 t1@@7 heap@@3 (Handle1 h@@3 r@@2 rd@@2) bx0@@3) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@3 heap@@3 bx0@@3))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@8 t1@@7 heap@@3 (Handle1 h@@3 r@@2 rd@@2) bx0@@3))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@2 T@U) (t0@@9 T@U) (t1@@8 T@U) (t2@@3 T@U) (h@@4 T@U) ) (!  (=> ($IsGoodHeap h@@4) (= ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@9 t1@@8 t2@@3) h@@4) (forall ((bx0@@4 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@4 t0@@9) ($IsAllocBox bx0@@4 t0@@9 h@@4)) (and ($IsBox bx1@@1 t1@@8) ($IsAllocBox bx1@@1 t1@@8 h@@4))) (Requires2 t0@@9 t1@@8 t2@@3 h@@4 f@@2 bx0@@4 bx1@@1)) (forall ((r@@3 T@U) ) (!  (=> (and (or (not (= r@@3 null)) (not true)) (|Set#IsMember| (Reads2 t0@@9 t1@@8 t2@@3 h@@4 f@@2 bx0@@4 bx1@@1) ($Box refType r@@3))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@4 r@@3) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@9 t1@@8 t2@@3 h@@4 f@@2 bx0@@4 bx1@@1) ($Box refType r@@3)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@9 t1@@8 t2@@3 h@@4 f@@2 bx0@@4 bx1@@1))
 :pattern ( (Reads2 t0@@9 t1@@8 t2@@3 h@@4 f@@2 bx0@@4 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@9 t1@@8 t2@@3) h@@4))
)))
(assert (forall ((f@@3 T@U) (t0@@10 T@U) (t1@@9 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@10 t1@@9) h@@5)) (forall ((bx0@@5 T@U) ) (!  (=> (and ($IsAllocBox bx0@@5 t0@@10 h@@5) (Requires1 t0@@10 t1@@9 h@@5 f@@3 bx0@@5)) ($IsAllocBox (Apply1 t0@@10 t1@@9 h@@5 f@@3 bx0@@5) t1@@9 h@@5))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@10 t1@@9 h@@5 f@@3 bx0@@5))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@10 t1@@9) h@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.DivZero2#canCall| (< 0 $FunctionContextHeight)) ($Is HandleTypeType _module.__default.DivZero2 (Tclass._System.___hFunc2 TInt TInt TInt)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |_module.__default.IntId#canCall| (< 0 $FunctionContextHeight)) ($Is HandleTypeType _module.__default.IntId (Tclass._System.___hFunc1 TInt TInt)))))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ($self@@4 T@U) ($heap@@4 T@U) (|$fh$0x#0@@4| T@U) ) (! (= (Reads1 |#$T0@@11| |#$R@@11| $heap@@4 $self@@4 |$fh$0x#0@@4|) ($Unbox SetType (Apply1 |#$T0@@11| (TSet Tclass._System.object?) $heap@@4 (|Reads1#Handle| |#$T0@@11| |#$R@@11| $self@@4) |$fh$0x#0@@4|)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (Reads1 |#$T0@@11| |#$R@@11| $heap@@4 $self@@4 |$fh$0x#0@@4|))
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
(assert (forall ((f@@4 T@U) (t0@@11 T@U) (t1@@10 T@U) (t2@@4 T@U) ) (! (= ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@4)) (forall ((h@@6 T@U) (bx0@@6 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) (and ($IsBox bx0@@6 t0@@11) ($IsBox bx1@@2 t1@@10))) (Requires2 t0@@11 t1@@10 t2@@4 h@@6 f@@4 bx0@@6 bx1@@2)) ($IsBox (Apply2 t0@@11 t1@@10 t2@@4 h@@6 f@@4 bx0@@6 bx1@@2) t2@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@11 t1@@10 t2@@4 h@@6 f@@4 bx0@@6 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@4)))
)))
(assert (forall ((|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#0| |$l#0#heap#0@@0| |$l#0#x#0@@0|) |$l#0#x#0@@0|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |605|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#0| |$l#0#heap#0@@0| |$l#0#x#0@@0|))
)))
(assert (forall ((x@@5 Int) (y Int) ) (! (= (Div x@@5 y) (div x@@5 y))
 :qid |DafnyPreludebpl.1648:14|
 :skolemid |339|
 :pattern ( (Div x@@5 y))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@12 T@U) (t1@@11 T@U) (t2@@5 T@U) (heap@@4 T@U) (f@@5 T@U) (bx0@@7 T@U) (bx1@@3 T@U) ) (!  (=> (and ($IsGoodHeap heap@@4) (and (and ($IsBox bx0@@7 t0@@12) ($IsBox bx1@@3 t1@@11)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@5)))) (= (|Set#Equal| (Reads2 t0@@12 t1@@11 t2@@5 $OneHeap f@@5 bx0@@7 bx1@@3) |Set#Empty|) (|Set#Equal| (Reads2 t0@@12 t1@@11 t2@@5 heap@@4 f@@5 bx0@@7 bx1@@3) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@12 t1@@11 t2@@5 $OneHeap f@@5 bx0@@7 bx1@@3) ($IsGoodHeap heap@@4))
 :pattern ( (Reads2 t0@@12 t1@@11 t2@@5 heap@@4 f@@5 bx0@@7 bx1@@3))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ($self@@5 T@U) ($heap@@5 T@U) (|$fh$0x#0@@5| T@U) ) (! (= (Requires1 |#$T0@@12| (TSet Tclass._System.object?) $heap@@5 (|Reads1#Handle| |#$T0@@12| |#$R@@12| $self@@5) |$fh$0x#0@@5|) (Requires1 |#$T0@@12| |#$R@@12| $heap@@5 $self@@5 |$fh$0x#0@@5|))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (Requires1 |#$T0@@12| (TSet Tclass._System.object?) $heap@@5 (|Reads1#Handle| |#$T0@@12| |#$R@@12| $self@@5) |$fh$0x#0@@5|))
)))
(assert (forall ((f@@6 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@7 T@U) (bx0@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@7) ($IsBox bx0@@8 t0@@13)) (Requires1 t0@@13 t1@@12 h@@7 f@@6 bx0@@8)) ($IsBox (Apply1 t0@@13 t1@@12 h@@7 f@@6 bx0@@8) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@7 f@@6 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((f@@7 T@U) (t0@@14 T@U) (t1@@13 T@U) (t2@@6 T@U) (h@@8 T@U) ) (!  (=> (and ($IsGoodHeap h@@8) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@6) h@@8)) (forall ((bx0@@9 T@U) (bx1@@4 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@9 t0@@14 h@@8) ($IsAllocBox bx1@@4 t1@@13 h@@8)) (Requires2 t0@@14 t1@@13 t2@@6 h@@8 f@@7 bx0@@9 bx1@@4)) ($IsAllocBox (Apply2 t0@@14 t1@@13 t2@@6 h@@8 f@@7 bx0@@9 bx1@@4) t2@@6 h@@8))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@14 t1@@13 t2@@6 h@@8 f@@7 bx0@@9 bx1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@14 t1@@13 t2@@6) h@@8))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| Int) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) (|$l#0#y#0| T@U) ) (! (= (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#55| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0|))  (and (and ($IsBox |$l#0#x#0@@1| |l#0@@2|) ($IsBox |$l#0#y#0| |l#1|)) (or (not (= (U_2_int ($Unbox intType |$l#0#y#0|)) |l#2|)) (not true))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |615|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#55| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0|))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TBool) (and (= ($Box boolType ($Unbox boolType bx@@9)) bx@@9) ($Is boolType ($Unbox boolType bx@@9) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@9 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((t0@@15 T@U) (t1@@14 T@U) (heap@@5 T@U) (h@@9 T@U) (r@@4 T@U) (rd@@3 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@4 heap@@5 bx0@@10)) (Requires1 t0@@15 t1@@14 heap@@5 (Handle1 h@@9 r@@4 rd@@3) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@15 t1@@14 heap@@5 (Handle1 h@@9 r@@4 rd@@3) bx0@@10))
)))
(assert (forall ((v@@2 T@U) (t0@@16 T@U) (h@@10 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@16) h@@10) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@10) ($IsAllocBox bx@@10 t0@@16 h@@10))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@16) h@@10))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@13| |#$R@@13|)) |#$T0@@13|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@13| |#$R@@13|))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@14| |#$R@@14|)) |#$R@@14|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$R@@15| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@15|)) |#$T0@@15|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@15| |#$R@@15|))
)))
(assert (forall ((|#$T0@@16| T@U) (|#$R@@16| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|)) |#$R@@16|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@16| |#$R@@16|))
)))
(assert (forall ((|#$T0@@17| T@U) (|#$R@@17| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|)) |#$T0@@17|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@17| |#$R@@17|))
)))
(assert (forall ((|#$T0@@18| T@U) (|#$R@@18| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|)) |#$R@@18|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@18| |#$R@@18|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MkId$A@@0 T@U) ) (!  (=> (or (|_module.__default.MkId#canCall| _module._default.MkId$A@@0) (< 0 $FunctionContextHeight)) (= (_module.__default.MkId _module._default.MkId$A@@0) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#0| (|lambda#1| _module._default.MkId$A@@0) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (_module.__default.MkId _module._default.MkId$A@@0))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.MkId$A@@1 T@U) ) (!  (=> (or (|_module.__default.MkId#canCall| _module._default.MkId$A@@1) (< 0 $FunctionContextHeight)) (= (_module.__default.MkId _module._default.MkId$A@@1) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 |lambda#0| (|lambda#1| _module._default.MkId$A@@1) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |532|
 :pattern ( (_module.__default.MkId _module._default.MkId$A@@1))
))))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@6))
)))
(assert (forall ((|$l#0#heap#0@@2| T@U) (|$l#0#x#0@@2| T@U) (|$l#0#y#0@@0| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#54| |$l#0#heap#0@@2| |$l#0#x#0@@2| |$l#0#y#0@@0|) ($Box intType (int_2_U (Div (U_2_int ($Unbox intType |$l#0#x#0@@2|)) (U_2_int ($Unbox intType |$l#0#y#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |614|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType |lambda#54| |$l#0#heap#0@@2| |$l#0#x#0@@2| |$l#0#y#0@@0|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (t2@@7 T@U) (heap@@6 T@U) (f@@8 T@U) (bx0@@11 T@U) (bx1@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@6) (and (and ($IsBox bx0@@11 t0@@17) ($IsBox bx1@@5 t1@@15)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@17 t1@@15 t2@@7)))) (|Set#Equal| (Reads2 t0@@17 t1@@15 t2@@7 $OneHeap f@@8 bx0@@11 bx1@@5) |Set#Empty|)) (= (Requires2 t0@@17 t1@@15 t2@@7 $OneHeap f@@8 bx0@@11 bx1@@5) (Requires2 t0@@17 t1@@15 t2@@7 heap@@6 f@@8 bx0@@11 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@17 t1@@15 t2@@7 $OneHeap f@@8 bx0@@11 bx1@@5) ($IsGoodHeap heap@@6))
 :pattern ( (Requires2 t0@@17 t1@@15 t2@@7 heap@@6 f@@8 bx0@@11 bx1@@5))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@3| T@U) (|$l#0#x#0@@3| T@U) (|$l#0#y#0@@1| T@U) ) (! (= (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#57| |l#0@@3|) |$l#0#heap#0@@3| |$l#0#x#0@@3| |$l#0#y#0@@1|) |l#0@@3|)
 :qid |Simpledfy.23:3|
 :skolemid |616|
 :pattern ( (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#57| |l#0@@3|) |$l#0#heap#0@@3| |$l#0#x#0@@3| |$l#0#y#0@@1|))
)))
(assert (forall ((|#$T0@@19| T@U) (|#$R@@19| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@19| |#$R@@19|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc1 |#$T0@@19| |#$R@@19|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@19|) (Requires1 |#$T0@@19| |#$R@@19| $OneHeap |f#0@@1| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc1 |#$T0@@19| |#$R@@19|)))
)))
(assert (forall ((f@@9 T@U) (t0@@18 T@U) (t1@@16 T@U) (t2@@8 T@U) (u0@@6 T@U) (u1@@6 T@U) (u2@@4 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@18 t1@@16 t2@@8)) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 u0@@6) ($IsBox bx@@11 t0@@18))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@11 u0@@6))
 :pattern ( ($IsBox bx@@11 t0@@18))
))) (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 u1@@6) ($IsBox bx@@12 t1@@16))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@12 u1@@6))
 :pattern ( ($IsBox bx@@12 t1@@16))
))) (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 t2@@8) ($IsBox bx@@13 u2@@4))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@13 t2@@8))
 :pattern ( ($IsBox bx@@13 u2@@4))
))) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 u0@@6 u1@@6 u2@@4)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@18 t1@@16 t2@@8)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 u0@@6 u1@@6 u2@@4)))
)))
(assert (forall ((|#$T0@@20| T@U) (|#$R@@20| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 |#$T0@@20| |#$R@@20|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@20|) (|Set#Equal| (Reads1 |#$T0@@20| |#$R@@20| $OneHeap |f#0@@2| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc1 |#$T0@@20| |#$R@@20|)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@19 T@U) (t1@@17 T@U) (h@@11 T@U) ) (!  (=> ($IsGoodHeap h@@11) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@19 t1@@17) h@@11) (forall ((bx0@@12 T@U) ) (!  (=> (and (and ($IsBox bx0@@12 t0@@19) ($IsAllocBox bx0@@12 t0@@19 h@@11)) (Requires1 t0@@19 t1@@17 h@@11 f@@11 bx0@@12)) (forall ((r@@5 T@U) ) (!  (=> (and (or (not (= r@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@19 t1@@17 h@@11 f@@11 bx0@@12) ($Box refType r@@5))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@11 r@@5) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@19 t1@@17 h@@11 f@@11 bx0@@12) ($Box refType r@@5)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@19 t1@@17 h@@11 f@@11 bx0@@12))
 :pattern ( (Reads1 t0@@19 t1@@17 h@@11 f@@11 bx0@@12))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@19 t1@@17) h@@11))
)))
(assert (forall ((|#$T0@@21| T@U) (|#$R@@21| T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.___hFunc1 |#$T0@@21| |#$R@@21|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@14)) bx@@14) ($Is HandleTypeType ($Unbox HandleTypeType bx@@14) (Tclass._System.___hFunc1 |#$T0@@21| |#$R@@21|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@14 (Tclass._System.___hFunc1 |#$T0@@21| |#$R@@21|)))
)))
(assert (forall ((|#$T0@@22| T@U) (|#$R@@22| T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.___hPartialFunc1 |#$T0@@22| |#$R@@22|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@15)) bx@@15) ($Is HandleTypeType ($Unbox HandleTypeType bx@@15) (Tclass._System.___hPartialFunc1 |#$T0@@22| |#$R@@22|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@15 (Tclass._System.___hPartialFunc1 |#$T0@@22| |#$R@@22|)))
)))
(assert (forall ((|#$T0@@23| T@U) (|#$R@@23| T@U) (bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@16)) bx@@16) ($Is HandleTypeType ($Unbox HandleTypeType bx@@16) (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@16 (Tclass._System.___hTotalFunc1 |#$T0@@23| |#$R@@23|)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#30| |l#0@@4| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@1) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |612|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#30| |l#0@@4| |l#1@@0| |l#2@@0| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@24| T@U) (|#$R@@24| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@24| |#$R@@24|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@24| |#$R@@24|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@24| |#$R@@24|))
)))
(assert (forall ((|#$T0@@25| T@U) (|#$R@@25| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@25| |#$R@@25|))
)))
(assert (forall ((|#$T0@@26| T@U) (|#$R@@26| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@26| |#$R@@26|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@26| |#$R@@26|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@26| |#$R@@26|))
)))
(assert (forall ((|$l#0#heap#0@@4| T@U) (|$l#0#y#0@@2| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#10| |$l#0#heap#0@@4| |$l#0#y#0@@2|) ($Box intType ($Unbox intType |$l#0#y#0@@2|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |610|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#10| |$l#0#heap#0@@4| |$l#0#y#0@@2|))
)))
(assert (forall ((t0@@20 T@U) (t1@@18 T@U) (heap@@7 T@U) (f@@12 T@U) (bx0@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@7) (and ($IsBox bx0@@13 t0@@20) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@20 t1@@18)))) (|Set#Equal| (Reads1 t0@@20 t1@@18 $OneHeap f@@12 bx0@@13) |Set#Empty|)) (= (Requires1 t0@@20 t1@@18 $OneHeap f@@12 bx0@@13) (Requires1 t0@@20 t1@@18 heap@@7 f@@12 bx0@@13)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@20 t1@@18 $OneHeap f@@12 bx0@@13) ($IsGoodHeap heap@@7))
 :pattern ( (Requires1 t0@@20 t1@@18 heap@@7 f@@12 bx0@@13))
)))
(assert (forall ((|#$T0@@27| T@U) (|#$R@@27| T@U) ($self@@6 T@U) ($heap@@6 T@U) (|$fh$0x#0@@6| T@U) ) (! (= (Apply1 |#$T0@@27| (TSet Tclass._System.object?) $heap@@6 (|Reads1#Handle| |#$T0@@27| |#$R@@27| $self@@6) |$fh$0x#0@@6|) ($Box SetType (Reads1 |#$T0@@27| |#$R@@27| $heap@@6 $self@@6 |$fh$0x#0@@6|)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Apply1 |#$T0@@27| (TSet Tclass._System.object?) $heap@@6 (|Reads1#Handle| |#$T0@@27| |#$R@@27| $self@@6) |$fh$0x#0@@6|))
)))
(assert (forall ((bx@@17 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module._default.MkId$A@@2 T@U) ) (!  (=> (and (or (|_module.__default.MkId#canCall| _module._default.MkId$A@@2) (< 0 $FunctionContextHeight)) ($IsGoodHeap $Heap)) ($IsAlloc HandleTypeType (_module.__default.MkId _module._default.MkId$A@@2) (Tclass._System.___hTotalFunc1 _module._default.MkId$A@@2 _module._default.MkId$A@@2) $Heap))
 :qid |Simpledfy.4:10|
 :skolemid |529|
 :pattern ( ($IsAlloc HandleTypeType (_module.__default.MkId _module._default.MkId$A@@2) (Tclass._System.___hTotalFunc1 _module._default.MkId$A@@2 _module._default.MkId$A@@2) $Heap))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((t0@@21 T@U) (t1@@19 T@U) (t2@@9 T@U) (heap@@8 T@U) (h@@12 T@U) (r@@6 T@U) (rd@@4 T@U) (bx0@@14 T@U) (bx1@@6 T@U) ) (!  (=> (U_2_bool (MapType2Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType r@@6 heap@@8 bx0@@14 bx1@@6)) (Requires2 t0@@21 t1@@19 t2@@9 heap@@8 (Handle2 h@@12 r@@6 rd@@4) bx0@@14 bx1@@6))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires2 t0@@21 t1@@19 t2@@9 heap@@8 (Handle2 h@@12 r@@6 rd@@4) bx0@@14 bx1@@6))
)))
(assert (forall ((h@@13 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@13)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@13))
)))
(assert (forall ((h@@14 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@14)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@14))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#0#heap#0@@5| T@U) (|$l#0#x#0@@4| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@5|) |$l#0#heap#0@@5| |$l#0#x#0@@4|) |l#0@@5|)
 :qid |Simpledfy.5:3|
 :skolemid |608|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@5|) |$l#0#heap#0@@5| |$l#0#x#0@@4|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun |id#0@0| () T@U)
(declare-fun |polyid#0@0| () T@U)
(declare-fun |divvy#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |id#0| () T@U)
(declare-fun |polyid#0| () T@U)
(declare-fun |divvy#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon2_correct  (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) 4)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= 5 (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 6)))))))) (not true))) (=> (and (and (and (or (not (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) 4)) (not true)) (or (not (= 5 (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 6)))))))) (not true))) |_module.__default.DivZero2#canCall|) (and |_module.__default.DivZero2#canCall| (= |divvy#0@0| (Lit HandleTypeType _module.__default.DivZero2)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (Requires2 TInt TInt TInt $Heap@@0 |divvy#0@0| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 5))))) (=> (Requires2 TInt TInt TInt $Heap@@0 |divvy#0@0| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 5)))) (=> (= (ControlFlow 0 2) (- 0 1)) (Requires2 TInt TInt TInt $Heap@@0 |divvy#0@0| ($Box intType (int_2_U (LitInt 2))) ($Box intType (int_2_U (LitInt 0))))))))))))
(let ((anon3_Else_correct  (=> (and (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) 4) (= (ControlFlow 0 8) 2)) anon2_correct)))
(let ((anon3_Then_correct  (=> (or (not (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))))) 4)) (not true)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 6))))) (=> (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 6)))) (=> (= (ControlFlow 0 6) 2) anon2_correct))))))
(let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#30| null $Heap@@0 alloc false)) |_module.__default.IntId#canCall|) (and |_module.__default.IntId#canCall| (= |id#0@0| (Lit HandleTypeType _module.__default.IntId)))) (and (=> (= (ControlFlow 0 9) (- 0 15)) (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 5))))) (=> (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 5)))) (=> (|_module.__default.MkId#canCall| TInt) (=> (and (|_module.__default.MkId#canCall| TInt) (= |polyid#0@0| (Lit HandleTypeType (_module.__default.MkId TInt)))) (and (=> (= (ControlFlow 0 9) (- 0 14)) (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 5))))) (=> (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 5)))) (and (=> (= (ControlFlow 0 9) (- 0 13)) (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 2))))) (=> (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 2)))) (and (=> (= (ControlFlow 0 9) (- 0 12)) (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 2))))) (=> (Requires1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 2)))) (and (=> (= (ControlFlow 0 9) (- 0 11)) (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 2)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 2)))))))) (=> (= (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 2)))))) (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@@0 |polyid#0@0| ($Box intType (int_2_U (LitInt 2))))))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3))))) (=> (Requires1 TInt TInt $Heap@@0 |id#0@0| ($Box intType (int_2_U (LitInt 3)))) (and (=> (= (ControlFlow 0 9) 6) anon3_Then_correct) (=> (= (ControlFlow 0 9) 8) anon3_Else_correct)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (and (and ($Is HandleTypeType |id#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |id#0| (Tclass._System.___hFunc1 TInt TInt) $Heap@@0)) true) (and (and ($Is HandleTypeType |polyid#0| (Tclass._System.___hFunc1 TInt TInt)) ($IsAlloc HandleTypeType |polyid#0| (Tclass._System.___hFunc1 TInt TInt) $Heap@@0)) true)) (and (and (and ($Is HandleTypeType |divvy#0| (Tclass._System.___hFunc2 TInt TInt TInt)) ($IsAlloc HandleTypeType |divvy#0| (Tclass._System.___hFunc2 TInt TInt TInt) $Heap@@0)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 9)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
