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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.M0.C () T@U)
(declare-fun class.M0.C? () T@U)
(declare-fun Tagclass.M0.C? () T@U)
(declare-fun Tagclass.M0.Tr? () T@U)
(declare-fun Tagclass.M0.Tr () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Tr () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M0.Tr.G (T@U T@U T@U T@U T@U) Int)
(declare-fun |M0.Tr.G#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass.M0.Tr () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass.M0.C? () T@U)
(declare-fun Tclass.M0.C () T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun M0.C.data () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.M0.Tr? () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$M0.Tr (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
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
(assert (distinct alloc allocName Tagclass._System.nat Tagclass.M0.C class.M0.C? Tagclass.M0.C? Tagclass.M0.Tr? Tagclass.M0.Tr tytagFamily$nat tytagFamily$C tytagFamily$Tr field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
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
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($prevHeap T@U) ($Heap T@U) (this T@U) (|c#0| T@U) (|d#0| T@U) ) (!  (=> (or (|M0.Tr.G#canCall| $prevHeap $Heap this |c#0| |d#0|) (and (< 2 $FunctionContextHeight) (and (and (and (and (and (and ($IsGoodHeap $prevHeap) ($IsGoodHeap $Heap)) ($HeapSucc $prevHeap $Heap)) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.M0.Tr) ($IsAlloc refType this Tclass.M0.Tr $prevHeap)))) (and ($Is refType |c#0| Tclass.M0.C?) ($IsAlloc refType |c#0| Tclass.M0.C? $prevHeap))) (and ($Is refType |d#0| Tclass.M0.C) ($IsAlloc refType |d#0| Tclass.M0.C $Heap))) (or (= |c#0| null) (forall (($o T@U) ($f T@U) ) (!  (=> (or (not (= $o null)) (not true)) (=> (= $o |c#0|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap $o) $f))))
 :qid |TwostateFunctionsdfy.117:29|
 :skolemid |1282|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o) $f))
)))))) (=> (or (not (= |c#0| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $prevHeap |c#0|) M0.C.data))) (M0.Tr.G $prevHeap $Heap this |c#0| |d#0|))))
 :qid |TwostateFunctionsdfy.116:23|
 :skolemid |1283|
 :pattern ( (M0.Tr.G $prevHeap $Heap this |c#0| |d#0|))
))))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |812|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall (($prevHeap@@0 T@U) ($h0 T@U) ($h1 T@U) (this@@0 T@U) (|c#0@@0| T@U) (|d#0@@0| T@U) ) (!  (=> (and (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 Tclass.M0.Tr))) (or (|M0.Tr.G#canCall| $prevHeap@@0 $h0 this@@0 |c#0@@0| |d#0@@0|) (and ($Is refType |c#0@@0| Tclass.M0.C?) ($Is refType |d#0@@0| Tclass.M0.C)))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@0 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (or (= $o@@0 |c#0@@0|) (= $o@@0 |d#0@@0|))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@0) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@0) $f@@0)))
 :qid |unknown.0:0|
 :skolemid |1279|
)) (= (M0.Tr.G $prevHeap@@0 $h0 this@@0 |c#0@@0| |d#0@@0|) (M0.Tr.G $prevHeap@@0 $h1 this@@0 |c#0@@0| |d#0@@0|))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1281|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (M0.Tr.G $prevHeap@@0 $h1 this@@0 |c#0@@0| |d#0@@0|))
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
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |808|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($o@@1 T@U) ) (! (= ($Is refType $o@@1 Tclass.M0.C?)  (or (= $o@@1 null) (= (dtype $o@@1) Tclass.M0.C?)))
 :qid |unknown.0:0|
 :skolemid |1270|
 :pattern ( ($Is refType $o@@1 Tclass.M0.C?))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.M0.C $h@@0) ($IsAlloc refType |c#0@@1| Tclass.M0.C? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1275|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M0.C $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.M0.C? $h@@0))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.M0.Tr $h@@1) ($IsAlloc refType |c#0@@2| Tclass.M0.Tr? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1295|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.M0.Tr $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.M0.Tr? $h@@1))
)))
(assert (= (FDim M0.C.data) 0))
(assert (= (FieldOfDecl class.M0.C? field$data) M0.C.data))
(assert  (not ($IsGhostField M0.C.data)))
(assert (forall (($o@@2 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.M0.C? $h@@2)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1271|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.M0.C? $h@@2))
)))
(assert (forall (($o@@3 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.M0.Tr? $h@@3)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1278|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.M0.Tr? $h@@3))
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
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |794|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |793|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.M0.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M0.C.data)) Tclass._System.nat))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1272|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) M0.C.data)))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.M0.C)  (and ($Is refType |c#0@@3| Tclass.M0.C?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1274|
 :pattern ( ($Is refType |c#0@@3| Tclass.M0.C))
 :pattern ( ($Is refType |c#0@@3| Tclass.M0.C?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.M0.Tr)  (and ($Is refType |c#0@@4| Tclass.M0.Tr?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1294|
 :pattern ( ($Is refType |c#0@@4| Tclass.M0.Tr))
 :pattern ( ($Is refType |c#0@@4| Tclass.M0.Tr?))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.M0.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M0.C.data)) Tclass._System.nat $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1273|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) M0.C.data)))
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
(assert (forall (($o@@6 T@U) ) (! (= ($Is refType $o@@6 Tclass.M0.Tr?)  (or (= $o@@6 null) (implements$M0.Tr (dtype $o@@6))))
 :qid |unknown.0:0|
 :skolemid |1277|
 :pattern ( ($Is refType $o@@6 Tclass.M0.Tr?))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@7 T@U) ($f@@1 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@1))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) (or (= $o@@7 |l#3|) (= $o@@7 |l#4|))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2575|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@7 $f@@1))
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
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |c#0@@5| () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun current$Heap () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |d#0@@1| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun previous$Heap () T@U)
(set-info :boogie-vc-id CheckWellformed$$M0.Tr.G)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon8_correct true))
(let ((anon12_Else_correct  (=> (and (=> (or (not (= |c#0@@5| null)) (not true)) (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@5|) M0.C.data))) (M0.Tr.G $Heap@@0 current$Heap this@@1 |c#0@@5| |d#0@@1|))) (= (ControlFlow 0 10) 2)) anon8_correct)))
(let ((anon12_Then_correct  (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 9)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 8)) ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0)) (=> ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0) (=> ($IsAllocBox ($Box refType this@@1) Tclass.M0.Tr? current$Heap) (=> (and ($IsAlloc refType |c#0@@5| Tclass.M0.C? current$Heap) ($IsAlloc refType |d#0@@1| Tclass.M0.C current$Heap)) (and (=> (= (ControlFlow 0 3) (- 0 7)) ($IsAlloc refType this@@1 Tclass.M0.Tr $Heap@@0)) (=> ($IsAlloc refType this@@1 Tclass.M0.Tr $Heap@@0) (and (=> (= (ControlFlow 0 3) (- 0 6)) ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0)) (=> ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (= |c#0@@5| null) (forall (($o@@8 T@U) ($f@@2 T@U) ) (!  (=> (or (not (= $o@@8 null)) (not true)) (=> (= $o@@8 |c#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@8) $f@@2))))
 :qid |TwostateFunctionsdfy.117:29|
 :skolemid |1288|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@8) $f@@2))
)))) (=> (or (= |c#0@@5| null) (forall (($o@@9 T@U) ($f@@3 T@U) ) (!  (=> (or (not (= $o@@9 null)) (not true)) (=> (= $o@@9 |c#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@9) $f@@3))))
 :qid |TwostateFunctionsdfy.117:29|
 :skolemid |1289|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@9) $f@@3))
))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (or (and (and (= this@@1 this@@1) (= |c#0@@5| |c#0@@5|)) (= |d#0@@1| |d#0@@1|)) (or (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))) (not (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))))) (and (|Set#Equal| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))) (or (and (= |c#0@@5| null) (or (not (= |c#0@@5| null)) (not true))) (and (=  (or (not (= |c#0@@5| null)) (not true))  (or (not (= |c#0@@5| null)) (not true))) (and (= |d#0@@1| null) (or (not (= |d#0@@1| null)) (not true))))))))) (=> (or (and (and (= this@@1 this@@1) (= |c#0@@5| |c#0@@5|)) (= |d#0@@1| |d#0@@1|)) (or (and (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))) (not (|Set#Subset| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))))) (and (|Set#Equal| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|)) (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType |c#0@@5|)) ($Box refType |d#0@@1|))) (or (and (= |c#0@@5| null) (or (not (= |c#0@@5| null)) (not true))) (and (=  (or (not (= |c#0@@5| null)) (not true))  (or (not (= |c#0@@5| null)) (not true))) (and (= |d#0@@1| null) (or (not (= |d#0@@1| null)) (not true)))))))) (=> (or (and (and (= this@@1 this@@1) (= |c#0@@5| |c#0@@5|)) (= |d#0@@1| |d#0@@1|)) (|M0.Tr.G#canCall| $Heap@@0 current$Heap this@@1 |c#0@@5| |d#0@@1|)) (=> (and (<= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |c#0@@5|) M0.C.data))) (M0.Tr.G $Heap@@0 current$Heap this@@1 |c#0@@5| |d#0@@1|)) (= (ControlFlow 0 3) 2)) anon8_correct)))))))))))))))))))
(let ((anon11_Else_correct true))
(let ((anon4_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (and (=> (= (ControlFlow 0 11) 1) anon11_Else_correct) (=> (= (ControlFlow 0 11) 3) anon12_Then_correct)) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct))))))
(let ((anon10_Else_correct  (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (or (not (= |c#0@@5| null)) (not true))) (=> (or (not (= |c#0@@5| null)) (not true)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (=> (or (not (= |c#0@@5| null)) (not true)) ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0))) (=> (=> (or (not (= |c#0@@5| null)) (not true)) ($IsAlloc refType |c#0@@5| Tclass.M0.C? $Heap@@0)) (=> (and (and (= |b$reqreads#0@0| (forall (($o@@10 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@10) alloc)))) (= $o@@10 |c#0@@5|)) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@10 $f@@4)))
 :qid |TwostateFunctionsdfy.117:39|
 :skolemid |1286|
))) (forall (($o@@11 T@U) ($f@@5 T@U) ) (!  (=> (or (not (= $o@@11 null)) (not true)) (=> (= $o@@11 |c#0@@5|) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@5) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@11) $f@@5))))
 :qid |TwostateFunctionsdfy.117:29|
 :skolemid |1287|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) current$Heap $o@@11) $f@@5))
))) (and (= |b$reqreads#0@1| |b$reqreads#0@0|) (= (ControlFlow 0 14) 11))) anon4_correct))))))))
(let ((anon10_Then_correct  (=> (= |c#0@@5| null) (=> (and (= |b$reqreads#0@1| true) (= (ControlFlow 0 13) 11)) anon4_correct))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null current$Heap alloc |c#0@@5| |d#0@@1|)) (and (=> (= (ControlFlow 0 17) 13) anon10_Then_correct) (=> (= (ControlFlow 0 17) 14) anon10_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.M0.Tr) ($IsAlloc refType this@@1 Tclass.M0.Tr previous$Heap))) (and ($Is refType |c#0@@5| Tclass.M0.C?) ($IsAlloc refType |c#0@@5| Tclass.M0.C? previous$Heap))) (=> (and (and (and ($Is refType |d#0@@1| Tclass.M0.C) ($IsAlloc refType |d#0@@1| Tclass.M0.C current$Heap)) (= 2 $FunctionContextHeight)) (and (and (= previous$Heap $Heap@@0) (and ($HeapSucc previous$Heap current$Heap) ($IsGoodHeap current$Heap))) (= (ControlFlow 0 18) 17))) anon0_correct)))))
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
