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
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.TwoStateAt.Cell () T@U)
(declare-fun Tagclass.TwoStateAt.Cell? () T@U)
(declare-fun class.TwoStateAt.Cell? () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun field$data () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TwoStateAt.Cell.Plus (T@U T@U T@U T@U T@U) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.TwoStateAt.Cell () T@U)
(declare-fun |TwoStateAt.Cell.Plus#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun |TwoStateAt.Cell.Plus#Handle| (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun TwoStateAt.__default.SP (T@U T@U T@U T@U T@U) Int)
(declare-fun |TwoStateAt.__default.SP#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun TwoStateAt.Cell.Sum (T@U T@U T@U T@U T@U) Int)
(declare-fun |TwoStateAt.Cell.Sum#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass.TwoStateAt.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TwoStateAt.Cell.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun |TwoStateAt.Cell.Plus#requires| (T@U T@U T@U T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Mul (Int Int) Int)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.___hFunc1 Tagclass.TwoStateAt.Cell Tagclass.TwoStateAt.Cell? class.TwoStateAt.Cell? |tytagFamily$_#Func1| tytagFamily$Cell field$data)
)
(assert  (and (and (and (and (and (and (and (= (Ctor refType) 3) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((TwoStateAt.Cell.Plus$Y T@U) ($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|y#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.TwoStateAt.Cell))) (or (|TwoStateAt.Cell.Plus#canCall| TwoStateAt.Cell.Plus$Y $prevHeap $h0 this |y#0|) ($IsBox |y#0| TwoStateAt.Cell.Plus$Y))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o T@U) ($f T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= $o this)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o) $f)))
 :qid |unknown.0:0|
 :skolemid |809|
)) (= (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y $prevHeap $h0 this |y#0|) (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y $prevHeap $h1 this |y#0|))))
 :qid |unknown.0:0|
 :skolemid |810|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y $prevHeap $h1 this |y#0|))
)))
(assert (forall ((TwoStateAt.Cell.Plus$Y@@0 T@U) ($prevHeap@@0 T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Apply1 TwoStateAt.Cell.Plus$Y@@0 TInt $heap (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@0 $prevHeap@@0 $self) |$fh$0x#0|) ($Box intType (int_2_U (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y@@0 $prevHeap@@0 $heap $self |$fh$0x#0|))))
 :qid |unknown.0:0|
 :skolemid |685|
 :pattern ( (Apply1 TwoStateAt.Cell.Plus$Y@@0 TInt $heap (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@0 $prevHeap@@0 $self) |$fh$0x#0|))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((TwoStateAt._default.SP$Y T@U) ($prevHeap@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (|c#0| T@U) (|y#0@@0| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (or (|TwoStateAt.__default.SP#canCall| TwoStateAt._default.SP$Y $prevHeap@@1 $h0@@0 |c#0| |y#0@@0|) (and ($Is refType |c#0| Tclass.TwoStateAt.Cell) ($IsBox |y#0@@0| TwoStateAt._default.SP$Y)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= $o@@0 |c#0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |646|
)) (= (TwoStateAt.__default.SP TwoStateAt._default.SP$Y $prevHeap@@1 $h0@@0 |c#0| |y#0@@0|) (TwoStateAt.__default.SP TwoStateAt._default.SP$Y $prevHeap@@1 $h1@@0 |c#0| |y#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (TwoStateAt.__default.SP TwoStateAt._default.SP$Y $prevHeap@@1 $h1@@0 |c#0| |y#0@@0|))
)))
(assert (forall ((TwoStateAt.Cell.Sum$Y T@U) ($prevHeap@@2 T@U) ($h0@@1 T@U) ($h1@@1 T@U) (|c#0@@0| T@U) (|y#0@@1| T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (or (|TwoStateAt.Cell.Sum#canCall| TwoStateAt.Cell.Sum$Y $prevHeap@@2 $h0@@1 |c#0@@0| |y#0@@1|) (and ($Is refType |c#0@@0| Tclass.TwoStateAt.Cell) ($IsBox |y#0@@1| TwoStateAt.Cell.Sum$Y)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@1 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= $o@@1 |c#0@@0|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@1) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@1) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |803|
)) (= (TwoStateAt.Cell.Sum TwoStateAt.Cell.Sum$Y $prevHeap@@2 $h0@@1 |c#0@@0| |y#0@@1|) (TwoStateAt.Cell.Sum TwoStateAt.Cell.Sum$Y $prevHeap@@2 $h1@@1 |c#0@@0| |y#0@@1|))))
 :qid |unknown.0:0|
 :skolemid |804|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (TwoStateAt.Cell.Sum TwoStateAt.Cell.Sum$Y $prevHeap@@2 $h1@@1 |c#0@@0| |y#0@@1|))
)))
(assert (forall ((TwoStateAt.Cell.Plus$Y@@1 T@U) ($prevHeap@@3 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y@@1 $prevHeap@@3 $heap@@0 $self@@0 |$fh$0x#0@@0|) (U_2_int ($Unbox intType (Apply1 TwoStateAt.Cell.Plus$Y@@1 TInt $heap@@0 (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@1 $prevHeap@@3 $self@@0) |$fh$0x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y@@1 $prevHeap@@3 $heap@@0 $self@@0 |$fh$0x#0@@0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.TwoStateAt.Cell?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |796|
 :pattern ( ($Is refType $o@@2 Tclass.TwoStateAt.Cell?))
)))
(assert (= (Ctor HandleTypeType) 7))
(assert (forall ((f T@U) (t0@@0 T@U) (t1@@0 T@U) (u0@@0 T@U) (u1@@0 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) (forall ((bx T@U) ) (!  (=> ($IsBox bx u0@@0) ($IsBox bx t0@@0))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( ($IsBox bx u0@@0))
 :pattern ( ($IsBox bx t0@@0))
))) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 t1@@0) ($IsBox bx@@0 u1@@0))
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( ($IsBox bx@@0 t1@@0))
 :pattern ( ($IsBox bx@@0 u1@@0))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@0 t1@@0)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@0 u1@@0)))
)))
(assert (forall ((|c#0@@1| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell $h) ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell? $h))
 :qid |unknown.0:0|
 :skolemid |817|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell $h))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.TwoStateAt.Cell? $h))
)))
(assert (= (FDim TwoStateAt.Cell.data) 0))
(assert (= (FieldOfDecl class.TwoStateAt.Cell? field$data) TwoStateAt.Cell.data))
(assert  (not ($IsGhostField TwoStateAt.Cell.data)))
(assert (forall (($o@@3 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.TwoStateAt.Cell? $h@@0)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |797|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.TwoStateAt.Cell? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (f@@0 T@U) (bx0 T@U) ) (!  (=> (and ($IsGoodHeap heap) (and ($IsBox bx0 t0@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@1 t1@@1)))) (= (|Set#Equal| (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@1 t1@@1 heap f@@0 bx0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |393|
 :pattern ( (Reads1 t0@@1 t1@@1 $OneHeap f@@0 bx0) ($IsGoodHeap heap))
 :pattern ( (Reads1 t0@@1 t1@@1 heap f@@0 bx0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall (($bx T@U) (TwoStateAt.Cell.Plus$Y@@2 T@U) ($prevHeap@@4 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| T@U) ) (! (= (|Set#IsMember| (Reads1 TwoStateAt.Cell.Plus$Y@@2 TInt $heap@@1 (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@2 $prevHeap@@4 $self@@1) |$fh$0x#0@@1|) $bx) (= ($Unbox refType $bx) $self@@1))
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (|Set#IsMember| (Reads1 TwoStateAt.Cell.Plus$Y@@2 TInt $heap@@1 (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@2 $prevHeap@@4 $self@@1) |$fh$0x#0@@1|) $bx))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((TwoStateAt.Cell.Plus$Y@@3 T@U) ($prevHeap@@5 T@U) ($Heap T@U) (this@@0 T@U) (|y#0@@2| T@U) ) (!  (=> (or (|TwoStateAt.Cell.Plus#canCall| TwoStateAt.Cell.Plus$Y@@3 $prevHeap@@5 $Heap this@@0 |y#0@@2|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@5 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.TwoStateAt.Cell) ($IsAlloc refType this@@0 Tclass.TwoStateAt.Cell $prevHeap@@5)))) ($IsBox |y#0@@2| TwoStateAt.Cell.Plus$Y@@3)))) (and (|TwoStateAt.__default.SP#canCall| TwoStateAt.Cell.Plus$Y@@3 $prevHeap@@5 $Heap this@@0 |y#0@@2|) (= (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y@@3 $prevHeap@@5 $Heap this@@0 |y#0@@2|) (TwoStateAt.__default.SP TwoStateAt.Cell.Plus$Y@@3 $prevHeap@@5 $Heap this@@0 |y#0@@2|))))
 :qid |unknown.0:0|
 :skolemid |813|
 :pattern ( (TwoStateAt.Cell.Plus TwoStateAt.Cell.Plus$Y@@3 $prevHeap@@5 $Heap this@@0 |y#0@@2|) ($IsGoodHeap $Heap))
))))
(assert (forall ((t0@@2 T@U) (t1@@2 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@0 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@0 t0@@2) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@2 t1@@2)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@2 t1@@2 h0 f@@1 bx0@@0) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |385|
))) (= (Requires1 t0@@2 t1@@2 h0 f@@1 bx0@@0) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@2 t1@@2 h1 f@@1 bx0@@0))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@1 t0@@3) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |387|
))) (= (Requires1 t0@@3 t1@@3 h0@@0 f@@2 bx0@@1) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@3 t1@@3 h1@@0 f@@2 bx0@@1))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@1 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.TwoStateAt.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) TwoStateAt.Cell.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |799|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@4) TwoStateAt.Cell.data)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((TwoStateAt._default.SP$Y@@0 T@U) ($prevHeap@@6 T@U) ($Heap@@0 T@U) (|c#0@@2| T@U) (|y#0@@3| T@U) ) (!  (=> (or (|TwoStateAt.__default.SP#canCall| TwoStateAt._default.SP$Y@@0 $prevHeap@@6 $Heap@@0 |c#0@@2| |y#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@6) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@6 $Heap@@0)) ($Is refType |c#0@@2| Tclass.TwoStateAt.Cell)) ($IsBox |y#0@@3| TwoStateAt._default.SP$Y@@0)))) (= (TwoStateAt.__default.SP TwoStateAt._default.SP$Y@@0 $prevHeap@@6 $Heap@@0 |c#0@@2| |y#0@@3|) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@6 |c#0@@2|) TwoStateAt.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@2|) TwoStateAt.Cell.data))))))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (TwoStateAt.__default.SP TwoStateAt._default.SP$Y@@0 $prevHeap@@6 $Heap@@0 |c#0@@2| |y#0@@3|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@3 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@2 t0@@4) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Reads1 t0@@4 t1@@4 h0@@1 f@@3 bx0@@2) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@4 t1@@4 h1@@1 f@@3 bx0@@2))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@3 t0@@5) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Reads1 t0@@5 t1@@5 h0@@2 f@@4 bx0@@3) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@5 t1@@5 h1@@2 f@@4 bx0@@3))
)))
(assert (forall ((t0@@6 T@U) (t1@@6 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@4 t0@@6) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@6 t1@@6)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |389|
))) (= (Apply1 t0@@6 t1@@6 h0@@3 f@@5 bx0@@4) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@6 t1@@6 h1@@3 f@@5 bx0@@4))
)))
(assert (forall ((t0@@7 T@U) (t1@@7 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@5 t0@@7) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@7 t1@@7)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |391|
))) (= (Apply1 t0@@7 t1@@7 h0@@4 f@@6 bx0@@5) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |392|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@7 t1@@7 h1@@4 f@@6 bx0@@5))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.TwoStateAt.Cell) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.TwoStateAt.Cell)))
 :qid |unknown.0:0|
 :skolemid |647|
 :pattern ( ($IsBox bx@@2 Tclass.TwoStateAt.Cell))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.TwoStateAt.Cell?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.TwoStateAt.Cell?)))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsBox bx@@3 Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.TwoStateAt.Cell)  (and ($Is refType |c#0@@3| Tclass.TwoStateAt.Cell?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |816|
 :pattern ( ($Is refType |c#0@@3| Tclass.TwoStateAt.Cell))
 :pattern ( ($Is refType |c#0@@3| Tclass.TwoStateAt.Cell?))
)))
(assert (forall ((f@@7 T@U) (t0@@8 T@U) (t1@@8 T@U) (h@@3 T@U) ) (!  (=> (and ($IsGoodHeap h@@3) ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@3)) (forall ((bx0@@6 T@U) ) (!  (=> (and ($IsAllocBox bx0@@6 t0@@8 h@@3) (Requires1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6)) ($IsAllocBox (Apply1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6) t1@@8 h@@3))
 :qid |unknown.0:0|
 :skolemid |403|
 :pattern ( (Apply1 t0@@8 t1@@8 h@@3 f@@7 bx0@@6))
)))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( ($IsAlloc HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@8 t1@@8) h@@3))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((TwoStateAt.Cell.Sum$Y@@0 T@U) ($prevHeap@@7 T@U) ($Heap@@1 T@U) (|c#0@@4| T@U) (|y#0@@4| T@U) ) (!  (=> (or (|TwoStateAt.Cell.Sum#canCall| TwoStateAt.Cell.Sum$Y@@0 $prevHeap@@7 $Heap@@1 |c#0@@4| |y#0@@4|) (and (< 3 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $prevHeap@@7) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@7 $Heap@@1)) ($Is refType |c#0@@4| Tclass.TwoStateAt.Cell)) ($IsBox |y#0@@4| TwoStateAt.Cell.Sum$Y@@0)))) (and (|TwoStateAt.Cell.Plus#canCall| TwoStateAt.Cell.Sum$Y@@0 $prevHeap@@7 $Heap@@1 |c#0@@4| |y#0@@4|) (= (TwoStateAt.Cell.Sum TwoStateAt.Cell.Sum$Y@@0 $prevHeap@@7 $Heap@@1 |c#0@@4| |y#0@@4|) (TwoStateAt.Cell.Plus TwoStateAt.Cell.Sum$Y@@0 $prevHeap@@7 $Heap@@1 |c#0@@4| |y#0@@4|))))
 :qid |unknown.0:0|
 :skolemid |807|
 :pattern ( (TwoStateAt.Cell.Sum TwoStateAt.Cell.Sum$Y@@0 $prevHeap@@7 $Heap@@1 |c#0@@4| |y#0@@4|) ($IsGoodHeap $Heap@@1))
))))
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
(assert (forall ((f@@8 T@U) (t0@@9 T@U) (t1@@9 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)) (forall ((h@@4 T@U) (bx0@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@4) ($IsBox bx0@@7 t0@@9)) (Requires1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7)) ($IsBox (Apply1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7) t1@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |395|
 :pattern ( (Apply1 t0@@9 t1@@9 h@@4 f@@8 bx0@@7))
)))
 :qid |unknown.0:0|
 :skolemid |396|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@9 t1@@9)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |375|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@2 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.TwoStateAt.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) TwoStateAt.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |798|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@5) TwoStateAt.Cell.data)))
)))
(assert (forall ((TwoStateAt.Cell.Plus$Y@@4 T@U) ($prevHeap@@8 T@U) ($Heap@@2 T@U) (this@@1 T@U) (|y#0@@5| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $prevHeap@@8) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@8 $Heap@@2)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.TwoStateAt.Cell) ($IsAlloc refType this@@1 Tclass.TwoStateAt.Cell $prevHeap@@8)))) ($IsBox |y#0@@5| TwoStateAt.Cell.Plus$Y@@4)) (= (|TwoStateAt.Cell.Plus#requires| TwoStateAt.Cell.Plus$Y@@4 $prevHeap@@8 $Heap@@2 this@@1 |y#0@@5|) ($IsAllocBox |y#0@@5| TwoStateAt.Cell.Plus$Y@@4 $prevHeap@@8)))
 :qid |unknown.0:0|
 :skolemid |812|
 :pattern ( (|TwoStateAt.Cell.Plus#requires| TwoStateAt.Cell.Plus$Y@@4 $prevHeap@@8 $Heap@@2 this@@1 |y#0@@5|) ($IsGoodHeap $Heap@@2))
)))
(assert (forall ((f@@9 T@U) (t0@@10 T@U) (t1@@10 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@10 t1@@10) h@@5) (forall ((bx0@@8 T@U) ) (!  (=> (and (and ($IsBox bx0@@8 t0@@10) ($IsAllocBox bx0@@8 t0@@10 h@@5)) (Requires1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8)) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) alloc))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( (|Set#IsMember| (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8) ($Box refType r)))
)))
 :qid |unknown.0:0|
 :skolemid |401|
 :pattern ( (Apply1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8))
 :pattern ( (Reads1 t0@@10 t1@@10 h@@5 f@@9 bx0@@8))
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($IsAlloc HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@10 t1@@10) h@@5))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@5)) bx@@5) ($Is HandleTypeType ($Unbox HandleTypeType bx@@5) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |377|
 :pattern ( ($IsBox bx@@5 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert  (and (forall ((t0@@11 T@T) (t1@@11 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@11 t1@@11 t2 (MapType1Store t0@@11 t1@@11 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@1 T@T) (u1@@1 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@1 u1@@1 u2 (MapType1Store u0@@1 u1@@1 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@1 u1@@1 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@2 T@T) (u1@@2 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@2 u1@@2 u2@@0 (MapType1Store u0@@2 u1@@2 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@2 u1@@2 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@2))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1820|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@2))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((t0@@12 T@U) (t1@@12 T@U) (heap@@0 T@U) (f@@10 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@9 t0@@12) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@12 t1@@12)))) (|Set#Equal| (Reads1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) |Set#Empty|)) (= (Requires1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) (Requires1 t0@@12 t1@@12 heap@@0 f@@10 bx0@@9)))
 :qid |unknown.0:0|
 :skolemid |394|
 :pattern ( (Requires1 t0@@12 t1@@12 $OneHeap f@@10 bx0@@9) ($IsGoodHeap heap@@0))
 :pattern ( (Requires1 t0@@12 t1@@12 heap@@0 f@@10 bx0@@9))
)))
(assert (forall ((TwoStateAt.Cell.Plus$Y@@5 T@U) ($prevHeap@@9 T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (Requires1 TwoStateAt.Cell.Plus$Y@@5 TInt $heap@@2 (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@5 $prevHeap@@9 $self@@2) |$fh$0x#0@@2|) (|TwoStateAt.Cell.Plus#requires| TwoStateAt.Cell.Plus$Y@@5 $prevHeap@@9 $heap@@2 $self@@2 |$fh$0x#0@@2|))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (Requires1 TwoStateAt.Cell.Plus$Y@@5 TInt $heap@@2 (|TwoStateAt.Cell.Plus#Handle| TwoStateAt.Cell.Plus$Y@@5 $prevHeap@@9 $self@@2) |$fh$0x#0@@2|))
)))
(assert (= (Tag Tclass.TwoStateAt.Cell) Tagclass.TwoStateAt.Cell))
(assert (= (TagFamily Tclass.TwoStateAt.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateAt.Cell?) Tagclass.TwoStateAt.Cell?))
(assert (= (TagFamily Tclass.TwoStateAt.Cell?) tytagFamily$Cell))
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
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@6 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@6))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun TwoStateAt._default.TwoLemma$Y () T@U)
(declare-fun $Heap@@3 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun |c#0@@5| () T@U)
(declare-fun |y#0@@6| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |##y#0@0| () Int)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellFormed$$TwoStateAt.__default.TwoLemma)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon4_correct true))
(let ((anon7_Else_correct  (=> (and (< (TwoStateAt.__default.SP TwoStateAt._default.TwoLemma$Y $Heap@@3 current$Heap |c#0@@5| |y#0@@6|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@5|) TwoStateAt.Cell.data)))) (= (ControlFlow 0 9) 2)) anon4_correct)))
(let ((anon7_Then_correct  (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@5|) TwoStateAt.Cell.data))) (TwoStateAt.__default.SP TwoStateAt._default.TwoLemma$Y $Heap@@3 current$Heap |c#0@@5| |y#0@@6|)) (=> (and ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell current$Heap) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y current$Heap)) (and (=> (= (ControlFlow 0 3) (- 0 8)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (and (=> (= (ControlFlow 0 3) (- 0 7)) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3)) (=> ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3) (=> (|TwoStateAt.__default.SP#canCall| TwoStateAt._default.TwoLemma$Y $Heap@@3 current$Heap |c#0@@5| |y#0@@6|) (and (=> (= (ControlFlow 0 3) (- 0 6)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (=> (and ($IsAllocBox ($Box refType |c#0@@5|) Tclass.TwoStateAt.Cell? current$Heap) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y current$Heap)) (and (=> (= (ControlFlow 0 3) (- 0 5)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (and (=> (= (ControlFlow 0 3) (- 0 4)) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3)) (=> ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3) (=> (and (|TwoStateAt.Cell.Plus#canCall| TwoStateAt._default.TwoLemma$Y $Heap@@3 current$Heap |c#0@@5| |y#0@@6|) (= (ControlFlow 0 3) 2)) anon4_correct)))))))))))))))))
(let ((anon6_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 15)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (=> (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@5|) TwoStateAt.Cell.data)))) (and (=> (= (ControlFlow 0 10) (- 0 14)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 10) (- 0 13)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (=> (and ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell current$Heap) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y current$Heap)) (and (=> (= (ControlFlow 0 10) (- 0 12)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (and (=> (= (ControlFlow 0 10) (- 0 11)) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3)) (=> ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y $Heap@@3) (=> (|TwoStateAt.__default.SP#canCall| TwoStateAt._default.TwoLemma$Y $Heap@@3 current$Heap |c#0@@5| |y#0@@6|) (and (=> (= (ControlFlow 0 10) 3) anon7_Then_correct) (=> (= (ControlFlow 0 10) 9) anon7_Else_correct)))))))))))))))))
(let ((anon6_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null current$Heap alloc false)) (and (=> (= (ControlFlow 0 16) (- 0 19)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 16) (- 0 18)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell current$Heap) (=> (and (= |##y#0@0| (LitInt 0)) ($IsAlloc intType (int_2_U |##y#0@0|) TInt current$Heap)) (and (=> (= (ControlFlow 0 16) (- 0 17)) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell $Heap@@3) (=> (and (|TwoStateAt.Cell.Sum#canCall| TInt $Heap@@3 current$Heap |c#0@@5| ($Box intType (int_2_U (LitInt 0)))) (<= (Mul (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@5|) TwoStateAt.Cell.data)))) (TwoStateAt.Cell.Sum TInt $Heap@@3 current$Heap |c#0@@5| ($Box intType (int_2_U (LitInt 0)))))) (and (=> (= (ControlFlow 0 16) 10) anon6_Then_correct) (=> (= (ControlFlow 0 16) 1) anon6_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (and ($Is refType |c#0@@5| Tclass.TwoStateAt.Cell) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell previous$Heap))) (and (and ($IsBox |y#0@@6| TwoStateAt._default.TwoLemma$Y) ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y previous$Heap)) (= 4 $FunctionContextHeight))) (and (and (and (= previous$Heap $Heap@@3) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) ($IsAlloc refType |c#0@@5| Tclass.TwoStateAt.Cell previous$Heap)) (and ($IsAllocBox |y#0@@6| TwoStateAt._default.TwoLemma$Y previous$Heap) (= (ControlFlow 0 20) 16)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
