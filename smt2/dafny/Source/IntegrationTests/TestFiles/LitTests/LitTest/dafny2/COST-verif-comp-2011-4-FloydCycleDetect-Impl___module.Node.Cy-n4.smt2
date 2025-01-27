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
(declare-fun class._module.Node? () T@U)
(declare-fun Tagclass._module.Node? () T@U)
(declare-fun Tagclass._module.Node () T@U)
(declare-fun tytagFamily$Node () T@U)
(declare-fun field$next () T@U)
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
(declare-fun _module.Node.Nexxxt (T@U T@U T@U Int T@U) T@U)
(declare-fun |_module.Node.Nexxxt#canCall| (T@U T@U Int T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Node () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Tclass._module.Node? () T@U)
(declare-fun _module.Node.IsClosed (T@U T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.Node.next () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Node.Reaches (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Node.Reaches#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun |_module.Node.IsClosed#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName class._module.Node? Tagclass._module.Node? Tagclass._module.Node tytagFamily$Node field$next)
)
(assert  (and (= (Ctor refType) 3) (= (Ctor SetType) 4)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) (|k#0| Int) (|S#0| T@U) ) (!  (=> (or (|_module.Node.Nexxxt#canCall| $Heap this |k#0| |S#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Node) ($IsAlloc refType this Tclass._module.Node $Heap)))) (and ($Is SetType |S#0| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0| (TSet Tclass._module.Node?) $Heap))) (and (_module.Node.IsClosed $Heap this |S#0|) (<= (LitInt 0) |k#0|))))) (and (|Set#IsMember| |S#0| ($Box refType (_module.Node.Nexxxt $ly $Heap this |k#0| |S#0|))) ($Is refType (_module.Node.Nexxxt $ly $Heap this |k#0| |S#0|) Tclass._module.Node?)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |546|
 :pattern ( (_module.Node.Nexxxt $ly $Heap this |k#0| |S#0|))
))))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|k#0@@0| Int) (|S#0@@0| T@U) ) (! (= (_module.Node.Nexxxt ($LS $ly@@0) $Heap@@0 this@@0 |k#0@@0| |S#0@@0|) (_module.Node.Nexxxt $ly@@0 $Heap@@0 this@@0 |k#0@@0| |S#0@@0|))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |542|
 :pattern ( (_module.Node.Nexxxt ($LS $ly@@0) $Heap@@0 this@@0 |k#0@@0| |S#0@@0|))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Node?)  (or (= $o null) (= (dtype $o) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |529|
 :pattern ( ($Is refType $o Tclass._module.Node?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Node $h) ($IsAlloc refType |c#0| Tclass._module.Node? $h))
 :qid |unknown.0:0|
 :skolemid |1103|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Node? $h))
)))
(assert (= (FDim _module.Node.next) 0))
(assert (= (FieldOfDecl class._module.Node? field$next) _module.Node.next))
(assert  (not ($IsGhostField _module.Node.next)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Node? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this@@1 T@U) (|sink#0| T@U) (|S#0@@1| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Node))) (or (|_module.Node.Reaches#canCall| $h0 this@@1 |sink#0| |S#0@@1|) (and ($Is refType |sink#0| Tclass._module.Node) ($Is SetType |S#0@@1| (TSet Tclass._module.Node?))))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@1 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (|Set#IsMember| |S#0@@1| ($Box refType $o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@1) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@1) $f)))
 :qid |unknown.0:0|
 :skolemid |559|
)) (= (_module.Node.Reaches $h0 this@@1 |sink#0| |S#0@@1|) (_module.Node.Reaches $h1 this@@1 |sink#0| |S#0@@1|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |560|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Node.Reaches $h1 this@@1 |sink#0| |S#0@@1|))
)))
(assert (forall (($h@@1 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.next)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |531|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@2) _module.Node.next)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@2 T@U) (|S#0@@2| T@U) ) (!  (=> (or (|_module.Node.IsClosed#canCall| $Heap@@1 this@@2 |S#0@@2|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Node) ($IsAlloc refType this@@2 Tclass._module.Node $Heap@@1)))) ($Is SetType |S#0@@2| (TSet Tclass._module.Node?))))) (= (_module.Node.IsClosed $Heap@@1 this@@2 |S#0@@2|)  (and (and (|Set#IsMember| |S#0@@2| ($Box refType this@@2)) (|Set#IsMember| |S#0@@2| ($Box refType null))) (forall ((|n#0| T@U) ) (!  (=> ($Is refType |n#0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@2| ($Box refType |n#0|)) (or (not (= |n#0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@2| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |538|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next)))
)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.129:19|
 :skolemid |539|
 :pattern ( (_module.Node.IsClosed $Heap@@1 this@@2 |S#0@@2|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@2 Tclass._module.Node))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($ly@@1 T@U) ($h0@@0 T@U) ($h1@@0 T@U) (this@@3 T@U) (|k#0@@1| Int) (|S#0@@3| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 Tclass._module.Node))) (or (|_module.Node.Nexxxt#canCall| $h0@@0 this@@3 |k#0@@1| |S#0@@3|) ($Is SetType |S#0@@3| (TSet Tclass._module.Node?)))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (|Set#IsMember| |S#0@@3| ($Box refType $o@@3))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |544|
)) (= (_module.Node.Nexxxt $ly@@1 $h0@@0 this@@3 |k#0@@1| |S#0@@3|) (_module.Node.Nexxxt $ly@@1 $h1@@0 this@@3 |k#0@@1| |S#0@@3|))))
 :qid |unknown.0:0|
 :skolemid |545|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Node.Nexxxt $ly@@1 $h1@@0 this@@3 |k#0@@1| |S#0@@3|))
)))
(assert (forall (($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.Node.next)) Tclass._module.Node? $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |532|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.Node.next)))
)))
(assert (forall (($h0@@1 T@U) ($h1@@1 T@U) (this@@4 T@U) (|S#0@@4| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0@@1) ($IsGoodHeap $h1@@1)) (and (or (not (= this@@4 null)) (not true)) ($Is refType this@@4 Tclass._module.Node))) (or (|_module.Node.IsClosed#canCall| $h0@@1 this@@4 |S#0@@4|) ($Is SetType |S#0@@4| (TSet Tclass._module.Node?)))) (and ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1))) (=> (forall (($o@@5 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (|Set#IsMember| |S#0@@4| ($Box refType $o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@1 $o@@5) $f@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@1 $o@@5) $f@@1)))
 :qid |unknown.0:0|
 :skolemid |533|
)) (= (_module.Node.IsClosed $h0@@1 this@@4 |S#0@@4|) (_module.Node.IsClosed $h1@@1 this@@4 |S#0@@4|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |535|
 :pattern ( ($IsHeapAnchor $h0@@1) ($HeapSucc $h0@@1 $h1@@1) (_module.Node.IsClosed $h1@@1 this@@4 |S#0@@4|))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@2 T@U) (this@@5 T@U) (|sink#0@@0| T@U) (|S#0@@5| T@U) ) (!  (=> (or (|_module.Node.Reaches#canCall| $Heap@@2 this@@5 |sink#0@@0| |S#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@2) (and (or (not (= this@@5 null)) (not true)) (and ($Is refType this@@5 Tclass._module.Node) ($IsAlloc refType this@@5 Tclass._module.Node $Heap@@2)))) ($Is refType |sink#0@@0| Tclass._module.Node)) ($Is SetType |S#0@@5| (TSet Tclass._module.Node?))) (_module.Node.IsClosed $Heap@@2 this@@5 |S#0@@5|)))) (and (forall ((|k#0@@2| Int) ) (!  (=> (<= (LitInt 0) |k#0@@2|) (|_module.Node.Nexxxt#canCall| $Heap@@2 this@@5 |k#0@@2| |S#0@@5|))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.151:12|
 :skolemid |564|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@@2 this@@5 |k#0@@2| |S#0@@5|))
)) (= (_module.Node.Reaches $Heap@@2 this@@5 |sink#0@@0| |S#0@@5|) (exists ((|k#0@@3| Int) ) (!  (and (<= (LitInt 0) |k#0@@3|) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@@2 this@@5 |k#0@@3| |S#0@@5|) |sink#0@@0|))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.151:12|
 :skolemid |563|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@@2 this@@5 |k#0@@3| |S#0@@5|))
)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.146:19|
 :skolemid |565|
 :pattern ( (_module.Node.Reaches $Heap@@2 this@@5 |sink#0@@0| |S#0@@5|) ($IsGoodHeap $Heap@@2))
))))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@4) ($IsAllocBox bx@@4 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@3 T@U) (this@@6 T@U) (|k#0@@4| Int) (|S#0@@6| T@U) ) (!  (=> (or (|_module.Node.Nexxxt#canCall| $Heap@@3 this@@6 |k#0@@4| |S#0@@6|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@3) (or (not (= this@@6 null)) (not true))) ($IsAlloc refType this@@6 Tclass._module.Node $Heap@@3)) (and ($Is SetType |S#0@@6| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0@@6| (TSet Tclass._module.Node?) $Heap@@3))) (and (_module.Node.IsClosed $Heap@@3 this@@6 |S#0@@6|) (<= (LitInt 0) |k#0@@4|))))) ($IsAlloc refType (_module.Node.Nexxxt $ly@@2 $Heap@@3 this@@6 |k#0@@4| |S#0@@6|) Tclass._module.Node? $Heap@@3))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |547|
 :pattern ( ($IsAlloc refType (_module.Node.Nexxxt $ly@@2 $Heap@@3 this@@6 |k#0@@4| |S#0@@6|) Tclass._module.Node? $Heap@@3))
))))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@6 T@U) ($f@@2 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@2))  (=> (and (or (not (= $o@@6 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@6) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1105|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@6 $f@@2))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |338|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($Heap@@4 T@U) (this@@7 T@U) (|sink#0@@1| T@U) (|S#0@@7| T@U) ) (!  (=> (or (|_module.Node.Reaches#canCall| $Heap@@4 this@@7 |sink#0@@1| |S#0@@7|) (and (< 2 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@4) (and (or (not (= this@@7 null)) (not true)) (and ($Is refType this@@7 Tclass._module.Node) ($IsAlloc refType this@@7 Tclass._module.Node $Heap@@4)))) (and ($Is refType |sink#0@@1| Tclass._module.Node) ($IsAlloc refType |sink#0@@1| Tclass._module.Node $Heap@@4))) (and ($Is SetType |S#0@@7| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0@@7| (TSet Tclass._module.Node?) $Heap@@4))) (_module.Node.IsClosed $Heap@@4 this@@7 |S#0@@7|)))) (=> (_module.Node.Reaches $Heap@@4 this@@7 |sink#0@@1| |S#0@@7|) (|Set#IsMember| |S#0@@7| ($Box refType |sink#0@@1|))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.146:19|
 :skolemid |561|
 :pattern ( (_module.Node.Reaches $Heap@@4 this@@7 |sink#0@@1| |S#0@@7|))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@5 T@U) (this@@8 T@U) (|k#0@@5| Int) (|S#0@@8| T@U) ) (!  (=> (or (|_module.Node.Nexxxt#canCall| $Heap@@5 this@@8 |k#0@@5| |S#0@@8|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@5) (and (or (not (= this@@8 null)) (not true)) (and ($Is refType this@@8 Tclass._module.Node) ($IsAlloc refType this@@8 Tclass._module.Node $Heap@@5)))) ($Is SetType |S#0@@8| (TSet Tclass._module.Node?))) (and (_module.Node.IsClosed $Heap@@5 this@@8 |S#0@@8|) (<= (LitInt 0) |k#0@@5|))))) (and (=> (or (not (= |k#0@@5| (LitInt 0))) (not true)) (and (|_module.Node.Nexxxt#canCall| $Heap@@5 this@@8 (- |k#0@@5| 1) |S#0@@8|) (=> (or (not (= (_module.Node.Nexxxt $ly@@3 $Heap@@5 this@@8 (- |k#0@@5| 1) |S#0@@8|) null)) (not true)) (|_module.Node.Nexxxt#canCall| $Heap@@5 this@@8 (- |k#0@@5| 1) |S#0@@8|)))) (= (_module.Node.Nexxxt ($LS $ly@@3) $Heap@@5 this@@8 |k#0@@5| |S#0@@8|) (ite (= |k#0@@5| (LitInt 0)) this@@8 (ite (= (_module.Node.Nexxxt $ly@@3 $Heap@@5 this@@8 (- |k#0@@5| 1) |S#0@@8|) null) null ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@5 (_module.Node.Nexxxt $ly@@3 $Heap@@5 this@@8 (- |k#0@@5| 1) |S#0@@8|)) _module.Node.next)))))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |549|
 :pattern ( (_module.Node.Nexxxt ($LS $ly@@3) $Heap@@5 this@@8 |k#0@@5| |S#0@@8|) ($IsGoodHeap $Heap@@5))
))))
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
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0@0| () Int)
(declare-fun |t#0@0| () Int)
(declare-fun this@@9 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |S#0@@9| () T@U)
(declare-fun |##k#3@0| () Int)
(declare-fun |h#0@0| () Int)
(declare-fun |call3formal@A#0@0| () Int)
(declare-fun |call4formal@B#0@0| () Int)
(declare-fun |tortoise#0@0| () T@U)
(declare-fun |hare#0@0| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |reachesCycle#0@2| () Bool)
(declare-fun $Heap@7 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |reachesCycle#0@1| () Bool)
(declare-fun |k#0_0_0@0| () Int)
(declare-fun |l#0_0_0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun |y##0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |reachesCycle#0@0| () Bool)
(declare-fun |distanceToNull#0_0_0@0| () Int)
(declare-fun |d##0_0@1| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |##k#0_0@1| () Int)
(declare-fun |$rhs#0_0@1| () T@U)
(declare-fun |$rhs#0_1@1| () Int)
(declare-fun |$rhs#0_2@1| () T@U)
(declare-fun |$rhs#0_3@1| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |$decr$loop#00@1| () Int)
(declare-fun |$rhs#2@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |$decr_init$loop#00@0| () Int)
(declare-fun $Heap@@6 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |tortoise#0| () T@U)
(declare-fun |hare#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.Node.Cyclic)
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
 (=> (= (ControlFlow 0 0) 158) (let ((anon19_correct true))
(let ((anon52_Else_correct  (=> (and (not (and (<= (LitInt 0) |k#0@0|) (< |k#0@0| |t#0@0|))) (= (ControlFlow 0 114) 104)) anon19_correct)))
(let ((anon52_Then_correct  (=> (and (and (and (<= (LitInt 0) |k#0@0|) (< |k#0@0| |t#0@0|)) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@1)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@1) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@1))) (and (=> (= (ControlFlow 0 105) (- 0 113)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 105) (- 0 112)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 105) (- 0 111)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#8| T@U) ) (!  (=> ($Is refType |n#8| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#8|)) (or (not (= |n#8| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#8|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#8|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |596|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#8|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 105) (- 0 110)) (<= (LitInt 0) |k#0@0|)) (=> (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |k#0@0| |S#0@@9|) (=> (and (and ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@1) (= |##k#3@0| (+ 1 (Mul (LitInt 2) |k#0@0|)))) (and ($IsAlloc intType (int_2_U |##k#3@0|) TInt $Heap@1) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@1))) (and (=> (= (ControlFlow 0 105) (- 0 109)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 105) (- 0 108)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 105) (- 0 107)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#9| T@U) ) (!  (=> ($Is refType |n#9| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#9|)) (or (not (= |n#9| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#9|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#9|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |598|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#9|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 105) (- 0 106)) (<= (LitInt 0) |##k#3@0|)) (=> (and (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 (+ 1 (Mul (LitInt 2) |k#0@0|)) |S#0@@9|) (= (ControlFlow 0 105) 104)) anon19_correct))))))))))))))
(let ((anon51_Else_correct  (=> (< |k#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 116) 105) anon52_Then_correct) (=> (= (ControlFlow 0 116) 114) anon52_Else_correct)))))
(let ((anon51_Then_correct  (=> (<= (LitInt 0) |k#0@0|) (and (=> (= (ControlFlow 0 115) 105) anon52_Then_correct) (=> (= (ControlFlow 0 115) 114) anon52_Else_correct)))))
(let ((anon50_Then_correct  (and (=> (= (ControlFlow 0 117) 115) anon51_Then_correct) (=> (= (ControlFlow 0 117) 116) anon51_Else_correct))))
(let ((anon50_Else_correct true))
(let ((anon14_correct  (=> (and (= |h#0@0| (+ 1 (Mul (LitInt 2) |t#0@0|))) (<= |t#0@0| (+ |call3formal@A#0@0| |call4formal@B#0@0|))) (and (=> (= (ControlFlow 0 118) 117) anon50_Then_correct) (=> (= (ControlFlow 0 118) 103) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (or (not (= |h#0@0| (+ 1 (Mul (LitInt 2) |t#0@0|)))) (not true)) (= (ControlFlow 0 120) 118)) anon14_correct)))
(let ((anon49_Then_correct  (=> (and (= |h#0@0| (+ 1 (Mul (LitInt 2) |t#0@0|))) (= (ControlFlow 0 119) 118)) anon14_correct)))
(let ((anon12_correct  (=> (=> (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |t#0@0| |S#0@@9|) (=> (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|) (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |h#0@0| |S#0@@9|)))) (=> (and (and (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|)) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |h#0@0| |S#0@@9|) |hare#0@0|)) (and (=> (= (ControlFlow 0 121) 119) anon49_Then_correct) (=> (= (ControlFlow 0 121) 120) anon49_Else_correct))))))
(let ((anon48_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|))) (= (ControlFlow 0 127) 121)) anon12_correct)))
(let ((anon48_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|)) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@1)) (and ($IsAlloc intType (int_2_U |h#0@0|) TInt $Heap@1) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@1))) (and (=> (= (ControlFlow 0 122) (- 0 126)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 122) (- 0 125)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 122) (- 0 124)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#7| T@U) ) (!  (=> ($Is refType |n#7| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#7|)) (or (not (= |n#7| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |594|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (<= (LitInt 0) |h#0@0|)) (=> (and (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |h#0@0| |S#0@@9|) (= (ControlFlow 0 122) 121)) anon12_correct))))))))
(let ((anon47_Else_correct  (=> (not (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|))) (and (=> (= (ControlFlow 0 133) 122) anon48_Then_correct) (=> (= (ControlFlow 0 133) 127) anon48_Else_correct)))))
(let ((anon47_Then_correct  (=> (and (and (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@1)) (and ($IsAlloc intType (int_2_U |t#0@0|) TInt $Heap@1) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@1))) (and (=> (= (ControlFlow 0 128) (- 0 132)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 128) (- 0 131)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 128) (- 0 130)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#6| T@U) ) (!  (=> ($Is refType |n#6| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#6|)) (or (not (= |n#6| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#6|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#6|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |592|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#6|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 128) (- 0 129)) (<= (LitInt 0) |t#0@0|)) (=> (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |t#0@0| |S#0@@9|) (and (=> (= (ControlFlow 0 128) 122) anon48_Then_correct) (=> (= (ControlFlow 0 128) 127) anon48_Else_correct))))))))))
(let ((anon46_Else_correct  (=> (< |t#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 135) 128) anon47_Then_correct) (=> (= (ControlFlow 0 135) 133) anon47_Else_correct)))))
(let ((anon46_Then_correct  (=> (<= (LitInt 0) |t#0@0|) (and (=> (= (ControlFlow 0 134) 128) anon47_Then_correct) (=> (= (ControlFlow 0 134) 133) anon47_Else_correct)))))
(let ((anon6_correct  (=> (and (and (or (not (= |tortoise#0@0| null)) (not true)) (|Set#IsMember| |S#0@@9| ($Box refType |tortoise#0@0|))) (|Set#IsMember| |S#0@@9| ($Box refType |hare#0@0|))) (and (=> (= (ControlFlow 0 136) 134) anon46_Then_correct) (=> (= (ControlFlow 0 136) 135) anon46_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (and (or (not (= |tortoise#0@0| null)) (not true)) (|Set#IsMember| |S#0@@9| ($Box refType |tortoise#0@0|)))) (= (ControlFlow 0 138) 136)) anon6_correct)))
(let ((anon45_Then_correct  (=> (and (and (or (not (= |tortoise#0@0| null)) (not true)) (|Set#IsMember| |S#0@@9| ($Box refType |tortoise#0@0|))) (= (ControlFlow 0 137) 136)) anon6_correct)))
(let ((anon44_Else_correct  (=> (= |tortoise#0@0| null) (and (=> (= (ControlFlow 0 140) 137) anon45_Then_correct) (=> (= (ControlFlow 0 140) 138) anon45_Else_correct)))))
(let ((anon44_Then_correct  (=> (or (not (= |tortoise#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 139) 137) anon45_Then_correct) (=> (= (ControlFlow 0 139) 138) anon45_Else_correct)))))
(let ((anon43_Then_correct  (=> (not |$w$loop#0@0|) (and (=> (= (ControlFlow 0 141) 139) anon44_Then_correct) (=> (= (ControlFlow 0 141) 140) anon44_Else_correct)))))
(let ((GeneratedUnifiedExit_correct  (=> (= (ControlFlow 0 36) (- 0 35)) (= |reachesCycle#0@2| (exists ((|n#3| T@U) ) (!  (and (and ($Is refType |n#3| Tclass._module.Node) ($IsAlloc refType |n#3| Tclass._module.Node $Heap@7)) (and (and (_module.Node.Reaches $Heap@7 this@@9 |n#3| |S#0@@9|) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |n#3|) _module.Node.next)) null)) (not true))) (_module.Node.Reaches $Heap@7 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |n#3|) _module.Node.next)) |n#3| |S#0@@9|)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.156:38|
 :skolemid |589|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 |n#3|) _module.Node.next)))
 :pattern ( (_module.Node.Reaches $Heap@7 this@@9 |n#3| |S#0@@9|))
))))))
(let ((anon37_correct  (=> (forall ((|k#0_0_1| Int) (|l#0_0_1| Int) ) (!  (=> (<= (LitInt 0) |k#0_0_1|) (=> (<= (LitInt 0) |l#0_0_1|) (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_1| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_1| |S#0@@9|) null)) (not true)) (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_1| |S#0@@9|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_1| |S#0@@9|)) _module.Node.next)) null)) (not true)) (and (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_1| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_1| |S#0@@9|)) _module.Node.next)) |l#0_0_1| |S#0@@9|)) (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_1| |S#0@@9|))))))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.172:24|
 :skolemid |618|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_1| |S#0@@9|)) _module.Node.next)) |l#0_0_1| |S#0@@9|))
)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (not (exists ((|k#0_0_1@@0| Int) (|l#0_0_1@@0| Int) ) (!  (and (and (and (and (<= (LitInt 0) |k#0_0_1@@0|) (<= (LitInt 0) |l#0_0_1@@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@0| |S#0@@9|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@0| |S#0@@9|)) _module.Node.next)) null)) (not true))) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@0| |S#0@@9|)) _module.Node.next)) |l#0_0_1@@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@0| |S#0@@9|)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.172:24|
 :skolemid |620|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@0| |S#0@@9|)) _module.Node.next)) |l#0_0_1@@0| |S#0@@9|))
)))) (=> (not (exists ((|k#0_0_1@@1| Int) (|l#0_0_1@@1| Int) ) (!  (and (and (and (and (<= (LitInt 0) |k#0_0_1@@1|) (<= (LitInt 0) |l#0_0_1@@1|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@1| |S#0@@9|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@1| |S#0@@9|)) _module.Node.next)) null)) (not true))) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@1| |S#0@@9|)) _module.Node.next)) |l#0_0_1@@1| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@1| |S#0@@9|)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.172:24|
 :skolemid |621|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_1@@1| |S#0@@9|)) _module.Node.next)) |l#0_0_1@@1| |S#0@@9|))
))) (=> (and (and (= |reachesCycle#0@1| (U_2_bool (Lit boolType (bool_2_U false)))) (= $Heap@7 $Heap@6)) (and (= |reachesCycle#0@2| |reachesCycle#0@1|) (= (ControlFlow 0 54) 36))) GeneratedUnifiedExit_correct))))))
(let ((anon61_Else_correct  (=> (and (not (and (and (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) null)) (not true)))) (= (ControlFlow 0 71) 54)) anon37_correct)))
(let ((anon61_Then_correct  (=> (and (and (and (and (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) null)) (not true))) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@6)) (and ($IsAlloc intType (int_2_U |k#0_0_0@0|) TInt $Heap@6) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@6))) (and (=> (= (ControlFlow 0 56) (- 0 70)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 56) (- 0 69)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 56) (- 0 68)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (forall ((|n#0_0_2| T@U) ) (!  (=> ($Is refType |n#0_0_2| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0_2|)) (or (not (= |n#0_0_2| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_2|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_2|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |612|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_2|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 56) (- 0 67)) (<= (LitInt 0) |k#0_0_0@0|)) (=> (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) (and (=> (= (ControlFlow 0 56) (- 0 66)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true))) (and (=> (= (ControlFlow 0 56) (- 0 65)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) null)) (not true))) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next) Tclass._module.Node? $Heap@6) (=> (and ($IsAlloc intType (int_2_U |l#0_0_0@0|) TInt $Heap@6) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@6)) (and (=> (= (ControlFlow 0 56) (- 0 64)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next))))) (and (=> (= (ControlFlow 0 56) (- 0 63)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 56) (- 0 62)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |S#0@@9|) (forall ((|n#0_0_3| T@U) ) (!  (=> ($Is refType |n#0_0_3| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0_3|)) (or (not (= |n#0_0_3| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_3|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_3|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |614|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_3|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 56) (- 0 61)) (<= (LitInt 0) |l#0_0_0@0|)) (=> (and (and (|_module.Node.Nexxxt#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|)) _module.Node.next)) |l#0_0_0@0| |S#0@@9|) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@6)) (and ($IsAlloc intType (int_2_U |k#0_0_0@0|) TInt $Heap@6) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@6))) (and (=> (= (ControlFlow 0 56) (- 0 60)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 56) (- 0 59)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 56) (- 0 58)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (forall ((|n#0_0_4| T@U) ) (!  (=> ($Is refType |n#0_0_4| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0_4|)) (or (not (= |n#0_0_4| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_4|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_4|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |616|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_4|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (<= (LitInt 0) |k#0_0_0@0|)) (=> (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) (= (ControlFlow 0 56) 54)) anon37_correct))))))))))))))))))))))
(let ((anon60_Else_correct  (=> (not (and (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true)))) (and (=> (= (ControlFlow 0 78) 56) anon61_Then_correct) (=> (= (ControlFlow 0 78) 71) anon61_Else_correct)))))
(let ((anon60_Then_correct  (=> (and (and (and (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true))) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@6)) (and ($IsAlloc intType (int_2_U |k#0_0_0@0|) TInt $Heap@6) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@6))) (and (=> (= (ControlFlow 0 72) (- 0 77)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 72) (- 0 76)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 72) (- 0 75)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (forall ((|n#0_0_1| T@U) ) (!  (=> ($Is refType |n#0_0_1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0_1|)) (or (not (= |n#0_0_1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |610|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_1|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 72) (- 0 74)) (<= (LitInt 0) |k#0_0_0@0|)) (=> (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) (and (=> (= (ControlFlow 0 72) (- 0 73)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) null)) (not true))) (and (=> (= (ControlFlow 0 72) 56) anon61_Then_correct) (=> (= (ControlFlow 0 72) 71) anon61_Else_correct)))))))))))
(let ((anon59_Else_correct  (=> (not (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|))) (and (=> (= (ControlFlow 0 84) 72) anon60_Then_correct) (=> (= (ControlFlow 0 84) 78) anon60_Else_correct)))))
(let ((anon59_Then_correct  (=> (and (and (and (<= (LitInt 0) |k#0_0_0@0|) (<= (LitInt 0) |l#0_0_0@0|)) ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@6)) (and ($IsAlloc intType (int_2_U |k#0_0_0@0|) TInt $Heap@6) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@6))) (and (=> (= (ControlFlow 0 79) (- 0 83)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 79) (- 0 82)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (=> (|_module.Node.IsClosed#canCall| $Heap@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@6 this@@9 |S#0@@9|) (forall ((|n#0_0_0| T@U) ) (!  (=> ($Is refType |n#0_0_0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0_0|)) (or (not (= |n#0_0_0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |608|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 |n#0_0_0|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (<= (LitInt 0) |k#0_0_0@0|)) (=> (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#0_0_0@0| |S#0@@9|) (and (=> (= (ControlFlow 0 79) 72) anon60_Then_correct) (=> (= (ControlFlow 0 79) 78) anon60_Else_correct))))))))))
(let ((anon58_Else_correct  (=> (< |k#0_0_0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 86) 79) anon59_Then_correct) (=> (= (ControlFlow 0 86) 84) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (<= (LitInt 0) |k#0_0_0@0|) (and (=> (= (ControlFlow 0 85) 79) anon59_Then_correct) (=> (= (ControlFlow 0 85) 84) anon59_Else_correct)))))
(let ((anon57_Then_correct  (and (=> (= (ControlFlow 0 87) 85) anon58_Then_correct) (=> (= (ControlFlow 0 87) 86) anon58_Else_correct))))
(let ((anon53_Then_correct  (=> (= |hare#0@0| |tortoise#0@0|) (and (=> (= (ControlFlow 0 37) (- 0 53)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 37) (- 0 52)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 37) (- 0 51)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#2| T@U) ) (!  (=> ($Is refType |n#2| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#2|)) (or (not (= |n#2| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |808|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#2@@0| T@U) ) (!  (=> ($Is refType |n#2@@0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#2@@0|)) (or (not (= |n#2@@0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |808|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@0|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 37) (- 0 50)) (<= (LitInt 0) |h#0@0|)) (=> (<= (LitInt 0) |h#0@0|) (=> (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (forall ((|k#1| Int) ) (!  (=> (and (<= (LitInt 0) |k#1|) (< |k#1| |h#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@2 this@@9 |h#0@0| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@2 this@@9 |h#0@0| |S#0@@9|) null)) (not true)) (|_module.Node.Nexxxt#canCall| $Heap@2 this@@9 |k#1| |S#0@@9|))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.306:20|
 :skolemid |810|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@2 this@@9 |k#1| |S#0@@9|))
))) (and (and (forall ((|k#1@@0| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@0|) (< |k#1@@0| |h#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@2 this@@9 |h#0@0| |S#0@@9|) null)) (not true))) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@2 this@@9 |k#1@@0| |S#0@@9|) null)) (not true)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.306:20|
 :skolemid |812|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@2 this@@9 |k#1@@0| |S#0@@9|))
)) (= $Heap@1 $Heap@2)) (and (= |x##0@0| (+ |t#0@0| 1)) (= |y##0@0| (- |h#0@0| (+ |t#0@0| 1)))))) (and (=> (= (ControlFlow 0 37) (- 0 49)) (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 37) (- 0 48)) (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 37) (- 0 47)) (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (forall ((|n#4| T@U) ) (!  (=> ($Is refType |n#4| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#4|)) (or (not (= |n#4| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |785|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@2 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@2 this@@9 |S#0@@9|) (forall ((|n#4@@0| T@U) ) (!  (=> ($Is refType |n#4@@0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#4@@0|)) (or (not (= |n#4@@0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4@@0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4@@0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |785|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 |n#4@@0|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 37) (- 0 46)) (<= (LitInt 0) |x##0@0|)) (=> (<= (LitInt 0) |x##0@0|) (and (=> (= (ControlFlow 0 37) (- 0 45)) (<= (LitInt 0) |y##0@0|)) (=> (<= (LitInt 0) |y##0@0|) (=> (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (=> (and (and (|_module.Node.Nexxxt#canCall| $Heap@3 this@@9 |x##0@0| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@3 this@@9 |x##0@0| |S#0@@9|) null)) (not true)) (and (and (|_module.Node.Nexxxt#canCall| $Heap@3 this@@9 |x##0@0| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@3 (_module.Node.Nexxxt ($LS $LZ) $Heap@3 this@@9 |x##0@0| |S#0@@9|) |y##0@0| |S#0@@9|)) (|_module.Node.Nexxxt#canCall| $Heap@3 this@@9 (+ |x##0@0| |y##0@0|) |S#0@@9|)))) (and (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@3 this@@9 |x##0@0| |S#0@@9|) null)) (not true)) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@3 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@3 this@@9 |x##0@0| |S#0@@9|) |y##0@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@3 this@@9 (+ |x##0@0| |y##0@0|) |S#0@@9|))) (= $Heap@2 $Heap@3))) (and (=> (= (ControlFlow 0 37) (- 0 44)) (or (not (= |tortoise#0@0| null)) (not true))) (and (=> (= (ControlFlow 0 37) (- 0 43)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) null)) (not true))) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next) Tclass._module.Node? $Heap@3) (and (=> (= (ControlFlow 0 37) (- 0 42)) ($Is refType |tortoise#0@0| Tclass._module.Node)) (=> ($Is refType |tortoise#0@0| Tclass._module.Node) (=> (and ($IsAlloc refType |tortoise#0@0| Tclass._module.Node $Heap@3) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@3)) (and (=> (= (ControlFlow 0 37) (- 0 41)) (=> (|_module.Node.IsClosed#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next))))) (and (=> (= (ControlFlow 0 37) (- 0 40)) (=> (|_module.Node.IsClosed#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 37) (- 0 39)) (=> (|_module.Node.IsClosed#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (or (_module.Node.IsClosed $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |S#0@@9|) (forall ((|n#10| T@U) ) (!  (=> ($Is refType |n#10| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#10|)) (or (not (= |n#10| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#10|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#10|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |629|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |n#10|) _module.Node.next)))
))))) (=> (and (|_module.Node.Reaches#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |tortoise#0@0| |S#0@@9|) (|_module.Node.Reaches#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |tortoise#0@0| |S#0@@9|)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (=> (|_module.Node.Reaches#canCall| $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |tortoise#0@0| |S#0@@9|) (or (_module.Node.Reaches $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |tortoise#0@0| |S#0@@9|) (exists ((|k#2| Int) ) (!  (and (<= (LitInt 0) |k#2|) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |k#2| |S#0@@9|) |tortoise#0@0|))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.151:12|
 :skolemid |631|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |k#2| |S#0@@9|))
))))) (=> (_module.Node.Reaches $Heap@3 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 |tortoise#0@0|) _module.Node.next)) |tortoise#0@0| |S#0@@9|) (=> (and (and (= |reachesCycle#0@0| (U_2_bool (Lit boolType (bool_2_U true)))) (= $Heap@7 $Heap@3)) (and (= |reachesCycle#0@2| |reachesCycle#0@0|) (= (ControlFlow 0 37) 36))) GeneratedUnifiedExit_correct)))))))))))))))))))))))))))))))))))))
(let ((anon57_Else_correct true))
(let ((anon28_correct  (=> (= |distanceToNull#0_0_0@0| (ite (= |hare#0@0| null) |h#0@0| (+ |h#0@0| 1))) (and (=> (= (ControlFlow 0 88) (- 0 93)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 88) (- 0 92)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 88) (- 0 91)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#7@@0| T@U) ) (!  (=> ($Is refType |n#7@@0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#7@@0|)) (or (not (= |n#7@@0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |848|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@0|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#7@@1| T@U) ) (!  (=> ($Is refType |n#7@@1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#7@@1|)) (or (not (= |n#7@@1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |848|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#7@@1|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 88) (- 0 90)) (<= (LitInt 0) |distanceToNull#0_0_0@0|)) (=> (<= (LitInt 0) |distanceToNull#0_0_0@0|) (and (=> (= (ControlFlow 0 88) (- 0 89)) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |distanceToNull#0_0_0@0| |S#0@@9|) null)) (=> (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |distanceToNull#0_0_0@0| |S#0@@9|) null) (=> (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall ((|k#1@@1| Int) (|l#1@@0| Int) ) (!  (=> (<= (LitInt 0) |k#1@@1|) (=> (<= (LitInt 0) |l#1@@0|) (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#1@@1| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@1| |S#0@@9|) null)) (not true)) (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#1@@1| |S#0@@9|) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@1| |S#0@@9|)) _module.Node.next)) null)) (not true)) (and (and (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#1@@1| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@1| |S#0@@9|)) _module.Node.next)) |l#1@@0| |S#0@@9|)) (|_module.Node.Nexxxt#canCall| $Heap@6 this@@9 |k#1@@1| |S#0@@9|))))))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.322:21|
 :skolemid |850|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@1| |S#0@@9|)) _module.Node.next)) |l#1@@0| |S#0@@9|))
))) (and (not (exists ((|k#1@@2| Int) (|l#1@@1| Int) ) (!  (and (and (and (and (<= (LitInt 0) |k#1@@2|) (<= (LitInt 0) |l#1@@1|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@2| |S#0@@9|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@2| |S#0@@9|)) _module.Node.next)) null)) (not true))) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@2| |S#0@@9|)) _module.Node.next)) |l#1@@1| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@2| |S#0@@9|)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.322:21|
 :skolemid |852|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@6 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 (_module.Node.Nexxxt ($LS $LZ) $Heap@6 this@@9 |k#1@@2| |S#0@@9|)) _module.Node.next)) |l#1@@1| |S#0@@9|))
))) (= $Heap@1 $Heap@6))) (and (=> (= (ControlFlow 0 88) 87) anon57_Then_correct) (=> (= (ControlFlow 0 88) 34) anon57_Else_correct))))))))))))))))
(let ((anon56_Else_correct  (=> (and (or (not (= |hare#0@0| null)) (not true)) (= (ControlFlow 0 95) 88)) anon28_correct)))
(let ((anon56_Then_correct  (=> (and (= |hare#0@0| null) (= (ControlFlow 0 94) 88)) anon28_correct)))
(let ((anon55_Then_correct  (=> (or (= |hare#0@0| null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |hare#0@0|) _module.Node.next)) null)) (and (=> (= (ControlFlow 0 96) 94) anon56_Then_correct) (=> (= (ControlFlow 0 96) 95) anon56_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (not (or (= |hare#0@0| null) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |hare#0@0|) _module.Node.next)) null))) (= |d##0_0@1| (+ |h#0@0| 1))) (and (=> (= (ControlFlow 0 3) (- 0 33)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 3) (- 0 32)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 3) (- 0 31)) (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#2@@1| T@U) ) (!  (=> ($Is refType |n#2@@1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#2@@1|)) (or (not (= |n#2@@1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |808|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@1|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@1 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@1 this@@9 |S#0@@9|) (forall ((|n#2@@2| T@U) ) (!  (=> ($Is refType |n#2@@2| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#2@@2|)) (or (not (= |n#2@@2| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@2|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@2|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |808|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 |n#2@@2|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 3) (- 0 30)) (<= (LitInt 0) |d##0_0@1|)) (=> (<= (LitInt 0) |d##0_0@1|) (=> (and (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (forall ((|k#1@@3| Int) ) (!  (=> (and (<= (LitInt 0) |k#1@@3|) (< |k#1@@3| |d##0_0@1|)) (and (|_module.Node.Nexxxt#canCall| $Heap@4 this@@9 |d##0_0@1| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 |d##0_0@1| |S#0@@9|) null)) (not true)) (|_module.Node.Nexxxt#canCall| $Heap@4 this@@9 |k#1@@3| |S#0@@9|))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.306:20|
 :skolemid |810|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 |k#1@@3| |S#0@@9|))
))) (and (forall ((|k#1@@4| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@4|) (< |k#1@@4| |d##0_0@1|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 |d##0_0@1| |S#0@@9|) null)) (not true))) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 |k#1@@4| |S#0@@9|) null)) (not true)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.306:20|
 :skolemid |812|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 |k#1@@4| |S#0@@9|))
)) (= $Heap@1 $Heap@4))) (and (and ($IsAllocBox ($Box refType this@@9) Tclass._module.Node? $Heap@4) (= |##k#0_0@1| (+ |t#0@0| 1))) (and ($IsAlloc intType (int_2_U |##k#0_0@1|) TInt $Heap@4) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@4)))) (and (=> (= (ControlFlow 0 3) (- 0 29)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (and (=> (= (ControlFlow 0 3) (- 0 28)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (and (=> (= (ControlFlow 0 3) (- 0 27)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (forall ((|n#0_0| T@U) ) (!  (=> ($Is refType |n#0_0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#0_0|)) (or (not (= |n#0_0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0_0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0_0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |623|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#0_0|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 3) (- 0 26)) (<= (LitInt 0) |##k#0_0@1|)) (=> (and (|_module.Node.Nexxxt#canCall| $Heap@4 this@@9 (+ |t#0@0| 1) |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@4 this@@9 (+ |t#0@0| 1) |S#0@@9|)) (and (=> (= (ControlFlow 0 3) (- 0 25)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 (+ |t#0@0| 1) |S#0@@9|) null)) (not true))) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@4 this@@9 (+ |t#0@0| 1) |S#0@@9|) null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 24)) (or (not (= |tortoise#0@0| null)) (not true))) (=> (or (not (= |tortoise#0@0| null)) (not true)) (=> (and (= |$rhs#0_0@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |tortoise#0@0|) _module.Node.next))) (= |$rhs#0_1@1| (+ |t#0@0| 1))) (and (=> (= (ControlFlow 0 3) (- 0 23)) (or (not (= |hare#0@0| null)) (not true))) (=> (or (not (= |hare#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 22)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |hare#0@0|) _module.Node.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |hare#0@0|) _module.Node.next)) null)) (not true)) (=> (and (= |$rhs#0_2@1| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |hare#0@0|) _module.Node.next))) _module.Node.next))) (= |$rhs#0_3@1| (+ |h#0@0| 2))) (and (=> (= (ControlFlow 0 3) (- 0 21)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 3) (- 0 20)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 3) (- 0 19)) (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (forall ((|n#8@@0| T@U) ) (!  (=> ($Is refType |n#8@@0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#8@@0|)) (or (not (= |n#8@@0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |699|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@0|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@4 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@4 this@@9 |S#0@@9|) (forall ((|n#8@@1| T@U) ) (!  (=> ($Is refType |n#8@@1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#8@@1|)) (or (not (= |n#8@@1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |699|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 |n#8@@1|) _module.Node.next)))
)))) (and (=> (= (ControlFlow 0 3) (- 0 18)) (<= (LitInt 0) |call3formal@A#0@0|)) (=> (<= (LitInt 0) |call3formal@A#0@0|) (and (=> (= (ControlFlow 0 3) (- 0 17)) (<= (LitInt 1) |call4formal@B#0@0|)) (=> (<= (LitInt 1) |call4formal@B#0@0|) (and (=> (= (ControlFlow 0 3) (- 0 16)) (forall ((|k#1@@5| Int) (|l#1@@2| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@5|) (< |k#1@@5| |l#1@@2|)) (< |l#1@@2| |call3formal@A#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |k#1@@5| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |l#1@@2| |S#0@@9|))) (not true)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.225:21|
 :skolemid |701|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |l#1@@2| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |k#1@@5| |S#0@@9|))
))) (=> (forall ((|k#1@@6| Int) (|l#1@@3| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@6|) (< |k#1@@6| |l#1@@3|)) (< |l#1@@3| |call3formal@A#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |k#1@@6| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |l#1@@3| |S#0@@9|))) (not true)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.225:21|
 :skolemid |701|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |l#1@@3| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |k#1@@6| |S#0@@9|))
)) (and (=> (= (ControlFlow 0 3) (- 0 15)) (or (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|) null) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|) |call4formal@B#0@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|)))) (=> (or (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|) null) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|) |call4formal@B#0@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@4 this@@9 |call3formal@A#0@0| |S#0@@9|))) (=> (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (forall ((|T#1| Int) (|_t#0#0| Int) ) (!  (=> (= |_t#0#0| (+ 1 (Mul (LitInt 2) |T#1|))) (=> (<= (LitInt 0) |T#1|) (=> (< |T#1| (+ |call3formal@A#0@0| |call4formal@B#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |T#1| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |_t#0#0| |S#0@@9|)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.227:20|
 :skolemid |703|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |_t#0#0| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |T#1| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |_t#0#0| |S#0@@9|) (Mul 2 |T#1|))
))) (and (exists ((|T#1@@0| Int) (|_t#0#0@@0| Int) ) (!  (and (= |_t#0#0@@0| (+ 1 (Mul (LitInt 2) |T#1@@0|))) (and (and (<= (LitInt 0) |T#1@@0|) (< |T#1@@0| (+ |call3formal@A#0@0| |call4formal@B#0@0|))) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |T#1@@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@0| |S#0@@9|))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.227:20|
 :skolemid |705|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |T#1@@0| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@0| |S#0@@9|) (Mul 2 |T#1@@0|))
)) (= $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 3) (- 0 14)) (or (<= 0 |$decr$loop#00@1|) (= (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |$rhs#0_1@1|) |$decr$loop#00@1|))) (=> (or (<= 0 |$decr$loop#00@1|) (= (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |$rhs#0_1@1|) |$decr$loop#00@1|)) (and (=> (= (ControlFlow 0 3) (- 0 13)) (< (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |$rhs#0_1@1|) |$decr$loop#00@1|)) (=> (< (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |$rhs#0_1@1|) |$decr$loop#00@1|) (=> (=> (or (not (= |$rhs#0_0@1| null)) (not true)) (=> (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_0@1|)) (=> (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_2@1|)) (=> (and (<= (LitInt 0) |$rhs#0_1@1|) (< |$rhs#0_1@1| |$rhs#0_3@1|)) (and (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |$rhs#0_1@1| |S#0@@9|) (=> (= (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |$rhs#0_1@1| |S#0@@9|) |$rhs#0_0@1|) (and (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |$rhs#0_3@1| |S#0@@9|) (=> (= (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |$rhs#0_3@1| |S#0@@9|) |$rhs#0_2@1|) (=> (= |$rhs#0_3@1| (+ 1 (Mul (LitInt 2) |$rhs#0_1@1|))) (=> (<= |$rhs#0_1@1| (+ |call3formal@A#0@0| |call4formal@B#0@0|)) (forall ((|k#1@@7| Int) (|_t#0#0@@1| Int) ) (!  (=> (= |_t#0#0@@1| (+ 1 (Mul (LitInt 2) |k#1@@7|))) (=> (<= (LitInt 0) |k#1@@7|) (=> (< |k#1@@7| |$rhs#0_1@1|) (and (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |k#1@@7| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@5 this@@9 |_t#0#0@@1| |S#0@@9|)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |626|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |_t#0#0@@1| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |k#1@@7| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@5 this@@9 |_t#0#0@@1| |S#0@@9|) (Mul 2 |k#1@@7|))
)))))))))))) (and (=> (= (ControlFlow 0 3) (- 0 12)) (=> |$w$loop#0@0| (or (not (= |$rhs#0_0@1| null)) (not true)))) (=> (=> |$w$loop#0@0| (or (not (= |$rhs#0_0@1| null)) (not true))) (and (=> (= (ControlFlow 0 3) (- 0 11)) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_0@1|)))) (=> (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_0@1|))) (and (=> (= (ControlFlow 0 3) (- 0 10)) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_2@1|)))) (=> (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#0_2@1|))) (and (=> (= (ControlFlow 0 3) (- 0 9)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0_1@1|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#0_1@1|)) (and (=> (= (ControlFlow 0 3) (- 0 8)) (=> |$w$loop#0@0| (< |$rhs#0_1@1| |$rhs#0_3@1|))) (=> (=> |$w$loop#0@0| (< |$rhs#0_1@1| |$rhs#0_3@1|)) (and (=> (= (ControlFlow 0 3) (- 0 7)) (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |$rhs#0_1@1| |S#0@@9|) |$rhs#0_0@1|))) (=> (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |$rhs#0_1@1| |S#0@@9|) |$rhs#0_0@1|)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |$rhs#0_3@1| |S#0@@9|) |$rhs#0_2@1|))) (=> (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |$rhs#0_3@1| |S#0@@9|) |$rhs#0_2@1|)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (=> |$w$loop#0@0| (= |$rhs#0_3@1| (+ 1 (Mul (LitInt 2) |$rhs#0_1@1|))))) (=> (=> |$w$loop#0@0| (= |$rhs#0_3@1| (+ 1 (Mul (LitInt 2) |$rhs#0_1@1|)))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (=> |$w$loop#0@0| (<= |$rhs#0_1@1| (+ |call3formal@A#0@0| |call4formal@B#0@0|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#0_1@1| (+ |call3formal@A#0@0| |call4formal@B#0@0|))) (=> (= (ControlFlow 0 3) (- 0 2)) (=> |$w$loop#0@0| (forall ((|k#1@@8| Int) (|_t#0#0@@2| Int) ) (!  (=> (= |_t#0#0@@2| (+ 1 (Mul (LitInt 2) |k#1@@8|))) (=> (and (<= (LitInt 0) |k#1@@8|) (< |k#1@@8| |$rhs#0_1@1|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |k#1@@8| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@2| |S#0@@9|))) (not true))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |603|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@2| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |k#1@@8| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@5 this@@9 |_t#0#0@@2| |S#0@@9|) (Mul 2 |k#1@@8|))
)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon24_correct  (and (=> (= (ControlFlow 0 97) 96) anon55_Then_correct) (=> (= (ControlFlow 0 97) 3) anon55_Else_correct))))
(let ((anon54_Else_correct  (=> (and (= |hare#0@0| null) (= (ControlFlow 0 100) 97)) anon24_correct)))
(let ((anon54_Then_correct  (=> (or (not (= |hare#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (or (not (= |hare#0@0| null)) (not true))) (=> (or (not (= |hare#0@0| null)) (not true)) (=> (= (ControlFlow 0 98) 97) anon24_correct))))))
(let ((anon53_Else_correct  (=> (and (or (not (= |hare#0@0| |tortoise#0@0|)) (not true)) (= |$decr$loop#00@1| (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |t#0@0|))) (and (=> (= (ControlFlow 0 101) 98) anon54_Then_correct) (=> (= (ControlFlow 0 101) 100) anon54_Else_correct)))))
(let ((anon43_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 102) 37) anon53_Then_correct) (=> (= (ControlFlow 0 102) 101) anon53_Else_correct)))))
(let ((anon42_LoopBody_correct  (and (=> (= (ControlFlow 0 142) 141) anon43_Then_correct) (=> (= (ControlFlow 0 142) 102) anon43_Else_correct))))
(let ((anon42_LoopDone_correct true))
(let ((anon42_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and ($Is refType |tortoise#0@0| Tclass._module.Node?) ($IsAlloc refType |tortoise#0@0| Tclass._module.Node? $Heap@1)) (and ($Is refType |hare#0@0| Tclass._module.Node?) ($IsAlloc refType |hare#0@0| Tclass._module.Node? $Heap@1))) (=> (and (and (and (and (and (and (and (and (and (and (and (not false) (<= 0 |call3formal@A#0@0|)) (<= 1 |call4formal@B#0@0|)) (<= 0 |call3formal@A#0@0|)) (<= 1 |call4formal@B#0@0|)) (<= 0 |t#0@0|)) (<= 1 |h#0@0|)) (= |$rhs#2@0| 0)) (= |$rhs#3@0| 1)) (<= 1 |$decr_init$loop#00@0|)) (=> |$w$loop#0@0| (or (not (= |tortoise#0@0| null)) (not true)))) (and (and (and (and (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |tortoise#0@0|))) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |hare#0@0|)))) (and (=> |$w$loop#0@0| (=> (and (<= (LitInt 0) |t#0@0|) (< |t#0@0| |h#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |t#0@0| |S#0@@9|) (=> (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|) (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |h#0@0| |S#0@@9|))))) (=> |$w$loop#0@0| (<= (LitInt 0) |t#0@0|)))) (and (and (=> |$w$loop#0@0| (< |t#0@0| |h#0@0|)) (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |t#0@0| |S#0@@9|) |tortoise#0@0|))) (and (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |h#0@0| |S#0@@9|) |hare#0@0|)) (=> |$w$loop#0@0| (= |h#0@0| (+ 1 (Mul (LitInt 2) |t#0@0|))))))) (and (and (and (=> |$w$loop#0@0| (<= |t#0@0| (+ |call3formal@A#0@0| |call4formal@B#0@0|))) (=> |$w$loop#0@0| (forall ((|k#1@@9| Int) (|_t#0#0@@3| Int) ) (!  (=> (= |_t#0#0@@3| (+ 1 (Mul (LitInt 2) |k#1@@9|))) (=> (<= (LitInt 0) |k#1@@9|) (=> (< |k#1@@9| |t#0@0|) (and (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |k#1@@9| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@1 this@@9 |_t#0#0@@3| |S#0@@9|)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |602|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |_t#0#0@@3| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |k#1@@9| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |_t#0#0@@3| |S#0@@9|) (Mul 2 |k#1@@9|))
)))) (and (=> |$w$loop#0@0| (forall ((|k#1@@10| Int) (|_t#0#0@@4| Int) ) (!  (=> (= |_t#0#0@@4| (+ 1 (Mul (LitInt 2) |k#1@@10|))) (=> (and (<= (LitInt 0) |k#1@@10|) (< |k#1@@10| |t#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |k#1@@10| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |_t#0#0@@4| |S#0@@9|))) (not true))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |603|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |_t#0#0@@4| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |k#1@@10| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@1 this@@9 |_t#0#0@@4| |S#0@@9|) (Mul 2 |k#1@@10|))
))) (=> |$w$loop#0@0| (forall ((|k#1@@11| Int) (|_t#0#0@@5| Int) ) (!  (=> (= |_t#0#0@@5| (+ 1 (Mul (LitInt 2) |k#1@@11|))) (=> (and (<= (LitInt 0) |k#1@@11|) (< |k#1@@11| |t#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |k#1@@11| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |_t#0#0@@5| |S#0@@9|))) (not true))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |604|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |_t#0#0@@5| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |k#1@@11| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@1 this@@9 |_t#0#0@@5| |S#0@@9|) (Mul 2 |k#1@@11|))
))))) (and (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@7)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.161:5|
 :skolemid |605|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@7))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (forall (($o@@8 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@8) $f@@3)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@3))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.161:5|
 :skolemid |606|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@8) $f@@3))
)) (<= (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |t#0@0|) |$decr_init$loop#00@0|)))))) (and (=> (= (ControlFlow 0 143) 1) anon42_LoopDone_correct) (=> (= (ControlFlow 0 143) 142) anon42_LoopBody_correct)))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap@@6 alloc false)) (and (=> (= (ControlFlow 0 144) (- 0 157)) (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (and (=> (= (ControlFlow 0 144) (- 0 156)) (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (|Set#IsMember| |S#0@@9| ($Box refType null)))) (and (=> (= (ControlFlow 0 144) (- 0 155)) (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (forall ((|n#6@@0| T@U) ) (!  (=> ($Is refType |n#6@@0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#6@@0|)) (or (not (= |n#6@@0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |647|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@0|) _module.Node.next)))
))))) (=> (=> (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (or (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (forall ((|n#6@@1| T@U) ) (!  (=> ($Is refType |n#6@@1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#6@@1|)) (or (not (= |n#6@@1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |647|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#6@@1|) _module.Node.next)))
)))) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (<= (LitInt 0) |call3formal@A#0@0|) (<= (LitInt 1) |call4formal@B#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) null)) (not true)) (and (|_module.Node.Nexxxt#canCall| $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) (and (|_module.Node.Nexxxt#canCall| $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) |call4formal@B#0@0| |S#0@@9|)))))) (=> (and (and (and (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) null)) (not true)) (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |call3formal@A#0@0| |S#0@@9|) |call4formal@B#0@0| |S#0@@9|))) (forall ((|k#1@@12| Int) (|l#1@@4| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@12|) (< |k#1@@12| |l#1@@4|)) (< |l#1@@4| |call3formal@A#0@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@0 this@@9 |k#1@@12| |S#0@@9|) (|_module.Node.Nexxxt#canCall| $Heap@0 this@@9 |l#1@@4| |S#0@@9|)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.198:20|
 :skolemid |649|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |l#1@@4| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |k#1@@12| |S#0@@9|))
))) (and (forall ((|k#1@@13| Int) (|l#1@@5| Int) ) (!  (=> (and (and (<= (LitInt 0) |k#1@@13|) (< |k#1@@13| |l#1@@5|)) (< |l#1@@5| |call3formal@A#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |k#1@@13| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |l#1@@5| |S#0@@9|))) (not true)))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.198:20|
 :skolemid |651|
 :pattern ( (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |l#1@@5| |S#0@@9|) (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@9 |k#1@@13| |S#0@@9|))
)) (= $Heap@@6 $Heap@0))) (and (and (= |$rhs#1@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 this@@9) _module.Node.next))) (= |$rhs#2@0| (LitInt 0))) (and (= |$rhs#3@0| (LitInt 1)) (= |$decr_init$loop#00@0| (- (+ |call3formal@A#0@0| |call4formal@B#0@0|) |$rhs#2@0|))))) (and (=> (= (ControlFlow 0 144) (- 0 154)) (=> |$w$loop#0@0| (or (not (= this@@9 null)) (not true)))) (=> (=> |$w$loop#0@0| (or (not (= this@@9 null)) (not true))) (and (=> (= (ControlFlow 0 144) (- 0 153)) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType this@@9)))) (=> (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType this@@9))) (and (=> (= (ControlFlow 0 144) (- 0 152)) (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#1@0|)))) (=> (=> |$w$loop#0@0| (|Set#IsMember| |S#0@@9| ($Box refType |$rhs#1@0|))) (and (=> (= (ControlFlow 0 144) (- 0 151)) (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|))) (=> (=> |$w$loop#0@0| (<= (LitInt 0) |$rhs#2@0|)) (and (=> (= (ControlFlow 0 144) (- 0 150)) (=> |$w$loop#0@0| (< |$rhs#2@0| |$rhs#3@0|))) (=> (=> |$w$loop#0@0| (< |$rhs#2@0| |$rhs#3@0|)) (and (=> (= (ControlFlow 0 144) (- 0 149)) (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |$rhs#2@0| |S#0@@9|) this@@9))) (=> (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |$rhs#2@0| |S#0@@9|) this@@9)) (and (=> (= (ControlFlow 0 144) (- 0 148)) (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |$rhs#3@0| |S#0@@9|) |$rhs#1@0|))) (=> (=> |$w$loop#0@0| (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |$rhs#3@0| |S#0@@9|) |$rhs#1@0|)) (and (=> (= (ControlFlow 0 144) (- 0 147)) (=> |$w$loop#0@0| (= |$rhs#3@0| (+ 1 (Mul (LitInt 2) |$rhs#2@0|))))) (=> (=> |$w$loop#0@0| (= |$rhs#3@0| (+ 1 (Mul (LitInt 2) |$rhs#2@0|)))) (and (=> (= (ControlFlow 0 144) (- 0 146)) (=> |$w$loop#0@0| (<= |$rhs#2@0| (+ |call3formal@A#0@0| |call4formal@B#0@0|)))) (=> (=> |$w$loop#0@0| (<= |$rhs#2@0| (+ |call3formal@A#0@0| |call4formal@B#0@0|))) (and (=> (= (ControlFlow 0 144) (- 0 145)) (=> |$w$loop#0@0| (forall ((|k#1@@14| Int) (|_t#0#0@@6| Int) ) (!  (=> (= |_t#0#0@@6| (+ 1 (Mul (LitInt 2) |k#1@@14|))) (=> (and (<= (LitInt 0) |k#1@@14|) (< |k#1@@14| |$rhs#2@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |k#1@@14| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@6| |S#0@@9|))) (not true))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |603|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@6| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |k#1@@14| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@6| |S#0@@9|) (Mul 2 |k#1@@14|))
)))) (=> (=> |$w$loop#0@0| (forall ((|k#1@@15| Int) (|_t#0#0@@7| Int) ) (!  (=> (= |_t#0#0@@7| (+ 1 (Mul (LitInt 2) |k#1@@15|))) (=> (and (<= (LitInt 0) |k#1@@15|) (< |k#1@@15| |$rhs#2@0|)) (or (not (= (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |k#1@@15| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@7| |S#0@@9|))) (not true))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.166:24|
 :skolemid |603|
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@7| |S#0@@9|) (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |k#1@@15| |S#0@@9|))
 :pattern ( (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@9 |_t#0#0@@7| |S#0@@9|) (Mul 2 |k#1@@15|))
))) (=> (= (ControlFlow 0 144) 143) anon42_LoopHead_correct)))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@6) ($IsHeapAnchor $Heap@@6)) (=> (and (and (and (or (not (= this@@9 null)) (not true)) (and ($Is refType this@@9 Tclass._module.Node) ($IsAlloc refType this@@9 Tclass._module.Node $Heap@@6))) (and ($Is SetType |S#0@@9| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0@@9| (TSet Tclass._module.Node?) $Heap@@6))) (and (and ($Is refType |tortoise#0| Tclass._module.Node?) ($IsAlloc refType |tortoise#0| Tclass._module.Node? $Heap@@6)) true)) (=> (and (and (and (and ($Is refType |hare#0| Tclass._module.Node?) ($IsAlloc refType |hare#0| Tclass._module.Node? $Heap@@6)) true) (= 5 $FunctionContextHeight)) (and (and (|_module.Node.IsClosed#canCall| $Heap@@6 this@@9 |S#0@@9|) (and (_module.Node.IsClosed $Heap@@6 this@@9 |S#0@@9|) (and (and (|Set#IsMember| |S#0@@9| ($Box refType this@@9)) (|Set#IsMember| |S#0@@9| ($Box refType null))) (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@9| ($Box refType |n#5|)) (or (not (= |n#5| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#5|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@9| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#5|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |587|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@6 |n#5|) _module.Node.next)))
))))) (= (ControlFlow 0 158) 144))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
