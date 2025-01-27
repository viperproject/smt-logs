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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun class.IncorrectConcrete.MyNumber? () T@U)
(declare-fun Tagclass.IncorrectConcrete.MyNumber? () T@U)
(declare-fun Tagclass.IncorrectConcrete.MyNumber () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$MyNumber () T@U)
(declare-fun field$a () T@U)
(declare-fun field$b () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$N () T@U)
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
(declare-fun Tclass.IncorrectConcrete.MyNumber? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass.IncorrectConcrete.MyNumber () T@U)
(declare-fun IncorrectConcrete.MyNumber.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun IncorrectConcrete.MyNumber.N () T@U)
(declare-fun IncorrectConcrete.MyNumber.a () T@U)
(declare-fun IncorrectConcrete.MyNumber.b () T@U)
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
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun IncorrectConcrete.MyNumber.Valid (T@U T@U) Bool)
(declare-fun |IncorrectConcrete.MyNumber.Valid#canCall| (T@U T@U) Bool)
(declare-fun Mul (Int Int) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc allocName Tagclass._System.object? Tagclass._System.object class.IncorrectConcrete.MyNumber? Tagclass.IncorrectConcrete.MyNumber? Tagclass.IncorrectConcrete.MyNumber tytagFamily$object tytagFamily$MyNumber field$a field$b field$Repr field$N)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.IncorrectConcrete.MyNumber?)  (or (= $o null) (= (dtype $o) Tclass.IncorrectConcrete.MyNumber?)))
 :qid |unknown.0:0|
 :skolemid |5987|
 :pattern ( ($Is refType $o Tclass.IncorrectConcrete.MyNumber?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |5858|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.IncorrectConcrete.MyNumber $h@@0) ($IsAlloc refType |c#0@@0| Tclass.IncorrectConcrete.MyNumber? $h@@0))
 :qid |unknown.0:0|
 :skolemid |6025|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.IncorrectConcrete.MyNumber $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.IncorrectConcrete.MyNumber? $h@@0))
)))
(assert (= (FDim IncorrectConcrete.MyNumber.Repr) 0))
(assert (= (FieldOfDecl class.IncorrectConcrete.MyNumber? field$Repr) IncorrectConcrete.MyNumber.Repr))
(assert ($IsGhostField IncorrectConcrete.MyNumber.Repr))
(assert (= (FDim IncorrectConcrete.MyNumber.N) 0))
(assert (= (FieldOfDecl class.IncorrectConcrete.MyNumber? field$N) IncorrectConcrete.MyNumber.N))
(assert ($IsGhostField IncorrectConcrete.MyNumber.N))
(assert (= (FDim IncorrectConcrete.MyNumber.a) 0))
(assert (= (FieldOfDecl class.IncorrectConcrete.MyNumber? field$a) IncorrectConcrete.MyNumber.a))
(assert  (not ($IsGhostField IncorrectConcrete.MyNumber.a)))
(assert (= (FDim IncorrectConcrete.MyNumber.b) 0))
(assert (= (FieldOfDecl class.IncorrectConcrete.MyNumber? field$b) IncorrectConcrete.MyNumber.b))
(assert  (not ($IsGhostField IncorrectConcrete.MyNumber.b)))
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
(assert (forall (($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5855|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@1))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.IncorrectConcrete.MyNumber? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |5988|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.IncorrectConcrete.MyNumber? $h@@2))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |5524|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |5522|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |5533|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |5553|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |5554|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.IncorrectConcrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) IncorrectConcrete.MyNumber.a)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5990|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) IncorrectConcrete.MyNumber.a)))
)))
(assert (forall (($h@@4 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) Tclass.IncorrectConcrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) IncorrectConcrete.MyNumber.b)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5992|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@3) IncorrectConcrete.MyNumber.b)))
)))
(assert (forall (($h@@5 T@U) ($o@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@4 null)) (not true)) (= (dtype $o@@4) Tclass.IncorrectConcrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) IncorrectConcrete.MyNumber.N)) TInt $h@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6021|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@4) IncorrectConcrete.MyNumber.N)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |5546|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |5853|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |5856|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.IncorrectConcrete.MyNumber?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.IncorrectConcrete.MyNumber?)))
 :qid |unknown.0:0|
 :skolemid |5986|
 :pattern ( ($IsBox bx@@2 Tclass.IncorrectConcrete.MyNumber?))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.IncorrectConcrete.MyNumber) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass.IncorrectConcrete.MyNumber)))
 :qid |unknown.0:0|
 :skolemid |5994|
 :pattern ( ($IsBox bx@@3 Tclass.IncorrectConcrete.MyNumber))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |5857|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.IncorrectConcrete.MyNumber)  (and ($Is refType |c#0@@2| Tclass.IncorrectConcrete.MyNumber?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |6024|
 :pattern ( ($Is refType |c#0@@2| Tclass.IncorrectConcrete.MyNumber))
 :pattern ( ($Is refType |c#0@@2| Tclass.IncorrectConcrete.MyNumber?))
)))
(assert (forall (($h@@6 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) Tclass.IncorrectConcrete.MyNumber?))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) IncorrectConcrete.MyNumber.Repr)) (TSet Tclass._System.object)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6022|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@5) IncorrectConcrete.MyNumber.Repr)))
)))
(assert (forall (($h@@7 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) Tclass.IncorrectConcrete.MyNumber?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) IncorrectConcrete.MyNumber.Repr)) (TSet Tclass._System.object) $h@@7))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6023|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@6) IncorrectConcrete.MyNumber.Repr)))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |5614|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 TInt) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |5534|
 :pattern ( ($IsBox bx@@4 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |5545|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@5 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@5) ($IsAllocBox bx@@5 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |5574|
 :pattern ( (|Set#IsMember| v@@2 bx@@5))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |5575|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (this T@U) ) (!  (=> (or (|IncorrectConcrete.MyNumber.Valid#canCall| $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass.IncorrectConcrete.MyNumber) ($IsAlloc refType this Tclass.IncorrectConcrete.MyNumber $Heap)))))) (= (IncorrectConcrete.MyNumber.Valid $Heap this)  (and (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) IncorrectConcrete.MyNumber.Repr)) ($Box refType this)) (= (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) IncorrectConcrete.MyNumber.N))) (- (Mul (LitInt 2) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) IncorrectConcrete.MyNumber.a)))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) IncorrectConcrete.MyNumber.b))))))))
 :qid |Refinementdfy.189:21|
 :skolemid |5998|
 :pattern ( (IncorrectConcrete.MyNumber.Valid $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |5854|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |5508|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |5509|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |5532|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall (($h@@8 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) Tclass.IncorrectConcrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) IncorrectConcrete.MyNumber.a)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5989|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@8) IncorrectConcrete.MyNumber.a)))
)))
(assert (forall (($h@@9 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) Tclass.IncorrectConcrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) IncorrectConcrete.MyNumber.b)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |5991|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@9) IncorrectConcrete.MyNumber.b)))
)))
(assert (forall (($h@@10 T@U) ($o@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (or (not (= $o@@10 null)) (not true)) (= (dtype $o@@10) Tclass.IncorrectConcrete.MyNumber?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) IncorrectConcrete.MyNumber.N)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |6020|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@10) IncorrectConcrete.MyNumber.N)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@11 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f))  (=> (and (or (not (= $o@@11 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@11) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7043|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#1| |l#0| |l#1| |l#2| |l#3|) $o@@11 $f))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (Mul x@@6 y) (* x@@6 y))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |5845|
 :pattern ( (Mul x@@6 y))
)))
(assert (forall ((bx@@6 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@3)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@3))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |5539|
 :pattern ( ($IsBox bx@@6 (TSet t@@3)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|IncorrectConcrete.MyNumber.Valid#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass.IncorrectConcrete.MyNumber) ($IsAlloc refType this@@0 Tclass.IncorrectConcrete.MyNumber $Heap@@0)))))) (=> (IncorrectConcrete.MyNumber.Valid $Heap@@0 this@@0) (|Set#IsMember| ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) IncorrectConcrete.MyNumber.Repr)) ($Box refType this@@0))))
 :qid |Refinementdfy.189:21|
 :skolemid |5996|
 :pattern ( (IncorrectConcrete.MyNumber.Valid $Heap@@0 this@@0))
))))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.IncorrectConcrete.MyNumber?) Tagclass.IncorrectConcrete.MyNumber?))
(assert (= (TagFamily Tclass.IncorrectConcrete.MyNumber?) tytagFamily$MyNumber))
(assert (= (Tag Tclass.IncorrectConcrete.MyNumber) Tagclass.IncorrectConcrete.MyNumber))
(assert (= (TagFamily Tclass.IncorrectConcrete.MyNumber) tytagFamily$MyNumber))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |5525|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@8)) (Lit BoxType ($Box T@@4 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |5523|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@8)))
)))
(assert (forall ((h@@1 T@U) (v@@3 T@U) ) (! ($IsAlloc intType v@@3 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |5568|
 :pattern ( ($IsAlloc intType v@@3 TInt h@@1))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |5547|
 :pattern ( ($Is intType v@@4 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |k#0@0| () Int)
(declare-fun this@@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$IncorrectConcrete.MyNumber.Get)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#1| null $Heap@@1 alloc false)) (= |k#0@0| (- (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) IncorrectConcrete.MyNumber.a))) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) IncorrectConcrete.MyNumber.b)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |k#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) IncorrectConcrete.MyNumber.N))))) (=> (= |k#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) IncorrectConcrete.MyNumber.N)))) (=> (= (ControlFlow 0 2) (- 0 1)) (=> false (= |k#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) IncorrectConcrete.MyNumber.N)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass.IncorrectConcrete.MyNumber) ($IsAlloc refType this@@1 Tclass.IncorrectConcrete.MyNumber $Heap@@1))) (= 1 $FunctionContextHeight)) (and (IncorrectConcrete.MyNumber.Valid $Heap@@1 this@@1) (= (ControlFlow 0 4) 2))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 3))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
