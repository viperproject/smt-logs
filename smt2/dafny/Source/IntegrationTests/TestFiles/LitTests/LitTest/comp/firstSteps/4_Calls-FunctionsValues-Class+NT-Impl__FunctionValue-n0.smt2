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
(declare-fun Tagclass.FunctionValues.Class () T@U)
(declare-fun Tagclass.FunctionValues.Class? () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun tytagFamily$Class () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun FunctionValues.Class.x (T@U) Int)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.FunctionValues.Class? () T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun |FunctionValues.Class.F#Handle| (T@U) T@U)
(declare-fun |FunctionValues.Class.F#requires| (T@U) Bool)
(declare-fun |FunctionValues.NT.F#Handle| (Int) T@U)
(declare-fun |FunctionValues.NT.F#requires| (Int) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun FunctionValues.Class.F (T@U) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |FunctionValues.Class.F#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.FunctionValues.Class () T@U)
(declare-fun |FunctionValues.Class.G#canCall| () Bool)
(declare-fun FunctionValues.Class.G () Int)
(declare-fun LitInt (Int) Int)
(declare-fun |FunctionValues.NT.G#canCall| () Bool)
(declare-fun FunctionValues.NT.G () Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun FunctionValues.NT.F (Int) Int)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun |FunctionValues.NT.F#canCall| (Int) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |FunctionValues.Class.G#Handle| () T@U)
(declare-fun |FunctionValues.NT.G#Handle| () T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun |FunctionValues.Class.G#requires| () Bool)
(declare-fun |FunctionValues.NT.G#requires| () Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 Tagclass.FunctionValues.Class Tagclass.FunctionValues.Class? |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| tytagFamily$Class)
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
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.FunctionValues.Class?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc intType (int_2_U (FunctionValues.Class.x $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |512|
 :pattern ( (FunctionValues.Class.x $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
(assert (= (Tag TInt) TagInt))
(assert (forall ((|#$R| T@U) (|f#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@0) ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hFunc0 |#$R|) $h@@0))
 :qid |unknown.0:0|
 :skolemid |442|
 :pattern ( ($IsAlloc HandleTypeType |f#0| (Tclass._System.___hPartialFunc0 |#$R|) $h@@0))
)))
(assert (forall ((|#$R@@0| T@U) (|f#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@1) ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc0 |#$R@@0|) $h@@1))
 :qid |unknown.0:0|
 :skolemid |447|
 :pattern ( ($IsAlloc HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 |#$R@@0|) $h@@1))
)))
(assert (forall (($self T@U) ($heap T@U) ) (! (= (Requires0 TInt $heap (|FunctionValues.Class.F#Handle| $self)) (|FunctionValues.Class.F#requires| $self))
 :qid |unknown.0:0|
 :skolemid |485|
 :pattern ( (Requires0 TInt $heap (|FunctionValues.Class.F#Handle| $self)))
)))
(assert (forall (($self@@0 Int) ($heap@@0 T@U) ) (! (= (Requires0 TInt $heap@@0 (|FunctionValues.NT.F#Handle| $self@@0)) (|FunctionValues.NT.F#requires| $self@@0))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( (Requires0 TInt $heap@@0 (|FunctionValues.NT.F#Handle| $self@@0)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this T@U) ) (!  (=> (or (|FunctionValues.Class.F#canCall| (Lit refType this)) (and (< 1 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.FunctionValues.Class)))) (= (FunctionValues.Class.F (Lit refType this)) (FunctionValues.Class.x (Lit refType this))))
 :qid |_4CallsFunctionsValuesClassNTdfy.28:14|
 :weight 3
 :skolemid |519|
 :pattern ( (FunctionValues.Class.F (Lit refType this)))
))))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.FunctionValues.Class?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.FunctionValues.Class?)))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($Is refType $o@@0 Tclass.FunctionValues.Class?))
)))
(assert (forall ((|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.FunctionValues.Class $h@@2) ($IsAlloc refType |c#0| Tclass.FunctionValues.Class? $h@@2))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType |c#0| Tclass.FunctionValues.Class $h@@2))
 :pattern ( ($IsAlloc refType |c#0| Tclass.FunctionValues.Class? $h@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.Class.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.Class.G (LitInt 3)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.Class.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.Class.G (LitInt 3)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.NT.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.NT.G (LitInt 3)))))
(assert  (=> (<= 0 $FunctionContextHeight) (=> (or |FunctionValues.NT.G#canCall| (< 0 $FunctionContextHeight)) (= FunctionValues.NT.G (LitInt 3)))))
(assert (forall (($o@@1 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.FunctionValues.Class? $h@@3)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.FunctionValues.Class? $h@@3))
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
(assert (forall (($self@@1 T@U) ($heap@@1 T@U) ) (! (= (Apply0 TInt $heap@@1 (|FunctionValues.Class.F#Handle| $self@@1)) ($Box intType (int_2_U (FunctionValues.Class.F $self@@1))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( (Apply0 TInt $heap@@1 (|FunctionValues.Class.F#Handle| $self@@1)))
)))
(assert (forall (($self@@2 Int) ($heap@@2 T@U) ) (! (= (Apply0 TInt $heap@@2 (|FunctionValues.NT.F#Handle| $self@@2)) ($Box intType (int_2_U (FunctionValues.NT.F $self@@2))))
 :qid |unknown.0:0|
 :skolemid |494|
 :pattern ( (Apply0 TInt $heap@@2 (|FunctionValues.NT.F#Handle| $self@@2)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.FunctionValues.Class?)) ($Is intType (int_2_U (FunctionValues.Class.x $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( (FunctionValues.Class.x $o@@2))
))))
(assert (forall ((t0@@1 T@U) (heap T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@1))) (|Set#Equal| (Reads0 t0@@1 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@1 $OneHeap f@@0) (Requires0 t0@@1 heap f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@1 $OneHeap f@@0) ($IsGoodHeap heap))
 :pattern ( (Requires0 t0@@1 heap f@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@0 Int) ) (!  (=> (or (|FunctionValues.NT.F#canCall| this@@0) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) this@@0) (< this@@0 15)))) (= (FunctionValues.NT.F this@@0) this@@0))
 :qid |_4CallsFunctionsValuesClassNTdfy.33:14|
 :skolemid |527|
 :pattern ( (FunctionValues.NT.F this@@0))
))))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass.FunctionValues.Class) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass.FunctionValues.Class)))
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( ($IsBox bx@@0 Tclass.FunctionValues.Class))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.FunctionValues.Class?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.FunctionValues.Class?)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@1 Tclass.FunctionValues.Class?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.FunctionValues.Class)  (and ($Is refType |c#0@@0| Tclass.FunctionValues.Class?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType |c#0@@0| Tclass.FunctionValues.Class))
 :pattern ( ($Is refType |c#0@@0| Tclass.FunctionValues.Class?))
)))
(assert (forall ((this@@1 Int) ) (!  (=> (and (<= (LitInt 0) this@@1) (< this@@1 15)) (= (|FunctionValues.NT.F#requires| this@@1) true))
 :qid |_4CallsFunctionsValuesClassNTdfy.33:14|
 :skolemid |526|
 :pattern ( (|FunctionValues.NT.F#requires| this@@1))
)))
(assert (forall (($heap@@3 T@U) ) (! (= FunctionValues.Class.G (U_2_int ($Unbox intType (Apply0 TInt $heap@@3 |FunctionValues.Class.G#Handle|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |492|
 :pattern ( FunctionValues.Class.G ($IsGoodHeap $heap@@3))
)))
(assert (forall (($heap@@4 T@U) ) (! (= FunctionValues.NT.G (U_2_int ($Unbox intType (Apply0 TInt $heap@@4 |FunctionValues.NT.G#Handle|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |502|
 :pattern ( FunctionValues.NT.G ($IsGoodHeap $heap@@4))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((this@@2 Int) ) (!  (=> (or (|FunctionValues.NT.F#canCall| (LitInt this@@2)) (and (< 0 $FunctionContextHeight) (and (<= (LitInt 0) this@@2) (< this@@2 15)))) (= (FunctionValues.NT.F (LitInt this@@2)) (LitInt this@@2)))
 :qid |_4CallsFunctionsValuesClassNTdfy.33:14|
 :weight 3
 :skolemid |528|
 :pattern ( (FunctionValues.NT.F (LitInt this@@2)))
))))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (f@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@2))) (= (|Set#Equal| (Reads0 t0@@2 $OneHeap f@@1) |Set#Empty|) (|Set#Equal| (Reads0 t0@@2 heap@@0 f@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@2 $OneHeap f@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads0 t0@@2 heap@@0 f@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
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
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
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
(assert (forall (($heap@@5 T@U) ) (! (= (Requires0 TInt $heap@@5 |FunctionValues.Class.G#Handle|) |FunctionValues.Class.G#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |490|
 :pattern ( (Requires0 TInt $heap@@5 |FunctionValues.Class.G#Handle|))
)))
(assert (forall (($heap@@6 T@U) ) (! (= (Requires0 TInt $heap@@6 |FunctionValues.NT.G#Handle|) |FunctionValues.NT.G#requires|)
 :qid |DafnyPreludebpl.593:12|
 :skolemid |500|
 :pattern ( (Requires0 TInt $heap@@6 |FunctionValues.NT.G#Handle|))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1032|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@1| T@U) ) (! (= ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
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
(assert (forall ((|#$R@@8| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@4)) bx@@4) ($Is HandleTypeType ($Unbox HandleTypeType bx@@4) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@4 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (= (Tag Tclass.FunctionValues.Class) Tagclass.FunctionValues.Class))
(assert (= (TagFamily Tclass.FunctionValues.Class) tytagFamily$Class))
(assert (= (Tag Tclass.FunctionValues.Class?) Tagclass.FunctionValues.Class?))
(assert (= (TagFamily Tclass.FunctionValues.Class?) tytagFamily$Class))
(assert (forall ((f@@9 T@U) (t0@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc0 t0@@11) h@@5)) (=> (Requires0 t0@@11 h@@5 f@@9) ($IsAllocBox (Apply0 t0@@11 h@@5 f@@9) t0@@11 h@@5)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc0 t0@@11) h@@5))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((this@@3 T@U) ) (!  (=> (or (|FunctionValues.Class.F#canCall| this@@3) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass.FunctionValues.Class)))) (= (FunctionValues.Class.F this@@3) (FunctionValues.Class.x this@@3)))
 :qid |_4CallsFunctionsValuesClassNTdfy.28:14|
 :skolemid |518|
 :pattern ( (FunctionValues.Class.F this@@3))
))))
(assert (forall ((f@@10 T@U) (t0@@12 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@12)) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 t0@@12) ($IsBox bx@@6 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@6 t0@@12))
 :pattern ( ($IsBox bx@@6 u0@@2))
))) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@12)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall (($self@@3 T@U) ($heap@@7 T@U) ) (! (= (FunctionValues.Class.F $self@@3) (U_2_int ($Unbox intType (Apply0 TInt $heap@@7 (|FunctionValues.Class.F#Handle| $self@@3)))))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( (FunctionValues.Class.F $self@@3) ($IsGoodHeap $heap@@7))
)))
(assert (forall (($self@@4 Int) ($heap@@8 T@U) ) (! (= (FunctionValues.NT.F $self@@4) (U_2_int ($Unbox intType (Apply0 TInt $heap@@8 (|FunctionValues.NT.F#Handle| $self@@4)))))
 :qid |unknown.0:0|
 :skolemid |497|
 :pattern ( (FunctionValues.NT.F $self@@4) ($IsGoodHeap $heap@@8))
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
(assert (forall (($heap@@9 T@U) ) (! (= (Apply0 TInt $heap@@9 |FunctionValues.Class.G#Handle|) ($Box intType (int_2_U FunctionValues.Class.G)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |489|
 :pattern ( (Apply0 TInt $heap@@9 |FunctionValues.Class.G#Handle|))
)))
(assert (forall (($heap@@10 T@U) ) (! (= (Apply0 TInt $heap@@10 |FunctionValues.NT.G#Handle|) ($Box intType (int_2_U FunctionValues.NT.G)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |499|
 :pattern ( (Apply0 TInt $heap@@10 |FunctionValues.NT.G#Handle|))
)))
(assert (= |FunctionValues.Class.G#requires| true))
(assert (= |FunctionValues.NT.G#requires| true))
(assert (forall ((h@@6 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@6))
)))
(assert (forall (($bx T@U) ($self@@5 T@U) ($heap@@11 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@11 (|FunctionValues.Class.F#Handle| $self@@5)) $bx) false)
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@11 (|FunctionValues.Class.F#Handle| $self@@5)) $bx))
)))
(assert (forall (($bx@@0 T@U) ($self@@6 Int) ($heap@@12 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@12 (|FunctionValues.NT.F#Handle| $self@@6)) $bx@@0) false)
 :qid |unknown.0:0|
 :skolemid |496|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@12 (|FunctionValues.NT.F#Handle| $self@@6)) $bx@@0))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@2| T@U) ) (! (= ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@2|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@2| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((this@@4 T@U) ) (!  (=> (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass.FunctionValues.Class)) (= (|FunctionValues.Class.F#requires| this@@4) true))
 :qid |_4CallsFunctionsValuesClassNTdfy.28:14|
 :skolemid |517|
 :pattern ( (|FunctionValues.Class.F#requires| this@@4))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall (($bx@@1 T@U) ($heap@@13 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@13 |FunctionValues.Class.G#Handle|) $bx@@1) false)
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@13 |FunctionValues.Class.G#Handle|) $bx@@1))
)))
(assert (forall (($bx@@2 T@U) ($heap@@14 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@14 |FunctionValues.NT.G#Handle|) $bx@@2) false)
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@14 |FunctionValues.NT.G#Handle|) $bx@@2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |nt#0@0| () Int)
(declare-fun |f##0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |f##1@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |f##2@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |f##3@0| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun |$rhs#3@0| () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |nt#0| () Int)
(declare-fun |x0#0| () T@U)
(declare-fun |x1#0| () T@U)
(declare-fun |x4#0| () T@U)
(declare-fun |x5#0| () T@U)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon0_correct  (=> (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (LitInt 5))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.FunctionValues.Class) ($IsAlloc refType call2formal@this Tclass.FunctionValues.Class $Heap)))) (=> (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.FunctionValues.Class) ($IsAlloc refType call2formal@this@0 Tclass.FunctionValues.Class $Heap@0)))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |_4CallsFunctionsValuesClassNTdfy.27:5|
 :skolemid |514|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
))) (and ($HeapSucc $Heap $Heap@0) (= |newtype$check#0@0| (LitInt 5))))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 15))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 15)) (=> (= |nt#0@0| (LitInt 5)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |f##0@0| (|FunctionValues.Class.F#Handle| call2formal@this@0)) (=> (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |_4CallsFunctionsValuesClassNTdfy.21:10|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (=> (= |f##1@0| |FunctionValues.Class.G#Handle|) (=> (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6)))
 :qid |_4CallsFunctionsValuesClassNTdfy.21:10|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |f##2@0| (|FunctionValues.NT.F#Handle| |nt#0@0|)) (=> (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7)))
 :qid |_4CallsFunctionsValuesClassNTdfy.21:10|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7))
)) ($HeapSucc $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |f##3@0| |FunctionValues.NT.G#Handle|) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8)))
 :qid |_4CallsFunctionsValuesClassNTdfy.21:10|
 :skolemid |506|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= call2formal@this@0 null)) (not true))) (=> (or (not (= call2formal@this@0 null)) (not true)) (=> (= |$rhs#0@0| (|FunctionValues.Class.F#Handle| call2formal@this@0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) true) (=> (= |$rhs#1@0| |FunctionValues.Class.G#Handle|) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (= |$rhs#2@0| (|FunctionValues.NT.F#Handle| |nt#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (=> (and (= |$rhs#3@0| |FunctionValues.NT.G#Handle|) (= |x##1@0| (LitInt 2))) (=> (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass.FunctionValues.Class) ($IsAlloc refType call2formal@this@@0 Tclass.FunctionValues.Class $Heap))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (=> (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass.FunctionValues.Class) ($IsAlloc refType call2formal@this@0@@0 Tclass.FunctionValues.Class $Heap@5))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call2formal@this@0@@0) alloc))))) (and (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9)))
 :qid |_4CallsFunctionsValuesClassNTdfy.27:5|
 :skolemid |514|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (= |newtype$check#1@0| (LitInt 2)) (= (ControlFlow 0 2) (- 0 1))))) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 15)))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass.FunctionValues.Class) ($IsAlloc refType |c#0@@1| Tclass.FunctionValues.Class $Heap))) true)) (=> (and (and (and (<= (LitInt 0) |nt#0|) (< |nt#0| 15)) true) (and (and ($Is HandleTypeType |x0#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x0#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true)) (=> (and (and (and (and ($Is HandleTypeType |x1#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x1#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (and (and ($Is HandleTypeType |x4#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x4#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true)) (and (and (and ($Is HandleTypeType |x5#0| (Tclass._System.___hTotalFunc0 TInt)) ($IsAlloc HandleTypeType |x5#0| (Tclass._System.___hTotalFunc0 TInt) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 18) 2)))) anon0_correct)))))
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
