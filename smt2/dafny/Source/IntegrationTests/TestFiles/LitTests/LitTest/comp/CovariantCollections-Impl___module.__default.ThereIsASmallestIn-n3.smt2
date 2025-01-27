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
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._module.Number () T@U)
(declare-fun Tagclass._module.Number? () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Number () T@U)
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
(declare-fun Tag (T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Union| (T@U T@U) T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass._module.Number? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._module.Number () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Math#clip| (Int) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.Number.value (T@U) Int)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun implements$_module.Number (T@U) Bool)
(declare-fun dtype (T@U) T@U)
(declare-fun |MultiSet#Subset| (T@U T@U) Bool)
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
(assert (distinct TInt TagInt TagMultiSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._module.Number Tagclass._module.Number? tytagFamily$object tytagFamily$Number)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |847|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (or (= (|Math#min| a@@0 b@@0) a@@0) (= (|Math#min| a@@0 b@@0) b@@0))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |822|
 :pattern ( (|Math#min| a@@0 b@@0))
)))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |695|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (y T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@1 y) (|MultiSet#Multiplicity| b@@1 y)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@1 b@@1) y) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |846|
 :pattern ( (|MultiSet#Difference| a@@1 b@@1) (|MultiSet#Multiplicity| b@@1 y) (|MultiSet#Multiplicity| a@@1 y))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2) (|MultiSet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |843|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@2 b@@2) b@@2))
)))
(assert (forall ((bx T@U) ($h T@U) ) (!  (=> (and ($IsAllocBox bx Tclass._module.Number? $h) ($IsGoodHeap $h)) ($IsAllocBox bx Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1520|
 :pattern ( ($IsAllocBox bx Tclass._module.Number? $h))
)))
(assert (= (Ctor refType) 4))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |994|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@1) ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1472|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._module.Number? $h@@1))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
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
(assert (forall (($o T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@2)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |991|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@2))
)))
(assert (forall (($o@@0 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.Number? $h@@3)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1466|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.Number? $h@@3))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |823|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((a@@4 T@U) (b@@3 T@U) (o T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o) (|Math#min| (|MultiSet#Multiplicity| a@@4 o) (|MultiSet#Multiplicity| b@@3 o)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |842|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@3) o))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |669|
 :pattern ( ($Unbox T x@@2))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h@@4 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@1 null)) (not true)) ($Is refType $o@@1 Tclass._module.Number?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))) ($IsAlloc intType (int_2_U (_module.Number.value $o@@1)) TInt $h@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1468|
 :pattern ( (_module.Number.value $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@1) alloc)))
))))
(assert (forall ((a@@5 T@U) (x@@3 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@3 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@5 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@3) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |838|
 :pattern ( (|MultiSet#UnionOne| a@@5 x@@3) (|MultiSet#Multiplicity| a@@5 y@@0))
)))
(assert (forall ((a@@6 T@U) (x@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@4)) (+ (|MultiSet#Card| a@@6) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |839|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@6 x@@4)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@0) t h) ($IsAlloc T@@0 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |682|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@0) t h))
)))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@4)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |841|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@4)))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |989|
 :pattern ( ($IsBox bx@@0 Tclass._System.object?))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |992|
 :pattern ( ($IsBox bx@@1 Tclass._System.object))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.Number) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.Number)))
 :qid |unknown.0:0|
 :skolemid |1252|
 :pattern ( ($IsBox bx@@2 Tclass._module.Number))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Number?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.Number?)))
 :qid |unknown.0:0|
 :skolemid |1379|
 :pattern ( ($IsBox bx@@3 Tclass._module.Number?))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass._System.object)  (and ($Is refType |c#0@@1| Tclass._System.object?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |993|
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@1| Tclass._System.object?))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._module.Number)  (and ($Is refType |c#0@@2| Tclass._module.Number?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1471|
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Number))
 :pattern ( ($Is refType |c#0@@2| Tclass._module.Number?))
)))
(assert (forall (($o@@2 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@2 Tclass._module.Number? $heap) ($IsAlloc refType $o@@2 Tclass._System.object? $heap))
 :qid |unknown.0:0|
 :skolemid |1522|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._module.Number? $heap))
)))
(assert (forall ((a@@8 T@U) (b@@5 T@U) ) (!  (=> (|MultiSet#Equal| a@@8 b@@5) (= a@@8 b@@5))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |852|
 :pattern ( (|MultiSet#Equal| a@@8 b@@5))
)))
(assert (forall ((v@@1 T@U) (t0@@1 T@U) ) (! (= ($Is MultiSetType v@@1 (TMultiSet t0@@1)) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@1 bx@@4)) ($IsBox bx@@4 t0@@1))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |693|
 :pattern ( (|MultiSet#Multiplicity| v@@1 bx@@4))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |694|
 :pattern ( ($Is MultiSetType v@@1 (TMultiSet t0@@1)))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |670|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@2) t@@0) ($Is T@@1 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |681|
 :pattern ( ($IsBox ($Box T@@1 v@@2) t@@0))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@6 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@6)) (<= (|MultiSet#Multiplicity| ms bx@@6) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |826|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@6))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |827|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |828|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((o@@0 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |830|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@0))
)))
(assert (forall ((a@@9 T@U) (x@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@5) x@@5) (+ (|MultiSet#Multiplicity| a@@9 x@@5) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |836|
 :pattern ( (|MultiSet#UnionOne| a@@9 x@@5))
)))
(assert (forall (($o@@3 T@U) ) (! ($Is refType $o@@3 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |990|
 :pattern ( ($Is refType $o@@3 Tclass._System.object?))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |648|
 :pattern ( (TMultiSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TMultiSet t@@2)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |649|
 :pattern ( (TMultiSet t@@2))
)))
(assert (forall ((x@@6 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |668|
 :pattern ( ($Box T@@2 x@@6))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) ($Is refType $o@@4 Tclass._module.Number?)) ($Is intType (int_2_U (_module.Number.value $o@@4)) TInt))
 :qid |unknown.0:0|
 :skolemid |1467|
 :pattern ( (_module.Number.value $o@@4))
))))
(assert (forall ((a@@10 T@U) (b@@6 T@U) ) (! (= (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@6)) (|MultiSet#Intersection| a@@10 b@@6))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |844|
 :pattern ( (|MultiSet#Intersection| a@@10 (|MultiSet#Intersection| a@@10 b@@6)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@7 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@7))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |831|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@7))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |832|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@11 T@U) (b@@7 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@7) o@@1) (+ (|MultiSet#Multiplicity| a@@11 o@@1) (|MultiSet#Multiplicity| b@@7 o@@1)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |840|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@11 b@@7) o@@1))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@5 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))  (=> (and (or (not (= $o@@5 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@5) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1527|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@5 $f))
)))
(assert (forall ((a@@12 Int) (b@@8 Int) ) (! (= (<= a@@12 b@@8) (= (|Math#min| a@@12 b@@8) a@@12))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |820|
 :pattern ( (|Math#min| a@@12 b@@8))
)))
(assert (forall ((a@@13 Int) (b@@9 Int) ) (! (= (<= b@@9 a@@13) (= (|Math#min| a@@13 b@@9) b@@9))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |821|
 :pattern ( (|Math#min| a@@13 b@@9))
)))
(assert (forall ((bx@@7 T@U) (t@@3 T@U) ) (!  (=> ($IsBox bx@@7 (TMultiSet t@@3)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@7)) bx@@7) ($Is MultiSetType ($Unbox MultiSetType bx@@7) (TMultiSet t@@3))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |677|
 :pattern ( ($IsBox bx@@7 (TMultiSet t@@3)))
)))
(assert (forall (($o@@6 T@U) ) (!  (=> ($Is refType $o@@6 Tclass._module.Number?) ($Is refType $o@@6 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1521|
 :pattern ( ($Is refType $o@@6 Tclass._module.Number?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass._module.Number?) ($IsBox bx@@8 Tclass._System.object?))
 :qid |unknown.0:0|
 :skolemid |1519|
 :pattern ( ($IsBox bx@@8 Tclass._module.Number?))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Number) Tagclass._module.Number))
(assert (= (TagFamily Tclass._module.Number) tytagFamily$Number))
(assert (= (Tag Tclass._module.Number?) Tagclass._module.Number?))
(assert (= (TagFamily Tclass._module.Number?) tytagFamily$Number))
(assert (forall ((a@@14 T@U) (b@@10 T@U) (o@@2 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@14 b@@10) o@@2) (|Math#clip| (- (|MultiSet#Multiplicity| a@@14 o@@2) (|MultiSet#Multiplicity| b@@10 o@@2))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |845|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@14 b@@10) o@@2))
)))
(assert (forall (($o@@7 T@U) ) (! (= ($Is refType $o@@7 Tclass._module.Number?)  (or (= $o@@7 null) (implements$_module.Number (dtype $o@@7))))
 :qid |unknown.0:0|
 :skolemid |1465|
 :pattern ( ($Is refType $o@@7 Tclass._module.Number?))
)))
(assert (forall ((a@@15 Int) ) (!  (=> (< a@@15 0) (= (|Math#clip| a@@15) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |824|
 :pattern ( (|Math#clip| a@@15))
)))
(assert (forall ((a@@16 T@U) (x@@8 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@16 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@16 x@@8) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |837|
 :pattern ( (|MultiSet#UnionOne| a@@16 x@@8) (|MultiSet#Multiplicity| a@@16 y@@1))
)))
(assert (forall ((a@@17 T@U) (x@@9 T@U) (o@@3 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@9) o@@3))  (or (= o@@3 x@@9) (< 0 (|MultiSet#Multiplicity| a@@17 o@@3))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |835|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@17 x@@9) o@@3))
)))
(assert (forall ((a@@18 T@U) (b@@11 T@U) ) (! (= (|MultiSet#Equal| a@@18 b@@11) (forall ((o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| a@@18 o@@4) (|MultiSet#Multiplicity| b@@11 o@@4))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |850|
 :pattern ( (|MultiSet#Multiplicity| a@@18 o@@4))
 :pattern ( (|MultiSet#Multiplicity| b@@11 o@@4))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |851|
 :pattern ( (|MultiSet#Equal| a@@18 b@@11))
)))
(assert (forall ((a@@19 T@U) (b@@12 T@U) ) (! (= (|MultiSet#Subset| a@@19 b@@12) (forall ((o@@5 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@19 o@@5) (|MultiSet#Multiplicity| b@@12 o@@5))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |848|
 :pattern ( (|MultiSet#Multiplicity| a@@19 o@@5))
 :pattern ( (|MultiSet#Multiplicity| b@@12 o@@5))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |849|
 :pattern ( (|MultiSet#Subset| a@@19 b@@12))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@0 T@U) ) (! (= ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0) (forall ((bx@@9 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@3 bx@@9)) ($IsAllocBox bx@@9 t0@@3 h@@0))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |714|
 :pattern ( (|MultiSet#Multiplicity| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |715|
 :pattern ( ($IsAlloc MultiSetType v@@3 (TMultiSet t0@@3) h@@0))
)))
(assert (forall ((h@@1 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@1)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |704|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@1))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |683|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0| () T@U)
(declare-fun |m#0@1| () T@U)
(declare-fun |m#0@0| () T@U)
(declare-fun |y#0_0@0| () T@U)
(declare-fun |s'#1_0@0| () T@U)
(declare-fun |call2formal@m#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |call2formal@m#0@0| () T@U)
(declare-fun |eg$y#0@0| () T@U)
(declare-fun |m#1@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |defass#m#0| () Bool)
(declare-fun |m#0| () T@U)
(declare-fun |y#0_0| () T@U)
(declare-fun |s'#1_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.ThereIsASmallestInMultiset)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon8_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) (> (|MultiSet#Multiplicity| |s#0| ($Box refType |m#0@1|)) 0)) (=> (> (|MultiSet#Multiplicity| |s#0| ($Box refType |m#0@1|)) 0) (=> (= (ControlFlow 0 2) (- 0 1)) (forall ((|y#1| T@U) ) (!  (=> ($Is refType |y#1| Tclass._module.Number) (=> (> (|MultiSet#Multiplicity| |s#0| ($Box refType |y#1|)) 0) (<= (_module.Number.value |m#0@1|) (_module.Number.value |y#1|))))
 :qid |CovariantCollectionsdfy.176:28|
 :skolemid |1332|
 :pattern ( (_module.Number.value |y#1|))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box refType |y#1|)))
))))))))
(let ((anon12_Else_correct  (=> (not (exists ((|eg$y#1| T@U) ) (!  (and ($Is refType |eg$y#1| Tclass._module.Number) (and (> (|MultiSet#Multiplicity| |s#0| ($Box refType |eg$y#1|)) 0) (< (_module.Number.value |eg$y#1|) (_module.Number.value |m#0@0|))))
 :qid |CovariantCollectionsdfy.179:6|
 :skolemid |1335|
 :pattern ( (_module.Number.value |eg$y#1|))
 :pattern ( (|MultiSet#Multiplicity| |s#0| ($Box refType |eg$y#1|)))
))) (=> (and (= |m#0@1| |m#0@0|) (= (ControlFlow 0 10) 2)) anon8_correct))))
(let ((anon12_Then_correct  (=> (and (> (|MultiSet#Multiplicity| |s#0| ($Box refType |y#0_0@0|)) 0) (< (_module.Number.value |y#0_0@0|) (_module.Number.value |m#0@0|))) (and (=> (= (ControlFlow 0 5) (- 0 9)) true) (=> (= |s'#1_0@0| (|MultiSet#Difference| |s#0| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box refType |m#0@0|)))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (> (|MultiSet#Multiplicity| |s'#1_0@0| ($Box refType |y#0_0@0|)) 0)) (=> (> (|MultiSet#Multiplicity| |s'#1_0@0| ($Box refType |y#0_0@0|)) 0) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (|MultiSet#Subset| |s'#1_0@0| |s#0|) (not (|MultiSet#Equal| |s'#1_0@0| |s#0|)))) (=> (and (|MultiSet#Subset| |s'#1_0@0| |s#0|) (not (|MultiSet#Equal| |s'#1_0@0| |s#0|))) (=> (and ($Is refType |call2formal@m#0| Tclass._module.Number) ($IsAlloc refType |call2formal@m#0| Tclass._module.Number $Heap)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (not (|MultiSet#Equal| |s'#1_0@0| |MultiSet#Empty|))) (=> (not (|MultiSet#Equal| |s'#1_0@0| |MultiSet#Empty|)) (=> (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (=> (and (and (and ($Is refType |call2formal@m#0@0| Tclass._module.Number) ($IsAlloc refType |call2formal@m#0@0| Tclass._module.Number $Heap@0)) (> (|MultiSet#Multiplicity| |s'#1_0@0| ($Box refType |call2formal@m#0@0|)) 0)) (and (and (forall ((|y#1@@0| T@U) ) (!  (=> ($Is refType |y#1@@0| Tclass._module.Number) (=> (> (|MultiSet#Multiplicity| |s'#1_0@0| ($Box refType |y#1@@0|)) 0) (<= (_module.Number.value |call2formal@m#0@0|) (_module.Number.value |y#1@@0|))))
 :qid |CovariantCollectionsdfy.176:28|
 :skolemid |1331|
 :pattern ( (_module.Number.value |y#1@@0|))
 :pattern ( (|MultiSet#Multiplicity| |s'#1_0@0| ($Box refType |y#1@@0|)))
)) (= $Heap $Heap@0)) (and (= |m#0@1| |call2formal@m#0@0|) (= (ControlFlow 0 5) 2)))) anon8_correct))))))))))))))
(let ((anon5_correct  (=> (and ($Is refType |y#0_0@0| Tclass._module.Number) ($IsAlloc refType |y#0_0@0| Tclass._module.Number $Heap)) (and (=> (= (ControlFlow 0 11) 5) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (and (>= 0 (|MultiSet#Multiplicity| |s#0| ($Box refType |eg$y#0@0|))) (= (ControlFlow 0 17) 11)) anon5_correct)))
(let ((anon11_Then_correct  (=> (> (|MultiSet#Multiplicity| |s#0| ($Box refType |eg$y#0@0|)) 0) (and (=> (= (ControlFlow 0 13) (- 0 16)) (or (not (= |eg$y#0@0| null)) (not true))) (=> (or (not (= |eg$y#0@0| null)) (not true)) (and (=> (= (ControlFlow 0 13) (- 0 15)) true) (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (not (= |m#0@0| null)) (not true))) (=> (or (not (= |m#0@0| null)) (not true)) (=> (= (ControlFlow 0 13) 11) anon5_correct)))))))))
(let ((anon10_Then_correct  (=> (and ($Is refType |eg$y#0@0| Tclass._module.Number) ($IsAlloc refType |eg$y#0@0| Tclass._module.Number $Heap)) (and (=> (= (ControlFlow 0 18) 13) anon11_Then_correct) (=> (= (ControlFlow 0 18) 17) anon11_Else_correct)))))
(let ((anon10_Else_correct  (=> (and (not (and ($Is refType |eg$y#0@0| Tclass._module.Number) ($IsAlloc refType |eg$y#0@0| Tclass._module.Number $Heap))) (= (ControlFlow 0 12) 11)) anon5_correct)))
(let ((anon2_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (or (and ($Is refType null Tclass._module.Number) (> (|MultiSet#Multiplicity| |s#0| ($Box refType null)) 0)) (exists ((|$as#m0#0| T@U) ) (!  (and ($Is refType |$as#m0#0| Tclass._module.Number) (> (|MultiSet#Multiplicity| |s#0| ($Box refType |$as#m0#0|)) 0))
 :qid |CovariantCollectionsdfy.178:3|
 :skolemid |1333|
)))) (=> (or (and ($Is refType null Tclass._module.Number) (> (|MultiSet#Multiplicity| |s#0| ($Box refType null)) 0)) (exists ((|$as#m0#0@@0| T@U) ) (!  (and ($Is refType |$as#m0#0@@0| Tclass._module.Number) (> (|MultiSet#Multiplicity| |s#0| ($Box refType |$as#m0#0@@0|)) 0))
 :qid |CovariantCollectionsdfy.178:3|
 :skolemid |1333|
))) (=> (and (=> true (and ($Is refType |m#0@0| Tclass._module.Number) ($IsAlloc refType |m#0@0| Tclass._module.Number $Heap))) (> (|MultiSet#Multiplicity| |s#0| ($Box refType |m#0@0|)) 0)) (and (=> (= (ControlFlow 0 19) 18) anon10_Then_correct) (=> (= (ControlFlow 0 19) 12) anon10_Else_correct)))))))
(let ((anon9_Else_correct  (=> (and (not (and ($Is refType |m#1@0| Tclass._module.Number) ($IsAlloc refType |m#1@0| Tclass._module.Number $Heap))) (= (ControlFlow 0 22) 19)) anon2_correct)))
(let ((anon9_Then_correct  (=> (and (and ($Is refType |m#1@0| Tclass._module.Number) ($IsAlloc refType |m#1@0| Tclass._module.Number $Heap)) (= (ControlFlow 0 21) 19)) anon2_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 23) 21) anon9_Then_correct) (=> (= (ControlFlow 0 23) 22) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is MultiSetType |s#0| (TMultiSet Tclass._module.Number)) ($IsAlloc MultiSetType |s#0| (TMultiSet Tclass._module.Number) $Heap)) (=> |defass#m#0| (and ($Is refType |m#0| Tclass._module.Number) ($IsAlloc refType |m#0| Tclass._module.Number $Heap)))) (and (and ($Is refType |y#0_0| Tclass._module.Number) ($IsAlloc refType |y#0_0| Tclass._module.Number $Heap)) true)) (=> (and (and (and (and ($Is MultiSetType |s'#1_0| (TMultiSet Tclass._module.Number)) ($IsAlloc MultiSetType |s'#1_0| (TMultiSet Tclass._module.Number) $Heap)) true) (= 1 $FunctionContextHeight)) (and (not (|MultiSet#Equal| |s#0| |MultiSet#Empty|)) (= (ControlFlow 0 24) 23))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
