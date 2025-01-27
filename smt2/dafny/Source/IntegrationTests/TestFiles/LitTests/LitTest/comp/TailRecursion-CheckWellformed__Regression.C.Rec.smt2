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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun Tagclass.Regression.C () T@U)
(declare-fun Tagclass.Regression.C? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
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
(declare-fun |Regression.C.F#Handle| (T@U T@U) T@U)
(declare-fun |Regression.C.F#requires| (T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun Tclass.Regression.C (T@U) T@U)
(declare-fun Tclass.Regression.C? (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Regression.C.F (T@U T@U) Int)
(declare-fun |Regression.C.F#canCall| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Regression.C.data (T@U T@U) Int)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Regression.C.Rec (T@U T@U T@U Int T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |Regression.C.Rec#canCall| (T@U T@U Int T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Regression.C.next (T@U T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun Tclass.Regression.C_0 (T@U) T@U)
(declare-fun Tclass.Regression.C?_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc Tagclass._System.nat Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 Tagclass.Regression.C Tagclass.Regression.C? tytagFamily$nat |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| tytagFamily$C)
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
(assert (forall ((Regression.C$U T@U) ($self T@U) ($heap T@U) ) (! (= (Requires0 TInt $heap (|Regression.C.F#Handle| Regression.C$U $self)) (|Regression.C.F#requires| Regression.C$U $self))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( (Requires0 TInt $heap (|Regression.C.F#Handle| Regression.C$U $self)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
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
(assert (forall ((Regression.C$U@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.Regression.C Regression.C$U@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass.Regression.C? Regression.C$U@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Regression.C Regression.C$U@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.Regression.C? Regression.C$U@@0) $h@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((Regression.C$U@@1 T@U) ($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o (Tclass.Regression.C? Regression.C$U@@1) $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc refType $o (Tclass.Regression.C? Regression.C$U@@1) $h@@3))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression.C$U@@2 T@U) (this T@U) ) (!  (=> (or (|Regression.C.F#canCall| Regression.C$U@@2 this) (and (< 1 $FunctionContextHeight) (and (or (not (= this null)) (not true)) ($Is refType this (Tclass.Regression.C Regression.C$U@@2))))) (= (Regression.C.F Regression.C$U@@2 this) (Regression.C.data Regression.C$U@@2 this)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Regression.C.F Regression.C$U@@2 this))
))))
(assert (forall ((Regression.C$U@@3 T@U) ($self@@0 T@U) ($heap@@0 T@U) ) (! (= (Apply0 TInt $heap@@0 (|Regression.C.F#Handle| Regression.C$U@@3 $self@@0)) ($Box intType (int_2_U (Regression.C.F Regression.C$U@@3 $self@@0))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (Apply0 TInt $heap@@0 (|Regression.C.F#Handle| Regression.C$U@@3 $self@@0)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Regression.C$U@@4 T@U) ($ly T@U) ($Heap T@U) (this@@0 T@U) (|n#0| Int) (|f#0@@1| T@U) ) (!  (=> (or (|Regression.C.Rec#canCall| Regression.C$U@@4 this@@0 |n#0| |f#0@@1|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.Regression.C Regression.C$U@@4)) ($IsAlloc refType this@@0 (Tclass.Regression.C Regression.C$U@@4) $Heap)))) (<= (LitInt 0) |n#0|)) ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 TInt))))) (and (=> (not (or (= |n#0| (LitInt 0)) (= (Regression.C.next Regression.C$U@@4 this@@0) null))) (and (=> (= (Regression.C.data Regression.C$U@@4 this@@0) (LitInt 17)) (|Regression.C.Rec#canCall| Regression.C$U@@4 (Regression.C.next Regression.C$U@@4 this@@0) (- |n#0| 1) (|Regression.C.F#Handle| Regression.C$U@@4 this@@0))) (=> (or (not (= (Regression.C.data Regression.C$U@@4 this@@0) (LitInt 17))) (not true)) (|Regression.C.Rec#canCall| Regression.C$U@@4 (Regression.C.next Regression.C$U@@4 this@@0) (- |n#0| 1) |f#0@@1|)))) (= (Regression.C.Rec Regression.C$U@@4 ($LS $ly) this@@0 |n#0| |f#0@@1|) (ite  (or (= |n#0| (LitInt 0)) (= (Regression.C.next Regression.C$U@@4 this@@0) null)) (U_2_int ($Unbox intType (Apply0 TInt $Heap |f#0@@1|))) (ite (= (Regression.C.data Regression.C$U@@4 this@@0) (LitInt 17)) (Regression.C.Rec Regression.C$U@@4 $ly (Regression.C.next Regression.C$U@@4 this@@0) (- |n#0| 1) (|Regression.C.F#Handle| Regression.C$U@@4 this@@0)) (Regression.C.Rec Regression.C$U@@4 $ly (Regression.C.next Regression.C$U@@4 this@@0) (- |n#0| 1) |f#0@@1|))))))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (Regression.C.Rec Regression.C$U@@4 ($LS $ly) this@@0 |n#0| |f#0@@1|) ($IsGoodHeap $Heap))
))))
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
(assert  (=> (< 0 $FunctionContextHeight) (forall ((Regression.C$U@@5 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass.Regression.C? Regression.C$U@@5))) ($Is intType (int_2_U (Regression.C.data Regression.C$U@@5 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( (Regression.C.data Regression.C$U@@5 $o@@0))
))))
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
(assert (forall (($bx T@U) (Regression.C$U@@6 T@U) ($self@@1 T@U) ($heap@@1 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@1 (|Regression.C.F#Handle| Regression.C$U@@6 $self@@1)) $bx) false)
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@1 (|Regression.C.F#Handle| Regression.C$U@@6 $self@@1)) $bx))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((Regression.C$U@@7 T@U) ($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass.Regression.C? Regression.C$U@@7))) ($Is refType (Regression.C.next Regression.C$U@@7 $o@@1) (Tclass.Regression.C? Regression.C$U@@7)))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (Regression.C.next Regression.C$U@@7 $o@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((Regression.C$U@@8 T@U) ($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass.Regression.C? Regression.C$U@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))) ($IsAlloc intType (int_2_U (Regression.C.data Regression.C$U@@8 $o@@2)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (Regression.C.data Regression.C$U@@8 $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) alloc)))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((Regression.C$U@@9 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass.Regression.C Regression.C$U@@9))  (and ($Is refType |c#0@@0| (Tclass.Regression.C? Regression.C$U@@9)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($Is refType |c#0@@0| (Tclass.Regression.C Regression.C$U@@9)))
 :pattern ( ($Is refType |c#0@@0| (Tclass.Regression.C? Regression.C$U@@9)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((Regression.C$U@@10 T@U) (this@@1 T@U) ) (!  (=> (or (|Regression.C.F#canCall| Regression.C$U@@10 (Lit refType this@@1)) (and (< 1 $FunctionContextHeight) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass.Regression.C Regression.C$U@@10))))) (= (Regression.C.F Regression.C$U@@10 (Lit refType this@@1)) (Regression.C.data Regression.C$U@@10 (Lit refType this@@1))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |555|
 :pattern ( (Regression.C.F Regression.C$U@@10 (Lit refType this@@1)))
))))
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
(assert (forall ((Regression.C$U@@11 T@U) ) (!  (and (= (Tag (Tclass.Regression.C Regression.C$U@@11)) Tagclass.Regression.C) (= (TagFamily (Tclass.Regression.C Regression.C$U@@11)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( (Tclass.Regression.C Regression.C$U@@11))
)))
(assert (forall ((Regression.C$U@@12 T@U) ) (!  (and (= (Tag (Tclass.Regression.C? Regression.C$U@@12)) Tagclass.Regression.C?) (= (TagFamily (Tclass.Regression.C? Regression.C$U@@12)) tytagFamily$C))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass.Regression.C? Regression.C$U@@12))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall ((Regression.C$U@@13 T@U) ($h@@5 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.Regression.C? Regression.C$U@@13)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))) ($IsAlloc refType (Regression.C.next Regression.C$U@@13 $o@@3) (Tclass.Regression.C? Regression.C$U@@13) $h@@5))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (Regression.C.next Regression.C$U@@13 $o@@3) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@3) alloc)))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx Tclass._System.nat))
)))
(assert (forall ((Regression.C$U@@14 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.Regression.C? Regression.C$U@@14))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.Regression.C? Regression.C$U@@14))))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Is refType $o@@4 (Tclass.Regression.C? Regression.C$U@@14)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Regression.C$U@@15 T@U) ($ly@@0 T@U) ($Heap@@0 T@U) (this@@2 T@U) (|n#0@@0| Int) (|f#0@@2| T@U) ) (!  (=> (or (|Regression.C.Rec#canCall| Regression.C$U@@15 (Lit refType this@@2) (LitInt |n#0@@0|) (Lit HandleTypeType |f#0@@2|)) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 (Tclass.Regression.C Regression.C$U@@15)) ($IsAlloc refType this@@2 (Tclass.Regression.C Regression.C$U@@15) $Heap@@0)))) (<= (LitInt 0) |n#0@@0|)) ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc0 TInt))))) (and (=> (not (or (= (LitInt |n#0@@0|) (LitInt 0)) (= (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) null))) (and (=> (= (Regression.C.data Regression.C$U@@15 (Lit refType this@@2)) (LitInt 17)) (|Regression.C.Rec#canCall| Regression.C$U@@15 (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) (LitInt (- |n#0@@0| 1)) (|Regression.C.F#Handle| Regression.C$U@@15 (Lit refType this@@2)))) (=> (or (not (= (Regression.C.data Regression.C$U@@15 (Lit refType this@@2)) (LitInt 17))) (not true)) (|Regression.C.Rec#canCall| Regression.C$U@@15 (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) (LitInt (- |n#0@@0| 1)) (Lit HandleTypeType |f#0@@2|))))) (= (Regression.C.Rec Regression.C$U@@15 ($LS $ly@@0) (Lit refType this@@2) (LitInt |n#0@@0|) (Lit HandleTypeType |f#0@@2|)) (ite  (or (= (LitInt |n#0@@0|) (LitInt 0)) (= (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) null)) (U_2_int ($Unbox intType (Apply0 TInt $Heap@@0 (Lit HandleTypeType |f#0@@2|)))) (ite (= (Regression.C.data Regression.C$U@@15 (Lit refType this@@2)) (LitInt 17)) (Regression.C.Rec Regression.C$U@@15 ($LS $ly@@0) (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) (LitInt (- |n#0@@0| 1)) (|Regression.C.F#Handle| Regression.C$U@@15 (Lit refType this@@2))) (Regression.C.Rec Regression.C$U@@15 ($LS $ly@@0) (Regression.C.next Regression.C$U@@15 (Lit refType this@@2)) (LitInt (- |n#0@@0| 1)) (Lit HandleTypeType |f#0@@2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |566|
 :pattern ( (Regression.C.Rec Regression.C$U@@15 ($LS $ly@@0) (Lit refType this@@2) (LitInt |n#0@@0|) (Lit HandleTypeType |f#0@@2|)) ($IsGoodHeap $Heap@@0))
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
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 TInt) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@0 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
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
(assert (forall ((Regression.C$U@@16 T@U) ) (! (= (Tclass.Regression.C_0 (Tclass.Regression.C Regression.C$U@@16)) Regression.C$U@@16)
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (Tclass.Regression.C Regression.C$U@@16))
)))
(assert (forall ((Regression.C$U@@17 T@U) ) (! (= (Tclass.Regression.C?_0 (Tclass.Regression.C? Regression.C$U@@17)) Regression.C$U@@17)
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( (Tclass.Regression.C? Regression.C$U@@17))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |1321|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((|#$R@@7| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 |#$R@@7|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc0 |#$R@@7|)) (Requires0 |#$R@@7| $OneHeap |f#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 |#$R@@7|)))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)) (forall ((h@@1 T@U) ) (!  (=> (and ($IsGoodHeap h@@1) (Requires0 t0@@4 h@@1 f@@2)) ($IsBox (Apply0 t0@@4 h@@1 f@@2) t0@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@4 h@@1 f@@2))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hFunc0 |#$R@@8|)))
)))
(assert (forall ((|#$R@@9| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hPartialFunc0 |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hPartialFunc0 |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(assert (forall ((|#$R@@10| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.___hTotalFunc0 |#$R@@10|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@3)) bx@@3) ($Is HandleTypeType ($Unbox HandleTypeType bx@@3) (Tclass._System.___hTotalFunc0 |#$R@@10|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@3 (Tclass._System.___hTotalFunc0 |#$R@@10|)))
)))
(assert (forall ((Regression.C$U@@18 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.Regression.C Regression.C$U@@18)) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) (Tclass.Regression.C Regression.C$U@@18))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@4 (Tclass.Regression.C Regression.C$U@@18)))
)))
(assert (forall ((Regression.C$U@@19 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.Regression.C? Regression.C$U@@19)) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) (Tclass.Regression.C? Regression.C$U@@19))))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsBox bx@@5 (Tclass.Regression.C? Regression.C$U@@19)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((Regression.C$U@@20 T@U) ($ly@@1 T@U) ($Heap@@1 T@U) (this@@3 T@U) (|n#0@@1| Int) (|f#0@@4| T@U) ) (!  (=> (or (|Regression.C.Rec#canCall| Regression.C$U@@20 this@@3 (LitInt |n#0@@1|) |f#0@@4|) (and (< 2 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 (Tclass.Regression.C Regression.C$U@@20)) ($IsAlloc refType this@@3 (Tclass.Regression.C Regression.C$U@@20) $Heap@@1)))) (<= (LitInt 0) |n#0@@1|)) ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc0 TInt))))) (and (=> (not (or (= (LitInt |n#0@@1|) (LitInt 0)) (= (Regression.C.next Regression.C$U@@20 this@@3) null))) (and (=> (= (Regression.C.data Regression.C$U@@20 this@@3) (LitInt 17)) (|Regression.C.Rec#canCall| Regression.C$U@@20 (Regression.C.next Regression.C$U@@20 this@@3) (LitInt (- |n#0@@1| 1)) (|Regression.C.F#Handle| Regression.C$U@@20 this@@3))) (=> (or (not (= (Regression.C.data Regression.C$U@@20 this@@3) (LitInt 17))) (not true)) (|Regression.C.Rec#canCall| Regression.C$U@@20 (Regression.C.next Regression.C$U@@20 this@@3) (LitInt (- |n#0@@1| 1)) |f#0@@4|)))) (= (Regression.C.Rec Regression.C$U@@20 ($LS $ly@@1) this@@3 (LitInt |n#0@@1|) |f#0@@4|) (ite  (or (= (LitInt |n#0@@1|) (LitInt 0)) (= (Regression.C.next Regression.C$U@@20 this@@3) null)) (U_2_int ($Unbox intType (Apply0 TInt $Heap@@1 |f#0@@4|))) (ite (= (Regression.C.data Regression.C$U@@20 this@@3) (LitInt 17)) (Regression.C.Rec Regression.C$U@@20 ($LS $ly@@1) (Regression.C.next Regression.C$U@@20 this@@3) (LitInt (- |n#0@@1| 1)) (|Regression.C.F#Handle| Regression.C$U@@20 this@@3)) (Regression.C.Rec Regression.C$U@@20 ($LS $ly@@1) (Regression.C.next Regression.C$U@@20 this@@3) (LitInt (- |n#0@@1| 1)) |f#0@@4|))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |565|
 :pattern ( (Regression.C.Rec Regression.C$U@@20 ($LS $ly@@1) this@@3 (LitInt |n#0@@1|) |f#0@@4|) ($IsGoodHeap $Heap@@1))
))))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((Regression.C$U@@21 T@U) ($self@@2 T@U) ($heap@@2 T@U) ) (! (= (Regression.C.F Regression.C$U@@21 $self@@2) (U_2_int ($Unbox intType (Apply0 TInt $heap@@2 (|Regression.C.F#Handle| Regression.C$U@@21 $self@@2)))))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (Regression.C.F Regression.C$U@@21 $self@@2) ($IsGoodHeap $heap@@2))
)))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@5) h@@2)) (=> (Requires0 t0@@5 h@@2 f@@3) ($IsAllocBox (Apply0 t0@@5 h@@2 f@@3) t0@@5 h@@2)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@5) h@@2))
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
(assert (forall ((f@@4 T@U) (t0@@6 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@6)) (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 t0@@6) ($IsBox bx@@6 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@6 t0@@6))
 :pattern ( ($IsBox bx@@6 u0@@2))
))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@6)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((Regression.C$U@@22 T@U) ($ly@@2 T@U) (this@@4 T@U) (|n#0@@2| Int) (|f#0@@5| T@U) ) (! (= (Regression.C.Rec Regression.C$U@@22 ($LS $ly@@2) this@@4 |n#0@@2| |f#0@@5|) (Regression.C.Rec Regression.C$U@@22 $ly@@2 this@@4 |n#0@@2| |f#0@@5|))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (Regression.C.Rec Regression.C$U@@22 ($LS $ly@@2) this@@4 |n#0@@2| |f#0@@5|))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((Regression.C$U@@23 T@U) (this@@5 T@U) ) (!  (=> (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass.Regression.C Regression.C$U@@23))) (= (|Regression.C.F#requires| Regression.C$U@@23 this@@5) true))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (|Regression.C.F#requires| Regression.C$U@@23 this@@5))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((|#$R@@11| T@U) (|f#0@@6| T@U) ) (! (= ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@11|))  (and ($Is HandleTypeType |f#0@@6| (Tclass._System.___hFunc0 |#$R@@11|)) (|Set#Equal| (Reads0 |#$R@@11| $OneHeap |f#0@@6|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@6| (Tclass._System.___hPartialFunc0 |#$R@@11|)))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Regression.C$U@@24 () T@U)
(declare-fun this@@6 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun |n#0@@3| () Int)
(declare-fun |##n#1@0| () Int)
(declare-fun |f#0@@7| () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun |##f#0@0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$Regression.C.Rec)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon14_Else_correct  (=> (or (not (= (Regression.C.data Regression.C$U@@24 this@@6) (LitInt 17))) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (or (not (= (Regression.C.next Regression.C$U@@24 this@@6) null)) (not true))) (=> (or (not (= (Regression.C.next Regression.C$U@@24 this@@6) null)) (not true)) (=> ($IsAllocBox ($Box refType (Regression.C.next Regression.C$U@@24 this@@6)) (Tclass.Regression.C? Regression.C$U@@24) $Heap@@2) (and (=> (= (ControlFlow 0 10) (- 0 12)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (= |##n#1@0| (- |n#0@@3| 1)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@@2) ($IsAlloc HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc0 TInt) $Heap@@2)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (or (<= 0 |n#0@@3|) (= |##n#1@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |##n#1@0| |n#0@@3|)) (=> (= (ControlFlow 0 10) (- 0 9)) (< |##n#1@0| |n#0@@3|))))))))))))))
(let ((anon14_Then_correct  (=> (= (Regression.C.data Regression.C$U@@24 this@@6) (LitInt 17)) (and (=> (= (ControlFlow 0 4) (- 0 8)) (or (not (= (Regression.C.next Regression.C$U@@24 this@@6) null)) (not true))) (=> (or (not (= (Regression.C.next Regression.C$U@@24 this@@6) null)) (not true)) (=> ($IsAllocBox ($Box refType (Regression.C.next Regression.C$U@@24 this@@6)) (Tclass.Regression.C? Regression.C$U@@24) $Heap@@2) (and (=> (= (ControlFlow 0 4) (- 0 7)) ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@3| 1)) Tclass._System.nat) (=> (and (= |##n#0@0| (- |n#0@@3| 1)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@2)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (not (= 1 $FunctionContextHeight)) (not true))) (=> (or (not (= 1 $FunctionContextHeight)) (not true)) (=> (and (= |##f#0@0| (|Regression.C.F#Handle| Regression.C$U@@24 this@@6)) ($IsAlloc HandleTypeType |##f#0@0| (Tclass._System.___hTotalFunc0 TInt) $Heap@@2)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (<= 0 |n#0@@3|) (= |##n#0@0| |n#0@@3|))) (=> (or (<= 0 |n#0@@3|) (= |##n#0@0| |n#0@@3|)) (=> (= (ControlFlow 0 4) (- 0 3)) (< |##n#0@0| |n#0@@3|))))))))))))))))
(let ((anon13_Else_correct  (=> (not (or (= |n#0@@3| (LitInt 0)) (= (Regression.C.next Regression.C$U@@24 this@@6) null))) (and (=> (= (ControlFlow 0 14) 4) anon14_Then_correct) (=> (= (ControlFlow 0 14) 10) anon14_Else_correct)))))
(let ((anon13_Then_correct true))
(let ((anon12_Else_correct  (=> (= |n#0@@3| (LitInt 0)) (and (=> (= (ControlFlow 0 16) 2) anon13_Then_correct) (=> (= (ControlFlow 0 16) 14) anon13_Else_correct)))))
(let ((anon12_Then_correct  (=> (or (not (= |n#0@@3| (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 15) 2) anon13_Then_correct) (=> (= (ControlFlow 0 15) 14) anon13_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (and (and (=> (= (ControlFlow 0 17) 1) anon11_Then_correct) (=> (= (ControlFlow 0 17) 15) anon12_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (or (not (= this@@6 null)) (not true)) (and ($Is refType this@@6 (Tclass.Regression.C Regression.C$U@@24)) ($IsAlloc refType this@@6 (Tclass.Regression.C Regression.C$U@@24) $Heap@@2)))) (and (and (<= (LitInt 0) |n#0@@3|) ($Is HandleTypeType |f#0@@7| (Tclass._System.___hTotalFunc0 TInt))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 18) 17)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
