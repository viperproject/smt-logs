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
(declare-fun class._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell? () T@U)
(declare-fun Tagclass._module.Cell () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.Cell () T@U)
(declare-fun _module.Cell.data () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun _module.Cell.Q (T@U T@U T@U) Bool)
(declare-fun |_module.Cell.Q#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Cell.P (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |_module.Cell.P#canCall| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt alloc allocName class._module.Cell? Tagclass._module.Cell? Tagclass._module.Cell tytagFamily$Cell field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Cell?)  (or (= $o null) (= (dtype $o) Tclass._module.Cell?)))
 :qid |unknown.0:0|
 :skolemid |480|
 :pattern ( ($Is refType $o Tclass._module.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Cell $h) ($IsAlloc refType |c#0| Tclass._module.Cell? $h))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cell $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Cell? $h))
)))
(assert (= (FDim _module.Cell.data) 0))
(assert (= (FieldOfDecl class._module.Cell? field$data) _module.Cell.data))
(assert  (not ($IsGhostField _module.Cell.data)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Cell? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Cell? $h@@0))
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
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Cell.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |483|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Cell.data)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Cell)  (and ($Is refType |c#0@@0| Tclass._module.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Cell?))
)))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) (|e#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass._module.Cell))) (or (|_module.Cell.Q#canCall| $h0 this |e#0|) ($Is refType |e#0| Tclass._module.Cell?))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@2 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (or (= $o@@2 this) (= $o@@2 |e#0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@2) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@2) $f)))
 :qid |unknown.0:0|
 :skolemid |490|
)) (= (_module.Cell.Q $h0 this |e#0|) (_module.Cell.Q $h1 this |e#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |491|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (_module.Cell.Q $h1 this |e#0|))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this@@0 T@U) (|e#0@@0| T@U) ) (!  (=> (or (|_module.Cell.Q#canCall| $Heap this@@0 |e#0@@0|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.Cell) ($IsAlloc refType this@@0 Tclass._module.Cell $Heap)))) ($Is refType |e#0@@0| Tclass._module.Cell?)))) (= (_module.Cell.Q $Heap this@@0 |e#0@@0|)  (=> (or (not (= |e#0@@0| null)) (not true)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |e#0@@0|) _module.Cell.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this@@0) _module.Cell.data)))))))
 :qid |Bug132dfy.11:19|
 :skolemid |494|
 :pattern ( (_module.Cell.Q $Heap this@@0 |e#0@@0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($h0@@0 T@U) ($h1@@0 T@U) (this@@1 T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0@@0) ($IsGoodHeap $h1@@0)) (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 Tclass._module.Cell))) (and ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0))) (=> (forall (($o@@3 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (= $o@@3 this@@1)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0@@0 $o@@3) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1@@0 $o@@3) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |484|
)) (= (_module.Cell.P $h0@@0 this@@1) (_module.Cell.P $h1@@0 this@@1))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |486|
 :pattern ( ($IsHeapAnchor $h0@@0) ($HeapSucc $h0@@0 $h1@@0) (_module.Cell.P $h1@@0 this@@1))
)))
(assert (forall (($h@@2 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |482|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@4) _module.Cell.data)))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@1))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |502|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@1))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@5 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@5))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@5))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@5)))
)))
(assert (= (Tag Tclass._module.Cell?) Tagclass._module.Cell?))
(assert (= (TagFamily Tclass._module.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass._module.Cell) Tagclass._module.Cell))
(assert (= (TagFamily Tclass._module.Cell) tytagFamily$Cell))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@2 T@U) ) (!  (=> (or (|_module.Cell.P#canCall| $Heap@@0 this@@2) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass._module.Cell) ($IsAlloc refType this@@2 Tclass._module.Cell $Heap@@0)))))) (= (_module.Cell.P $Heap@@0 this@@2) (< (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@2) _module.Cell.data))) 0)))
 :qid |Bug132dfy.7:19|
 :skolemid |489|
 :pattern ( (_module.Cell.P $Heap@@0 this@@2) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((x@@6 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@6)) (Lit BoxType ($Box T@@4 x@@6)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@6)))
)))
(assert (forall ((h@@4 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@4))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@3 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(set-info :boogie-vc-id Impl$$_module.Cell.Test)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon27_Else_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 42) (- 0 41))) false)))
(let ((anon27_Then_correct  (and (=> (= (ControlFlow 0 36) (- 0 40)) true) (and (=> (= (ControlFlow 0 36) (- 0 39)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 38)) true) (and (=> (= (ControlFlow 0 36) (- 0 37)) ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1)) (=> ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1) (=> (= (ControlFlow 0 36) (- 0 35)) ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1))))))))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 32) (- 0 34)) true) (and (=> (= (ControlFlow 0 32) (- 0 33)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1)) (=> ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1) (=> (= (ControlFlow 0 32) (- 0 31)) ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1)))))))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 30)) true) (and (=> (= (ControlFlow 0 27) (- 0 29)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 27) (- 0 28)) ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1)) (=> ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1) (=> (= (ControlFlow 0 27) (- 0 26)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1)))))))))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 23) (- 0 25)) true) (and (=> (= (ControlFlow 0 23) (- 0 24)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= (ControlFlow 0 23) (- 0 22)) ($IsAlloc refType $nw@0 Tclass._module.Cell $Heap@@1)))))))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1)) (=> ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1) (=> (= (ControlFlow 0 20) (- 0 19)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1))))))
(let ((anon22_Then_correct  (=> (= (ControlFlow 0 18) (- 0 17)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1))))
(let ((anon21_Then_correct  (=> (= (ControlFlow 0 16) (- 0 15)) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1))))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 12) (- 0 14)) true) (and (=> (= (ControlFlow 0 12) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and ($IsAllocBox ($Box refType $nw@0) Tclass._module.Cell? $Heap@0) (= (ControlFlow 0 12) (- 0 11))) true))))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) true) (=> (= (ControlFlow 0 9) (- 0 8)) (or (not (= $nw@0 null)) (not true))))))
(let ((anon18_Then_correct  (=> (and ($IsAllocBox ($Box refType this@@3) Tclass._module.Cell? $Heap@0) (= (ControlFlow 0 7) (- 0 6))) true)))
(let ((anon17_Then_correct true))
(let ((anon16_Then_correct  (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (= (ControlFlow 0 3) (- 0 2)) (or (not (= $nw@0 null)) (not true))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#2| null $Heap@@1 alloc false)) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.Cell?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (and (and (and (and (and (and (and (and (and (and (and (=> (= (ControlFlow 0 43) 1) anon15_Then_correct) (=> (= (ControlFlow 0 43) 3) anon16_Then_correct)) (=> (= (ControlFlow 0 43) 5) anon17_Then_correct)) (=> (= (ControlFlow 0 43) 7) anon18_Then_correct)) (=> (= (ControlFlow 0 43) 9) anon19_Then_correct)) (=> (= (ControlFlow 0 43) 12) anon20_Then_correct)) (=> (= (ControlFlow 0 43) 16) anon21_Then_correct)) (=> (= (ControlFlow 0 43) 18) anon22_Then_correct)) (=> (= (ControlFlow 0 43) 20) anon23_Then_correct)) (=> (= (ControlFlow 0 43) 23) anon24_Then_correct)) (=> (= (ControlFlow 0 43) 27) anon25_Then_correct)) (=> (= (ControlFlow 0 43) 32) anon26_Then_correct)) (=> (= (ControlFlow 0 43) 36) anon27_Then_correct)) (=> (= (ControlFlow 0 43) 42) anon27_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Cell) ($IsAlloc refType this@@3 Tclass._module.Cell $Heap@@1)))) (and (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass._module.Cell) ($IsAlloc refType |c#0@@1| Tclass._module.Cell $Heap@@1))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 44) 43)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 23) (- 22))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 27) (- 28))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 32) (- 31))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 36) (- 37))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
