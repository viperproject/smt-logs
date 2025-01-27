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
(declare-fun TBool () T@U)
(declare-fun TInt () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagInt () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.AnotherNode () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun class._module.AnotherNode? () T@U)
(declare-fun Tagclass._module.AnotherNode? () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$AnotherNode () T@U)
(declare-fun field$data () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun _module.AnotherNode.Repr (T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.AnotherNode.Repr#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.AnotherNode () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.AnotherNode? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun _module.List._h0 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun _module.AnotherNode.data () T@U)
(declare-fun _module.AnotherNode.next () T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun dtype (T@U) T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#15| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TInt TagBool TagInt alloc allocName Tagclass._module.List Tagclass._module.AnotherNode |##_module.List.Nil| |##_module.List.Cons| class._module.AnotherNode? Tagclass._module.AnotherNode? tytagFamily$List tytagFamily$AnotherNode field$data field$next)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($ly T@U) ($Heap T@U) (this T@U) (|n#0| T@U) (|list#0| T@U) ) (! (= (_module.AnotherNode.Repr ($LS $ly) $Heap this |n#0| |list#0|) (_module.AnotherNode.Repr $ly $Heap this |n#0| |list#0|))
 :qid |Datatypesdfy.41:19|
 :skolemid |2598|
 :pattern ( (_module.AnotherNode.Repr ($LS $ly) $Heap this |n#0| |list#0|))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert  (and (and (and (and (and (and (and (and (= (Ctor refType) 3) (= (Ctor DatatypeTypeType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@0 T@U) ($Heap@@0 T@U) (this@@0 T@U) (|n#0@@0| T@U) (|list#0@@0| T@U) ) (!  (=> (or (|_module.AnotherNode.Repr#canCall| $Heap@@0 this@@0 |n#0@@0| |list#0@@0|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.AnotherNode) ($IsAlloc refType this@@0 Tclass._module.AnotherNode $Heap@@0)))) ($Is refType |n#0@@0| Tclass._module.AnotherNode?)) ($Is DatatypeTypeType |list#0@@0| (Tclass._module.List TInt))))) (and (=> (not (_module.List.Nil_q |list#0@@0|)) (let ((|cdr#1| (_module.List._h1 |list#0@@0|)))
(let ((|d#1| (U_2_int ($Unbox intType (_module.List._h0 |list#0@@0|)))))
 (=> (or (not (= |n#0@@0| null)) (not true)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.AnotherNode.data))) |d#1|) (|_module.AnotherNode.Repr#canCall| $Heap@@0 this@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.AnotherNode.next)) |cdr#1|)))))) (= (_module.AnotherNode.Repr ($LS $ly@@0) $Heap@@0 this@@0 |n#0@@0| |list#0@@0|) (ite (_module.List.Nil_q |list#0@@0|) (= |n#0@@0| null) (let ((|cdr#0| (_module.List._h1 |list#0@@0|)))
(let ((|d#0| (U_2_int ($Unbox intType (_module.List._h0 |list#0@@0|)))))
 (and (and (or (not (= |n#0@@0| null)) (not true)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.AnotherNode.data))) |d#0|)) (_module.AnotherNode.Repr $ly@@0 $Heap@@0 this@@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 |n#0@@0|) _module.AnotherNode.next)) |cdr#0|))))))))
 :qid |Datatypesdfy.41:19|
 :skolemid |2604|
 :pattern ( (_module.AnotherNode.Repr ($LS $ly@@0) $Heap@@0 this@@0 |n#0@@0| |list#0@@0|) ($IsGoodHeap $Heap@@0))
))))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.AnotherNode?)  (or (= $o null) (= (dtype $o) Tclass._module.AnotherNode?)))
 :qid |unknown.0:0|
 :skolemid |2592|
 :pattern ( ($Is refType $o Tclass._module.AnotherNode?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.AnotherNode $h) ($IsAlloc refType |c#0| Tclass._module.AnotherNode? $h))
 :qid |unknown.0:0|
 :skolemid |2613|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.AnotherNode $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.AnotherNode? $h))
)))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2550|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (= (FDim _module.AnotherNode.data) 0))
(assert (= (FieldOfDecl class._module.AnotherNode? field$data) _module.AnotherNode.data))
(assert  (not ($IsGhostField _module.AnotherNode.data)))
(assert (= (FDim _module.AnotherNode.next) 0))
(assert (= (FieldOfDecl class._module.AnotherNode? field$next) _module.AnotherNode.next))
(assert  (not ($IsGhostField _module.AnotherNode.next)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |2549|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.AnotherNode? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2593|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.AnotherNode? $h@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1912|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |2555|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (_module.List.Nil_q d) (= (DatatypeCtorId d) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2547|
 :pattern ( (_module.List.Nil_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.List.Cons_q d@@0) (= (DatatypeCtorId d@@0) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |2552|
 :pattern ( (_module.List.Cons_q d@@0))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1923|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.List.Cons_q d@@1) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@1 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |Datatypesdfy.4:31|
 :skolemid |2553|
)))
 :qid |unknown.0:0|
 :skolemid |2554|
 :pattern ( (_module.List.Cons_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.List.Nil_q d@@2) (= d@@2 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |2548|
 :pattern ( (_module.List.Nil_q d@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#15| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#3| $o@@1) |l#4|)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2850|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#15| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.AnotherNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.AnotherNode.data)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2595|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.AnotherNode.data)))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h) ($IsAlloc T@@1 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1936|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h))
)))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |2479|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall (($h@@3 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.AnotherNode?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.AnotherNode.next)) Tclass._module.AnotherNode?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2596|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@3) _module.AnotherNode.next)))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.AnotherNode) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.AnotherNode)))
 :qid |unknown.0:0|
 :skolemid |2482|
 :pattern ( ($IsBox bx Tclass._module.AnotherNode))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.AnotherNode?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.AnotherNode?)))
 :qid |unknown.0:0|
 :skolemid |2591|
 :pattern ( ($IsBox bx@@0 Tclass._module.AnotherNode?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.AnotherNode)  (and ($Is refType |c#0@@0| Tclass._module.AnotherNode?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2612|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.AnotherNode))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.AnotherNode?))
)))
(assert (forall (($h@@4 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.AnotherNode?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.AnotherNode.next)) Tclass._module.AnotherNode? $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2597|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@4) _module.AnotherNode.next)))
)))
(assert (forall ((_module.List$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@3) (_module.List.Cons_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2565|
 :pattern ( (_module.List.Cons_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |2004|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1924|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TBool) (and (= ($Box boolType ($Unbox boolType bx@@2)) bx@@2) ($Is boolType ($Unbox boolType bx@@2) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1926|
 :pattern ( ($IsBox bx@@2 TBool))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@0) t@@0) ($Is T@@2 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1935|
 :pattern ( ($IsBox ($Box T@@2 v@@0) t@@0))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|)) |##_module.List.Cons|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2551|
 :pattern ( (|#_module.List.Cons| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List._h0 (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2560|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |Datatypesdfy.4:31|
 :skolemid |2562|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |2480|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1922|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall (($h@@5 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.AnotherNode?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.AnotherNode.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2594|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@5) _module.AnotherNode.data)))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2561|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2563|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((d@@4 T@U) (_module.List$T@@5 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.List.Cons_q d@@4) ($IsAlloc DatatypeTypeType d@@4 (Tclass._module.List _module.List$T@@5) $h@@6))) ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@5 $h@@6))
 :qid |unknown.0:0|
 :skolemid |2557|
 :pattern ( ($IsAllocBox (_module.List._h0 d@@4) _module.List$T@@5 $h@@6))
)))
(assert (forall ((d@@5 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@5)) (DtRank d@@5))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1981|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@5)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |2481|
 :pattern ( ($IsBox bx@@3 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((d@@6 T@U) (_module.List$T@@7 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (_module.List.Cons_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@7) $h@@7))) ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@7) $h@@7))
 :qid |unknown.0:0|
 :skolemid |2558|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List._h1 d@@6) (Tclass._module.List _module.List$T@@7) $h@@7))
)))
(assert (= (Tag Tclass._module.AnotherNode) Tagclass._module.AnotherNode))
(assert (= (TagFamily Tclass._module.AnotherNode) tytagFamily$AnotherNode))
(assert (= (Tag Tclass._module.AnotherNode?) Tagclass._module.AnotherNode?))
(assert (= (TagFamily Tclass._module.AnotherNode?) tytagFamily$AnotherNode))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0| |a#7#1#0|)))
 :qid |Datatypesdfy.4:31|
 :skolemid |2559|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0|) (Lit DatatypeTypeType |a#7#1#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1913|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1958|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@2 T@U) ) (! ($IsAlloc boolType v@@2 TBool h@@1)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1960|
 :pattern ( ($IsAlloc boolType v@@2 TBool h@@1))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ($h@@8 T@U) ) (!  (=> ($IsGoodHeap $h@@8) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@8)  (and ($IsAllocBox |a#6#0#0@@0| _module.List$T@@8 $h@@8) ($IsAlloc DatatypeTypeType |a#6#1#0@@0| (Tclass._module.List _module.List$T@@8) $h@@8))))
 :qid |unknown.0:0|
 :skolemid |2556|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@0| |a#6#1#0@@0|) (Tclass._module.List _module.List$T@@8) $h@@8))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1937|
 :pattern ( ($Is intType v@@3 TInt))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is boolType v@@4 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1939|
 :pattern ( ($Is boolType v@@4 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun this@@1 () T@U)
(declare-fun |n#0@@1| () T@U)
(declare-fun |list#0@@1| () T@U)
(declare-fun |d#Z#0@0| () Int)
(declare-fun |cdr#Z#0@0| () T@U)
(declare-fun |b$reqreads#0@1| () Bool)
(declare-fun |b$reqreads#1@1| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |##n#0@0| () T@U)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun |_mcc#0#0| () Int)
(declare-fun |_mcc#1#0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.AnotherNode.Repr)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon9_correct  (=> (= (_module.AnotherNode.Repr ($LS $LZ) $Heap@@1 this@@1 |n#0@@1| |list#0@@1|)  (and (and (or (not (= |n#0@@1| null)) (not true)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.data))) |d#Z#0@0|)) (_module.AnotherNode.Repr ($LS $LZ) $Heap@@1 this@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.next)) |cdr#Z#0@0|))) (=> (and (=> (or (not (= |n#0@@1| null)) (not true)) (=> (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.data))) |d#Z#0@0|) (|_module.AnotherNode.Repr#canCall| $Heap@@1 this@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.next)) |cdr#Z#0@0|))) ($Is boolType (bool_2_U (_module.AnotherNode.Repr ($LS $LZ) $Heap@@1 this@@1 |n#0@@1| |list#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 8) (- 0 10)) |b$reqreads#0@1|) (=> |b$reqreads#0@1| (and (=> (= (ControlFlow 0 8) (- 0 9)) |b$reqreads#1@1|) (=> |b$reqreads#1@1| (=> (= (ControlFlow 0 8) (- 0 7)) |b$reqreads#2@1|)))))))))
(let ((anon16_Else_correct  (=> (and (and (not (and (or (not (= |n#0@@1| null)) (not true)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.data))) |d#Z#0@0|))) (= |b$reqreads#1@1| true)) (and (= |b$reqreads#2@1| true) (= (ControlFlow 0 14) 8))) anon9_correct)))
(let ((anon16_Then_correct  (=> (and (and (or (not (= |n#0@@1| null)) (not true)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.data))) |d#Z#0@0|)) ($IsAllocBox ($Box refType this@@1) Tclass._module.AnotherNode? $Heap@@1)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= |n#0@@1| null)) (not true))) (=> (or (not (= |n#0@@1| null)) (not true)) (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#0@@1| _module.AnotherNode.next))) (=> (and (and (= |##n#0@0| ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.next))) ($IsAlloc refType |##n#0@0| Tclass._module.AnotherNode? $Heap@@1)) (and ($IsAlloc DatatypeTypeType |cdr#Z#0@0| (Tclass._module.List TInt) $Heap@@1) (= |b$reqreads#2@0| (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 $o@@6) alloc)))) (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 $o@@6 $f@@0)))
 :qid |Datatypesdfy.48:35|
 :skolemid |2605|
))))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (< (DtRank |cdr#Z#0@0|) (DtRank |list#0@@1|))) (=> (< (DtRank |cdr#Z#0@0|) (DtRank |list#0@@1|)) (=> (and (and (|_module.AnotherNode.Repr#canCall| $Heap@@1 this@@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0@@1|) _module.AnotherNode.next)) |cdr#Z#0@0|) (= |b$reqreads#1@1| |b$reqreads#1@0|)) (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= (ControlFlow 0 11) 8))) anon9_correct))))))))))
(let ((anon15_Else_correct  (=> (and (= |n#0@@1| null) (= |b$reqreads#0@1| true)) (and (=> (= (ControlFlow 0 17) 11) anon16_Then_correct) (=> (= (ControlFlow 0 17) 14) anon16_Else_correct)))))
(let ((anon15_Then_correct  (=> (or (not (= |n#0@@1| null)) (not true)) (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (not (= |n#0@@1| null)) (not true))) (=> (or (not (= |n#0@@1| null)) (not true)) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 |n#0@@1| _module.AnotherNode.data))) (= |b$reqreads#0@1| |b$reqreads#0@0|)) (and (=> (= (ControlFlow 0 15) 11) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct))))))))
(let ((anon14_Then_correct  (=> (and (and (and (= |list#0@@1| (|#_module.List.Cons| ($Box intType (int_2_U |_mcc#0#0|)) |_mcc#1#0|)) ($Is DatatypeTypeType |_mcc#1#0| (Tclass._module.List TInt))) (and (= |let#0#0#0| |_mcc#1#0|) ($Is DatatypeTypeType |let#0#0#0| (Tclass._module.List TInt)))) (and (and (= |cdr#Z#0@0| |let#0#0#0|) (= |let#1#0#0| |_mcc#0#0|)) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |d#Z#0@0| |let#1#0#0|)))) (and (=> (= (ControlFlow 0 18) 15) anon15_Then_correct) (=> (= (ControlFlow 0 18) 17) anon15_Else_correct)))))
(let ((anon14_Else_correct true))
(let ((anon13_Else_correct  (=> (or (not (= |list#0@@1| |#_module.List.Nil|)) (not true)) (and (=> (= (ControlFlow 0 19) 18) anon14_Then_correct) (=> (= (ControlFlow 0 19) 6) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (= |list#0@@1| |#_module.List.Nil|) (=> (and (= (_module.AnotherNode.Repr ($LS $LZ) $Heap@@1 this@@1 |n#0@@1| |list#0@@1|) (= |n#0@@1| null)) ($Is boolType (bool_2_U (_module.AnotherNode.Repr ($LS $LZ) $Heap@@1 this@@1 |n#0@@1| |list#0@@1|)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 5)) true) (and (=> (= (ControlFlow 0 3) (- 0 4)) true) (=> (= (ControlFlow 0 3) (- 0 2)) true)))))))
(let ((anon12_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#15| null $Heap@@1 alloc $Heap@@1 alloc)) (and (and (=> (= (ControlFlow 0 20) 1) anon12_Then_correct) (=> (= (ControlFlow 0 20) 3) anon13_Then_correct)) (=> (= (ControlFlow 0 20) 19) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.AnotherNode) ($IsAlloc refType this@@1 Tclass._module.AnotherNode $Heap@@1)))) (and (and ($Is refType |n#0@@1| Tclass._module.AnotherNode?) ($Is DatatypeTypeType |list#0@@1| (Tclass._module.List TInt))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 21) 20)))) anon0_correct)))
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
