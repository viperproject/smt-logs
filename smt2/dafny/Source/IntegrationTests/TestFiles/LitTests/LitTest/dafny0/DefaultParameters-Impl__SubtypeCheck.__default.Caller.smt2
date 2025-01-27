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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass.SubtypeCheck.Class () T@U)
(declare-fun Tagclass.SubtypeCheck.Iter () T@U)
(declare-fun Tagclass.SubtypeCheck.R () T@U)
(declare-fun |##SubtypeCheck.R.R| () T@U)
(declare-fun class.SubtypeCheck.Iter? () T@U)
(declare-fun Tagclass.SubtypeCheck.Iter? () T@U)
(declare-fun Tagclass.SubtypeCheck.Class? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Class () T@U)
(declare-fun tytagFamily$Iter () T@U)
(declare-fun tytagFamily$R () T@U)
(declare-fun field$_new () T@U)
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
(declare-fun SubtypeCheck.Iter.i (T@U) Int)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.SubtypeCheck.Iter? () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SubtypeCheck.Iter.__decreases0 (T@U) Int)
(declare-fun SubtypeCheck.Iter.__decreases1 (T@U) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.SubtypeCheck.Class? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.SubtypeCheck.Iter () T@U)
(declare-fun Tclass.SubtypeCheck.Class () T@U)
(declare-fun SubtypeCheck.R.R_q (T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.SubtypeCheck.R () T@U)
(declare-fun SubtypeCheck.Iter.__new () T@U)
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
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#SubtypeCheck.R.R| (Int Int) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun SubtypeCheck.Iter.Valid (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun SubtypeCheck.Iter.__reads (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun SubtypeCheck.R.i (T@U) Int)
(declare-fun SubtypeCheck.R.x (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SubtypeCheck.Iter.x (T@U) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SubtypeCheck.Iter.__modifies (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass.SubtypeCheck.Class Tagclass.SubtypeCheck.Iter Tagclass.SubtypeCheck.R |##SubtypeCheck.R.R| class.SubtypeCheck.Iter? Tagclass.SubtypeCheck.Iter? Tagclass.SubtypeCheck.Class? tytagFamily$nat tytagFamily$object tytagFamily$Class tytagFamily$Iter tytagFamily$R field$_new)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |6968|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall (($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.SubtypeCheck.Iter?)) ($Is intType (int_2_U (SubtypeCheck.Iter.i $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |7310|
 :pattern ( (SubtypeCheck.Iter.i $o))
)))
(assert (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) Tclass.SubtypeCheck.Iter?)) ($Is intType (int_2_U (SubtypeCheck.Iter.__decreases0 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |7320|
 :pattern ( (SubtypeCheck.Iter.__decreases0 $o@@0))
)))
(assert (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.SubtypeCheck.Iter?)) ($Is intType (int_2_U (SubtypeCheck.Iter.__decreases1 $o@@1)) TInt))
 :qid |unknown.0:0|
 :skolemid |7322|
 :pattern ( (SubtypeCheck.Iter.__decreases1 $o@@1))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |6748|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (Ctor refType) 3))
(assert (forall (($o@@2 T@U) ) (! (= ($Is refType $o@@2 Tclass.SubtypeCheck.Iter?)  (or (= $o@@2 null) (= (dtype $o@@2) Tclass.SubtypeCheck.Iter?)))
 :qid |unknown.0:0|
 :skolemid |7308|
 :pattern ( ($Is refType $o@@2 Tclass.SubtypeCheck.Iter?))
)))
(assert (forall (($o@@3 T@U) ) (! (= ($Is refType $o@@3 Tclass.SubtypeCheck.Class?)  (or (= $o@@3 null) (= (dtype $o@@3) Tclass.SubtypeCheck.Class?)))
 :qid |unknown.0:0|
 :skolemid |7338|
 :pattern ( ($Is refType $o@@3 Tclass.SubtypeCheck.Class?))
)))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |6974|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.SubtypeCheck.Iter $h@@1) ($IsAlloc refType |c#0@@0| Tclass.SubtypeCheck.Iter? $h@@1))
 :qid |unknown.0:0|
 :skolemid |7334|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SubtypeCheck.Iter $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.SubtypeCheck.Iter? $h@@1))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.SubtypeCheck.Class $h@@2) ($IsAlloc refType |c#0@@1| Tclass.SubtypeCheck.Class? $h@@2))
 :qid |unknown.0:0|
 :skolemid |7343|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SubtypeCheck.Class $h@@2))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.SubtypeCheck.Class? $h@@2))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.SubtypeCheck.R) (SubtypeCheck.R.R_q d))
 :qid |unknown.0:0|
 :skolemid |7304|
 :pattern ( (SubtypeCheck.R.R_q d) ($Is DatatypeTypeType d Tclass.SubtypeCheck.R))
)))
(assert (= (FDim SubtypeCheck.Iter.__new) 0))
(assert (= (FieldOfDecl class.SubtypeCheck.Iter? field$_new) SubtypeCheck.Iter.__new))
(assert ($IsGhostField SubtypeCheck.Iter.__new))
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
(assert (forall (($o@@4 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@4 Tclass._System.object? $h@@3)  (or (= $o@@4 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@4) alloc)))))
 :qid |unknown.0:0|
 :skolemid |6971|
 :pattern ( ($IsAlloc refType $o@@4 Tclass._System.object? $h@@3))
)))
(assert (forall (($o@@5 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@5 Tclass.SubtypeCheck.Iter? $h@@4)  (or (= $o@@5 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7309|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.SubtypeCheck.Iter? $h@@4))
)))
(assert (forall (($o@@6 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@6 Tclass.SubtypeCheck.Class? $h@@5)  (or (= $o@@6 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@6) alloc)))))
 :qid |unknown.0:0|
 :skolemid |7339|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.SubtypeCheck.Class? $h@@5))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |6741|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |6742|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |6640|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |6638|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@0 T@U) ) (! (= (SubtypeCheck.R.R_q d@@0) (= (DatatypeCtorId d@@0) |##SubtypeCheck.R.R|))
 :qid |unknown.0:0|
 :skolemid |7293|
 :pattern ( (SubtypeCheck.R.R_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |6649|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (SubtypeCheck.R.R_q d@@1) (exists ((|a#0#0#0| Int) (|a#0#1#0| Int) ) (! (= d@@1 (|#SubtypeCheck.R.R| |a#0#0#0| |a#0#1#0|))
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7294|
)))
 :qid |unknown.0:0|
 :skolemid |7295|
 :pattern ( (SubtypeCheck.R.R_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |6669|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |6670|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |6967|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h0 T@U) ($h1 T@U) (this T@U) ) (!  (=> (and (and (and ($IsGoodHeap $h0) ($IsGoodHeap $h1)) (and (or (not (= this null)) (not true)) ($Is refType this Tclass.SubtypeCheck.Iter))) (and ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1))) (=> (forall (($o@@7 T@U) ($f T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (or (or (= $o@@7 this) (|Set#IsMember| (SubtypeCheck.Iter.__reads this) ($Box refType $o@@7))) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 this) SubtypeCheck.Iter.__new)) ($Box refType $o@@7)))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h0 $o@@7) $f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h1 $o@@7) $f)))
 :qid |unknown.0:0|
 :skolemid |7326|
)) (= (SubtypeCheck.Iter.Valid $h0 this) (SubtypeCheck.Iter.Valid $h1 this))))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7327|
 :pattern ( ($IsHeapAnchor $h0) ($HeapSucc $h0 $h1) (SubtypeCheck.Iter.Valid $h1 this))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |6662|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |6734|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |6733|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |6966|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |6969|
 :pattern ( ($IsBox bx@@2 Tclass._System.object?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |6972|
 :pattern ( ($IsBox bx@@3 Tclass._System.object))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.SubtypeCheck.Class) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass.SubtypeCheck.Class)))
 :qid |unknown.0:0|
 :skolemid |7286|
 :pattern ( ($IsBox bx@@4 Tclass.SubtypeCheck.Class))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.SubtypeCheck.Iter) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass.SubtypeCheck.Iter)))
 :qid |unknown.0:0|
 :skolemid |7288|
 :pattern ( ($IsBox bx@@5 Tclass.SubtypeCheck.Iter))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.SubtypeCheck.R) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass.SubtypeCheck.R)))
 :qid |unknown.0:0|
 :skolemid |7291|
 :pattern ( ($IsBox bx@@6 Tclass.SubtypeCheck.R))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.SubtypeCheck.Iter?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.SubtypeCheck.Iter?)))
 :qid |unknown.0:0|
 :skolemid |7307|
 :pattern ( ($IsBox bx@@7 Tclass.SubtypeCheck.Iter?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.SubtypeCheck.Class?) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.SubtypeCheck.Class?)))
 :qid |unknown.0:0|
 :skolemid |7337|
 :pattern ( ($IsBox bx@@8 Tclass.SubtypeCheck.Class?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6973|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.SubtypeCheck.Iter)  (and ($Is refType |c#0@@3| Tclass.SubtypeCheck.Iter?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7333|
 :pattern ( ($Is refType |c#0@@3| Tclass.SubtypeCheck.Iter))
 :pattern ( ($Is refType |c#0@@3| Tclass.SubtypeCheck.Iter?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.SubtypeCheck.Class)  (and ($Is refType |c#0@@4| Tclass.SubtypeCheck.Class?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |7342|
 :pattern ( ($Is refType |c#0@@4| Tclass.SubtypeCheck.Class))
 :pattern ( ($Is refType |c#0@@4| Tclass.SubtypeCheck.Class?))
)))
(assert (forall (($h@@6 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.SubtypeCheck.Iter?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) SubtypeCheck.Iter.__new)) (TSet Tclass._System.object?)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7318|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@8) SubtypeCheck.Iter.__new)))
)))
(assert (forall (($h@@7 T@U) ($o@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) SubtypeCheck.Iter.__new)) (TSet Tclass._System.object?) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7319|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@9) SubtypeCheck.Iter.__new)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |6773|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |6740|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |6730|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 TInt) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |6650|
 :pattern ( ($IsBox bx@@9 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |6661|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@10 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@10) ($IsAllocBox bx@@10 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |6690|
 :pattern ( (|Set#IsMember| v@@3 bx@@10))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |6691|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((|a#0#0#0@@0| Int) (|a#0#1#0@@0| Int) ) (! (= (DatatypeCtorId (|#SubtypeCheck.R.R| |a#0#0#0@@0| |a#0#1#0@@0|)) |##SubtypeCheck.R.R|)
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7292|
 :pattern ( (|#SubtypeCheck.R.R| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) ) (! (= (SubtypeCheck.R.i (|#SubtypeCheck.R.R| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7300|
 :pattern ( (|#SubtypeCheck.R.R| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) ) (! (= (SubtypeCheck.R.x (|#SubtypeCheck.R.R| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7301|
 :pattern ( (|#SubtypeCheck.R.R| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall (($o@@10 T@U) ) (! ($Is refType $o@@10 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |6970|
 :pattern ( ($Is refType $o@@10 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |6624|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |6625|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |6648|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@8 T@U) ($o@@11 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@11 null)) (not true)) (= (dtype $o@@11) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))) ($IsAlloc intType (int_2_U (SubtypeCheck.Iter.i $o@@11)) TInt $h@@8))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7311|
 :pattern ( (SubtypeCheck.Iter.i $o@@11) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@11) alloc)))
)))
(assert (forall (($h@@9 T@U) ($o@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@12 null)) (not true)) (= (dtype $o@@12) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))) ($IsAlloc intType (int_2_U (SubtypeCheck.Iter.__decreases0 $o@@12)) TInt $h@@9))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7321|
 :pattern ( (SubtypeCheck.Iter.__decreases0 $o@@12) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@12) alloc)))
)))
(assert (forall (($h@@10 T@U) ($o@@13 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@13 null)) (not true)) (= (dtype $o@@13) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))) ($IsAlloc intType (int_2_U (SubtypeCheck.Iter.__decreases1 $o@@13)) TInt $h@@10))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7323|
 :pattern ( (SubtypeCheck.Iter.__decreases1 $o@@13) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@13) alloc)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@14 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))  (=> (and (or (not (= $o@@14 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@14) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |14277|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@14 $f@@0))
)))
(assert (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (= (dtype $o@@15) Tclass.SubtypeCheck.Iter?)) ($Is intType (int_2_U (SubtypeCheck.Iter.x $o@@15)) Tclass._System.nat))
 :qid |unknown.0:0|
 :skolemid |7312|
 :pattern ( (SubtypeCheck.Iter.x $o@@15))
)))
(assert (forall ((d@@2 T@U) ($h@@11 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (SubtypeCheck.R.R_q d@@2) ($IsAlloc DatatypeTypeType d@@2 Tclass.SubtypeCheck.R $h@@11))) ($IsAlloc intType (int_2_U (SubtypeCheck.R.i d@@2)) TInt $h@@11))
 :qid |unknown.0:0|
 :skolemid |7297|
 :pattern ( ($IsAlloc intType (int_2_U (SubtypeCheck.R.i d@@2)) TInt $h@@11))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |6655|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((d@@3 T@U) ($h@@12 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) ($Is DatatypeTypeType d@@3 Tclass.SubtypeCheck.R)) ($IsAlloc DatatypeTypeType d@@3 Tclass.SubtypeCheck.R $h@@12))
 :qid |unknown.0:0|
 :skolemid |7302|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 Tclass.SubtypeCheck.R $h@@12))
)))
(assert (forall (($h@@13 T@U) ($o@@16 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@13) (and (or (not (= $o@@16 null)) (not true)) (= (dtype $o@@16) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))) ($IsAlloc intType (int_2_U (SubtypeCheck.Iter.x $o@@16)) Tclass._System.nat $h@@13))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7313|
 :pattern ( (SubtypeCheck.Iter.x $o@@16) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@13 $o@@16) alloc)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.SubtypeCheck.Class) Tagclass.SubtypeCheck.Class))
(assert (= (TagFamily Tclass.SubtypeCheck.Class) tytagFamily$Class))
(assert (= (Tag Tclass.SubtypeCheck.Iter) Tagclass.SubtypeCheck.Iter))
(assert (= (TagFamily Tclass.SubtypeCheck.Iter) tytagFamily$Iter))
(assert (= (Tag Tclass.SubtypeCheck.R) Tagclass.SubtypeCheck.R))
(assert (= (TagFamily Tclass.SubtypeCheck.R) tytagFamily$R))
(assert (= (Tag Tclass.SubtypeCheck.Iter?) Tagclass.SubtypeCheck.Iter?))
(assert (= (TagFamily Tclass.SubtypeCheck.Iter?) tytagFamily$Iter))
(assert (= (Tag Tclass.SubtypeCheck.Class?) Tagclass.SubtypeCheck.Class?))
(assert (= (TagFamily Tclass.SubtypeCheck.Class?) tytagFamily$Class))
(assert (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (= (dtype $o@@17) Tclass.SubtypeCheck.Iter?)) ($Is SetType (SubtypeCheck.Iter.__reads $o@@17) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |7314|
 :pattern ( (SubtypeCheck.Iter.__reads $o@@17))
)))
(assert (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (= (dtype $o@@18) Tclass.SubtypeCheck.Iter?)) ($Is SetType (SubtypeCheck.Iter.__modifies $o@@18) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |7316|
 :pattern ( (SubtypeCheck.Iter.__modifies $o@@18))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@1 T@U) ) (! (= (|Set#IsMember| a@@1 o@@1) (|Set#IsMember| b@@1 o@@1))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |6771|
 :pattern ( (|Set#IsMember| a@@1 o@@1))
 :pattern ( (|Set#IsMember| b@@1 o@@1))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |6772|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((d@@4 T@U) ($h@@14 T@U) ) (!  (=> (and ($IsGoodHeap $h@@14) (and (SubtypeCheck.R.R_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass.SubtypeCheck.R $h@@14))) ($IsAlloc intType (int_2_U (SubtypeCheck.R.x d@@4)) Tclass._System.nat $h@@14))
 :qid |unknown.0:0|
 :skolemid |7298|
 :pattern ( ($IsAlloc intType (int_2_U (SubtypeCheck.R.x d@@4)) Tclass._System.nat $h@@14))
)))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) ) (! (= (|#SubtypeCheck.R.R| (LitInt |a#2#0#0|) (LitInt |a#2#1#0|)) (Lit DatatypeTypeType (|#SubtypeCheck.R.R| |a#2#0#0| |a#2#1#0|)))
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7299|
 :pattern ( (|#SubtypeCheck.R.R| (LitInt |a#2#0#0|) (LitInt |a#2#1#0|)))
)))
(assert (forall (($h@@15 T@U) ($o@@19 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@15) (and (or (not (= $o@@19 null)) (not true)) (= (dtype $o@@19) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) alloc)))) ($IsAlloc SetType (SubtypeCheck.Iter.__reads $o@@19) (TSet Tclass._System.object?) $h@@15))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7315|
 :pattern ( (SubtypeCheck.Iter.__reads $o@@19) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@15 $o@@19) alloc)))
)))
(assert (forall (($h@@16 T@U) ($o@@20 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@16) (and (or (not (= $o@@20 null)) (not true)) (= (dtype $o@@20) Tclass.SubtypeCheck.Iter?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@20) alloc)))) ($IsAlloc SetType (SubtypeCheck.Iter.__modifies $o@@20) (TSet Tclass._System.object?) $h@@16))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |7317|
 :pattern ( (SubtypeCheck.Iter.__modifies $o@@20) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@16 $o@@20) alloc)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |6641|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |6639|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((|a#1#0#0| Int) (|a#1#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#SubtypeCheck.R.R| |a#1#0#0| |a#1#1#0|) Tclass.SubtypeCheck.R)  (and ($Is intType (int_2_U |a#1#0#0|) TInt) ($Is intType (int_2_U |a#1#1#0|) Tclass._System.nat)))
 :qid |DefaultParametersdfy.385:18|
 :skolemid |7296|
 :pattern ( ($Is DatatypeTypeType (|#SubtypeCheck.R.R| |a#1#0#0| |a#1#1#0|) Tclass.SubtypeCheck.R))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |6684|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |6663|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |defass#z#0_0| () Bool)
(declare-fun |z#0_0| () T@U)
(declare-fun |defass#z#1_0| () Bool)
(declare-fun |z#1_0| () T@U)
(declare-fun |z#4_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$SubtypeCheck.__default.Caller)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon11_Else_correct  (=> (and (and (and (and (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (not (U_2_bool (Lit boolType (bool_2_U true))))) (= (ControlFlow 0 7) (- 0 6))) false)))
(let ((anon11_Then_correct true))
(let ((anon10_Then_correct true))
(let ((anon9_Then_correct true))
(let ((anon8_Then_correct true))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (and (and (and (=> (= (ControlFlow 0 8) 1) anon7_Then_correct) (=> (= (ControlFlow 0 8) 2) anon8_Then_correct)) (=> (= (ControlFlow 0 8) 3) anon9_Then_correct)) (=> (= (ControlFlow 0 8) 4) anon10_Then_correct)) (=> (= (ControlFlow 0 8) 5) anon11_Then_correct)) (=> (= (ControlFlow 0 8) 7) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (=> |defass#z#0_0| (and ($Is refType |z#0_0| Tclass.SubtypeCheck.Class) ($IsAlloc refType |z#0_0| Tclass.SubtypeCheck.Class $Heap))) true) (and (=> |defass#z#1_0| (and ($Is refType |z#1_0| Tclass.SubtypeCheck.Iter) ($IsAlloc refType |z#1_0| Tclass.SubtypeCheck.Iter $Heap))) true)) (=> (and (and (and ($Is DatatypeTypeType |z#4_0| Tclass.SubtypeCheck.R) ($IsAlloc DatatypeTypeType |z#4_0| Tclass.SubtypeCheck.R $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
