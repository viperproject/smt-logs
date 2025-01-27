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
(declare-fun Tagclass._module.Recur () T@U)
(declare-fun Tagclass._module.Or () T@U)
(declare-fun Tagclass._module.Recur? () T@U)
(declare-fun |##_module.Or.A| () T@U)
(declare-fun |##_module.Or.B| () T@U)
(declare-fun class._module.Recur? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Recur () T@U)
(declare-fun tytagFamily$Or () T@U)
(declare-fun field$next () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Or.A| () T@U)
(declare-fun |#_module.Or.B| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.Recur? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.Recur () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Or () T@U)
(declare-fun _module.Recur.next () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.Recur.data () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun _module.Or.A_q (T@U) Bool)
(declare-fun _module.Or.B_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#4| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Recur.Follow1 (T@U T@U T@U T@U Int Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.Recur.Follow1#canCall| (T@U T@U T@U Int Int) Bool)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.nat Tagclass._module.Recur Tagclass._module.Or Tagclass._module.Recur? |##_module.Or.A| |##_module.Or.B| class._module.Recur? tytagFamily$nat tytagFamily$Recur tytagFamily$Or field$next field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |792|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.Or.A|) |##_module.Or.A|))
(assert (= (DatatypeCtorId |#_module.Or.B|) |##_module.Or.B|))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.Recur?)  (or (= $o null) (= (dtype $o) Tclass._module.Recur?)))
 :qid |unknown.0:0|
 :skolemid |1350|
 :pattern ( ($Is refType $o Tclass._module.Recur?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.Recur $h@@0) ($IsAlloc refType |c#0| Tclass._module.Recur? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Recur $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.Recur? $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert ($Is DatatypeTypeType |#_module.Or.A| Tclass._module.Or))
(assert ($Is DatatypeTypeType |#_module.Or.B| Tclass._module.Or))
(assert (= (FDim _module.Recur.next) 0))
(assert (= (FieldOfDecl class._module.Recur? field$next) _module.Recur.next))
(assert  (not ($IsGhostField _module.Recur.next)))
(assert (= (FDim _module.Recur.data) 0))
(assert (= (FieldOfDecl class._module.Recur? field$data) _module.Recur.data))
(assert  (not ($IsGhostField _module.Recur.data)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Recur? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1351|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Recur? $h@@1))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |684|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |682|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o@@0 T@U) ) (!  (=> (|Set#IsMember| a o@@0) (|Set#IsMember| b o@@0))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |813|
 :pattern ( (|Set#IsMember| a o@@0))
 :pattern ( (|Set#IsMember| b o@@0))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |814|
 :pattern ( (|Set#Subset| a b))
)))
(assert (forall ((d T@U) ) (! (= (_module.Or.A_q d) (= (DatatypeCtorId d) |##_module.Or.A|))
 :qid |unknown.0:0|
 :skolemid |1286|
 :pattern ( (_module.Or.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Or.B_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Or.B|))
 :qid |unknown.0:0|
 :skolemid |1288|
 :pattern ( (_module.Or.B_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |693|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Or.A_q d@@1) (= d@@1 |#_module.Or.A|))
 :qid |unknown.0:0|
 :skolemid |1287|
 :pattern ( (_module.Or.A_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Or.B_q d@@2) (= d@@2 |#_module.Or.B|))
 :qid |unknown.0:0|
 :skolemid |1289|
 :pattern ( (_module.Or.B_q d@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@1) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1474|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1011|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Recur?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Recur.data)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1355|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Recur.data)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |706|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.Recur?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Recur.next)) Tclass._module.Recur?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1352|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.Recur.next)))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Recur)  (and ($Is refType |c#0@@0| Tclass._module.Recur?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1376|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Recur))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Recur?))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.Recur?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Recur.next)) Tclass._module.Recur? $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1353|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.Recur.next)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (this T@U) (|o#0| T@U) (|n#0| Int) (|m#0| Int) ) (!  (=> (or (|_module.Recur.Follow1#canCall| $Heap this |o#0| |n#0| |m#0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.Recur) ($IsAlloc refType this Tclass._module.Recur $Heap)))) ($Is DatatypeTypeType |o#0| Tclass._module.Or)) (<= (LitInt 0) |n#0|)))) (and (let ((|th#0| this))
 (=> (not (or (= |n#0| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Recur.next)) null))) (=> (_module.Or.A_q |o#0|) (|_module.Recur.Follow1#canCall| $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Recur.next)) |o#0| (- |n#0| 1) (+ |m#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |th#0|) _module.Recur.data)))))))) (= (_module.Recur.Follow1 ($LS $ly) $Heap this |o#0| |n#0| |m#0|) (let ((|th#0@@0| this))
(ite  (or (= |n#0| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Recur.next)) null)) |m#0| (ite (_module.Or.A_q |o#0|) (+ (_module.Recur.Follow1 $ly $Heap ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) _module.Recur.next)) |o#0| (- |n#0| 1) (+ |m#0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap |th#0@@0|) _module.Recur.data))))) 1) 999))))))
 :qid |gitissue3868dfy.126:12|
 :skolemid |1374|
 :pattern ( (_module.Recur.Follow1 ($LS $ly) $Heap this |o#0| |n#0| |m#0|) ($IsGoodHeap $Heap))
))))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (|Set#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |817|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Or) (or (_module.Or.A_q d@@3) (_module.Or.B_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |1292|
 :pattern ( (_module.Or.B_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Or))
 :pattern ( (_module.Or.A_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Or))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |774|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|o#0@@0| T@U) (|n#0@@0| Int) (|m#0@@0| Int) ) (! (= (_module.Recur.Follow1 ($LS $ly@@0) $Heap@@0 this@@0 |o#0@@0| |n#0@@0| |m#0@@0|) (_module.Recur.Follow1 $ly@@0 $Heap@@0 this@@0 |o#0@@0| |n#0@@0| |m#0@@0|))
 :qid |gitissue3868dfy.126:12|
 :skolemid |1368|
 :pattern ( (_module.Recur.Follow1 ($LS $ly@@0) $Heap@@0 this@@0 |o#0@@0| |n#0@@0| |m#0@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |692|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.Recur?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Recur.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1354|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.Recur.data)))
)))
(assert (forall ((d@@4 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@4 Tclass._module.Or)) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Or $h@@6))
 :qid |unknown.0:0|
 :skolemid |1290|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Or $h@@6))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.Recur) Tagclass._module.Recur))
(assert (= (TagFamily Tclass._module.Recur) tytagFamily$Recur))
(assert (= (Tag Tclass._module.Or) Tagclass._module.Or))
(assert (= (TagFamily Tclass._module.Or) tytagFamily$Or))
(assert (= (Tag Tclass._module.Recur?) Tagclass._module.Recur?))
(assert (= (TagFamily Tclass._module.Recur?) tytagFamily$Recur))
(assert (= |#_module.Or.A| (Lit DatatypeTypeType |#_module.Or.A|)))
(assert (= |#_module.Or.B| (Lit DatatypeTypeType |#_module.Or.B|)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |815|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |816|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |685|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |683|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |728|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |707|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |o#0@@1| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |n#0@@1| () Int)
(declare-fun |m#0@@1| () Int)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |th#Z#0@0| () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |x1#Z#0@0| () Int)
(declare-fun |let#2#0#0| () Int)
(declare-fun |x2#Z#0@0| () Int)
(declare-fun |let#3#0#0| () Int)
(declare-fun |x3#Z#0@0| () Int)
(declare-fun |let#4#0#0| () Int)
(declare-fun |x4#Z#0@0| () Int)
(declare-fun |let#5#0#0| () Int)
(declare-fun |x5#Z#0@0| () Int)
(declare-fun |let#6#0#0| () Int)
(declare-fun |x6#Z#0@0| () Int)
(declare-fun |let#7#0#0| () Int)
(declare-fun |x7#Z#0@0| () Int)
(declare-fun |let#8#0#0| () Int)
(declare-fun |x8#Z#0@0| () Int)
(declare-fun |let#9#0#0| () Int)
(declare-fun |x9#Z#0@0| () Int)
(declare-fun |let#10#0#0| () Int)
(declare-fun |x10#Z#0@0| () Int)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |##n#0@0| () Int)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |##m#0@0| () Int)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun SetType () T@T)
(declare-fun DtRank (T@U) Int)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |let#0#0#0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(assert (= (Ctor SetType) 8))
(set-info :boogie-vc-id CheckWellformed$$_module.Recur.Follow1)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon16_Else_correct true))
(let ((anon16_Then_correct  (=> (and (and (= |o#0@@1| |#_module.Or.B|) (= (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|) (LitInt 999))) (and ($Is intType (int_2_U (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|)) TInt) (= (ControlFlow 0 18) (- 0 17)))) |b$reqreads#0@1|)))
(let ((anon15_Else_correct  (=> (or (not (= |o#0@@1| |#_module.Or.A|)) (not true)) (and (=> (= (ControlFlow 0 20) 18) anon16_Then_correct) (=> (= (ControlFlow 0 20) 19) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (= |o#0@@1| |#_module.Or.A|) (and (=> (= (ControlFlow 0 5) (- 0 16)) (or (not (= |th#Z#0@0| null)) (not true))) (=> (or (not (= |th#Z#0@0| null)) (not true)) (=> (and (and (and (and (and (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |th#Z#0@0| _module.Recur.data))) (= |let#1#0#0| (- (+ |n#0@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |th#Z#0@0|) _module.Recur.data)))) |n#0@@1|))) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |x1#Z#0@0| |let#1#0#0|))) (and (and (= |let#2#0#0| |x1#Z#0@0|) ($Is intType (int_2_U |let#2#0#0|) TInt)) (and (= |x2#Z#0@0| |let#2#0#0|) (= |let#3#0#0| |x2#Z#0@0|)))) (and (and (and ($Is intType (int_2_U |let#3#0#0|) TInt) (= |x3#Z#0@0| |let#3#0#0|)) (and (= |let#4#0#0| |x3#Z#0@0|) ($Is intType (int_2_U |let#4#0#0|) TInt))) (and (and (= |x4#Z#0@0| |let#4#0#0|) (= |let#5#0#0| |x4#Z#0@0|)) (and ($Is intType (int_2_U |let#5#0#0|) TInt) (= |x5#Z#0@0| |let#5#0#0|))))) (and (and (and (and (= |let#6#0#0| |x5#Z#0@0|) ($Is intType (int_2_U |let#6#0#0|) TInt)) (and (= |x6#Z#0@0| |let#6#0#0|) (= |let#7#0#0| |x6#Z#0@0|))) (and (and ($Is intType (int_2_U |let#7#0#0|) TInt) (= |x7#Z#0@0| |let#7#0#0|)) (and (= |let#8#0#0| |x7#Z#0@0|) ($Is intType (int_2_U |let#8#0#0|) TInt)))) (and (and (and (= |x8#Z#0@0| |let#8#0#0|) (= |let#9#0#0| |x8#Z#0@0|)) (and ($Is intType (int_2_U |let#9#0#0|) TInt) (= |x9#Z#0@0| |let#9#0#0|))) (and (and (= |let#10#0#0| |x9#Z#0@0|) ($Is intType (int_2_U |let#10#0#0|) TInt)) (and (= |x10#Z#0@0| |let#10#0#0|) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Recur.next)))))))) (and (=> (= (ControlFlow 0 5) (- 0 15)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) null)) (not true)) (=> (and ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next) Tclass._module.Recur? $Heap@@1) ($IsAlloc DatatypeTypeType |o#0@@1| Tclass._module.Or $Heap@@1)) (and (=> (= (ControlFlow 0 5) (- 0 14)) ($Is intType (int_2_U (- |n#0@@1| 1)) Tclass._System.nat)) (=> ($Is intType (int_2_U (- |n#0@@1| 1)) Tclass._System.nat) (=> (and (= |##n#0@0| (- |n#0@@1| 1)) ($IsAlloc intType (int_2_U |##n#0@0|) Tclass._System.nat $Heap@@1)) (and (=> (= (ControlFlow 0 5) (- 0 13)) (or (not (= |th#Z#0@0| null)) (not true))) (=> (or (not (= |th#Z#0@0| null)) (not true)) (=> (and (and (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |th#Z#0@0| _module.Recur.data))) (= |##m#0@0| (+ |m#0@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |th#Z#0@0|) _module.Recur.data)))))) (and ($IsAlloc intType (int_2_U |##m#0@0|) TInt $Heap@@1) (= |b$reqreads#4@0| (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@0)))
 :qid |gitissue3868dfy.145:16|
 :skolemid |1375|
))))) (and (=> (= (ControlFlow 0 5) (- 0 12)) (or (or (or (<= 0 |n#0@@1|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (< (DtRank |o#0@@1|) (DtRank |o#0@@1|))) (= |##n#0@0| |n#0@@1|))) (=> (or (or (or (<= 0 |n#0@@1|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (< (DtRank |o#0@@1|) (DtRank |o#0@@1|))) (= |##n#0@0| |n#0@@1|)) (and (=> (= (ControlFlow 0 5) (- 0 11)) (or (or (or (or (<= 0 |m#0@@1|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (< (DtRank |o#0@@1|) (DtRank |o#0@@1|))) (< |##n#0@0| |n#0@@1|)) (= |##m#0@0| |m#0@@1|))) (=> (or (or (or (or (<= 0 |m#0@@1|) (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|))))) (< (DtRank |o#0@@1|) (DtRank |o#0@@1|))) (< |##n#0@0| |n#0@@1|)) (= |##m#0@0| |m#0@@1|)) (and (=> (= (ControlFlow 0 5) (- 0 10)) (or (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))) (and (|Set#Equal| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (or (< (DtRank |o#0@@1|) (DtRank |o#0@@1|)) (and (= (DtRank |o#0@@1|) (DtRank |o#0@@1|)) (or (< |##n#0@0| |n#0@@1|) (and (= |##n#0@0| |n#0@@1|) (< |##m#0@0| |m#0@@1|)))))))) (=> (or (and (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (not (|Set#Subset| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)))) (and (|Set#Equal| (Lit SetType |Set#Empty|) (Lit SetType |Set#Empty|)) (or (< (DtRank |o#0@@1|) (DtRank |o#0@@1|)) (and (= (DtRank |o#0@@1|) (DtRank |o#0@@1|)) (or (< |##n#0@0| |n#0@@1|) (and (= |##n#0@0| |n#0@@1|) (< |##m#0@0| |m#0@@1|))))))) (=> (and (and (|_module.Recur.Follow1#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) |o#0@@1| (- |n#0@@1| 1) (+ |m#0@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |th#Z#0@0|) _module.Recur.data))))) (= (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|) (+ (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) |o#0@@1| (- |n#0@@1| 1) (+ |m#0@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |th#Z#0@0|) _module.Recur.data))))) 1))) (and (|_module.Recur.Follow1#canCall| $Heap@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) |o#0@@1| (- |n#0@@1| 1) (+ |m#0@@1| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |th#Z#0@0|) _module.Recur.data))))) ($Is intType (int_2_U (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|)) TInt))) (and (=> (= (ControlFlow 0 5) (- 0 9)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 5) (- 0 8)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 5) (- 0 7)) |b$reqreads#2@0|) (=> |b$reqreads#2@0| (and (=> (= (ControlFlow 0 5) (- 0 6)) |b$reqreads#3@0|) (=> |b$reqreads#3@0| (=> (= (ControlFlow 0 5) (- 0 4)) |b$reqreads#4@0|)))))))))))))))))))))))))))))))
(let ((anon14_Else_correct  (=> (not (or (= |n#0@@1| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) null))) (and (=> (= (ControlFlow 0 21) 5) anon15_Then_correct) (=> (= (ControlFlow 0 21) 20) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (and (or (= |n#0@@1| (LitInt 0)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.Recur.next)) null)) (= (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|) |m#0@@1|)) (and ($Is intType (int_2_U (_module.Recur.Follow1 ($LS $LZ) $Heap@@1 this@@1 |o#0@@1| |n#0@@1| |m#0@@1|)) TInt) (= (ControlFlow 0 3) (- 0 2)))) |b$reqreads#0@1|)))
(let ((anon13_Else_correct  (=> (and (= |n#0@@1| (LitInt 0)) (= |b$reqreads#0@1| true)) (and (=> (= (ControlFlow 0 23) 3) anon14_Then_correct) (=> (= (ControlFlow 0 23) 21) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (or (not (= |n#0@@1| (LitInt 0))) (not true)) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@1 _module.Recur.next))) (= |b$reqreads#0@1| |b$reqreads#0@0|)) (and (=> (= (ControlFlow 0 22) 3) anon14_Then_correct) (=> (= (ControlFlow 0 22) 21) anon14_Else_correct))))))
(let ((anon12_Else_correct  (=> (= |let#0#0#0| this@@1) (=> (and ($Is refType |let#0#0#0| Tclass._module.Recur) (= |th#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 24) 22) anon13_Then_correct) (=> (= (ControlFlow 0 24) 23) anon13_Else_correct))))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap@@1 alloc $Heap@@1 alloc)) (and (=> (= (ControlFlow 0 25) 1) anon12_Then_correct) (=> (= (ControlFlow 0 25) 24) anon12_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Recur) ($IsAlloc refType this@@1 Tclass._module.Recur $Heap@@1)))) (and (and ($Is DatatypeTypeType |o#0@@1| Tclass._module.Or) (<= (LitInt 0) |n#0@@1|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 26) 25)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
