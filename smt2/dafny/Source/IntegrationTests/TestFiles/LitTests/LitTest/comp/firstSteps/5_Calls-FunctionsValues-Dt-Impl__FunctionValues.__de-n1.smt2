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
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun Tagclass.FunctionValues.Color () T@U)
(declare-fun |##FunctionValues.Color.Red| () T@U)
(declare-fun |##FunctionValues.Color.Green| () T@U)
(declare-fun |##FunctionValues.Color.Blue| () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |FunctionValues.Color.F#Handle| (T@U) T@U)
(declare-fun |FunctionValues.Color.F#requires| (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#FunctionValues.Color.Red| () T@U)
(declare-fun |#FunctionValues.Color.Green| () T@U)
(declare-fun |#FunctionValues.Color.Blue| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.FunctionValues.Color () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |FunctionValues.Color.G#canCall| () Bool)
(declare-fun FunctionValues.Color.G () Int)
(declare-fun LitInt (Int) Int)
(declare-fun |FunctionValues.Color#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun FunctionValues.Color.F (T@U) Int)
(declare-fun FunctionValues.Color.Red_q (T@U) Bool)
(declare-fun FunctionValues.Color.Green_q (T@U) Bool)
(declare-fun FunctionValues.Color.Blue_q (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |FunctionValues.Color.F#canCall| (T@U) Bool)
(declare-fun |$IsA#FunctionValues.Color| (T@U) Bool)
(declare-fun |FunctionValues.Color.G#Handle| () T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun |FunctionValues.Color.G#requires| () Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 Tagclass.FunctionValues.Color |##FunctionValues.Color.Red| |##FunctionValues.Color.Green| |##FunctionValues.Color.Blue| |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| tytagFamily$Color)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R|) $h))
 :qid |unknown.0:0|
 :skolemid |442|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |447|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@0))
)))
(assert (forall (($self T@U) ($heap T@U) ) (! (= (Requires0 TInt $heap (|FunctionValues.Color.F#Handle| $self)) (|FunctionValues.Color.F#requires| $self))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Requires0 TInt $heap (|FunctionValues.Color.F#Handle| $self)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#FunctionValues.Color.Red|) |##FunctionValues.Color.Red|))
(assert (= (DatatypeCtorId |#FunctionValues.Color.Green|) |##FunctionValues.Color.Green|))
(assert (= (DatatypeCtorId |#FunctionValues.Color.Blue|) |##FunctionValues.Color.Blue|))
(assert (= (Ctor DatatypeTypeType) 8))
(assert ($Is DatatypeTypeType |#FunctionValues.Color.Red| Tclass.FunctionValues.Color))
(assert ($Is DatatypeTypeType |#FunctionValues.Color.Green| Tclass.FunctionValues.Color))
(assert ($Is DatatypeTypeType |#FunctionValues.Color.Blue| Tclass.FunctionValues.Color))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.Color.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.Color.G (LitInt 3)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.Color.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.Color.G (LitInt 3)))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|FunctionValues.Color#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( (|FunctionValues.Color#Equal| a b))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
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
(assert (forall (($self@@0 T@U) ($heap@@0 T@U) ) (! (= (Apply0 TInt $heap@@0 (|FunctionValues.Color.F#Handle| $self@@0)) ($Box intType (int_2_U (FunctionValues.Color.F $self@@0))))
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Apply0 TInt $heap@@0 (|FunctionValues.Color.F#Handle| $self@@0)))
)))
(assert (forall ((d T@U) ) (! (= (FunctionValues.Color.Red_q d) (= (DatatypeCtorId d) |##FunctionValues.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (FunctionValues.Color.Red_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (FunctionValues.Color.Green_q d@@0) (= (DatatypeCtorId d@@0) |##FunctionValues.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( (FunctionValues.Color.Green_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (FunctionValues.Color.Blue_q d@@1) (= (DatatypeCtorId d@@1) |##FunctionValues.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |500|
 :pattern ( (FunctionValues.Color.Blue_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@1 T@U) (heap T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@1))) (|Set#Equal| (Reads0 t0@@1 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@1 $OneHeap f@@0) (Requires0 t0@@1 heap f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@1 $OneHeap f@@0) ($IsGoodHeap heap))
 :pattern ( (Requires0 t0@@1 heap f@@0))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (FunctionValues.Color.Red_q d@@2) (= d@@2 |#FunctionValues.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (FunctionValues.Color.Red_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (FunctionValues.Color.Green_q d@@3) (= d@@3 |#FunctionValues.Color.Green|))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( (FunctionValues.Color.Green_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (FunctionValues.Color.Blue_q d@@4) (= d@@4 |#FunctionValues.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (FunctionValues.Color.Blue_q d@@4))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@1) ($IsAlloc T@@1 v t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx t@@0 h@@2) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@3) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@3))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R@@1|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R@@1|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@1|))
)))
(assert (forall ((|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@2|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@2|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |438|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@3|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@3|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |443|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@3|))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.FunctionValues.Color) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass.FunctionValues.Color)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@0 Tclass.FunctionValues.Color))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|FunctionValues.Color.F#canCall| this) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this Tclass.FunctionValues.Color))) (and (|$IsA#FunctionValues.Color| this) (= (FunctionValues.Color.F this) (ite (|FunctionValues.Color#Equal| this |#FunctionValues.Color.Red|) 5 2))))
 :qid |_5CallsFunctionsValuesDtdfy.22:14|
 :skolemid |511|
 :pattern ( (FunctionValues.Color.F this))
))))
(assert (forall (($heap@@1 T@U) ) (! (= FunctionValues.Color.G (U_2_int ($Unbox intType (Apply0 TInt $heap@@1 |FunctionValues.Color.G#Handle|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( FunctionValues.Color.G ($IsGoodHeap $heap@@1))
)))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (f@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@2))) (= (|Set#Equal| (Reads0 t0@@2 $OneHeap f@@1) |Set#Empty|) (|Set#Equal| (Reads0 t0@@2 heap@@0 f@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@2 $OneHeap f@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads0 t0@@2 heap@@0 f@@1))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((t0@@3 T@U) (h0 T@U) (h1 T@U) (f@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@3))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads0 t0@@3 h0 f@@2) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |421|
))) (= (Requires0 t0@@3 h0 f@@2) (Requires0 t0@@3 h1 f@@2)))
 :qid |unknown.0:0|
 :skolemid |422|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@3 h1 f@@2))
)))
(assert (forall ((t0@@4 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@4))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@4 h1@@0 f@@3) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |423|
))) (= (Requires0 t0@@4 h0@@0 f@@3) (Requires0 t0@@4 h1@@0 f@@3)))
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@4 h1@@0 f@@3))
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
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (FunctionValues.Color.Red_q a@@2) (FunctionValues.Color.Red_q b@@2)) (|FunctionValues.Color#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( (|FunctionValues.Color#Equal| a@@2 b@@2) (FunctionValues.Color.Red_q a@@2))
 :pattern ( (|FunctionValues.Color#Equal| a@@2 b@@2) (FunctionValues.Color.Red_q b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (FunctionValues.Color.Green_q a@@3) (FunctionValues.Color.Green_q b@@3)) (|FunctionValues.Color#Equal| a@@3 b@@3))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( (|FunctionValues.Color#Equal| a@@3 b@@3) (FunctionValues.Color.Green_q a@@3))
 :pattern ( (|FunctionValues.Color#Equal| a@@3 b@@3) (FunctionValues.Color.Green_q b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (FunctionValues.Color.Blue_q a@@4) (FunctionValues.Color.Blue_q b@@4)) (|FunctionValues.Color#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( (|FunctionValues.Color#Equal| a@@4 b@@4) (FunctionValues.Color.Blue_q a@@4))
 :pattern ( (|FunctionValues.Color#Equal| a@@4 b@@4) (FunctionValues.Color.Blue_q b@@4))
)))
(assert (forall ((this@@0 T@U) ) (!  (=> ($Is DatatypeTypeType this@@0 Tclass.FunctionValues.Color) (= (|FunctionValues.Color.F#requires| this@@0) true))
 :qid |_5CallsFunctionsValuesDtdfy.22:14|
 :skolemid |510|
 :pattern ( (|FunctionValues.Color.F#requires| this@@0))
)))
(assert (forall ((|#$R@@4| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@4|))
)))
(assert (forall ((|#$R@@5| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@5|)) |#$R@@5|)
 :qid |unknown.0:0|
 :skolemid |439|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@5|))
)))
(assert (forall ((|#$R@@6| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@6|)) |#$R@@6|)
 :qid |unknown.0:0|
 :skolemid |444|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@6|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#FunctionValues.Color| d@@5) (or (or (FunctionValues.Color.Red_q d@@5) (FunctionValues.Color.Green_q d@@5)) (FunctionValues.Color.Blue_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |503|
 :pattern ( (|$IsA#FunctionValues.Color| d@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@1 T@U) ) (!  (=> (or (|FunctionValues.Color.F#canCall| (Lit DatatypeTypeType this@@1)) (and (< 1 $FunctionContextHeight) ($Is DatatypeTypeType this@@1 Tclass.FunctionValues.Color))) (and (|$IsA#FunctionValues.Color| (Lit DatatypeTypeType this@@1)) (= (FunctionValues.Color.F (Lit DatatypeTypeType this@@1)) (ite (|FunctionValues.Color#Equal| this@@1 |#FunctionValues.Color.Red|) 5 2))))
 :qid |_5CallsFunctionsValuesDtdfy.22:14|
 :weight 3
 :skolemid |512|
 :pattern ( (FunctionValues.Color.F (Lit DatatypeTypeType this@@1)))
))))
(assert (forall ((t0@@5 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@5))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads0 t0@@5 h0@@1 f@@4) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |417|
))) (= (Reads0 t0@@5 h0@@1 f@@4) (Reads0 t0@@5 h1@@1 f@@4)))
 :qid |unknown.0:0|
 :skolemid |418|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@5 h1@@1 f@@4))
)))
(assert (forall ((t0@@6 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@6))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@6 h1@@2 f@@5) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |419|
))) (= (Reads0 t0@@6 h0@@2 f@@5) (Reads0 t0@@6 h1@@2 f@@5)))
 :qid |unknown.0:0|
 :skolemid |420|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@6 h1@@2 f@@5))
)))
(assert (forall ((t0@@7 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h0@@3 f@@6) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |425|
))) (= (Apply0 t0@@7 h0@@3 f@@6) (Apply0 t0@@7 h1@@3 f@@6)))
 :qid |unknown.0:0|
 :skolemid |426|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@7 h1@@3 f@@6))
)))
(assert (forall ((t0@@8 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@8))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@8 h1@@4 f@@7) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |427|
))) (= (Apply0 t0@@8 h0@@4 f@@7) (Apply0 t0@@8 h1@@4 f@@7)))
 :qid |unknown.0:0|
 :skolemid |428|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@8 h1@@4 f@@7))
)))
(assert (forall (($heap@@2 T@U) ) (! (= (Requires0 TInt $heap@@2 |FunctionValues.Color.G#Handle|) |FunctionValues.Color.G#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( (Requires0 TInt $heap@@2 |FunctionValues.Color.G#Handle|))
)))
(assert  (and (forall ((t0@@9 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@9 t1@@0 t2 (MapType1Store t0@@9 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1016|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.FunctionValues.Color) (or (or (FunctionValues.Color.Red_q d@@6) (FunctionValues.Color.Green_q d@@6)) (FunctionValues.Color.Blue_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( (FunctionValues.Color.Blue_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.FunctionValues.Color))
 :pattern ( (FunctionValues.Color.Green_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.FunctionValues.Color))
 :pattern ( (FunctionValues.Color.Red_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.FunctionValues.Color))
)))
(assert (forall ((f@@8 T@U) (t0@@10 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@10)) (forall ((h@@4 T@U) ) (!  (=> (and ($IsGoodHeap h@@4) (Requires0 t0@@10 h@@4 f@@8)) ($IsBox (Apply0 t0@@10 h@@4 f@@8) t0@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@10 h@@4 f@@8))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@10)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@7 Tclass.FunctionValues.Color)) ($IsAlloc DatatypeTypeType d@@7 Tclass.FunctionValues.Color $h@@1))
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.FunctionValues.Color $h@@1))
)))
(assert (= (Tag Tclass.FunctionValues.Color) Tagclass.FunctionValues.Color))
(assert (= (TagFamily Tclass.FunctionValues.Color) tytagFamily$Color))
(assert (= |#FunctionValues.Color.Red| (Lit DatatypeTypeType |#FunctionValues.Color.Red|)))
(assert (= |#FunctionValues.Color.Green| (Lit DatatypeTypeType |#FunctionValues.Color.Green|)))
(assert (= |#FunctionValues.Color.Blue| (Lit DatatypeTypeType |#FunctionValues.Color.Blue|)))
(assert (forall ((f@@9 T@U) (t0@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc0 t0@@11) h@@5)) (=> (Requires0 t0@@11 h@@5 f@@9) ($IsAllocBox (Apply0 t0@@11 h@@5 f@@9) t0@@11 h@@5)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc0 t0@@11) h@@5))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (! (= (|Set#Equal| a@@5 b@@5) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@5 o@@7) (|Set#IsMember| b@@5 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@5 o@@7))
 :pattern ( (|Set#IsMember| b@@5 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@5 b@@5))
)))
(assert (forall ((f@@10 T@U) (t0@@12 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@12)) (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 t0@@12) ($IsBox bx@@5 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@5 t0@@12))
 :pattern ( ($IsBox bx@@5 u0@@2))
))) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@12)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall (($self@@1 T@U) ($heap@@3 T@U) ) (! (= (FunctionValues.Color.F $self@@1) (U_2_int ($Unbox intType (Apply0 TInt $heap@@3 (|FunctionValues.Color.F#Handle| $self@@1)))))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (FunctionValues.Color.F $self@@1) ($IsGoodHeap $heap@@3))
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
(assert (forall (($heap@@4 T@U) ) (! (= (Apply0 TInt $heap@@4 |FunctionValues.Color.G#Handle|) ($Box intType (int_2_U FunctionValues.Color.G)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |488|
 :pattern ( (Apply0 TInt $heap@@4 |FunctionValues.Color.G#Handle|))
)))
(assert (= |FunctionValues.Color.G#requires| true))
(assert (forall ((h@@6 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@6))
)))
(assert (forall (($bx T@U) ($self@@2 T@U) ($heap@@5 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@5 (|FunctionValues.Color.F#Handle| $self@@2)) $bx) false)
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@5 (|FunctionValues.Color.F#Handle| $self@@2)) $bx))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@2|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall (($bx@@0 T@U) ($heap@@6 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@6 |FunctionValues.Color.G#Handle|) $bx@@0) false)
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@6 |FunctionValues.Color.G#Handle|) $bx@@0))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |color#0@0| () T@U)
(declare-fun |f##0@0| () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |f##1@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |color#0| () T@U)
(declare-fun |x2#0| () T@U)
(declare-fun |x3#0| () T@U)
(set-info :boogie-vc-id Impl$$FunctionValues.__default.Test)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |color#0@0| (Lit DatatypeTypeType |#FunctionValues.Color.Red|))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (= |f##0@0| (|FunctionValues.Color.F#Handle| |color#0@0|)) (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |_5CallsFunctionsValuesDtdfy.17:10|
 :skolemid |494|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@0))
)) ($HeapSucc $Heap $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |f##1@0| |FunctionValues.Color.G#Handle|) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |_5CallsFunctionsValuesDtdfy.17:10|
 :skolemid |494|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@1))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (= |$rhs#0@0| (|FunctionValues.Color.F#Handle| |color#0@0|)) (= (ControlFlow 0 2) (- 0 1))) (or (not (= 0 $FunctionContextHeight)) (not true))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and ($Is DatatypeTypeType |color#0| Tclass.FunctionValues.Color) ($IsAlloc DatatypeTypeType |color#0| Tclass.FunctionValues.Color $Heap)) true) (and (and ($Is HandleTypeType |x2#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x2#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true)) (and (and (and ($Is HandleTypeType |x3#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x3#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 6) 2)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
