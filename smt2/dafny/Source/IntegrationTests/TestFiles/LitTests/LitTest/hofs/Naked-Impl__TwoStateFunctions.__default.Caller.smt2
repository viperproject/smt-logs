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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.TwoStateFunctions.Cell () T@U)
(declare-fun Tagclass.TwoStateFunctions.Cell? () T@U)
(declare-fun class.TwoStateFunctions.Cell? () T@U)
(declare-fun tytagFamily$object () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun TwoStateFunctions.Cell.F (T@U T@U T@U Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun LitInt (Int) Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |TwoStateFunctions.Cell.F#canCall| (T@U T@U T@U Int) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.TwoStateFunctions.Cell () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun TwoStateFunctions.Cell.data () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun |TwoStateFunctions.Cell.F#Handle| (T@U T@U) T@U)
(declare-fun |TwoStateFunctions.Cell.F#requires| (T@U T@U T@U Int) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass.TwoStateFunctions.Cell? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#1| (T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#5| (Bool) T@U)
(declare-fun |lambda#7| (T@U) T@U)
(declare-fun |lambda#3| (T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass.TwoStateFunctions.Cell Tagclass.TwoStateFunctions.Cell? class.TwoStateFunctions.Cell? tytagFamily$object |tytagFamily$_#Func1| tytagFamily$Cell field$data)
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) (|x#0| Int) ) (!  (=> (or (|TwoStateFunctions.Cell.F#canCall| $prevHeap $Heap (Lit refType this) (LitInt |x#0|)) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.TwoStateFunctions.Cell) ($IsAlloc refType this Tclass.TwoStateFunctions.Cell $prevHeap)))))) (= (TwoStateFunctions.Cell.F $prevHeap $Heap (Lit refType this) (LitInt |x#0|)) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap (Lit refType this)) TwoStateFunctions.Cell.data))) |x#0|)))
 :qid |Nakeddfy.82:23|
 :weight 3
 :skolemid |2848|
 :pattern ( (TwoStateFunctions.Cell.F $prevHeap $Heap (Lit refType this) (LitInt |x#0|)) ($IsGoodHeap $Heap))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |2666|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#1#heap#0| T@U) (|$l#1#u#0| T@U) ) (! (= (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#1#heap#0| |$l#1#u#0|)) ($IsBox |$l#1#u#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |2860|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType (|lambda#4| |l#0|) |$l#1#heap#0| |$l#1#u#0|))
)))
(assert (forall (($prevHeap@@0 T@U) ($self T@U) ($heap T@U) (|$fh$0x#0| T@U) ) (! (= (Requires1 TInt TInt $heap (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@0 $self) |$fh$0x#0|) (|TwoStateFunctions.Cell.F#requires| $prevHeap@@0 $heap $self (U_2_int ($Unbox intType |$fh$0x#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2831|
 :pattern ( (Requires1 TInt TInt $heap (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@0 $self) |$fh$0x#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |2419|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.TwoStateFunctions.Cell?)  (or (= $o null) (= (dtype $o) Tclass.TwoStateFunctions.Cell?)))
 :qid |unknown.0:0|
 :skolemid |2838|
 :pattern ( ($Is refType $o Tclass.TwoStateFunctions.Cell?))
)))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |2683|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |2684|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |2685|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |2645|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.TwoStateFunctions.Cell $h@@0) ($IsAlloc refType |c#0@@0| Tclass.TwoStateFunctions.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |2850|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TwoStateFunctions.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.TwoStateFunctions.Cell? $h@@0))
)))
(assert (forall (($prevHeap@@1 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|x#0@@0| Int) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.TwoStateFunctions.Cell))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f T@U) ) (! true
 :qid |unknown.0:0|
 :skolemid |2842|
)) (= (TwoStateFunctions.Cell.F $prevHeap@@1 $h0 this@@0 |x#0@@0|) (TwoStateFunctions.Cell.F $prevHeap@@1 $h1 this@@0 |x#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2843|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (TwoStateFunctions.Cell.F $prevHeap@@1 $h1 this@@0 |x#0@@0|))
)))
(assert (= (FDim TwoStateFunctions.Cell.data) 0))
(assert (= (FieldOfDecl class.TwoStateFunctions.Cell? field$data) TwoStateFunctions.Cell.data))
(assert  (not ($IsGhostField TwoStateFunctions.Cell.data)))
(assert (forall (($o@@1 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@1)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2642|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.TwoStateFunctions.Cell? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2839|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.TwoStateFunctions.Cell? $h@@2))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |2412|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |2413|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2311|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2309|
 :pattern ( (Lit T x@@3))
)))
(assert (forall (($prevHeap@@2 T@U) ($self@@0 T@U) ($heap@@0 T@U) (|$fh$0x#0@@0| T@U) ) (! (= (Apply1 TInt TInt $heap@@0 (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@2 $self@@0) |$fh$0x#0@@0|) ($Box intType (int_2_U (TwoStateFunctions.Cell.F $prevHeap@@2 $heap@@0 $self@@0 (U_2_int ($Unbox intType |$fh$0x#0@@0|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2830|
 :pattern ( (Apply1 TInt TInt $heap@@0 (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@2 $self@@0) |$fh$0x#0@@0|))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |2679|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2320|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |2671|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |2672|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |2673|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |2674|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2340|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2341|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType0Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |2395|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@3 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|x#0@@1| Int) ) (!  (=> (or (|TwoStateFunctions.Cell.F#canCall| $prevHeap@@3 $Heap@@0 this@@1 |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@3) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@3 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.TwoStateFunctions.Cell) ($IsAlloc refType this@@1 Tclass.TwoStateFunctions.Cell $prevHeap@@3)))))) (= (TwoStateFunctions.Cell.F $prevHeap@@3 $Heap@@0 this@@1 |x#0@@1|) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@3 this@@1) TwoStateFunctions.Cell.data))) |x#0@@1|)))
 :qid |Nakeddfy.82:23|
 :skolemid |2846|
 :pattern ( (TwoStateFunctions.Cell.F $prevHeap@@3 $Heap@@0 this@@1 |x#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($prevHeap@@4 T@U) ($Heap@@1 T@U) (this@@2 T@U) (|x#0@@2| Int) ) (!  (=> (and (and (and ($IsGoodHeap $prevHeap@@4) ($IsGoodHeap $Heap@@1)) ($HeapSucc $prevHeap@@4 $Heap@@1)) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.TwoStateFunctions.Cell) ($IsAlloc refType this@@2 Tclass.TwoStateFunctions.Cell $prevHeap@@4)))) (= (|TwoStateFunctions.Cell.F#requires| $prevHeap@@4 $Heap@@1 this@@2 |x#0@@2|) ($IsAlloc intType (int_2_U |x#0@@2|) TInt $prevHeap@@4)))
 :qid |Nakeddfy.82:23|
 :skolemid |2845|
 :pattern ( (|TwoStateFunctions.Cell.F#requires| $prevHeap@@4 $Heap@@1 this@@2 |x#0@@2|) ($IsGoodHeap $Heap@@1))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.TwoStateFunctions.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) TwoStateFunctions.Cell.data)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2841|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) TwoStateFunctions.Cell.data)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2333|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |2405|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |2404|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |2667|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |2668|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |2669|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |2670|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |2675|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |2676|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |2677|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |2678|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@4 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@0| |l#1| |l#2| |l#3|) $o@@4 $f@@0))  (=> (and (or (not (= $o@@4 |l#0@@0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) (= $o@@4 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2858|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0@@0| |l#1| |l#2| |l#3|) $o@@4 $f@@0))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |2376|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |2664|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2640|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |2643|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.TwoStateFunctions.Cell) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.TwoStateFunctions.Cell)))
 :qid |unknown.0:0|
 :skolemid |2825|
 :pattern ( ($IsBox bx@@7 Tclass.TwoStateFunctions.Cell))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.TwoStateFunctions.Cell?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.TwoStateFunctions.Cell?)))
 :qid |unknown.0:0|
 :skolemid |2829|
 :pattern ( ($IsBox bx@@8 Tclass.TwoStateFunctions.Cell?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2644|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.TwoStateFunctions.Cell)  (and ($Is refType |c#0@@2| Tclass.TwoStateFunctions.Cell?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2849|
 :pattern ( ($Is refType |c#0@@2| Tclass.TwoStateFunctions.Cell))
 :pattern ( ($Is refType |c#0@@2| Tclass.TwoStateFunctions.Cell?))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($prevHeap@@5 T@U) ($Heap@@2 T@U) (this@@3 T@U) (|x#0@@3| Int) ) (!  (=> (or (|TwoStateFunctions.Cell.F#canCall| $prevHeap@@5 $Heap@@2 this@@3 (LitInt |x#0@@3|)) (and (< 0 $FunctionContextHeight) (and (and (and ($IsGoodHeap $prevHeap@@5) ($IsGoodHeap $Heap@@2)) ($HeapSucc $prevHeap@@5 $Heap@@2)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass.TwoStateFunctions.Cell) ($IsAlloc refType this@@3 Tclass.TwoStateFunctions.Cell $prevHeap@@5)))))) (= (TwoStateFunctions.Cell.F $prevHeap@@5 $Heap@@2 this@@3 (LitInt |x#0@@3|)) (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@5 this@@3) TwoStateFunctions.Cell.data))) |x#0@@3|)))
 :qid |Nakeddfy.82:23|
 :weight 3
 :skolemid |2847|
 :pattern ( (TwoStateFunctions.Cell.F $prevHeap@@5 $Heap@@2 this@@3 (LitInt |x#0@@3|)) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |2689|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |2690|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#1#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#5| |l#0@@1|) |$l#1#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |2861|
 :pattern ( (MapType0Select refType boolType (|lambda#5| |l#0@@1|) |$l#1#o#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#1#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@2|) |$l#1#ly#0|) |l#0@@2|)
 :qid |Nakeddfy.99:16|
 :skolemid |2863|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#7| |l#0@@2|) |$l#1#ly#0|))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|$l#1#heap#0@@0| T@U) (|$l#1#u#0@@0| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType (|lambda#3| |l#0@@3| |l#1@@0|) |$l#1#heap#0@@0| |$l#1#u#0@@0|) ($Box intType (int_2_U (TwoStateFunctions.Cell.F |l#0@@3| |$l#1#heap#0@@0| |l#1@@0| (U_2_int ($Unbox intType |$l#1#u#0@@0|))))))
 :qid |Nakeddfy.93:5|
 :skolemid |2859|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType BoxType (|lambda#3| |l#0@@3| |l#1@@0|) |$l#1#heap#0@@0| |$l#1#u#0@@0|))
)))
(assert (forall (($prevHeap@@6 T@U) ($self@@1 T@U) ($heap@@1 T@U) (|$fh$0x#0@@1| Int) ) (! (= (TwoStateFunctions.Cell.F $prevHeap@@6 $heap@@1 $self@@1 |$fh$0x#0@@1|) (U_2_int ($Unbox intType (Apply1 TInt TInt $heap@@1 (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@6 $self@@1) ($Box intType (int_2_U |$fh$0x#0@@1|))))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2833|
 :pattern ( (TwoStateFunctions.Cell.F $prevHeap@@6 $heap@@1 $self@@1 |$fh$0x#0@@1|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |2444|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |2411|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2681|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |2682|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2401|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2321|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2332|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |2665|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2361|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2362|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |2661|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |2662|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |2641|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2295|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2296|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2319|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.TwoStateFunctions.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) TwoStateFunctions.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2840|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) TwoStateFunctions.Cell.data)))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |2396|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |2686|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |2687|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |2688|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@11)) bx@@11) ($Is HandleTypeType ($Unbox HandleTypeType bx@@11) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |2663|
 :pattern ( ($IsBox bx@@11 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@7 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@7 $f@@1))  (=> (and (or (not (= $o@@7 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@7) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2857|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@7 $f@@1))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |2660|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall (($bx T@U) ($prevHeap@@7 T@U) ($self@@2 T@U) ($heap@@2 T@U) (|$fh$0x#0@@2| T@U) ) (! (= (|Set#IsMember| (Reads1 TInt TInt $heap@@2 (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@7 $self@@2) |$fh$0x#0@@2|) $bx) false)
 :qid |unknown.0:0|
 :skolemid |2832|
 :pattern ( (|Set#IsMember| (Reads1 TInt TInt $heap@@2 (|TwoStateFunctions.Cell.F#Handle| $prevHeap@@7 $self@@2) |$fh$0x#0@@2|) $bx))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |2680|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@12 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2326|
 :pattern ( ($IsBox bx@@12 (TSet t@@5)))
)))
(assert (forall ((h@@10 T@U) (r@@3 T@U) (f@@13 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6))) ($HeapSucc h@@10 (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |2410|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@10 r@@3 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.TwoStateFunctions.Cell) Tagclass.TwoStateFunctions.Cell))
(assert (= (TagFamily Tclass.TwoStateFunctions.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.TwoStateFunctions.Cell?) Tagclass.TwoStateFunctions.Cell?))
(assert (= (TagFamily Tclass.TwoStateFunctions.Cell?) tytagFamily$Cell))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |2377|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |2442|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |2443|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2312|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2310|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@11 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2355|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@11))
)))
(assert (forall ((|l#0@@5| T@U) (|$l#1#heap#0@@1| T@U) (|$l#1#u#0@@1| T@U) ) (! (= (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#u#0@@1|) |l#0@@5|)
 :qid |Nakeddfy.99:16|
 :skolemid |2862|
 :pattern ( (MapType1Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType SetType (|lambda#6| |l#0@@5|) |$l#1#heap#0@@1| |$l#1#u#0@@1|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2334|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun |c#0@@3| () T@U)
(declare-fun |u#0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |f##1@0| () T@U)
(declare-fun $LZ () T@U)
(declare-fun |x##1@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |call3formal@y#0@0| () Int)
(declare-fun |##x#3@0| () Int)
(declare-fun $Heap@@3 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |##x#0@0| () Int)
(declare-fun |f##0@0| () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |call3formal@y#0@0@@0| () Int)
(declare-fun |##x#1@0| () Int)
(set-info :boogie-vc-id Impl$$TwoStateFunctions.__default.Caller)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon6_Else_correct true))
(let ((anon6_Then_correct  (=> (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (=> ($IsAllocBox ($Box refType |c#0@@3|) Tclass.TwoStateFunctions.Cell? |$lambdaHeap#0@0|) (=> (and ($IsAlloc intType (int_2_U |u#0@0|) TInt |$lambdaHeap#0@0|) (= (ControlFlow 0 7) (- 0 6))) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@0))))))))
(let ((anon5_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@1 |$lambdaHeap#0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 10) 7) anon6_Then_correct) (=> (= (ControlFlow 0 10) 9) anon6_Else_correct)))))
(let ((anon5_Else_correct  (=> (forall ((|$l#0#u#0| Int) (|$l#0#heap#0| T@U) ) (!  (=> ($IsGoodHeap |$l#0#heap#0|) (|TwoStateFunctions.Cell.F#canCall| $Heap@0 |$l#0#heap#0| |c#0@@3| |$l#0#u#0|))
 :qid |unknown.0:0|
 :skolemid |2836|
)) (=> (and (= |f##1@0| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#7| (Handle1 (|lambda#3| $Heap@0 |c#0@@3|) (|lambda#4| TInt) (|lambda#6| (SetRef_to_SetBox (|lambda#5| false))))) ($LS $LZ)))) (= |x##1@0| (LitInt 11))) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (= |call3formal@y#0@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@2 |f##1@0| ($Box intType (int_2_U |x##1@0|))))))) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8)))
 :qid |Nakeddfy.73:10|
 :skolemid |2823|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@8))
)) ($HeapSucc $Heap@1 $Heap@2))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= |call3formal@y#0@0| (LitInt 21))) (=> (= |call3formal@y#0@0| (LitInt 21)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |c#0@@3| null)) (not true))) (=> ($IsAllocBox ($Box refType |c#0@@3|) Tclass.TwoStateFunctions.Cell? $Heap@2) (=> (and (= |##x#3@0| (LitInt 100)) ($IsAlloc intType (int_2_U |##x#3@0|) TInt $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3) (=> (|TwoStateFunctions.Cell.F#canCall| $Heap@@3 $Heap@2 |c#0@@3| (LitInt 100)) (=> (and (|TwoStateFunctions.Cell.F#canCall| $Heap@@3 $Heap@2 |c#0@@3| (LitInt 100)) (= (ControlFlow 0 2) (- 0 1))) (= (TwoStateFunctions.Cell.F $Heap@@3 $Heap@2 |c#0@@3| (LitInt 100)) (LitInt 0))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@3 alloc |c#0@@3|)) (and (=> (= (ControlFlow 0 11) (- 0 24)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 23)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| TwoStateFunctions.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 |c#0@@3| TwoStateFunctions.Cell.data)) (and (=> (= (ControlFlow 0 11) (- 0 22)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (=> (= |$rhs#0@0| (+ (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@3|) TwoStateFunctions.Cell.data))) 1)) (=> (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@3| (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@3|) TwoStateFunctions.Cell.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@0)) (and (=> (= (ControlFlow 0 11) (- 0 21)) (or (not (= |c#0@@3| null)) (not true))) (=> ($IsAllocBox ($Box refType |c#0@@3|) Tclass.TwoStateFunctions.Cell? $Heap@0) (=> (and (= |##x#0@0| (LitInt 11)) ($IsAlloc intType (int_2_U |##x#0@0|) TInt $Heap@0)) (and (=> (= (ControlFlow 0 11) (- 0 20)) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3) (=> (and (|TwoStateFunctions.Cell.F#canCall| $Heap@@3 $Heap@0 |c#0@@3| (LitInt 11)) (|TwoStateFunctions.Cell.F#canCall| $Heap@@3 $Heap@0 |c#0@@3| (LitInt 11))) (and (=> (= (ControlFlow 0 11) (- 0 19)) (= (TwoStateFunctions.Cell.F $Heap@@3 $Heap@0 |c#0@@3| (LitInt 11)) (LitInt 20))) (=> (= (TwoStateFunctions.Cell.F $Heap@@3 $Heap@0 |c#0@@3| (LitInt 11)) (LitInt 20)) (and (=> (= (ControlFlow 0 11) (- 0 18)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 17)) (or (not (= |c#0@@3| null)) (not true))) (=> (or (not (= |c#0@@3| null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 16)) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3)) (=> ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3) (=> (and (= |f##0@0| (|TwoStateFunctions.Cell.F#Handle| $Heap@@3 |c#0@@3|)) (= |x##0@0| (LitInt 11))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (= |call3formal@y#0@0@@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap@1 |f##0@0| ($Box intType (int_2_U |x##0@0|))))))) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@9)))
 :qid |Nakeddfy.73:10|
 :skolemid |2823|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@9))
)) ($HeapSucc $Heap@0 $Heap@1))) (and (=> (= (ControlFlow 0 11) (- 0 15)) (= |call3formal@y#0@0@@0| (LitInt 20))) (=> (= |call3formal@y#0@0@@0| (LitInt 20)) (and (=> (= (ControlFlow 0 11) (- 0 14)) (or (not (= |c#0@@3| null)) (not true))) (=> ($IsAllocBox ($Box refType |c#0@@3|) Tclass.TwoStateFunctions.Cell? $Heap@1) (=> (and (= |##x#1@0| (LitInt 11)) ($IsAlloc intType (int_2_U |##x#1@0|) TInt $Heap@1)) (and (=> (= (ControlFlow 0 11) (- 0 13)) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@0)) (=> ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@0) (=> (and (|TwoStateFunctions.Cell.F#canCall| $Heap@0 $Heap@1 |c#0@@3| (LitInt 11)) (|TwoStateFunctions.Cell.F#canCall| $Heap@0 $Heap@1 |c#0@@3| (LitInt 11))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (= (TwoStateFunctions.Cell.F $Heap@0 $Heap@1 |c#0@@3| (LitInt 11)) (LitInt 21))) (=> (= (TwoStateFunctions.Cell.F $Heap@0 $Heap@1 |c#0@@3| (LitInt 11)) (LitInt 21)) (and (=> (= (ControlFlow 0 11) 10) anon5_Then_correct) (=> (= (ControlFlow 0 11) 2) anon5_Else_correct)))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@3) ($IsHeapAnchor $Heap@@3)) (=> (and (and (and ($Is refType |c#0@@3| Tclass.TwoStateFunctions.Cell) ($IsAlloc refType |c#0@@3| Tclass.TwoStateFunctions.Cell $Heap@@3)) (= 1 $FunctionContextHeight)) (and (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 |c#0@@3|) TwoStateFunctions.Cell.data))) (LitInt 9)) (= (ControlFlow 0 25) 11))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))
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
