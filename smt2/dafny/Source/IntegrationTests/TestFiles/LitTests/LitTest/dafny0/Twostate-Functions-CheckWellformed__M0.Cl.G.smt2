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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.M0.C () T@U)
(declare-fun class.M0.C? () T@U)
(declare-fun Tagclass.M0.C? () T@U)
(declare-fun Tagclass.M0.Tr? () T@U)
(declare-fun Tagclass.M0.Tr () T@U)
(declare-fun Tagclass.M0.Cl? () T@U)
(declare-fun Tagclass.M0.Cl () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Tr () T@U)
(declare-fun tytagFamily$Cl () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun implements$M0.Tr (T@U) Bool)
(declare-fun Tclass.M0.Cl? () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M0.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.M0.Tr? () T@U)
(declare-fun Tclass.M0.C () T@U)
(declare-fun Tclass.M0.Tr () T@U)
(declare-fun Tclass.M0.Cl () T@U)
(declare-fun M0.C.data () T@U)
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
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun M0.Cl.G (T@U T@U T@U T@U T@U) Int)
(declare-fun |M0.Cl.G#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.nat Tagclass.M0.C class.M0.C? Tagclass.M0.C? Tagclass.M0.Tr? Tagclass.M0.Tr Tagclass.M0.Cl? Tagclass.M0.Cl tytagFamily$nat tytagFamily$C tytagFamily$Tr tytagFamily$Cl field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |812|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |813|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1028|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |811|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (implements$M0.Tr Tclass.M0.Cl?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |808|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.M0.C?)  (or (= $o null) (= (dtype $o) Tclass.M0.C?)))
 :qid |unknown.0:0|
 :skolemid |1270|
 :pattern ( ($Is refType $o Tclass.M0.C?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.M0.Cl?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.M0.Cl?)))
 :qid |unknown.0:0|
 :skolemid |1297|
 :pattern ( ($Is refType $o@@0 Tclass.M0.Cl?))
)))
(assert (forall ((bx T@U) ($h@@0 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.M0.Cl? $h@@0) ($IsGoodHeap $h@@0)) ($IsAllocBox bx Tclass.M0.Tr? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1314|
 :pattern ( ($IsAllocBox bx Tclass.M0.Cl? $h@@0))
)))
(assert (forall ((|c#0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.M0.C $h@@1) ($IsAlloc refType |c#0| Tclass.M0.C? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1275|
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.C $h@@1))
 :pattern ( ($IsAlloc refType |c#0| Tclass.M0.C? $h@@1))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.M0.Tr $h@@2) ($IsAlloc refType |c#0@@0| Tclass.M0.Tr? $h@@2))
 :qid |unknown.0:0|
 :skolemid |1295|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M0.Tr $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.M0.Tr? $h@@2))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M0.Cl $h@@3) ($IsAlloc refType |c#0@@1| Tclass.M0.Cl? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1312|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M0.Cl $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M0.Cl? $h@@3))
)))
(assert (= (FDim M0.C.data) 0))
(assert (= (FieldOfDecl class.M0.C? field$data) M0.C.data))
(assert  (not ($IsGhostField M0.C.data)))
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
(assert (forall (($o@@1 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.M0.C? $h@@4)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1271|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.M0.C? $h@@4))
)))
(assert (forall (($o@@2 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M0.Tr? $h@@5)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1278|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M0.Tr? $h@@5))
)))
(assert (forall (($o@@3 T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M0.Cl? $h@@6)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1298|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M0.Cl? $h@@6))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |801|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |802|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall (($prevHeap T@U) ($h0 T@U) ($h1 T@U) (this T@U) (|c#0@@2| T@U) (|d#0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.M0.Cl))) (or (|M0.Cl.G#canCall| $prevHeap $h0 this |c#0@@2| |d#0|) (and ($Is refType |c#0@@2| Tclass.M0.C?) ($Is refType |d#0| Tclass.M0.C)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@4 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (= $o@@4 |c#0@@2|)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@4) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@4) $f)))
 :qid |unknown.0:0|
 :skolemid |1299|
)) (= (M0.Cl.G $prevHeap $h0 this |c#0@@2| |d#0|) (M0.Cl.G $prevHeap $h1 this |c#0@@2| |d#0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1301|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M0.Cl.G $prevHeap $h1 this |c#0@@2| |d#0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@0 T@U) ($Heap T@U) (this@@0 T@U) (|c#0@@3| T@U) (|d#0@@0| T@U) ) (!  (=> (or (|M0.Cl.G#canCall| $prevHeap@@0 $Heap this@@0 |c#0@@3| |d#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@0) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap@@0 $Heap)) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.M0.Cl) ($IsAlloc refType this@@0 Tclass.M0.Cl $prevHeap@@0)))) (and ($Is refType |c#0@@3| Tclass.M0.C?) ($IsAlloc refType |c#0@@3| Tclass.M0.C? $prevHeap@@0))) (and ($Is refType |d#0@@0| Tclass.M0.C) ($IsAlloc refType |d#0@@0| Tclass.M0.C $Heap))) (=> (or (not (= |c#0@@3| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@3|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |c#0@@3|) M0.C.data)))))))) (and (=> (or (not (= |c#0@@3| null)) (not true)) (= (M0.Cl.G $prevHeap@@0 $Heap this@@0 |c#0@@3| |d#0@@0|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |c#0@@3|) M0.C.data))))) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@0 |d#0@@0|) M0.C.data))))))
 :qid |TwostateFunctionsdfy.125:23|
 :skolemid |1302|
 :pattern ( (M0.Cl.G $prevHeap@@0 $Heap this@@0 |c#0@@3| |d#0@@0|))
))))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |700|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |698|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@2 T@U) (b T@U) ) (! (= (|Set#Subset| a@@2 b) (forall ((o@@2 T@U) ) (!  (=> (|Set#IsMember| a@@2 o@@2) (|Set#IsMember| b o@@2))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |829|
 :pattern ( (|Set#IsMember| a@@2 o@@2))
 :pattern ( (|Set#IsMember| b o@@2))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |830|
 :pattern ( (|Set#Subset| a@@2 b))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |709|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($prevHeap@@1 T@U) ($Heap@@0 T@U) (this@@1 T@U) (|c#0@@4| T@U) (|d#0@@1| T@U) ) (!  (=> (or (|M0.Cl.G#canCall| $prevHeap@@1 $Heap@@0 this@@1 |c#0@@4| |d#0@@1|) (and (< 1 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $prevHeap@@1) ($IsGoodHeap $Heap@@0)) ($HeapSucc $prevHeap@@1 $Heap@@0)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.M0.Cl) ($IsAlloc refType this@@1 Tclass.M0.Cl $prevHeap@@1)))) ($Is refType |c#0@@4| Tclass.M0.C?)) ($Is refType |d#0@@1| Tclass.M0.C)) (=> (or (not (= |c#0@@4| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@4|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap@@1 |c#0@@4|) M0.C.data)))))))) (= (M0.Cl.G $prevHeap@@1 $Heap@@0 this@@1 |c#0@@4| |d#0@@1|) (ite (= |c#0@@4| null) 2 (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@4|) M0.C.data))))))
 :qid |TwostateFunctionsdfy.125:23|
 :skolemid |1304|
 :pattern ( (M0.Cl.G $prevHeap@@1 $Heap@@0 this@@1 |c#0@@4| |d#0@@1|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1027|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |722|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |794|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |793|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@5 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) (= $o@@5 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2570|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#2| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f@@0))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.M0.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M0.C.data)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1272|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) M0.C.data)))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.M0.C)  (and ($Is refType |c#0@@5| Tclass.M0.C?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( ($Is refType |c#0@@5| Tclass.M0.C))
 :pattern ( ($Is refType |c#0@@5| Tclass.M0.C?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.M0.Tr)  (and ($Is refType |c#0@@6| Tclass.M0.Tr?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1294|
 :pattern ( ($Is refType |c#0@@6| Tclass.M0.Tr))
 :pattern ( ($Is refType |c#0@@6| Tclass.M0.Tr?))
)))
(assert (forall ((|c#0@@7| T@U) ) (! (= ($Is refType |c#0@@7| Tclass.M0.Cl)  (and ($Is refType |c#0@@7| Tclass.M0.Cl?) (or (not (= |c#0@@7| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1311|
 :pattern ( ($Is refType |c#0@@7| Tclass.M0.Cl))
 :pattern ( ($Is refType |c#0@@7| Tclass.M0.Cl?))
)))
(assert (forall (($h@@8 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) Tclass.M0.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M0.C.data)) Tclass._System.nat $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1273|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@7) M0.C.data)))
)))
(assert (forall (($o@@8 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@8 Tclass.M0.Cl? $heap) ($IsAlloc refType $o@@8 Tclass.M0.Tr? $heap))
 :qid |unknown.0:0|
 :skolemid |1316|
 :pattern ( ($IsAlloc refType $o@@8 Tclass.M0.Cl? $heap))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@3 b@@0) (= a@@3 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |833|
 :pattern ( (|Set#Equal| a@@3 b@@0))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@4 c)) (not true)) (=> (and ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@4 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |800|
 :pattern ( ($HeapSucc a@@4 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |790|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |708|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass.M0.Cl?) ($Is refType $o@@9 Tclass.M0.Tr?))
 :qid |unknown.0:0|
 :skolemid |1315|
 :pattern ( ($Is refType $o@@9 Tclass.M0.Cl?))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.M0.C) Tagclass.M0.C))
(assert (= (TagFamily Tclass.M0.C) tytagFamily$C))
(assert (= (Tag Tclass.M0.C?) Tagclass.M0.C?))
(assert (= (TagFamily Tclass.M0.C?) tytagFamily$C))
(assert (= (Tag Tclass.M0.Tr?) Tagclass.M0.Tr?))
(assert (= (TagFamily Tclass.M0.Tr?) tytagFamily$Tr))
(assert (= (Tag Tclass.M0.Tr) Tagclass.M0.Tr))
(assert (= (TagFamily Tclass.M0.Tr) tytagFamily$Tr))
(assert (= (Tag Tclass.M0.Cl?) Tagclass.M0.Cl?))
(assert (= (TagFamily Tclass.M0.Cl?) tytagFamily$Cl))
(assert (= (Tag Tclass.M0.Cl) Tagclass.M0.Cl))
(assert (= (TagFamily Tclass.M0.Cl) tytagFamily$Cl))
(assert (forall (($o@@10 T@U) ) (! (= ($Is refType $o@@10 Tclass.M0.Tr?)  (or (= $o@@10 null) (implements$M0.Tr (dtype $o@@10))))
 :qid |unknown.0:0|
 :skolemid |1277|
 :pattern ( ($Is refType $o@@10 Tclass.M0.Tr?))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (! (= (|Set#Equal| a@@5 b@@2) (forall ((o@@3 T@U) ) (! (= (|Set#IsMember| a@@5 o@@3) (|Set#IsMember| b@@2 o@@3))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |831|
 :pattern ( (|Set#IsMember| a@@5 o@@3))
 :pattern ( (|Set#IsMember| b@@2 o@@3))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |832|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |701|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |699|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |744|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |723|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@@8| () T@U)
(declare-fun previous$Heap () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@2 () T@U)
(declare-fun |d#0@@2| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(set-info :boogie-vc-id CheckWellformed$$M0.Cl.G)
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
 (=> (= (ControlFlow 0 0) 26) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (=> (or (not (= |c#0@@8| null)) (not true)) (= (M0.Cl.G previous$Heap current$Heap this@@2 |c#0@@8| |d#0@@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data)))))) (=> (=> (or (not (= |c#0@@8| null)) (not true)) (= (M0.Cl.G previous$Heap current$Heap this@@2 |c#0@@8| |d#0@@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))))) (=> (= (ControlFlow 0 12) (- 0 11)) (<= (LitInt 0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) previous$Heap |d#0@@2|) M0.C.data)))))))))
(let ((anon16_Else_correct  (=> (or (not (= |c#0@@8| null)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (or (not (= |c#0@@8| null)) (not true))) (=> (or (not (= |c#0@@8| null)) (not true)) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |c#0@@8| M0.C.data))) (=> (and (= (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data)))) ($Is intType (int_2_U (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|)) TInt)) (and (=> (= (ControlFlow 0 15) (- 0 16)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (=> (= (ControlFlow 0 15) 12) GeneratedUnifiedExit_correct))))))))))
(let ((anon16_Then_correct  (=> (and (and (= |c#0@@8| null) (= (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|) (LitInt 2))) (and ($Is intType (int_2_U (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|)) TInt) (= (ControlFlow 0 14) 12))) GeneratedUnifiedExit_correct)))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= |d#0@@2| null)) (not true))) (=> (or (not (= |d#0@@2| null)) (not true)) (=> (= (ControlFlow 0 2) (- 0 1)) ($IsAlloc refType |d#0@@2| Tclass.M0.C $Heap@@1))))))
(let ((anon15_Else_correct  (=> (and (=> (or (not (= |c#0@@8| null)) (not true)) (= (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))))) (= (ControlFlow 0 10) 2)) anon8_correct)))
(let ((anon15_Then_correct  (=> (and (and (or (not (= |c#0@@8| null)) (not true)) ($IsAllocBox ($Box refType this@@2) Tclass.M0.Cl? current$Heap)) (and ($IsAlloc refType |c#0@@8| Tclass.M0.C? current$Heap) ($IsAlloc refType |d#0@@2| Tclass.M0.C current$Heap))) (and (=> (= (ControlFlow 0 4) (- 0 9)) ($IsAlloc refType this@@2 Tclass.M0.Cl $Heap@@1)) (=> ($IsAlloc refType this@@2 Tclass.M0.Cl $Heap@@1) (and (=> (= (ControlFlow 0 4) (- 0 8)) ($IsAlloc refType |c#0@@8| Tclass.M0.C? $Heap@@1)) (=> ($IsAlloc refType |c#0@@8| Tclass.M0.C? $Heap@@1) (and (=> (= (ControlFlow 0 4) (- 0 7)) (=> (or (not (= |c#0@@8| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@8|) M0.C.data)))))) (=> (=> (or (not (= |c#0@@8| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@8|) M0.C.data))))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (or (and (and (= this@@2 this@@2) (= |c#0@@8| |c#0@@8|)) (= |d#0@@2| |d#0@@2|)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))) (or (and (= |c#0@@8| null) (or (not (= |c#0@@8| null)) (not true))) (and (=  (or (not (= |c#0@@8| null)) (not true))  (or (not (= |c#0@@8| null)) (not true))) (and (= |d#0@@2| null) (or (not (= |d#0@@2| null)) (not true))))))))) (=> (or (and (and (= this@@2 this@@2) (= |c#0@@8| |c#0@@8|)) (= |d#0@@2| |d#0@@2|)) (or (and (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))) (not (|Set#Subset| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))))) (and (|Set#Equal| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|)) (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@8|))) (or (and (= |c#0@@8| null) (or (not (= |c#0@@8| null)) (not true))) (and (=  (or (not (= |c#0@@8| null)) (not true))  (or (not (= |c#0@@8| null)) (not true))) (and (= |d#0@@2| null) (or (not (= |d#0@@2| null)) (not true)))))))) (=> (or (and (and (= this@@2 this@@2) (= |c#0@@8| |c#0@@8|)) (= |d#0@@2| |d#0@@2|)) (|M0.Cl.G#canCall| $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (not (= |c#0@@8| null)) (not true))) (=> (or (not (= |c#0@@8| null)) (not true)) (=> (and (= (M0.Cl.G $Heap@@1 current$Heap this@@2 |c#0@@8| |d#0@@2|) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data)))) (= (ControlFlow 0 4) 2)) anon8_correct)))))))))))))))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (and (and (=> (= (ControlFlow 0 18) 14) anon16_Then_correct) (=> (= (ControlFlow 0 18) 15) anon16_Else_correct)) (=> (= (ControlFlow 0 18) 4) anon15_Then_correct)) (=> (= (ControlFlow 0 18) 10) anon15_Else_correct))))))
(let ((anon13_Else_correct  (=> (=> (or (not (= |c#0@@8| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@8|) M0.C.data))))) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 24) 18)) anon4_correct))))
(let ((anon13_Then_correct  (=> (or (not (= |c#0@@8| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 23)) (or (not (= |c#0@@8| null)) (not true))) (=> (or (not (= |c#0@@8| null)) (not true)) (=> (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |c#0@@8| M0.C.data))) (and (=> (= (ControlFlow 0 20) (- 0 22)) (or (not (= |c#0@@8| null)) (not true))) (=> (or (not (= |c#0@@8| null)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) ($IsAlloc refType |c#0@@8| Tclass.M0.C? $Heap@@1)) (=> ($IsAlloc refType |c#0@@8| Tclass.M0.C? $Heap@@1) (=> (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap |c#0@@8|) M0.C.data))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |c#0@@8|) M0.C.data)))) (=> (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 20) 18)) anon4_correct))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#2| null current$Heap alloc |c#0@@8|)) (and (=> (= (ControlFlow 0 25) 20) anon13_Then_correct) (=> (= (ControlFlow 0 25) 24) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@2 null)) (not true)) (and ($Is refType this@@2 Tclass.M0.Cl) ($IsAlloc refType this@@2 Tclass.M0.Cl previous$Heap))) (and ($Is refType |c#0@@8| Tclass.M0.C?) ($IsAlloc refType |c#0@@8| Tclass.M0.C? previous$Heap))) (=> (and (and (and ($Is refType |d#0@@2| Tclass.M0.C) ($IsAlloc refType |d#0@@2| Tclass.M0.C current$Heap)) (= 1 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@1) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 26) 25))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))
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
