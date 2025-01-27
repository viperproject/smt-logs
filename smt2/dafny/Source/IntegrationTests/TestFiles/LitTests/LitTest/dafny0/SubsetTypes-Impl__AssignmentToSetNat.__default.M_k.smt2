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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.AssignmentToSetNat.G () T@U)
(declare-fun Tagclass.AssignmentToSetNat.G? () T@U)
(declare-fun class.AssignmentToSetNat.G? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$G () T@U)
(declare-fun field$u () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun AssignmentToSetNat.__default.F (T@U) T@U)
(declare-fun |AssignmentToSetNat.__default.F#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.AssignmentToSetNat.G? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.AssignmentToSetNat.G () T@U)
(declare-fun AssignmentToSetNat.G.u () T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.nat Tagclass.AssignmentToSetNat.G Tagclass.AssignmentToSetNat.G? class.AssignmentToSetNat.G? tytagFamily$nat tytagFamily$G field$u)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |874|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor SetType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|q#0| T@U) ) (!  (=> (or (|AssignmentToSetNat.__default.F#canCall| |q#0|) (and (< 0 $FunctionContextHeight) ($Is SetType |q#0| (TSet Tclass._System.nat)))) ($Is SetType (AssignmentToSetNat.__default.F |q#0|) (TSet TInt)))
 :qid |SubsetTypesdfy.83:14|
 :skolemid |1023|
 :pattern ( (AssignmentToSetNat.__default.F |q#0|))
))))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |654|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.AssignmentToSetNat.G?)  (or (= $o null) (= (dtype $o) Tclass.AssignmentToSetNat.G?)))
 :qid |unknown.0:0|
 :skolemid |1052|
 :pattern ( ($Is refType $o Tclass.AssignmentToSetNat.G?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.AssignmentToSetNat.G $h@@0) ($IsAlloc refType |c#0| Tclass.AssignmentToSetNat.G? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1057|
 :pattern ( ($IsAlloc refType |c#0| Tclass.AssignmentToSetNat.G $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.AssignmentToSetNat.G? $h@@0))
)))
(assert (= (FDim AssignmentToSetNat.G.u) 0))
(assert (= (FieldOfDecl class.AssignmentToSetNat.G? field$u) AssignmentToSetNat.G.u))
(assert  (not ($IsGhostField AssignmentToSetNat.G.u)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.AssignmentToSetNat.G? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1053|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.AssignmentToSetNat.G? $h@@1))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |647|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |648|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |546|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |544|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |555|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |575|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |576|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |873|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |568|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |640|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |639|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |872|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.AssignmentToSetNat.G) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.AssignmentToSetNat.G)))
 :qid |unknown.0:0|
 :skolemid |1018|
 :pattern ( ($IsBox bx@@2 Tclass.AssignmentToSetNat.G))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.AssignmentToSetNat.G?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.AssignmentToSetNat.G?)))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( ($IsBox bx@@3 Tclass.AssignmentToSetNat.G?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.AssignmentToSetNat.G)  (and ($Is refType |c#0@@0| Tclass.AssignmentToSetNat.G?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1056|
 :pattern ( ($Is refType |c#0@@0| Tclass.AssignmentToSetNat.G))
 :pattern ( ($Is refType |c#0@@0| Tclass.AssignmentToSetNat.G?))
)))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.AssignmentToSetNat.G?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) AssignmentToSetNat.G.u)) (TSet Tclass._System.nat)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1054|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) AssignmentToSetNat.G.u)))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.AssignmentToSetNat.G?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) AssignmentToSetNat.G.u)) (TSet Tclass._System.nat) $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1055|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) AssignmentToSetNat.G.u)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |679|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |646|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |636|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |556|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |567|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |596|
 :pattern ( (|Set#IsMember| v@@3 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |597|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |530|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |531|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |554|
 :pattern ( ($Box T@@4 x@@5))
)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |9970|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@6 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |561|
 :pattern ( ($IsBox bx@@6 (TSet t@@5)))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |645|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.AssignmentToSetNat.G) Tagclass.AssignmentToSetNat.G))
(assert (= (TagFamily Tclass.AssignmentToSetNat.G) tytagFamily$G))
(assert (= (Tag Tclass.AssignmentToSetNat.G?) Tagclass.AssignmentToSetNat.G?))
(assert (= (TagFamily Tclass.AssignmentToSetNat.G?) tytagFamily$G))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |677|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |678|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |547|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |545|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |590|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |569|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x1#0| () T@U)
(declare-fun |c#0@1| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |x2#0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |x3#0| () T@U)
(declare-fun |y#0@0| () T@U)
(declare-fun |x4#0| () T@U)
(declare-fun |c#2@0| () T@U)
(declare-fun |x0#0| () T@U)
(declare-fun |c#0@0| () T@U)
(declare-fun |c#1@0| () T@U)
(declare-fun |c#0@@1| () T@U)
(declare-fun |defass#g#0| () Bool)
(declare-fun |g#0| () T@U)
(declare-fun |y#0| () T@U)
(set-info :boogie-vc-id Impl$$AssignmentToSetNat.__default.M_k)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon4_correct  (and (=> (= (ControlFlow 0 2) (- 0 8)) (or (and ($Is SetType |x1#0| (TSet Tclass._System.nat)) (|Set#Equal| |x1#0| |x1#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet Tclass._System.nat)) (|Set#Equal| |Set#Empty| |x1#0|)) (exists ((|$as#c1#0| T@U) ) (!  (and ($Is SetType |$as#c1#0| (TSet Tclass._System.nat)) (|Set#Equal| |$as#c1#0| |x1#0|))
 :qid |SubsetTypesdfy.72:5|
 :skolemid |1017|
))))) (=> (or (and ($Is SetType |x1#0| (TSet Tclass._System.nat)) (|Set#Equal| |x1#0| |x1#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet Tclass._System.nat)) (|Set#Equal| |Set#Empty| |x1#0|)) (exists ((|$as#c1#0@@0| T@U) ) (!  (and ($Is SetType |$as#c1#0@@0| (TSet Tclass._System.nat)) (|Set#Equal| |$as#c1#0@@0| |x1#0|))
 :qid |SubsetTypesdfy.72:5|
 :skolemid |1017|
)))) (=> (and (and (and (and ($Is SetType |c#0@1| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#0@1| (TSet Tclass._System.nat) $Heap)) (|Set#Equal| |c#0@1| |x1#0|)) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.AssignmentToSetNat.G?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) true) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 AssignmentToSetNat.G.u))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 AssignmentToSetNat.G.u)) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is SetType |x2#0| (TSet Tclass._System.nat))) (=> ($Is SetType |x2#0| (TSet Tclass._System.nat)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) AssignmentToSetNat.G.u ($Box SetType |x2#0|)))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is SetType |x3#0| (TSet Tclass._System.nat))) (=> ($Is SetType |x3#0| (TSet Tclass._System.nat)) (=> ($IsAlloc SetType |x3#0| (TSet Tclass._System.nat) $Heap@1) (=> (and (and (|AssignmentToSetNat.__default.F#canCall| |x3#0|) (|AssignmentToSetNat.__default.F#canCall| |x3#0|)) (and (= |y#0@0| (AssignmentToSetNat.__default.F |x3#0|)) (= (ControlFlow 0 2) (- 0 1)))) ($Is SetType |x4#0| (TSet Tclass._System.nat)))))))))))))))))))
(let ((anon6_Else_correct  (=> (and (not (and ($Is SetType |c#2@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#2@0| (TSet Tclass._System.nat) $Heap))) (= (ControlFlow 0 10) 2)) anon4_correct)))
(let ((anon6_Then_correct  (=> (and (and ($Is SetType |c#2@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#2@0| (TSet Tclass._System.nat) $Heap)) (= (ControlFlow 0 9) 2)) anon4_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (and ($Is SetType |x0#0| (TSet Tclass._System.nat)) (|Set#Equal| |x0#0| |x0#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet Tclass._System.nat)) (|Set#Equal| |Set#Empty| |x0#0|)) (exists ((|$as#c0#0| T@U) ) (!  (and ($Is SetType |$as#c0#0| (TSet Tclass._System.nat)) (|Set#Equal| |$as#c0#0| |x0#0|))
 :qid |SubsetTypesdfy.71:9|
 :skolemid |1016|
))))) (=> (or (and ($Is SetType |x0#0| (TSet Tclass._System.nat)) (|Set#Equal| |x0#0| |x0#0|)) (or (and ($Is SetType (Lit SetType |Set#Empty|) (TSet Tclass._System.nat)) (|Set#Equal| |Set#Empty| |x0#0|)) (exists ((|$as#c0#0@@0| T@U) ) (!  (and ($Is SetType |$as#c0#0@@0| (TSet Tclass._System.nat)) (|Set#Equal| |$as#c0#0@@0| |x0#0|))
 :qid |SubsetTypesdfy.71:9|
 :skolemid |1016|
)))) (=> (and (and ($Is SetType |c#0@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#0@0| (TSet Tclass._System.nat) $Heap)) (|Set#Equal| |c#0@0| |x0#0|)) (and (=> (= (ControlFlow 0 11) 9) anon6_Then_correct) (=> (= (ControlFlow 0 11) 10) anon6_Else_correct)))))))
(let ((anon5_Else_correct  (=> (and (not (and ($Is SetType |c#1@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#1@0| (TSet Tclass._System.nat) $Heap))) (= (ControlFlow 0 14) 11)) anon2_correct)))
(let ((anon5_Then_correct  (=> (and (and ($Is SetType |c#1@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#1@0| (TSet Tclass._System.nat) $Heap)) (= (ControlFlow 0 13) 11)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 15) 13) anon5_Then_correct) (=> (= (ControlFlow 0 15) 14) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |x0#0| (TSet TInt)) ($IsAlloc SetType |x0#0| (TSet TInt) $Heap))) (=> (and (and (and ($Is SetType |x1#0| (TSet TInt)) ($IsAlloc SetType |x1#0| (TSet TInt) $Heap)) (and ($Is SetType |x2#0| (TSet TInt)) ($IsAlloc SetType |x2#0| (TSet TInt) $Heap))) (and (and ($Is SetType |x3#0| (TSet TInt)) ($IsAlloc SetType |x3#0| (TSet TInt) $Heap)) (and ($Is SetType |x4#0| (TSet TInt)) ($IsAlloc SetType |x4#0| (TSet TInt) $Heap)))) (=> (and (and (and (and ($Is SetType |c#0@@1| (TSet Tclass._System.nat)) ($IsAlloc SetType |c#0@@1| (TSet Tclass._System.nat) $Heap)) true) (and (=> |defass#g#0| (and ($Is refType |g#0| Tclass.AssignmentToSetNat.G) ($IsAlloc refType |g#0| Tclass.AssignmentToSetNat.G $Heap))) true)) (and (and (and ($Is SetType |y#0| (TSet TInt)) ($IsAlloc SetType |y#0| (TSet TInt) $Heap)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 8))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
