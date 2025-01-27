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
(declare-fun Tagclass._module.TrickyLets () T@U)
(declare-fun class._module.TrickyLets? () T@U)
(declare-fun Tagclass._module.TrickyLets? () T@U)
(declare-fun Tagclass._module.TLWrapper? () T@U)
(declare-fun Tagclass._module.TLWrapper () T@U)
(declare-fun class._module.TLWrapper? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$TrickyLets () T@U)
(declare-fun tytagFamily$TLWrapper () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.TrickyLets? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass._module.TLWrapper? () T@U)
(declare-fun Tclass._module.TrickyLets () T@U)
(declare-fun Tclass._module.TLWrapper () T@U)
(declare-fun _module.TrickyLets.next () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun _module.TLWrapper.data () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass._System.nat Tagclass._module.TrickyLets class._module.TrickyLets? Tagclass._module.TrickyLets? Tagclass._module.TLWrapper? Tagclass._module.TLWrapper class._module.TLWrapper? tytagFamily$nat tytagFamily$TrickyLets tytagFamily$TLWrapper field$next field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.TrickyLets?)  (or (= $o null) (= (dtype $o) Tclass._module.TrickyLets?)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($Is refType $o Tclass._module.TrickyLets?))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass._module.TLWrapper?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass._module.TLWrapper?)))
 :qid |unknown.0:0|
 :skolemid |650|
 :pattern ( ($Is refType $o@@0 Tclass._module.TLWrapper?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.TrickyLets $h@@0) ($IsAlloc refType |c#0| Tclass._module.TrickyLets? $h@@0))
 :qid |unknown.0:0|
 :skolemid |649|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TrickyLets $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.TrickyLets? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.TLWrapper $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.TLWrapper? $h@@1))
 :qid |unknown.0:0|
 :skolemid |655|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.TLWrapper $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.TLWrapper? $h@@1))
)))
(assert (= (FDim _module.TrickyLets.next) 0))
(assert (= (FieldOfDecl class._module.TrickyLets? field$next) _module.TrickyLets.next))
(assert  (not ($IsGhostField _module.TrickyLets.next)))
(assert (= (FDim _module.TLWrapper.data) 0))
(assert (= (FieldOfDecl class._module.TLWrapper? field$data) _module.TLWrapper.data))
(assert  (not ($IsGhostField _module.TLWrapper.data)))
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
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._module.TrickyLets? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |617|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._module.TrickyLets? $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._module.TLWrapper? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.TLWrapper? $h@@3))
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
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass._module.TrickyLets?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.TrickyLets.next)) Tclass._module.TrickyLets?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |618|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) _module.TrickyLets.next)))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass._module.TLWrapper?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.TLWrapper.data)) Tclass._module.TrickyLets?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |652|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) _module.TLWrapper.data)))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._module.TrickyLets)  (and ($Is refType |c#0@@1| Tclass._module.TrickyLets?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |648|
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TrickyLets))
 :pattern ( ($Is refType |c#0@@1| Tclass._module.TrickyLets?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.TLWrapper)  (and ($Is refType |c#0@@2| Tclass._module.TLWrapper?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |654|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.TLWrapper))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.TLWrapper?))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass._module.TrickyLets?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.TrickyLets.next)) Tclass._module.TrickyLets? $h@@6))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |619|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) _module.TrickyLets.next)))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass._module.TLWrapper?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.TLWrapper.data)) Tclass._module.TrickyLets? $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |653|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) _module.TLWrapper.data)))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@7) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |660|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@7 $f))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.TrickyLets) Tagclass._module.TrickyLets))
(assert (= (TagFamily Tclass._module.TrickyLets) tytagFamily$TrickyLets))
(assert (= (Tag Tclass._module.TrickyLets?) Tagclass._module.TrickyLets?))
(assert (= (TagFamily Tclass._module.TrickyLets?) tytagFamily$TrickyLets))
(assert (= (Tag Tclass._module.TLWrapper?) Tagclass._module.TLWrapper?))
(assert (= (TagFamily Tclass._module.TLWrapper?) tytagFamily$TLWrapper))
(assert (= (Tag Tclass._module.TLWrapper) Tagclass._module.TLWrapper))
(assert (= (TagFamily Tclass._module.TLWrapper) tytagFamily$TLWrapper))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |n##0@0| () Int)
(declare-fun call3formal@this () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call3formal@this@0 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun $obj1@0 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |n##1@0| () Int)
(declare-fun call3formal@this@@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun call3formal@this@0@@0 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun $obj0@0 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |n##2@0| () Int)
(declare-fun call3formal@this@@1 () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun call3formal@this@0@@1 () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun $obj0@1 () T@U)
(declare-fun |n##3@0| () Int)
(declare-fun call3formal@this@@2 () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun call3formal@this@0@@2 () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun this () T@U)
(declare-fun |defass#t#0| () Bool)
(declare-fun |t#0| () T@U)
(declare-fun |defass#w#0| () Bool)
(declare-fun |w#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.TrickyLets.RegressionTests)
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
 (=> (= (ControlFlow 0 0) 47) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 46)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 45)) (forall (($o@@8 T@U) ($f@@0 T@U) ) (!  (=> (and (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@8) alloc)))) (= $o@@8 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@0)))
 :qid |ArrayElementInitCompiledfy.96:14|
 :skolemid |630|
))) (=> (forall (($o@@9 T@U) ($f@@1 T@U) ) (!  (=> (and (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@9) alloc)))) (= $o@@9 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@9 $f@@1)))
 :qid |ArrayElementInitCompiledfy.96:14|
 :skolemid |630|
)) (=> (and (and (and (and (or (not (= call3formal@this null)) (not true)) (and ($Is refType call3formal@this Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this Tclass._module.TrickyLets $Heap))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (and (or (not (= call3formal@this@0 null)) (not true)) (and ($Is refType call3formal@this@0 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@0 Tclass._module.TrickyLets $Heap@0))) (and (=> (or (not (= null null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 null) _module.TLWrapper.data)) null)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call3formal@this@0) alloc))))))) (and (and (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@10)) (= $o@@10 null)))
 :qid |ArrayElementInitCompiledfy.82:3|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@10))
)) ($HeapSucc $Heap $Heap@0)) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.TLWrapper?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc)))) (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1))))) (and (=> (= (ControlFlow 0 2) (- 0 44)) true) (and (=> (= (ControlFlow 0 2) (- 0 43)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 42)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.TLWrapper.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.TLWrapper.data)) (and (=> (= (ControlFlow 0 2) (- 0 41)) true) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) _module.TLWrapper.data ($Box refType call3formal@this@0)))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 2) (- 0 40)) true) (and (=> (= (ControlFlow 0 2) (- 0 39)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 38)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.TLWrapper.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.TLWrapper.data)) (and (=> (= (ControlFlow 0 2) (- 0 37)) true) (and (=> (= (ControlFlow 0 2) (- 0 36)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 35)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.TLWrapper.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.TLWrapper.data)) null)) (not true)) (=> (= $obj1@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.TLWrapper.data))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj1@0 _module.TrickyLets.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj1@0 _module.TrickyLets.next)) (=> (and (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.TLWrapper.data ($Box refType null)))) ($IsGoodHeap $Heap@3)) (and (= $Heap@4 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@3 $obj1@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $obj1@0) _module.TrickyLets.next ($Box refType null)))) ($IsGoodHeap $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 33)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 32)) (forall (($o@@11 T@U) ($f@@2 T@U) ) (!  (=> (and (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@11) alloc)))) (= $o@@11 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@11 $f@@2)))
 :qid |ArrayElementInitCompiledfy.102:10|
 :skolemid |632|
))) (=> (forall (($o@@12 T@U) ($f@@3 T@U) ) (!  (=> (and (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@12) alloc)))) (= $o@@12 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@12 $f@@3)))
 :qid |ArrayElementInitCompiledfy.102:10|
 :skolemid |632|
)) (=> (and (and (and (and (or (not (= call3formal@this@@0 null)) (not true)) (and ($Is refType call3formal@this@@0 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@@0 Tclass._module.TrickyLets $Heap))) (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5))) (and (and (or (not (= call3formal@this@0@@0 null)) (not true)) (and ($Is refType call3formal@this@0@@0 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@0@@0 Tclass._module.TrickyLets $Heap@5))) (and (=> (or (not (= null null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 null) _module.TLWrapper.data)) null)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 call3formal@this@0@@0) alloc))))))) (and (and (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@13) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@13)) (= $o@@13 null)))
 :qid |ArrayElementInitCompiledfy.82:3|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@13))
)) ($HeapSucc $Heap@4 $Heap@5)) (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 Tclass._module.TLWrapper?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) alloc)))) (= $Heap@6 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) true) (and (=> (= (ControlFlow 0 2) (- 0 30)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 29)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.TLWrapper.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.TLWrapper.data)) (and (=> (= (ControlFlow 0 2) (- 0 28)) true) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@1) _module.TLWrapper.data ($Box refType call3formal@this@0@@0)))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 27)) true) (and (=> (= (ControlFlow 0 2) (- 0 26)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) _module.TLWrapper.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) _module.TLWrapper.data)) null)) (not true)) (=> (= $obj0@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $nw@1) _module.TLWrapper.data))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.TrickyLets.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@0 _module.TrickyLets.next)) (and (=> (= (ControlFlow 0 2) (- 0 23)) true) (and (=> (= (ControlFlow 0 2) (- 0 22)) (or (not (= $nw@1 null)) (not true))) (=> (or (not (= $nw@1 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.TLWrapper.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@1 _module.TLWrapper.data)) (=> (and (and (= $Heap@8 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@7 $obj0@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $obj0@0) _module.TrickyLets.next ($Box refType null)))) ($IsGoodHeap $Heap@8)) (and (= $Heap@9 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@8 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $nw@1) _module.TLWrapper.data ($Box refType null)))) ($IsGoodHeap $Heap@9))) (and (=> (= (ControlFlow 0 2) (- 0 20)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##2@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (forall (($o@@14 T@U) ($f@@4 T@U) ) (!  (=> (and (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@14) alloc)))) (= $o@@14 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@14 $f@@4)))
 :qid |ArrayElementInitCompiledfy.109:10|
 :skolemid |633|
))) (=> (forall (($o@@15 T@U) ($f@@5 T@U) ) (!  (=> (and (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@15) alloc)))) (= $o@@15 null)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@15 $f@@5)))
 :qid |ArrayElementInitCompiledfy.109:10|
 :skolemid |633|
)) (=> (and (and (and (and (or (not (= call3formal@this@@1 null)) (not true)) (and ($Is refType call3formal@this@@1 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@@1 Tclass._module.TrickyLets $Heap))) (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10))) (and (and (or (not (= call3formal@this@0@@1 null)) (not true)) (and ($Is refType call3formal@this@0@@1 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@0@@1 Tclass._module.TrickyLets $Heap@10))) (and (=> (or (not (= null null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 null) _module.TLWrapper.data)) null)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 call3formal@this@0@@1) alloc))))))) (and (and (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@16) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@16)) (= $o@@16 null)))
 :qid |ArrayElementInitCompiledfy.82:3|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@16))
)) ($HeapSucc $Heap@9 $Heap@10)) (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 Tclass._module.TLWrapper?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@2) alloc)))) (= $Heap@11 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@10 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) true) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 _module.TLWrapper.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@2 _module.TLWrapper.data)) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (=> (and (= $Heap@12 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@11 $nw@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $nw@2) _module.TLWrapper.data ($Box refType call3formal@this@0@@1)))) ($IsGoodHeap $Heap@12)) (and (=> (= (ControlFlow 0 2) (- 0 14)) true) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= $nw@2 null)) (not true))) (=> (or (not (= $nw@2 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@2) _module.TLWrapper.data)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@2) _module.TLWrapper.data)) null)) (not true)) (=> (= $obj0@1 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $nw@2) _module.TLWrapper.data))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 _module.TrickyLets.next))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $obj0@1 _module.TrickyLets.next)) (and (=> (= (ControlFlow 0 2) (- 0 10)) ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 0)) Tclass._System.nat) (=> (= |n##3@0| (LitInt 0)) (and (=> (= (ControlFlow 0 2) (- 0 9)) true) (and (=> (= (ControlFlow 0 2) (- 0 8)) (forall (($o@@17 T@U) ($f@@6 T@U) ) (!  (=> (and (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@17) alloc)))) (= $o@@17 $nw@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@17 $f@@6)))
 :qid |ArrayElementInitCompiledfy.112:20|
 :skolemid |634|
))) (=> (forall (($o@@18 T@U) ($f@@7 T@U) ) (!  (=> (and (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@18) alloc)))) (= $o@@18 $nw@2)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@18 $f@@7)))
 :qid |ArrayElementInitCompiledfy.112:20|
 :skolemid |634|
)) (=> (and (and (or (not (= call3formal@this@@2 null)) (not true)) (and ($Is refType call3formal@this@@2 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@@2 Tclass._module.TrickyLets $Heap))) (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13))) (=> (and (and (and (or (not (= call3formal@this@0@@2 null)) (not true)) (and ($Is refType call3formal@this@0@@2 Tclass._module.TrickyLets) ($IsAlloc refType call3formal@this@0@@2 Tclass._module.TrickyLets $Heap@13))) (and (=> (or (not (= $nw@2 null)) (not true)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $nw@2) _module.TLWrapper.data)) null)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 call3formal@this@0@@2) alloc)))))) (and (and (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@19) alloc)))) (or (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@19)) (= $o@@19 $nw@2)))
 :qid |ArrayElementInitCompiledfy.82:3|
 :skolemid |624|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@19))
)) ($HeapSucc $Heap@12 $Heap@13)) (and (= $Heap@14 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@13 $obj0@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $obj0@1) _module.TrickyLets.next ($Box refType call3formal@this@0@@2)))) ($IsGoodHeap $Heap@14)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= call3formal@this@0@@1 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 call3formal@this@0@@1) _module.TrickyLets.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 call3formal@this@0@@1) _module.TrickyLets.next)) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@2 null)) (not true))) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $nw@2) _module.TLWrapper.data)) null))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.TrickyLets) ($IsAlloc refType this Tclass._module.TrickyLets $Heap))) (and (=> |defass#t#0| (and ($Is refType |t#0| Tclass._module.TrickyLets) ($IsAlloc refType |t#0| Tclass._module.TrickyLets $Heap))) true)) (and (and (=> |defass#w#0| (and ($Is refType |w#0| Tclass._module.TLWrapper) ($IsAlloc refType |w#0| Tclass._module.TLWrapper $Heap))) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 47) 2)))) anon0_correct))))
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
