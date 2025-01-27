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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |_module.Node.IsClosed#canCall| (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#3| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.Node?))) ($Is refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Node.next)) Tclass._module.Node?))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |531|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.Node.next)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@1 T@U) (this@@1 T@U) (|S#0@@1| T@U) ) (!  (=> (or (|_module.Node.IsClosed#canCall| $Heap@@1 this@@1 |S#0@@1|) (and (< 0 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.Node) ($IsAlloc refType this@@1 Tclass._module.Node $Heap@@1)))) ($Is SetType |S#0@@1| (TSet Tclass._module.Node?))))) (= (_module.Node.IsClosed $Heap@@1 this@@1 |S#0@@1|)  (and (and (|Set#IsMember| |S#0@@1| ($Box refType this@@1)) (|Set#IsMember| |S#0@@1| ($Box refType null))) (forall ((|n#0| T@U) ) (!  (=> ($Is refType |n#0| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@1| ($Box refType |n#0|)) (or (not (= |n#0| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@1| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |538|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |n#0|) _module.Node.next)))
)))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.129:19|
 :skolemid |539|
 :pattern ( (_module.Node.IsClosed $Heap@@1 this@@1 |S#0@@1|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Node?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.Node?)))
 :qid |unknown.0:0|
 :skolemid |528|
 :pattern ( ($IsBox bx@@0 Tclass._module.Node?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.Node) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._module.Node)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@1 Tclass._module.Node))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.Node)  (and ($Is refType |c#0@@0| Tclass._module.Node?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1102|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.Node?))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.Node?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc refType ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Node.next)) Tclass._module.Node? $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |532|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.Node.next)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@2 T@U) (this@@2 T@U) (|k#0@@1| Int) (|S#0@@2| T@U) ) (!  (=> (or (|_module.Node.Nexxxt#canCall| $Heap@@2 this@@2 |k#0@@1| |S#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (and ($IsGoodHeap $Heap@@2) (or (not (= this@@2 null)) (not true))) ($IsAlloc refType this@@2 Tclass._module.Node $Heap@@2)) (and ($Is SetType |S#0@@2| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0@@2| (TSet Tclass._module.Node?) $Heap@@2))) (and (_module.Node.IsClosed $Heap@@2 this@@2 |S#0@@2|) (<= (LitInt 0) |k#0@@1|))))) ($IsAlloc refType (_module.Node.Nexxxt $ly@@1 $Heap@@2 this@@2 |k#0@@1| |S#0@@2|) Tclass._module.Node? $Heap@@2))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |547|
 :pattern ( ($IsAlloc refType (_module.Node.Nexxxt $ly@@1 $Heap@@2 this@@2 |k#0@@1| |S#0@@2|) Tclass._module.Node? $Heap@@2))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1105|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#3| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@4 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@3)))
)))
(assert (= (Tag Tclass._module.Node?) Tagclass._module.Node?))
(assert (= (TagFamily Tclass._module.Node?) tytagFamily$Node))
(assert (= (Tag Tclass._module.Node) Tagclass._module.Node))
(assert (= (TagFamily Tclass._module.Node) tytagFamily$Node))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) ($Heap@@3 T@U) (this@@3 T@U) (|k#0@@2| Int) (|S#0@@3| T@U) ) (!  (=> (or (|_module.Node.Nexxxt#canCall| $Heap@@3 this@@3 |k#0@@2| |S#0@@3|) (and (< 1 $FunctionContextHeight) (and (and (and ($IsGoodHeap $Heap@@3) (and (or (not (= this@@3 null)) (not true)) (and ($Is refType this@@3 Tclass._module.Node) ($IsAlloc refType this@@3 Tclass._module.Node $Heap@@3)))) ($Is SetType |S#0@@3| (TSet Tclass._module.Node?))) (and (_module.Node.IsClosed $Heap@@3 this@@3 |S#0@@3|) (<= (LitInt 0) |k#0@@2|))))) (and (=> (or (not (= |k#0@@2| (LitInt 0))) (not true)) (and (|_module.Node.Nexxxt#canCall| $Heap@@3 this@@3 (- |k#0@@2| 1) |S#0@@3|) (=> (or (not (= (_module.Node.Nexxxt $ly@@2 $Heap@@3 this@@3 (- |k#0@@2| 1) |S#0@@3|) null)) (not true)) (|_module.Node.Nexxxt#canCall| $Heap@@3 this@@3 (- |k#0@@2| 1) |S#0@@3|)))) (= (_module.Node.Nexxxt ($LS $ly@@2) $Heap@@3 this@@3 |k#0@@2| |S#0@@3|) (ite (= |k#0@@2| (LitInt 0)) this@@3 (ite (= (_module.Node.Nexxxt $ly@@2 $Heap@@3 this@@3 (- |k#0@@2| 1) |S#0@@3|) null) null ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@3 (_module.Node.Nexxxt $ly@@2 $Heap@@3 this@@3 (- |k#0@@2| 1) |S#0@@3|)) _module.Node.next)))))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.136:18|
 :skolemid |549|
 :pattern ( (_module.Node.Nexxxt ($LS $ly@@2) $Heap@@3 this@@3 |k#0@@2| |S#0@@3|) ($IsGoodHeap $Heap@@3))
))))
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
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |k#0@0| () Int)
(declare-fun |n#0@@0| () Int)
(declare-fun |l#0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun this@@4 () T@U)
(declare-fun |S#0@@4| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.Node.Lemma__NullImpliesNoCycles__part1)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon4_correct true))
(let ((anon5_Else_correct  (=> (and (=> (and (and (and (<= (LitInt 0) |k#0@0|) (<= |n#0@@0| |l#0@0|)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) null)) (not true))) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |l#0@0| |S#0@@4|) (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|))) (not true))) (= (ControlFlow 0 26) 1)) anon4_correct)))
(let ((anon5_Then_correct  (=> (<= (LitInt 0) |k#0@0|) (=> (and (and (<= |n#0@@0| |l#0@0|) ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@0)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@0) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 25)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (forall ((|n#2| T@U) ) (!  (=> ($Is refType |n#2| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#2|)) (or (not (= |n#2| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |897|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#2|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (<= (LitInt 0) |k#0@0|)) (=> (and (and (and (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (<= (LitInt 0) |k#0@0|)) (|_module.Node.Nexxxt#canCall| $Heap@0 this@@4 |k#0@0| |S#0@@4|)) (and (and (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true)) ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@0)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@0) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (forall ((|n#3| T@U) ) (!  (=> ($Is refType |n#3| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#3|)) (or (not (= |n#3| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |899|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#3|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (<= (LitInt 0) |k#0@0|)) (=> (and (and (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (<= (LitInt 0) |k#0@0|)) (|_module.Node.Nexxxt#canCall| $Heap@0 this@@4 |k#0@0| |S#0@@4|)) (and (=> (= (ControlFlow 0 2) (- 0 17)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true))) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true)) (=> (and (and (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) null)) (not true)) ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@0)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@0) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (forall ((|n#4| T@U) ) (!  (=> ($Is refType |n#4| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#4|)) (or (not (= |n#4| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |901|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#4|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (<= (LitInt 0) |k#0@0|)) (=> (and (and (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (<= (LitInt 0) |k#0@0|)) (|_module.Node.Nexxxt#canCall| $Heap@0 this@@4 |k#0@0| |S#0@@4|)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true))) (=> (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|) null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) null)) (not true))) (=> (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) null)) (not true)) (=> ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next) Tclass._module.Node? $Heap@0) (=> (and ($IsAlloc intType (int_2_U |l#0@0|) TInt $Heap@0) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@0)) (and (=> (= (ControlFlow 0 2) (- 0 10)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS ($LS $LZ)) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next))))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (forall ((|n#5| T@U) ) (!  (=> ($Is refType |n#5| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#5|)) (or (not (= |n#5| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |903|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#5|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (<= (LitInt 0) |l#0@0|)) (=> (and (_module.Node.IsClosed $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |S#0@@4|) (<= (LitInt 0) |l#0@0|)) (=> (and (and (|_module.Node.Nexxxt#canCall| $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |l#0@0| |S#0@@4|) ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@0)) (and ($IsAlloc intType (int_2_U |k#0@0|) TInt $Heap@0) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.Node.IsClosed#canCall| $Heap@0 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (forall ((|n#6| T@U) ) (!  (=> ($Is refType |n#6| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#6|)) (or (not (= |n#6| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#6|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#6|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |905|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 |n#6|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= (LitInt 0) |k#0@0|)) (=> (and (and (and (_module.Node.IsClosed $Heap@0 this@@4 |S#0@@4|) (<= (LitInt 0) |k#0@0|)) (|_module.Node.Nexxxt#canCall| $Heap@0 this@@4 |k#0@0| |S#0@@4|)) (and (or (not (= (_module.Node.Nexxxt ($LS $LZ) $Heap@0 ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|)) _module.Node.next)) |l#0@0| |S#0@@4|) (_module.Node.Nexxxt ($LS $LZ) $Heap@0 this@@4 |k#0@0| |S#0@@4|))) (not true)) (= (ControlFlow 0 2) 1))) anon4_correct)))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#3| null $Heap@@4 alloc false)) (=> (and (and (and ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@@4) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@@4)) (and (|_module.Node.IsClosed#canCall| $Heap@@4 this@@4 |S#0@@4|) (_module.Node.IsClosed $Heap@@4 this@@4 |S#0@@4|))) (and (and (<= (LitInt 0) |n#0@@0|) ($IsAllocBox ($Box refType this@@4) Tclass._module.Node? $Heap@@4)) (and ($IsAlloc intType (int_2_U |n#0@@0|) TInt $Heap@@4) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@@4)))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (=> (|_module.Node.IsClosed#canCall| $Heap@@4 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@@4 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType this@@4))))) (and (=> (= (ControlFlow 0 27) (- 0 30)) (=> (|_module.Node.IsClosed#canCall| $Heap@@4 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@@4 this@@4 |S#0@@4|) (|Set#IsMember| |S#0@@4| ($Box refType null))))) (and (=> (= (ControlFlow 0 27) (- 0 29)) (=> (|_module.Node.IsClosed#canCall| $Heap@@4 this@@4 |S#0@@4|) (or (_module.Node.IsClosed $Heap@@4 this@@4 |S#0@@4|) (forall ((|n#1| T@U) ) (!  (=> ($Is refType |n#1| Tclass._module.Node?) (=> (and (and (|Set#IsMember| |S#0@@4| ($Box refType |n#1|)) (or (not (= |n#1| null)) (not true))) (or (not (= ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |n#1|) _module.Node.next)) null)) (not true))) (|Set#IsMember| |S#0@@4| (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |n#1|) _module.Node.next))))
 :qid |COSTverifcomp20114FloydCycleDetectdfy.133:12|
 :skolemid |895|
 :pattern ( ($Unbox refType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@4 |n#1|) _module.Node.next)))
))))) (and (=> (= (ControlFlow 0 27) (- 0 28)) (<= (LitInt 0) |n#0@@0|)) (=> (and (and (and (_module.Node.IsClosed $Heap@@4 this@@4 |S#0@@4|) (<= (LitInt 0) |n#0@@0|)) (and (|_module.Node.Nexxxt#canCall| $Heap@@4 this@@4 |n#0@@0| |S#0@@4|) (= (_module.Node.Nexxxt ($LS $LZ) $Heap@@4 this@@4 |n#0@@0| |S#0@@4|) null))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (= $Heap@@4 $Heap@0))) (and (=> (= (ControlFlow 0 27) 2) anon5_Then_correct) (=> (= (ControlFlow 0 27) 26) anon5_Else_correct)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap@@4) ($IsHeapAnchor $Heap@@4)) (and (or (not (= this@@4 null)) (not true)) (and ($Is refType this@@4 Tclass._module.Node) ($IsAlloc refType this@@4 Tclass._module.Node $Heap@@4)))) (and (and ($Is SetType |S#0@@4| (TSet Tclass._module.Node?)) ($IsAlloc SetType |S#0@@4| (TSet Tclass._module.Node?) $Heap@@4)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 32) 27)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
