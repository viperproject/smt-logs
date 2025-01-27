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
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |_module.__default.P#requires| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |Reads1#Handle| (T@U T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.Q (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.__default.Q#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.P#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.__default.P (T@U T@U T@U T@U T@U) T@U)
(declare-fun null () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |_module.__default.P#Handle| (T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#130| (T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hFunc2 tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#Func2|)
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
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((_module._default.P$A T@U) (_module._default.P$B T@U) ($Heap T@U) (|f#0| T@U) (|x#0| T@U) ) (!  (=> (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |f#0| (Tclass._System.___hFunc1 _module._default.P$A _module._default.P$B))) ($IsBox |x#0| _module._default.P$A)) (= (|_module.__default.P#requires| _module._default.P$A _module._default.P$B $Heap |f#0| |x#0|) (Requires1 _module._default.P$A _module._default.P$B $Heap |f#0| |x#0|)))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (|_module.__default.P#requires| _module._default.P$A _module._default.P$B $Heap |f#0| |x#0|) ($IsGoodHeap $Heap))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$T1@@3| T@U) (|#$R@@5| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@5| |#$T1@@3| |#$R@@5|)))
)))
(assert (forall ((f T@U) (t0 T@U) (t1 T@U) (u0 T@U) (u1 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0) ($IsBox bx@@0 t0))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0))
 :pattern ( ($IsBox bx@@0 t0))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1) ($IsBox bx@@1 u1))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1))
 :pattern ( ($IsBox bx@@1 u1))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0 t1)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0 u1)))
)))
(assert (= (Ctor refType) 4))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Q$U T@U) (_module._default.Q$V T@U) ($Heap@@0 T@U) (|f#0@@0| T@U) (|x#0@@0| T@U) ) (!  (=> (or (|_module.__default.Q#canCall| _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 _module._default.Q$U _module._default.Q$V))) ($IsBox |x#0@@0| _module._default.Q$U)) (Requires1 _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|)))) (and (|_module.__default.P#canCall| _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|) (= (_module.__default.Q _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|) (_module.__default.P _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (_module.__default.Q _module._default.Q$U _module._default.Q$V $Heap@@0 |f#0@@0| |x#0@@0|) ($IsGoodHeap $Heap@@0))
))))
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
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall (($bx@@0 T@U) (|#$T0@@7| T@U) (|#$R@@7| T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (!  (=> (Requires1 |#$T0@@7| |#$R@@7| $heap@@2 $self@@2 |$fh$0x#0@@2|) (= (|Set#IsMember| (Reads1 |#$T0@@7| TBool $heap@@2 (|Requires1#Handle| |#$T0@@7| |#$R@@7| $self@@2) |$fh$0x#0@@2|) $bx@@0) (|Set#IsMember| (Reads1 |#$T0@@7| |#$R@@7| $heap@@2 $self@@2 |$fh$0x#0@@2|) $bx@@0)))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (|Set#IsMember| (Reads1 |#$T0@@7| TBool $heap@@2 (|Requires1#Handle| |#$T0@@7| |#$R@@7| $self@@2) |$fh$0x#0@@2|) $bx@@0))
)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.P$A@@0 T@U) (_module._default.P$B@@0 T@U) ($Heap@@1 T@U) (|f#0@@1| T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.__default.P#canCall| _module._default.P$A@@0 _module._default.P$B@@0 $Heap@@1 |f#0@@1| |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 _module._default.P$A@@0 _module._default.P$B@@0)) ($IsAlloc HandleTypeType |f#0@@1| (Tclass._System.___hFunc1 _module._default.P$A@@0 _module._default.P$B@@0) $Heap@@1))) (and ($IsBox |x#0@@1| _module._default.P$A@@0) ($IsAllocBox |x#0@@1| _module._default.P$A@@0 $Heap@@1))) (Requires1 _module._default.P$A@@0 _module._default.P$B@@0 $Heap@@1 |f#0@@1| |x#0@@1|)))) ($IsBox (_module.__default.P _module._default.P$A@@0 _module._default.P$B@@0 $Heap@@1 |f#0@@1| |x#0@@1|) _module._default.P$B@@0))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( (_module.__default.P _module._default.P$A@@0 _module._default.P$B@@0 $Heap@@1 |f#0@@1| |x#0@@1|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Q$U@@0 T@U) (_module._default.Q$V@@0 T@U) ($Heap@@2 T@U) (|f#0@@2| T@U) (|x#0@@2| T@U) ) (!  (=> (or (|_module.__default.Q#canCall| _module._default.Q$U@@0 _module._default.Q$V@@0 $Heap@@2 |f#0@@2| |x#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@2) (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 _module._default.Q$U@@0 _module._default.Q$V@@0)) ($IsAlloc HandleTypeType |f#0@@2| (Tclass._System.___hFunc1 _module._default.Q$U@@0 _module._default.Q$V@@0) $Heap@@2))) (and ($IsBox |x#0@@2| _module._default.Q$U@@0) ($IsAllocBox |x#0@@2| _module._default.Q$U@@0 $Heap@@2))) (Requires1 _module._default.Q$U@@0 _module._default.Q$V@@0 $Heap@@2 |f#0@@2| |x#0@@2|)))) ($IsBox (_module.__default.Q _module._default.Q$U@@0 _module._default.Q$V@@0 $Heap@@2 |f#0@@2| |x#0@@2|) _module._default.Q$V@@0))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( (_module.__default.Q _module._default.Q$U@@0 _module._default.Q$V@@0 $Heap@@2 |f#0@@2| |x#0@@2|))
))))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) ($self@@3 T@U) ($heap@@3 T@U) (|$fh$0x#0@@3| T@U) ) (! (= (Requires1 |#$T0@@8| TBool $heap@@3 (|Requires1#Handle| |#$T0@@8| |#$R@@8| $self@@3) |$fh$0x#0@@3|) true)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Requires1 |#$T0@@8| TBool $heap@@3 (|Requires1#Handle| |#$T0@@8| |#$R@@8| $self@@3) |$fh$0x#0@@3|))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) (t1@@2 T@U) (t2 T@U) (h@@0 T@U) ) (!  (=> ($IsGoodHeap h@@0) (= ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@3 t1@@2 t2) h@@0) (forall ((bx0@@0 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@0 t0@@3) ($IsAllocBox bx0@@0 t0@@3 h@@0)) (and ($IsBox bx1 t1@@2) ($IsAllocBox bx1 t1@@2 h@@0))) (Requires2 t0@@3 t1@@2 t2 h@@0 f@@1 bx0@@0 bx1)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads2 t0@@3 t1@@2 t2 h@@0 f@@1 bx0@@0 bx1) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|Set#IsMember| (Reads2 t0@@3 t1@@2 t2 h@@0 f@@1 bx0@@0 bx1) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (Apply2 t0@@3 t1@@2 t2 h@@0 f@@1 bx0@@0 bx1))
 :pattern ( (Reads2 t0@@3 t1@@2 t2 h@@0 f@@1 bx0@@0 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@3 t1@@2 t2) h@@0))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (t1@@3 T@U) (h@@1 T@U) ) (!  (=> (and ($IsGoodHeap h@@1) ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3) h@@1)) (forall ((bx0@@1 T@U) ) (!  (=> (and ($IsAllocBox bx0@@1 t0@@4 h@@1) (Requires1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1)) ($IsAllocBox (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1) t1@@3 h@@1))
 :qid |unknown.0:0|
 :skolemid |395|
 :pattern ( (Apply1 t0@@4 t1@@3 h@@1 f@@2 bx0@@1))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($IsAlloc HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@4 t1@@3) h@@1))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.P$A@@1 T@U) (_module._default.P$B@@1 T@U) ($Heap@@3 T@U) (|f#0@@3| T@U) (|x#0@@3| T@U) ) (!  (=> (or (|_module.__default.P#canCall| _module._default.P$A@@1 _module._default.P$B@@1 $Heap@@3 |f#0@@3| |x#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 _module._default.P$A@@1 _module._default.P$B@@1)) ($IsAlloc HandleTypeType |f#0@@3| (Tclass._System.___hFunc1 _module._default.P$A@@1 _module._default.P$B@@1) $Heap@@3))) (and ($IsBox |x#0@@3| _module._default.P$A@@1) ($IsAllocBox |x#0@@3| _module._default.P$A@@1 $Heap@@3))) (Requires1 _module._default.P$A@@1 _module._default.P$B@@1 $Heap@@3 |f#0@@3| |x#0@@3|)))) ($IsAllocBox (_module.__default.P _module._default.P$A@@1 _module._default.P$B@@1 $Heap@@3 |f#0@@3| |x#0@@3|) _module._default.P$B@@1 $Heap@@3))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAllocBox (_module.__default.P _module._default.P$A@@1 _module._default.P$B@@1 $Heap@@3 |f#0@@3| |x#0@@3|) _module._default.P$B@@1 $Heap@@3))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module._default.Q$U@@1 T@U) (_module._default.Q$V@@1 T@U) ($Heap@@4 T@U) (|f#0@@4| T@U) (|x#0@@4| T@U) ) (!  (=> (or (|_module.__default.Q#canCall| _module._default.Q$U@@1 _module._default.Q$V@@1 $Heap@@4 |f#0@@4| |x#0@@4|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@4) (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hFunc1 _module._default.Q$U@@1 _module._default.Q$V@@1)) ($IsAlloc HandleTypeType |f#0@@4| (Tclass._System.___hFunc1 _module._default.Q$U@@1 _module._default.Q$V@@1) $Heap@@4))) (and ($IsBox |x#0@@4| _module._default.Q$U@@1) ($IsAllocBox |x#0@@4| _module._default.Q$U@@1 $Heap@@4))) (Requires1 _module._default.Q$U@@1 _module._default.Q$V@@1 $Heap@@4 |f#0@@4| |x#0@@4|)))) ($IsAllocBox (_module.__default.Q _module._default.Q$U@@1 _module._default.Q$V@@1 $Heap@@4 |f#0@@4| |x#0@@4|) _module._default.Q$V@@1 $Heap@@4))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($IsAllocBox (_module.__default.Q _module._default.Q$U@@1 _module._default.Q$V@@1 $Heap@@4 |f#0@@4| |x#0@@4|) _module._default.Q$V@@1 $Heap@@4))
))))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) ($self@@4 T@U) ($heap@@4 T@U) (|$fh$0x#0@@4| T@U) ) (! (= (Reads1 |#$T0@@9| |#$R@@9| $heap@@4 $self@@4 |$fh$0x#0@@4|) ($Unbox SetType (Apply1 |#$T0@@9| (TSet Tclass._System.object?) $heap@@4 (|Reads1#Handle| |#$T0@@9| |#$R@@9| $self@@4) |$fh$0x#0@@4|)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (Reads1 |#$T0@@9| |#$R@@9| $heap@@4 $self@@4 |$fh$0x#0@@4|))
)))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (t1@@4 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@0)) (forall ((h@@2 T@U) (bx0@@2 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@2) (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@0 t1@@4))) (Requires2 t0@@5 t1@@4 t2@@0 h@@2 f@@3 bx0@@2 bx1@@0)) ($IsBox (Apply2 t0@@5 t1@@4 t2@@0 h@@2 f@@3 bx0@@2 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |501|
 :pattern ( (Apply2 t0@@5 t1@@4 t2@@0 h@@2 f@@3 bx0@@2 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@0)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module._default.P$A@@2 T@U) (_module._default.P$B@@2 T@U) ($Heap@@5 T@U) (|f#0@@5| T@U) (|x#0@@5| T@U) ) (!  (=> (or (|_module.__default.P#canCall| _module._default.P$A@@2 _module._default.P$B@@2 $Heap@@5 |f#0@@5| |x#0@@5|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc1 _module._default.P$A@@2 _module._default.P$B@@2))) ($IsBox |x#0@@5| _module._default.P$A@@2)) (Requires1 _module._default.P$A@@2 _module._default.P$B@@2 $Heap@@5 |f#0@@5| |x#0@@5|)))) (= (_module.__default.P _module._default.P$A@@2 _module._default.P$B@@2 $Heap@@5 |f#0@@5| |x#0@@5|) (Apply1 _module._default.P$A@@2 _module._default.P$B@@2 $Heap@@5 |f#0@@5| |x#0@@5|)))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (_module.__default.P _module._default.P$A@@2 _module._default.P$B@@2 $Heap@@5 |f#0@@5| |x#0@@5|) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((_module._default.P$A@@3 T@U) (_module._default.P$B@@3 T@U) ($heap@@5 T@U) (|$fh$0x#0@@5| T@U) (|$fh$0x#1| T@U) ) (! (= (Requires2 (Tclass._System.___hFunc1 _module._default.P$A@@3 _module._default.P$B@@3) _module._default.P$A@@3 _module._default.P$B@@3 $heap@@5 (|_module.__default.P#Handle| _module._default.P$A@@3 _module._default.P$B@@3) |$fh$0x#0@@5| |$fh$0x#1|) (|_module.__default.P#requires| _module._default.P$A@@3 _module._default.P$B@@3 $heap@@5 ($Unbox HandleTypeType |$fh$0x#0@@5|) |$fh$0x#1|))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Requires2 (Tclass._System.___hFunc1 _module._default.P$A@@3 _module._default.P$B@@3) _module._default.P$A@@3 _module._default.P$B@@3 $heap@@5 (|_module.__default.P#Handle| _module._default.P$A@@3 _module._default.P$B@@3) |$fh$0x#0@@5| |$fh$0x#1|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((_module._default.P$A@@4 T@U) (_module._default.P$B@@4 T@U) ($heap@@6 T@U) (|$fh$0x#0@@6| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (_module.__default.P _module._default.P$A@@4 _module._default.P$B@@4 $heap@@6 |$fh$0x#0@@6| |$fh$0x#1@@0|) (Apply2 (Tclass._System.___hFunc1 _module._default.P$A@@4 _module._default.P$B@@4) _module._default.P$A@@4 _module._default.P$B@@4 $heap@@6 (|_module.__default.P#Handle| _module._default.P$A@@4 _module._default.P$B@@4) ($Box HandleTypeType |$fh$0x#0@@6|) |$fh$0x#1@@0|))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( (_module.__default.P _module._default.P$A@@4 _module._default.P$B@@4 $heap@@6 |$fh$0x#0@@6| |$fh$0x#1@@0|))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (t2@@1 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and (and ($IsBox bx0@@3 t0@@6) ($IsBox bx1@@1 t1@@5)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@1 $OneHeap f@@4 bx0@@3 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@1 heap@@0 f@@4 bx0@@3 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@1 $OneHeap f@@4 bx0@@3 bx1@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@1 heap@@0 f@@4 bx0@@3 bx1@@1))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ($self@@5 T@U) ($heap@@7 T@U) (|$fh$0x#0@@7| T@U) ) (! (= (Requires1 |#$T0@@10| (TSet Tclass._System.object?) $heap@@7 (|Reads1#Handle| |#$T0@@10| |#$R@@10| $self@@5) |$fh$0x#0@@7|) (Requires1 |#$T0@@10| |#$R@@10| $heap@@7 $self@@5 |$fh$0x#0@@7|))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (Requires1 |#$T0@@10| (TSet Tclass._System.object?) $heap@@7 (|Reads1#Handle| |#$T0@@10| |#$R@@10| $self@@5) |$fh$0x#0@@7|))
)))
(assert (forall ((f@@5 T@U) (t0@@7 T@U) (t1@@6 T@U) ) (! (= ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@7 t1@@6)) (forall ((h@@3 T@U) (bx0@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@3) ($IsBox bx0@@4 t0@@7)) (Requires1 t0@@7 t1@@6 h@@3 f@@5 bx0@@4)) ($IsBox (Apply1 t0@@7 t1@@6 h@@3 f@@5 bx0@@4) t1@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@7 t1@@6 h@@3 f@@5 bx0@@4))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@7 t1@@6)))
)))
(assert (forall ((f@@6 T@U) (t0@@8 T@U) (t1@@7 T@U) (t2@@2 T@U) (h@@4 T@U) ) (!  (=> (and ($IsGoodHeap h@@4) ($IsAlloc HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@8 t1@@7 t2@@2) h@@4)) (forall ((bx0@@5 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@5 t0@@8 h@@4) ($IsAllocBox bx1@@2 t1@@7 h@@4)) (Requires2 t0@@8 t1@@7 t2@@2 h@@4 f@@6 bx0@@5 bx1@@2)) ($IsAllocBox (Apply2 t0@@8 t1@@7 t2@@2 h@@4 f@@6 bx0@@5 bx1@@2) t2@@2 h@@4))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( (Apply2 t0@@8 t1@@7 t2@@2 h@@4 f@@6 bx0@@5 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@8 t1@@7 t2@@2) h@@4))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TBool) (and (= ($Box boolType ($Unbox boolType bx@@5)) bx@@5) ($Is boolType ($Unbox boolType bx@@5) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@5 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@1) t@@0) ($Is T@@1 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@1) t@@0))
)))
(assert (forall ((_module._default.P$A@@5 T@U) (_module._default.P$B@@5 T@U) ($heap@@8 T@U) (|$fh$0x#0@@8| T@U) (|$fh$0x#1@@1| T@U) ) (! (= (Apply2 (Tclass._System.___hFunc1 _module._default.P$A@@5 _module._default.P$B@@5) _module._default.P$A@@5 _module._default.P$B@@5 $heap@@8 (|_module.__default.P#Handle| _module._default.P$A@@5 _module._default.P$B@@5) |$fh$0x#0@@8| |$fh$0x#1@@1|) (_module.__default.P _module._default.P$A@@5 _module._default.P$B@@5 $heap@@8 ($Unbox HandleTypeType |$fh$0x#0@@8|) |$fh$0x#1@@1|))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Apply2 (Tclass._System.___hFunc1 _module._default.P$A@@5 _module._default.P$B@@5) _module._default.P$A@@5 _module._default.P$B@@5 $heap@@8 (|_module.__default.P#Handle| _module._default.P$A@@5 _module._default.P$B@@5) |$fh$0x#0@@8| |$fh$0x#1@@1|))
)))
(assert (forall ((v@@2 T@U) (t0@@9 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@9) h@@5) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@6) ($IsAllocBox bx@@6 t0@@9 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@9) h@@5))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0@@11| |#$R@@11|)) |#$T0@@11|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|)) |#$R@@12|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
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
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((t0@@10 T@U) (t1@@8 T@U) (t2@@3 T@U) (heap@@1 T@U) (f@@7 T@U) (bx0@@6 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@6 t0@@10) ($IsBox bx1@@3 t1@@8)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@10 t1@@8 t2@@3)))) (|Set#Equal| (Reads2 t0@@10 t1@@8 t2@@3 $OneHeap f@@7 bx0@@6 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@10 t1@@8 t2@@3 $OneHeap f@@7 bx0@@6 bx1@@3) (Requires2 t0@@10 t1@@8 t2@@3 heap@@1 f@@7 bx0@@6 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (Requires2 t0@@10 t1@@8 t2@@3 $OneHeap f@@7 bx0@@6 bx1@@3) ($IsGoodHeap heap@@1))
 :pattern ( (Requires2 t0@@10 t1@@8 t2@@3 heap@@1 f@@7 bx0@@6 bx1@@3))
)))
(assert (forall ((f@@8 T@U) (t0@@11 T@U) (t1@@9 T@U) (t2@@4 T@U) (u0@@1 T@U) (u1@@1 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@11 t1@@9 t2@@4)) (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 u0@@1) ($IsBox bx@@7 t0@@11))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( ($IsBox bx@@7 u0@@1))
 :pattern ( ($IsBox bx@@7 t0@@11))
))) (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 u1@@1) ($IsBox bx@@8 t1@@9))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($IsBox bx@@8 u1@@1))
 :pattern ( ($IsBox bx@@8 t1@@9))
))) (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 t2@@4) ($IsBox bx@@9 u2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsBox bx@@9 t2@@4))
 :pattern ( ($IsBox bx@@9 u2))
))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2)))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@11 t1@@9 t2@@4)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 u0@@1 u1@@1 u2)))
)))
(assert (forall ((f@@9 T@U) (t0@@12 T@U) (t1@@10 T@U) (h@@6 T@U) ) (!  (=> ($IsGoodHeap h@@6) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@12 t1@@10) h@@6) (forall ((bx0@@7 T@U) ) (!  (=> (and (and ($IsBox bx0@@7 t0@@12) ($IsAllocBox bx0@@7 t0@@12 h@@6)) (Requires1 t0@@12 t1@@10 h@@6 f@@9 bx0@@7)) (forall ((r@@0 T@U) ) (!  (=> (and (or (not (= r@@0 null)) (not true)) (|Set#IsMember| (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@7) ($Box refType r@@0))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r@@0) alloc))))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( (|Set#IsMember| (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@7) ($Box refType r@@0)))
)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Apply1 t0@@12 t1@@10 h@@6 f@@9 bx0@@7))
 :pattern ( (Reads1 t0@@12 t1@@10 h@@6 f@@9 bx0@@7))
))))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@12 t1@@10) h@@6))
)))
(assert (forall ((|#$T0@@13| T@U) (|#$R@@13| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@13| |#$R@@13|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@13| |#$R@@13|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@13| |#$R@@13|)))
)))
(assert (forall ((|#$T0@@14| T@U) (|#$R@@14| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@14| |#$R@@14|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@14| |#$R@@14|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@14| |#$R@@14|))
)))
(assert (forall ((t0@@13 T@U) (t1@@11 T@U) (heap@@2 T@U) (f@@10 T@U) (bx0@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and ($IsBox bx0@@8 t0@@13) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@13 t1@@11)))) (|Set#Equal| (Reads1 t0@@13 t1@@11 $OneHeap f@@10 bx0@@8) |Set#Empty|)) (= (Requires1 t0@@13 t1@@11 $OneHeap f@@10 bx0@@8) (Requires1 t0@@13 t1@@11 heap@@2 f@@10 bx0@@8)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@13 t1@@11 $OneHeap f@@10 bx0@@8) ($IsGoodHeap heap@@2))
 :pattern ( (Requires1 t0@@13 t1@@11 heap@@2 f@@10 bx0@@8))
)))
(assert (forall ((|#$T0@@15| T@U) (|#$R@@15| T@U) ($self@@6 T@U) ($heap@@9 T@U) (|$fh$0x#0@@9| T@U) ) (! (= (Apply1 |#$T0@@15| (TSet Tclass._System.object?) $heap@@9 (|Reads1#Handle| |#$T0@@15| |#$R@@15| $self@@6) |$fh$0x#0@@9|) ($Box SetType (Reads1 |#$T0@@15| |#$R@@15| $heap@@9 $self@@6 |$fh$0x#0@@9|)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Apply1 |#$T0@@15| (TSet Tclass._System.object?) $heap@@9 (|Reads1#Handle| |#$T0@@15| |#$R@@15| $self@@6) |$fh$0x#0@@9|))
)))
(assert (forall ((bx@@11 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@3)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
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
(assert (forall (($bx@@1 T@U) (_module._default.P$A@@6 T@U) (_module._default.P$B@@6 T@U) ($heap@@10 T@U) (|$fh$0x#0@@10| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (|Set#IsMember| (Reads2 (Tclass._System.___hFunc1 _module._default.P$A@@6 _module._default.P$B@@6) _module._default.P$A@@6 _module._default.P$B@@6 $heap@@10 (|_module.__default.P#Handle| _module._default.P$A@@6 _module._default.P$B@@6) |$fh$0x#0@@10| |$fh$0x#1@@2|) $bx@@1) (|Set#IsMember| (Reads1 _module._default.P$A@@6 _module._default.P$B@@6 $heap@@10 ($Unbox HandleTypeType |$fh$0x#0@@10|) |$fh$0x#1@@2|) $bx@@1))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (|Set#IsMember| (Reads2 (Tclass._System.___hFunc1 _module._default.P$A@@6 _module._default.P$B@@6) _module._default.P$A@@6 _module._default.P$B@@6 $heap@@10 (|_module.__default.P#Handle| _module._default.P$A@@6 _module._default.P$B@@6) |$fh$0x#0@@10| |$fh$0x#1@@2|) $bx@@1))
)))
(assert  (and (forall ((t0@@14 T@T) (t1@@12 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@14 t1@@12 t2@@5 (MapType1Store t0@@14 t1@@12 t2@@5 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@2 u1@@2 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@3 T@T) (u1@@3 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@3 u1@@3 u2@@1 (MapType1Store u0@@3 u1@@3 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@3 u1@@3 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#130| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (|Set#IsMember| |l#3| ($Box refType $o@@1))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |623|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#130| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((h@@7 T@U) (v@@3 T@U) ) (! ($IsAlloc boolType v@@3 TBool h@@7)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@3 TBool h@@7))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |f#0@@6| () T@U)
(declare-fun _module._default.Q$U@@2 () T@U)
(declare-fun _module._default.Q$V@@2 () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |x#0@@6| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.Q)
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
 (=> (= (ControlFlow 0 0) 12) (let ((anon5_Else_correct  (=> (and ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) ($IsAllocBox |x#0@@6| _module._default.Q$U@@2 $Heap@@6)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (Requires1 _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|)) (=> (Requires1 _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|) (=> (and (= |b$reqreads#2@0| (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@2) alloc)))) (|Set#IsMember| (Reads1 _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|) ($Box refType $o@@2))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@2 $f@@0)))
 :qid |Simpledfy.89:3|
 :skolemid |595|
))) (|_module.__default.P#canCall| _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|)) (=> (and (and (= (_module.__default.Q _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|) (_module.__default.P _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|)) (|_module.__default.P#canCall| _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|)) (and ($IsBox (_module.__default.Q _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|) _module._default.Q$V@@2) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#2@0|)))))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#130| null $Heap@@6 alloc (Reads2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|))) (=> (and (and ($IsAllocBox ($Box HandleTypeType |f#0@@6|) (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) ($IsAllocBox |x#0@@6| _module._default.Q$U@@2 $Heap@@6)) (and (= |b$reqreads#0@0| (forall (($o@@3 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@3) alloc)))) (|Set#IsMember| (Reads1 _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|) ($Box refType $o@@3))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@3 $f@@1)))
 :qid |Simpledfy.87:14|
 :skolemid |593|
))) (Requires1 _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 |f#0@@6| |x#0@@6|))) (and (=> (= (ControlFlow 0 5) (- 0 11)) |b$reqreads#0@0|) (=> |b$reqreads#0@0| (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> ($IsAllocBox ($Box HandleTypeType (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2)) (Tclass._System.___hFunc2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) (=> (and ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) ($IsAllocBox |x#0@@6| _module._default.Q$U@@2 $Heap@@6)) (and (=> (= (ControlFlow 0 5) (- 0 9)) (Requires2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|)) (=> (Requires2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|) (=> (= |b$reqreads#1@0| (forall (($o@@4 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@4) alloc)))) (|Set#IsMember| (Reads2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|) ($Box refType $o@@4))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@4 $f@@2)))
 :qid |Simpledfy.86:11|
 :skolemid |594|
))) (and (=> (= (ControlFlow 0 5) (- 0 8)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> ($IsAllocBox ($Box HandleTypeType (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2)) (Tclass._System.___hFunc2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) (=> (and ($IsAlloc HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) $Heap@@6) ($IsAllocBox |x#0@@6| _module._default.Q$U@@2 $Heap@@6)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (Requires2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|)) (=> (Requires2 (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2) _module._default.Q$U@@2 _module._default.Q$V@@2 $Heap@@6 (|_module.__default.P#Handle| _module._default.Q$U@@2 _module._default.Q$V@@2) ($Box HandleTypeType |f#0@@6|) |x#0@@6|) (and (=> (= (ControlFlow 0 5) 1) anon5_Then_correct) (=> (= (ControlFlow 0 5) 3) anon5_Else_correct)))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hFunc1 _module._default.Q$U@@2 _module._default.Q$V@@2)) ($IsBox |x#0@@6| _module._default.Q$U@@2)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 12) 5))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
