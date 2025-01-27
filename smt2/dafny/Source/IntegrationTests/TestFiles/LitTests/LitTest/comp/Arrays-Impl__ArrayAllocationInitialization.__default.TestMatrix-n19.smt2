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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun Tagclass.ArrayAllocationInitialization.AutoInit () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
(declare-fun tytagFamily$AutoInit () T@U)
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
(declare-fun ArrayAllocationInitialization.__default.AutoInitF2 (Int Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.ArrayAllocationInitialization.AutoInit () T@U)
(declare-fun |ArrayAllocationInitialization.__default.AutoInitF2#Handle| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SeqType () T@T)
(declare-fun ArrayAllocationInitialization.__default.M2S (T@U T@U T@U T@U Int Int) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun |ArrayAllocationInitialization.__default.M2S#canCall| (T@U T@U T@U Int Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |ArrayAllocationInitialization.__default.AutoInitF2#canCall| (Int Int) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun |Seq#Append| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun ArrayAllocationInitialization.__default.MatrixToSequence (T@U T@U T@U) T@U)
(declare-fun |ArrayAllocationInitialization.__default.MatrixToSequence#canCall| (T@U T@U T@U) Bool)
(declare-fun $LZ () T@U)
(declare-fun |ArrayAllocationInitialization.__default.AutoInitF2#requires| (Int Int) Bool)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSeq alloc Tagclass._System.nat Tagclass._System.array2? Tagclass._System.array2 Tagclass._System.___hFunc2 Tagclass.ArrayAllocationInitialization.AutoInit tytagFamily$nat tytagFamily$array2 |tytagFamily$_#Func2| tytagFamily$AutoInit)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall (($heap T@U) (|$fh$0x#0| Int) (|$fh$0x#1| Int) ) (! (= (ArrayAllocationInitialization.__default.AutoInitF2 |$fh$0x#0| |$fh$0x#1|) (U_2_int ($Unbox intType (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |$fh$0x#0|)) ($Box intType (int_2_U |$fh$0x#1|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4452|
 :pattern ( (ArrayAllocationInitialization.__default.AutoInitF2 |$fh$0x#0| |$fh$0x#1|) ($IsGoodHeap $heap))
)))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |4187|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |4189|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |4044|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.ArrayAllocationInitialization.AutoInit $h@@0)
 :qid |unknown.0:0|
 :skolemid |4543|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.ArrayAllocationInitialization.AutoInit $h@@0))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |4197|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |4198|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |4199|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
 :qid |unknown.0:0|
 :skolemid |4195|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@1))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@1))
)))
(assert (= (Ctor SeqType) 4))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T T@U) ($ly T@U) ($Heap T@U) (|m#0| T@U) (|i#0| Int) (|j#0| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T $Heap |m#0| |i#0| |j#0|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap) (and ($Is refType |m#0| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T)) ($IsAlloc refType |m#0| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T) $Heap))) (<= (LitInt 0) |i#0|)) (<= (LitInt 0) |j#0|)) (and (and (<= |i#0| (_System.array2.Length0 |m#0|)) (<= |j#0| (_System.array2.Length1 |m#0|))) (=> (= |i#0| (_System.array2.Length0 |m#0|)) (= |j#0| (LitInt 0))))))) ($IsAlloc SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T $ly $Heap |m#0| |i#0| |j#0|) (TSeq ArrayAllocationInitialization._default.M2S$T) $Heap))
 :qid |unknown.0:0|
 :skolemid |4515|
 :pattern ( ($IsAlloc SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T $ly $Heap |m#0| |i#0| |j#0|) (TSeq ArrayAllocationInitialization._default.M2S$T) $Heap))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |3808|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |4196|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (= (Ctor HandleTypeType) 5))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))))
 :qid |unknown.0:0|
 :skolemid |4200|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |4186|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|i#0@@0| Int) (|j#0@@0| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.AutoInitF2#canCall| |i#0@@0| |j#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |i#0@@0|) (<= (LitInt 0) |j#0@@0|)))) (= (ArrayAllocationInitialization.__default.AutoInitF2 |i#0@@0| |j#0@@0|) (ite (= |i#0@@0| |j#0@@0|) 50 78)))
 :qid |Arraysdfy.572:23|
 :skolemid |4416|
 :pattern ( (ArrayAllocationInitialization.__default.AutoInitF2 |i#0@@0| |j#0@@0|))
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
(assert (forall ((s T@U) (bx@@0 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@0 t)) ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |3941|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@0) (TSeq t)))
)))
(assert (forall ((ArrayAllocationInitialization._default.M2S$T@@0 T@U) ($ly@@0 T@U) ($h0 T@U) ($h1 T@U) (|m#0@@0| T@U) (|i#0@@1| Int) (|j#0@@1| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@0 $h0 |m#0@@0| |i#0@@1| |j#0@@1|) (and (and ($Is refType |m#0@@0| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@0)) (<= (LitInt 0) |i#0@@1|)) (<= (LitInt 0) |j#0@@1|)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= $o@@2 |m#0@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |4512|
)) (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 $ly@@0 $h0 |m#0@@0| |i#0@@1| |j#0@@1|) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 $ly@@0 $h1 |m#0@@0| |i#0@@1| |j#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |4513|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@0 $ly@@0 $h1 |m#0@@0| |i#0@@1| |j#0@@1|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|i#0@@2| Int) (|j#0@@2| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.AutoInitF2#canCall| (LitInt |i#0@@2|) (LitInt |j#0@@2|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |i#0@@2|) (<= (LitInt 0) |j#0@@2|)))) (= (ArrayAllocationInitialization.__default.AutoInitF2 (LitInt |i#0@@2|) (LitInt |j#0@@2|)) (ite (= (LitInt |i#0@@2|) (LitInt |j#0@@2|)) 50 78)))
 :qid |Arraysdfy.572:23|
 :weight 3
 :skolemid |4417|
 :pattern ( (ArrayAllocationInitialization.__default.AutoInitF2 (LitInt |i#0@@2|) (LitInt |j#0@@2|)))
))))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |3709|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |3788|
 :pattern ( (MultiIndexField f i))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |4043|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |3907|
 :pattern ( (|Seq#Build| s@@0 v))
)))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |4194|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0) ($IsAlloc T@@1 v@@0 t@@0 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |3722|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t@@0 h@@0))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@3 T@U) ($o@@3 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@3))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@3))))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@3))
 :qid |unknown.0:0|
 :skolemid |4184|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@1 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@1 h@@1) ($IsAllocBox bx@@1 t@@1 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |3794|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@1 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@2 h@@2) ($IsAlloc T@@2 v@@1 t@@2 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |3793|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@2 h@@2))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |4178|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |4191|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
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
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.ArrayAllocationInitialization.AutoInit) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass.ArrayAllocationInitialization.AutoInit)))
 :qid |unknown.0:0|
 :skolemid |4399|
 :pattern ( ($IsBox bx@@3 Tclass.ArrayAllocationInitialization.AutoInit))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |4185|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((s@@1 T@U) (i@@0 Int) (v@@2 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) v@@2)) (=> (or (not (= i@@0 (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0) (|Seq#Index| s@@1 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |3908|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@2) i@@0))
)))
(assert (forall ((f@@0 T@U) (t0@@0 T@U) (t1@@0 T@U) (t2 T@U) (h@@3 T@U) ) (!  (=> ($IsGoodHeap h@@3) (= ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@3) (forall ((bx0 T@U) (bx1 T@U) ) (!  (=> (and (and (and ($IsBox bx0 t0@@0) ($IsAllocBox bx0 t0@@0 h@@3)) (and ($IsBox bx1 t1@@0) ($IsAllocBox bx1 t1@@0 h@@3))) (Requires2 t0@@0 t1@@0 t2 h@@3 f@@0 bx0 bx1)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@3 f@@0 bx0 bx1) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |4224|
 :pattern ( (|Set#IsMember| (Reads2 t0@@0 t1@@0 t2 h@@3 f@@0 bx0 bx1) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |4225|
 :pattern ( (Apply2 t0@@0 t1@@0 t2 h@@3 f@@0 bx0 bx1))
 :pattern ( (Reads2 t0@@0 t1@@0 t2 h@@3 f@@0 bx0 bx1))
))))
 :qid |unknown.0:0|
 :skolemid |4226|
 :pattern ( ($IsAlloc HandleTypeType f@@0 (Tclass._System.___hFunc2 t0@@0 t1@@0 t2) h@@3))
)))
(assert (forall ((f@@1 T@U) (t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)) (forall ((h@@4 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) (and ($IsBox bx0@@0 t0@@1) ($IsBox bx1@@0 t1@@1))) (Requires2 t0@@1 t1@@1 t2@@0 h@@4 f@@1 bx0@@0 bx1@@0)) ($IsBox (Apply2 t0@@1 t1@@1 t2@@0 h@@4 f@@1 bx0@@0 bx1@@0) t2@@0))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4218|
 :pattern ( (Apply2 t0@@1 t1@@1 t2@@0 h@@4 f@@1 bx0@@0 bx1@@0))
)))
 :qid |unknown.0:0|
 :skolemid |4219|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@1 t1@@1 t2@@0)))
)))
(assert (forall ((ArrayAllocationInitialization._default.M2S$T@@1 T@U) ($ly@@1 T@U) ($Heap@@0 T@U) (|m#0@@1| T@U) (|i#0@@3| Int) (|j#0@@3| Int) ) (! (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@1 ($LS $ly@@1) $Heap@@0 |m#0@@1| |i#0@@3| |j#0@@3|) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@1 $ly@@1 $Heap@@0 |m#0@@1| |i#0@@3| |j#0@@3|))
 :qid |unknown.0:0|
 :skolemid |4510|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@1 ($LS $ly@@1) $Heap@@0 |m#0@@1| |i#0@@3| |j#0@@3|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |3833|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap T@U) (f@@2 T@U) (bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and (and ($IsBox bx0@@1 t0@@2) ($IsBox bx1@@1 t1@@2)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@2 t1@@2 t2@@1)))) (= (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@2 bx0@@1 bx1@@1) |Set#Empty|) (|Set#Equal| (Reads2 t0@@2 t1@@2 t2@@1 heap f@@2 bx0@@1 bx1@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |4216|
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 $OneHeap f@@2 bx0@@1 bx1@@1) ($IsGoodHeap heap))
 :pattern ( (Reads2 t0@@2 t1@@2 t2@@1 heap f@@2 bx0@@1 bx1@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |3800|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@4 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@5))))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |4183|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((f@@3 T@U) (t0@@3 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@5)) (forall ((bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@2 t0@@3 h@@5) ($IsAllocBox bx1@@2 t1@@3 h@@5)) (Requires2 t0@@3 t1@@3 t2@@2 h@@5 f@@3 bx0@@2 bx1@@2)) ($IsAllocBox (Apply2 t0@@3 t1@@3 t2@@2 h@@5 f@@3 bx0@@2 bx1@@2) t2@@2 h@@5))
 :qid |unknown.0:0|
 :skolemid |4227|
 :pattern ( (Apply2 t0@@3 t1@@3 t2@@2 h@@5 f@@3 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |4228|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@3 t1@@3 t2@@2) h@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.MatrixToSequence$T T@U) ($Heap@@1 T@U) (|m#0@@2| T@U) ) (!  (=> (or (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| ArrayAllocationInitialization._default.MatrixToSequence$T $Heap@@1 |m#0@@2|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@1) ($Is refType |m#0@@2| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T))))) (and (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.MatrixToSequence$T $Heap@@1 |m#0@@2| (LitInt 0) (LitInt 0)) (= (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T $Heap@@1 |m#0@@2|) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.MatrixToSequence$T ($LS $LZ) $Heap@@1 |m#0@@2| (LitInt 0) (LitInt 0)))))
 :qid |unknown.0:0|
 :skolemid |4508|
 :pattern ( (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T $Heap@@1 |m#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |3710|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@3 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@3) ($Is T@@3 v@@3 t@@3))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |3721|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.MatrixToSequence$T@@0 T@U) ($Heap@@2 T@U) (|m#0@@3| T@U) ) (!  (=> (or (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| ArrayAllocationInitialization._default.MatrixToSequence$T@@0 $Heap@@2 |m#0@@3|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@2) (and ($Is refType |m#0@@3| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T@@0)) ($IsAlloc refType |m#0@@3| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T@@0) $Heap@@2))))) ($IsAlloc SeqType (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@0 $Heap@@2 |m#0@@3|) (TSeq ArrayAllocationInitialization._default.MatrixToSequence$T@@0) $Heap@@2))
 :qid |unknown.0:0|
 :skolemid |4506|
 :pattern ( ($IsAlloc SeqType (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@0 $Heap@@2 |m#0@@3|) (TSeq ArrayAllocationInitialization._default.MatrixToSequence$T@@0) $Heap@@2))
))))
(assert (forall (($heap@@0 T@U) (|$fh$0x#0@@0| T@U) (|$fh$0x#1@@0| T@U) ) (! (= (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@0 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0|) (|ArrayAllocationInitialization.__default.AutoInitF2#requires| (U_2_int ($Unbox intType |$fh$0x#0@@0|)) (U_2_int ($Unbox intType |$fh$0x#1@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4450|
 :pattern ( (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@0 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@0| |$fh$0x#1@@0|))
)))
(assert (forall ((s@@2 T@U) ) (! (<= 0 (|Seq#Length| s@@2))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |3904|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |4181|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |4182|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@4 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SeqType v@@4 (TSeq t0@@4) h@@6) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@4))) ($IsAllocBox (|Seq#Index| v@@4 i@@1) t0@@4 h@@6))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |3756|
 :pattern ( (|Seq#Index| v@@4 i@@1))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |3757|
 :pattern ( ($IsAlloc SeqType v@@4 (TSeq t0@@4) h@@6))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSeq (TSeq t@@4)) t@@4)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |3690|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSeq t@@5)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |3691|
 :pattern ( (TSeq t@@5))
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
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |4179|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |4192|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |3708|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (t2@@3 T@U) (heap@@0 T@U) (f@@4 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and (and ($IsBox bx0@@3 t0@@5) ($IsBox bx1@@3 t1@@4)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)))) (|Set#Equal| (Reads2 t0@@5 t1@@4 t2@@3 $OneHeap f@@4 bx0@@3 bx1@@3) |Set#Empty|)) (= (Requires2 t0@@5 t1@@4 t2@@3 $OneHeap f@@4 bx0@@3 bx1@@3) (Requires2 t0@@5 t1@@4 t2@@3 heap@@0 f@@4 bx0@@3 bx1@@3)))
 :qid |unknown.0:0|
 :skolemid |4217|
 :pattern ( (Requires2 t0@@5 t1@@4 t2@@3 $OneHeap f@@4 bx0@@3 bx1@@3) ($IsGoodHeap heap@@0))
 :pattern ( (Requires2 t0@@5 t1@@4 t2@@3 heap@@0 f@@4 bx0@@3 bx1@@3))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@5 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@6)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |4188|
 :pattern ( (_System.array2.Length0 $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |4190|
 :pattern ( (_System.array2.Length1 $o@@7) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall (($bx T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) (|$fh$0x#1@@1| T@U) ) (! (= (|Set#IsMember| (Reads2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@1 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@1| |$fh$0x#1@@1|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |4451|
 :pattern ( (|Set#IsMember| (Reads2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@1 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@1| |$fh$0x#1@@1|) $bx))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T@@2 T@U) ($ly@@2 T@U) ($Heap@@3 T@U) (|m#0@@4| T@U) (|i#0@@4| Int) (|j#0@@4| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@2 $Heap@@3 |m#0@@4| |i#0@@4| |j#0@@4|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@3) (and ($Is refType |m#0@@4| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@2)) ($IsAlloc refType |m#0@@4| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@2) $Heap@@3))) (<= (LitInt 0) |i#0@@4|)) (<= (LitInt 0) |j#0@@4|)) (and (and (<= |i#0@@4| (_System.array2.Length0 |m#0@@4|)) (<= |j#0@@4| (_System.array2.Length1 |m#0@@4|))) (=> (= |i#0@@4| (_System.array2.Length0 |m#0@@4|)) (= |j#0@@4| (LitInt 0))))))) ($Is SeqType (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 $ly@@2 $Heap@@3 |m#0@@4| |i#0@@4| |j#0@@4|) (TSeq ArrayAllocationInitialization._default.M2S$T@@2)))
 :qid |unknown.0:0|
 :skolemid |4514|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@2 $ly@@2 $Heap@@3 |m#0@@4| |i#0@@4| |j#0@@4|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|i#0@@5| Int) (|j#0@@5| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.AutoInitF2#canCall| |i#0@@5| |j#0@@5|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |i#0@@5|) (<= (LitInt 0) |j#0@@5|)))) (and (<= (LitInt 20) (ArrayAllocationInitialization.__default.AutoInitF2 |i#0@@5| |j#0@@5|)) (< (ArrayAllocationInitialization.__default.AutoInitF2 |i#0@@5| |j#0@@5|) 2000000)))
 :qid |Arraysdfy.572:23|
 :skolemid |4414|
 :pattern ( (ArrayAllocationInitialization.__default.AutoInitF2 |i#0@@5| |j#0@@5|))
))))
(assert (forall ((f@@5 T@U) (t0@@6 T@U) (t1@@5 T@U) (t2@@4 T@U) (u0@@0 T@U) (u1@@0 T@U) (u2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 u0@@0) ($IsBox bx@@5 t0@@6))
 :qid |unknown.0:0|
 :skolemid |4220|
 :pattern ( ($IsBox bx@@5 u0@@0))
 :pattern ( ($IsBox bx@@5 t0@@6))
))) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 u1@@0) ($IsBox bx@@6 t1@@5))
 :qid |unknown.0:0|
 :skolemid |4221|
 :pattern ( ($IsBox bx@@6 u1@@0))
 :pattern ( ($IsBox bx@@6 t1@@5))
))) (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 t2@@4) ($IsBox bx@@7 u2))
 :qid |unknown.0:0|
 :skolemid |4222|
 :pattern ( ($IsBox bx@@7 t2@@4))
 :pattern ( ($IsBox bx@@7 u2))
))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
 :qid |unknown.0:0|
 :skolemid |4223|
 :pattern ( ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 u0@@0 u1@@0 u2)))
)))
(assert (forall ((ArrayAllocationInitialization._default.MatrixToSequence$T@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (|m#0@@5| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| ArrayAllocationInitialization._default.MatrixToSequence$T@@1 $h0@@0 |m#0@@5|) ($Is refType |m#0@@5| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T@@1)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@8 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (= $o@@8 |m#0@@5|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@8) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@8) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |4503|
)) (= (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@1 $h0@@0 |m#0@@5|) (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@1 $h1@@0 |m#0@@5|))))
 :qid |unknown.0:0|
 :skolemid |4504|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@1 $h1@@0 |m#0@@5|))
)))
(assert  (and (forall ((t0@@7 T@T) (t1@@6 T@T) (t2@@5 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@7 t1@@6 t2@@5 (MapType1Store t0@@7 t1@@6 t2@@5 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2@@0 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@1 (MapType1Store u0@@2 u1@@2 u2@@1 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@1 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))  (=> (and (or (not (= $o@@9 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7820|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@9 $f@@1))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.MatrixToSequence$T@@2 T@U) ($Heap@@4 T@U) (|m#0@@6| T@U) ) (!  (=> (or (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| ArrayAllocationInitialization._default.MatrixToSequence$T@@2 $Heap@@4 |m#0@@6|) (and (< 1 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@4) (and ($Is refType |m#0@@6| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T@@2)) ($IsAlloc refType |m#0@@6| (Tclass._System.array2 ArrayAllocationInitialization._default.MatrixToSequence$T@@2) $Heap@@4))))) ($Is SeqType (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@2 $Heap@@4 |m#0@@6|) (TSeq ArrayAllocationInitialization._default.MatrixToSequence$T@@2)))
 :qid |unknown.0:0|
 :skolemid |4505|
 :pattern ( (ArrayAllocationInitialization.__default.MatrixToSequence ArrayAllocationInitialization._default.MatrixToSequence$T@@2 $Heap@@4 |m#0@@6|))
))))
(assert (forall ((f@@6 T@U) (i@@4 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@6 i@@4)) f@@6) (= (MultiIndexField_Inverse1 (MultiIndexField f@@6 i@@4)) i@@4))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |3789|
 :pattern ( (MultiIndexField f@@6 i@@4))
)))
(assert (forall ((s@@3 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@3 val@@4)) s@@3) (= (|Seq#Build_inv1| (|Seq#Build| s@@3 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |3906|
 :pattern ( (|Seq#Build| s@@3 val@@4))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (t2@@6 T@U) (h0 T@U) (h1 T@U) (f@@7 T@U) (bx0@@4 T@U) (bx1@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@4 t0@@8) ($IsBox bx1@@4 t1@@7)) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc2 t0@@8 t1@@7 t2@@6)))) (forall ((o@@3 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads2 t0@@8 t1@@7 t2@@6 h0 f@@7 bx0@@4 bx1@@4) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@3) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@3) fld)))
 :qid |unknown.0:0|
 :skolemid |4208|
))) (= (Requires2 t0@@8 t1@@7 t2@@6 h0 f@@7 bx0@@4 bx1@@4) (Requires2 t0@@8 t1@@7 t2@@6 h1 f@@7 bx0@@4 bx1@@4)))
 :qid |unknown.0:0|
 :skolemid |4209|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@8 t1@@7 t2@@6 h1 f@@7 bx0@@4 bx1@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (t2@@7 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@8 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@5 t0@@9) ($IsBox bx1@@5 t1@@8)) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc2 t0@@9 t1@@8 t2@@7)))) (forall ((o@@4 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads2 t0@@9 t1@@8 t2@@7 h1@@0 f@@8 bx0@@5 bx1@@5) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@4) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@4) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |4210|
))) (= (Requires2 t0@@9 t1@@8 t2@@7 h0@@0 f@@8 bx0@@5 bx1@@5) (Requires2 t0@@9 t1@@8 t2@@7 h1@@0 f@@8 bx0@@5 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |4211|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@9 t1@@8 t2@@7 h1@@0 f@@8 bx0@@5 bx1@@5))
)))
(assert (forall ((bx@@8 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@8 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@8)) bx@@8) ($Is SeqType ($Unbox SeqType bx@@8) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |3718|
 :pattern ( ($IsBox bx@@8 (TSeq t@@6)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |4180|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |4193|
 :pattern ( ($IsBox bx@@10 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((ArrayAllocationInitialization._default.M2S$T@@3 T@U) ($ly@@3 T@U) ($Heap@@5 T@U) (|m#0@@7| T@U) (|i#0@@6| Int) (|j#0@@6| Int) ) (!  (=> (or (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@5 |m#0@@7| |i#0@@6| |j#0@@6|) (and (< 0 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@5) ($Is refType |m#0@@7| (Tclass._System.array2 ArrayAllocationInitialization._default.M2S$T@@3))) (<= (LitInt 0) |i#0@@6|)) (<= (LitInt 0) |j#0@@6|)) (and (and (<= |i#0@@6| (_System.array2.Length0 |m#0@@7|)) (<= |j#0@@6| (_System.array2.Length1 |m#0@@7|))) (=> (= |i#0@@6| (_System.array2.Length0 |m#0@@7|)) (= |j#0@@6| (LitInt 0))))))) (and (=> (or (not (= |i#0@@6| (_System.array2.Length0 |m#0@@7|))) (not true)) (and (=> (= |j#0@@6| (_System.array2.Length1 |m#0@@7|)) (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@5 |m#0@@7| (+ |i#0@@6| 1) (LitInt 0))) (=> (or (not (= |j#0@@6| (_System.array2.Length1 |m#0@@7|))) (not true)) (|ArrayAllocationInitialization.__default.M2S#canCall| ArrayAllocationInitialization._default.M2S$T@@3 $Heap@@5 |m#0@@7| |i#0@@6| (+ |j#0@@6| 1))))) (= (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $ly@@3) $Heap@@5 |m#0@@7| |i#0@@6| |j#0@@6|) (ite (= |i#0@@6| (_System.array2.Length0 |m#0@@7|)) |Seq#Empty| (ite (= |j#0@@6| (_System.array2.Length1 |m#0@@7|)) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 $ly@@3 $Heap@@5 |m#0@@7| (+ |i#0@@6| 1) (LitInt 0)) (|Seq#Append| (|Seq#Build| |Seq#Empty| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 |m#0@@7|) (MultiIndexField (IndexField |i#0@@6|) |j#0@@6|))) (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 $ly@@3 $Heap@@5 |m#0@@7| |i#0@@6| (+ |j#0@@6| 1))))))))
 :qid |unknown.0:0|
 :skolemid |4517|
 :pattern ( (ArrayAllocationInitialization.__default.M2S ArrayAllocationInitialization._default.M2S$T@@3 ($LS $ly@@3) $Heap@@5 |m#0@@7| |i#0@@6| |j#0@@6|) ($IsGoodHeap $Heap@@5))
))))
(assert (forall ((h@@7 T@U) (r@@0 T@U) (f@@9 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@9 x@@6))) ($HeapSucc h@@7 (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@9 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |3799|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@7 r@@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@7 r@@0) f@@9 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.ArrayAllocationInitialization.AutoInit) Tagclass.ArrayAllocationInitialization.AutoInit))
(assert (= (TagFamily Tclass.ArrayAllocationInitialization.AutoInit) tytagFamily$AutoInit))
(assert (forall (($heap@@2 T@U) (|$fh$0x#0@@2| T@U) (|$fh$0x#1@@2| T@U) ) (! (= (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@2 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2|) ($Box intType (int_2_U (ArrayAllocationInitialization.__default.AutoInitF2 (U_2_int ($Unbox intType |$fh$0x#0@@2|)) (U_2_int ($Unbox intType |$fh$0x#1@@2|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |4449|
 :pattern ( (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $heap@@2 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| |$fh$0x#0@@2| |$fh$0x#1@@2|))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@1 o@@5) (|Set#IsMember| b@@1 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |3831|
 :pattern ( (|Set#IsMember| a@@1 o@@5))
 :pattern ( (|Set#IsMember| b@@1 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |3832|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((s0@@0 T@U) (s1@@0 T@U) (n Int) ) (!  (and (=> (< n (|Seq#Length| s0@@0)) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s0@@0 n))) (=> (<= (|Seq#Length| s0@@0) n) (= (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n) (|Seq#Index| s1@@0 (- n (|Seq#Length| s0@@0))))))
 :qid |DafnyPreludebpl.1159:15|
 :skolemid |3910|
 :pattern ( (|Seq#Index| (|Seq#Append| s0@@0 s1@@0) n))
)))
(assert (forall ((|i#0@@7| Int) (|j#0@@7| Int) ) (!  (=> (and (<= (LitInt 0) |i#0@@7|) (<= (LitInt 0) |j#0@@7|)) (= (|ArrayAllocationInitialization.__default.AutoInitF2#requires| |i#0@@7| |j#0@@7|) true))
 :qid |Arraysdfy.572:23|
 :skolemid |4415|
 :pattern ( (|ArrayAllocationInitialization.__default.AutoInitF2#requires| |i#0@@7| |j#0@@7|))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (t2@@8 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@10 T@U) (bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and ($IsBox bx0@@6 t0@@10) ($IsBox bx1@@6 t1@@9)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@10 t1@@9 t2@@8)))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@10 t1@@9 t2@@8 h0@@1 f@@10 bx0@@6 bx1@@6) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@6) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@6) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |4204|
))) (= (Reads2 t0@@10 t1@@9 t2@@8 h0@@1 f@@10 bx0@@6 bx1@@6) (Reads2 t0@@10 t1@@9 t2@@8 h1@@1 f@@10 bx0@@6 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |4205|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads2 t0@@10 t1@@9 t2@@8 h1@@1 f@@10 bx0@@6 bx1@@6))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (t2@@9 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@11 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and ($IsBox bx0@@7 t0@@11) ($IsBox bx1@@7 t1@@10)) ($Is HandleTypeType f@@11 (Tclass._System.___hFunc2 t0@@11 t1@@10 t2@@9)))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@11 t1@@10 t2@@9 h1@@2 f@@11 bx0@@7 bx1@@7) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@7) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@7) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |4206|
))) (= (Reads2 t0@@11 t1@@10 t2@@9 h0@@2 f@@11 bx0@@7 bx1@@7) (Reads2 t0@@11 t1@@10 t2@@9 h1@@2 f@@11 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |4207|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads2 t0@@11 t1@@10 t2@@9 h1@@2 f@@11 bx0@@7 bx1@@7))
)))
(assert (forall ((t0@@12 T@U) (t1@@11 T@U) (t2@@10 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@12 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@8 t0@@12) ($IsBox bx1@@8 t1@@11)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@12 t1@@11 t2@@10)))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@11 t2@@10 h0@@3 f@@12 bx0@@8 bx1@@8) ($Box refType o@@8))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@8) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@8) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |4212|
))) (= (Apply2 t0@@12 t1@@11 t2@@10 h0@@3 f@@12 bx0@@8 bx1@@8) (Apply2 t0@@12 t1@@11 t2@@10 h1@@3 f@@12 bx0@@8 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |4213|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply2 t0@@12 t1@@11 t2@@10 h1@@3 f@@12 bx0@@8 bx1@@8))
)))
(assert (forall ((t0@@13 T@U) (t1@@12 T@U) (t2@@11 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@13 T@U) (bx0@@9 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@9 t0@@13) ($IsBox bx1@@9 t1@@12)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@13 t1@@12 t2@@11)))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads2 t0@@13 t1@@12 t2@@11 h1@@4 f@@13 bx0@@9 bx1@@9) ($Box refType o@@9))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@9) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@9) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |4214|
))) (= (Apply2 t0@@13 t1@@12 t2@@11 h0@@4 f@@13 bx0@@9 bx1@@9) (Apply2 t0@@13 t1@@12 t2@@11 h1@@4 f@@13 bx0@@9 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |4215|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply2 t0@@13 t1@@12 t2@@11 h1@@4 f@@13 bx0@@9 bx1@@9))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.ArrayAllocationInitialization.AutoInit)  (and (<= (LitInt 20) (U_2_int |x#0@@2|)) (< (U_2_int |x#0@@2|) 2000000)))
 :qid |unknown.0:0|
 :skolemid |4542|
 :pattern ( ($Is intType |x#0@@2| Tclass.ArrayAllocationInitialization.AutoInit))
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
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |3905|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@8 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@8)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |3744|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@8))
)))
(assert (forall ((v@@6 T@U) (t0@@14 T@U) ) (! (= ($Is SeqType v@@6 (TSeq t0@@14)) (forall ((i@@5 Int) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length| v@@6))) ($IsBox (|Seq#Index| v@@6 i@@5) t0@@14))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |3736|
 :pattern ( (|Seq#Index| v@@6 i@@5))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |3737|
 :pattern ( ($Is SeqType v@@6 (TSeq t0@@14)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |3723|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@6 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |a#0@0| () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
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
(declare-fun |a#0| () T@U)
(declare-fun |s#0| () T@U)
(set-info :boogie-vc-id Impl$$ArrayAllocationInitialization.__default.TestMatrixAutoInit)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@6 alloc false)) (= |$rhs#0@0| (LitInt 0))) (and (= |$rhs#1@0| (LitInt 2)) (= |$rhs#2@0| (LitInt 5)))) (and (and ($Is refType |a#0@0| (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit)) ($IsAlloc refType |a#0@0| (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@@6)) (= |s#0@0| (Lit SeqType |Seq#Empty|)))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 24)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (=> (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $nw@0) alloc)))) (= (_System.array2.Length0 $nw@0) |$rhs#0@0|))) (=> (and (and (and (= (_System.array2.Length1 $nw@0) |$rhs#0@0|) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and ($IsAlloc refType $nw@0 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@0) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@0 $nw@0)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@0 $nw@0) (= |s#0@1| (|Seq#Append| |s#0@0| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@0 $nw@0)))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 22)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (=> (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc)))) (= (_System.array2.Length0 $nw@1) |$rhs#0@0|))) (=> (and (and (and (= (_System.array2.Length1 $nw@1) |$rhs#2@0|) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))) (and (and ($IsAlloc refType $nw@1 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@1) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@1 $nw@1)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@1 $nw@1) (= |s#0@2| (|Seq#Append| |s#0@1| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@1 $nw@1)))))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 20)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc)))) (= (_System.array2.Length0 $nw@2) |$rhs#2@0|))) (=> (and (and (and (= (_System.array2.Length1 $nw@2) |$rhs#0@0|) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))) (and (and ($IsAlloc refType $nw@2 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@2) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@2 $nw@2)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@2 $nw@2) (= |s#0@3| (|Seq#Append| |s#0@2| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@2 $nw@2)))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (=> (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc)))) (= (_System.array2.Length0 $nw@3) |$rhs#1@0|))) (=> (and (and (and (= (_System.array2.Length1 $nw@3) |$rhs#2@0|) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@3) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3))) (and (and ($IsAlloc refType $nw@3 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@3) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@3 $nw@3)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@3 $nw@3) (= |s#0@4| (|Seq#Append| |s#0@3| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@3 $nw@3)))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 16)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 15)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc))))) (and (= (_System.array2.Length0 $nw@4) |$rhs#0@0|) (= (_System.array2.Length1 $nw@4) |$rhs#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (forall ((|arrayinit#0#i0#0| Int) (|arrayinit#0#i1#0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| |$rhs#0@0|)) (and (<= 0 |arrayinit#0#i1#0|) (< |arrayinit#0#i1#0| |$rhs#0@0|))) (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@3 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0|)) ($Box intType (int_2_U |arrayinit#0#i1#0|))))
 :qid |Arraysdfy.753:10|
 :skolemid |4523|
))) (=> (and (and (and (forall ((|arrayinit#0#i0#0@@0| Int) (|arrayinit#0#i1#0@@0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| |$rhs#0@0|)) (and (<= 0 |arrayinit#0#i1#0@@0|) (< |arrayinit#0#i1#0@@0| |$rhs#0@0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|)))) (U_2_int ($Unbox intType (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@3 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i1#0@@0|)))))))
 :qid |Arraysdfy.753:10|
 :skolemid |4524|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|)))
)) (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $nw@4) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4))) (and (and ($IsAlloc refType $nw@4 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@4) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@4 $nw@4)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@4 $nw@4) (= |s#0@5| (|Seq#Append| |s#0@4| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@4 $nw@4)))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 12)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc))))) (and (= (_System.array2.Length0 $nw@5) |$rhs#0@0|) (= (_System.array2.Length1 $nw@5) |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (forall ((|arrayinit#1#i0#0| Int) (|arrayinit#1#i1#0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#1#i0#0|) (< |arrayinit#1#i0#0| |$rhs#0@0|)) (and (<= 0 |arrayinit#1#i1#0|) (< |arrayinit#1#i1#0| |$rhs#2@0|))) (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@4 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#1#i0#0|)) ($Box intType (int_2_U |arrayinit#1#i1#0|))))
 :qid |Arraysdfy.755:10|
 :skolemid |4525|
))) (=> (and (and (and (forall ((|arrayinit#1#i0#0@@0| Int) (|arrayinit#1#i1#0@@0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#1#i0#0@@0|) (< |arrayinit#1#i0#0@@0| |$rhs#0@0|)) (and (<= 0 |arrayinit#1#i1#0@@0|) (< |arrayinit#1#i1#0@@0| |$rhs#2@0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (MultiIndexField (IndexField |arrayinit#1#i0#0@@0|) |arrayinit#1#i1#0@@0|)))) (U_2_int ($Unbox intType (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@4 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#1#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#1#i1#0@@0|)))))))
 :qid |Arraysdfy.755:10|
 :skolemid |4526|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) (MultiIndexField (IndexField |arrayinit#1#i0#0@@0|) |arrayinit#1#i1#0@@0|)))
)) (= $Heap@5 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $nw@5) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (and (and ($IsAlloc refType $nw@5 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@5) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@5 $nw@5)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@5 $nw@5) (= |s#0@6| (|Seq#Append| |s#0@5| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@5 $nw@5)))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 8)) (<= 0 |$rhs#0@0|)) (=> (<= 0 |$rhs#0@0|) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (and (and (or (not (= $nw@6 null)) (not true)) ($Is refType $nw@6 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) alloc))))) (and (= (_System.array2.Length0 $nw@6) |$rhs#2@0|) (= (_System.array2.Length1 $nw@6) |$rhs#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (forall ((|arrayinit#2#i0#0| Int) (|arrayinit#2#i1#0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#2#i0#0|) (< |arrayinit#2#i0#0| |$rhs#2@0|)) (and (<= 0 |arrayinit#2#i1#0|) (< |arrayinit#2#i1#0| |$rhs#0@0|))) (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@5 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#2#i0#0|)) ($Box intType (int_2_U |arrayinit#2#i1#0|))))
 :qid |Arraysdfy.757:10|
 :skolemid |4527|
))) (=> (and (and (and (forall ((|arrayinit#2#i0#0@@0| Int) (|arrayinit#2#i1#0@@0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#2#i0#0@@0|) (< |arrayinit#2#i0#0@@0| |$rhs#2@0|)) (and (<= 0 |arrayinit#2#i1#0@@0|) (< |arrayinit#2#i1#0@@0| |$rhs#0@0|))) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) (MultiIndexField (IndexField |arrayinit#2#i0#0@@0|) |arrayinit#2#i1#0@@0|)))) (U_2_int ($Unbox intType (Apply2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@5 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#2#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#2#i1#0@@0|)))))))
 :qid |Arraysdfy.757:10|
 :skolemid |4528|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) (MultiIndexField (IndexField |arrayinit#2#i0#0@@0|) |arrayinit#2#i1#0@@0|)))
)) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@6) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))) (and (and ($IsAlloc refType $nw@6 (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@6) (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@6 $nw@6)) (and (|ArrayAllocationInitialization.__default.MatrixToSequence#canCall| Tclass.ArrayAllocationInitialization.AutoInit $Heap@6 $nw@6) (= |s#0@7| (|Seq#Append| |s#0@6| (ArrayAllocationInitialization.__default.MatrixToSequence Tclass.ArrayAllocationInitialization.AutoInit $Heap@6 $nw@6)))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (<= 0 |$rhs#1@0|)) (=> (<= 0 |$rhs#1@0|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (<= 0 |$rhs#2@0|)) (=> (<= 0 |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (or (not (= $nw@7 null)) (not true)) ($Is refType $nw@7 (Tclass._System.array2? Tclass.ArrayAllocationInitialization.AutoInit))) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@7) alloc)))) (= (_System.array2.Length0 $nw@7) |$rhs#1@0|)) (and (= (_System.array2.Length1 $nw@7) |$rhs#2@0|) (= (ControlFlow 0 2) (- 0 1)))) (forall ((|arrayinit#3#i0#0| Int) (|arrayinit#3#i1#0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#3#i0#0|) (< |arrayinit#3#i0#0| |$rhs#1@0|)) (and (<= 0 |arrayinit#3#i1#0|) (< |arrayinit#3#i1#0| |$rhs#2@0|))) (Requires2 Tclass._System.nat Tclass._System.nat Tclass.ArrayAllocationInitialization.AutoInit $Heap@6 |ArrayAllocationInitialization.__default.AutoInitF2#Handle| ($Box intType (int_2_U |arrayinit#3#i0#0|)) ($Box intType (int_2_U |arrayinit#3#i1#0|))))
 :qid |Arraysdfy.759:10|
 :skolemid |4529|
))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and ($Is refType |a#0| (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit)) ($IsAlloc refType |a#0| (Tclass._System.array2 Tclass.ArrayAllocationInitialization.AutoInit) $Heap@@6)) true) (=> (and (and (and ($Is SeqType |s#0| (TSeq Tclass.ArrayAllocationInitialization.AutoInit)) ($IsAlloc SeqType |s#0| (TSeq Tclass.ArrayAllocationInitialization.AutoInit) $Heap@@6)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 26) 2))) anon0_correct)))))
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
