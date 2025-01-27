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
(declare-fun TagISet () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun tytagFamily$nat () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TISet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Math#clip| (Int) Int)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |ISet#Difference| (T@U T@U) T@U)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagISet TagMultiSet alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (and (= (+ (+ (|MultiSet#Card| (|MultiSet#Difference| a b)) (|MultiSet#Card| (|MultiSet#Difference| b a))) (* 2 (|MultiSet#Card| (|MultiSet#Intersection| a b)))) (|MultiSet#Card| (|MultiSet#Union| a b))) (= (|MultiSet#Card| (|MultiSet#Difference| a b)) (- (|MultiSet#Card| a) (|MultiSet#Card| (|MultiSet#Intersection| a b)))))
 :qid |DafnyPreludebpl.1027:15|
 :skolemid |820|
 :pattern ( (|MultiSet#Card| (|MultiSet#Difference| a b)))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (y T@U) ) (!  (=> (|Set#IsMember| b@@0 y) (not (|Set#IsMember| (|Set#Difference| a@@0 b@@0) y)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |760|
 :pattern ( (|Set#Difference| a@@0 b@@0) (|Set#IsMember| b@@0 y))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) ) (!  (or (= (|Math#min| a@@1 b@@1) a@@1) (= (|Math#min| a@@1 b@@1) b@@1))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |795|
 :pattern ( (|Math#min| a@@1 b@@1))
)))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |668|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (y@@0 T@U) ) (!  (=> (<= (|MultiSet#Multiplicity| a@@2 y@@0) (|MultiSet#Multiplicity| b@@2 y@@0)) (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@2 b@@2) y@@0) 0))
 :qid |DafnyPreludebpl.1022:15|
 :skolemid |819|
 :pattern ( (|MultiSet#Difference| a@@2 b@@2) (|MultiSet#Multiplicity| b@@2 y@@0) (|MultiSet#Multiplicity| a@@2 y@@0))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@3 b@@3) b@@3) (|MultiSet#Intersection| a@@3 b@@3))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |816|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@3 b@@3) b@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@4 b@@4) o)  (and (|Set#IsMember| a@@4 o) (not (|Set#IsMember| b@@4 o))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |759|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@4 b@@4) o))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |734|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |735|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@0 bx)) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |664|
 :pattern ( (MapType0Select BoxType boolType v@@0 bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |665|
 :pattern ( ($Is (MapType0Type BoxType boolType) v@@0 (TISet t0@@1)))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (<= 0 a@@5) (= (|Math#clip| a@@5) a@@5))
 :qid |DafnyPreludebpl.895:15|
 :skolemid |796|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |633|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |631|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((a@@6 T@U) (b@@5 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@6 b@@5) o@@1) (|Math#min| (|MultiSet#Multiplicity| a@@6 o@@1) (|MultiSet#Multiplicity| b@@5 o@@1)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |815|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@6 b@@5) o@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |642|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v@@1 T@U) (t0@@2 T@U) ) (! (= ($Is SetType v@@1 (TSet t0@@2)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@1 bx@@0) ($IsBox bx@@0 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |662|
 :pattern ( (|Set#IsMember| v@@1 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |663|
 :pattern ( ($Is SetType v@@1 (TSet t0@@2)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |960|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h@@0) ($IsAlloc T@@1 v@@2 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |655|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |727|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@3 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@3 t@@1 h@@2) ($IsAlloc T@@2 v@@3 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |726|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@3 t@@1 h@@2))
)))
(assert (forall ((a@@7 T@U) (b@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@6)) (+ (|MultiSet#Card| a@@7) (|MultiSet#Card| b@@6)))
 :qid |DafnyPreludebpl.994:15|
 :skolemid |814|
 :pattern ( (|MultiSet#Card| (|MultiSet#Union| a@@7 b@@6)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((a@@8 T@U) (b@@7 T@U) (o@@2 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@8 b@@7) o@@2))  (and (U_2_bool (MapType0Select BoxType boolType a@@8 o@@2)) (not (U_2_bool (MapType0Select BoxType boolType b@@7 o@@2)))))
 :qid |DafnyPreludebpl.858:15|
 :skolemid |784|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Difference| a@@8 b@@7) o@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@3) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@4 bx@@3)) ($IsAllocBox bx@@3 t0@@3 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |685|
 :pattern ( (MapType0Select BoxType boolType v@@4 bx@@3))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |686|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@3) h@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is MultiSetType v@@5 (TMultiSet t0@@4)) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@5 bx@@4)) ($IsBox bx@@4 t0@@4))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |666|
 :pattern ( (|MultiSet#Multiplicity| v@@5 bx@@4))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |667|
 :pattern ( ($Is MultiSetType v@@5 (TMultiSet t0@@4)))
)))
(assert (forall ((a@@9 T@U) (b@@8 T@U) (c T@U) ) (!  (=> (or (not (= a@@9 c)) (not true)) (=> (and ($HeapSucc a@@9 b@@8) ($HeapSucc b@@8 c)) ($HeapSucc a@@9 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |733|
 :pattern ( ($HeapSucc a@@9 b@@8) ($HeapSucc b@@8 c))
)))
(assert (forall ((a@@10 T@U) (b@@9 T@U) (y@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType b@@9 y@@1)) (not (U_2_bool (MapType0Select BoxType boolType (|ISet#Difference| a@@10 b@@9) y@@1))))
 :qid |DafnyPreludebpl.860:15|
 :skolemid |785|
 :pattern ( (|ISet#Difference| a@@10 b@@9) (MapType0Select BoxType boolType b@@9 y@@1))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |643|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@6 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@2) ($Is T@@3 v@@6 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |654|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@6 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@6)) (<= (|MultiSet#Multiplicity| ms bx@@6) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |799|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@6))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |800|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|MultiSet#Card| s))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |801|
 :pattern ( (|MultiSet#Card| s))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@5) h@@4) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@7) ($IsAllocBox bx@@7 t0@@5 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |683|
 :pattern ( (|Set#IsMember| v@@7 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |684|
 :pattern ( ($IsAlloc SetType v@@7 (TSet t0@@5) h@@4))
)))
(assert (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |803|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |617|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |618|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TISet (TISet t@@5)) t@@5)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |619|
 :pattern ( (TISet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TISet t@@6)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |620|
 :pattern ( (TISet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@7)) t@@7)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |621|
 :pattern ( (TMultiSet t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TMultiSet t@@8)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |622|
 :pattern ( (TMultiSet t@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |641|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((a@@11 T@U) (b@@10 T@U) ) (! (= (|MultiSet#Intersection| a@@11 (|MultiSet#Intersection| a@@11 b@@10)) (|MultiSet#Intersection| a@@11 b@@10))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |817|
 :pattern ( (|MultiSet#Intersection| a@@11 (|MultiSet#Intersection| a@@11 b@@10)))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@0) 0) (= s@@0 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@0) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@0 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |804|
 :pattern ( (|MultiSet#Multiplicity| s@@0 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |805|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((a@@12 T@U) (b@@11 T@U) (o@@4 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Union| a@@12 b@@11) o@@4) (+ (|MultiSet#Multiplicity| a@@12 o@@4) (|MultiSet#Multiplicity| b@@11 o@@4)))
 :qid |DafnyPreludebpl.989:15|
 :skolemid |813|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Union| a@@12 b@@11) o@@4))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@0 t2 (MapType1Store t0@@6 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |8038|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((a@@13 Int) (b@@12 Int) ) (! (= (<= a@@13 b@@12) (= (|Math#min| a@@13 b@@12) a@@13))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |793|
 :pattern ( (|Math#min| a@@13 b@@12))
)))
(assert (forall ((a@@14 Int) (b@@13 Int) ) (! (= (<= b@@13 a@@14) (= (|Math#min| a@@14 b@@13) b@@13))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |794|
 :pattern ( (|Math#min| a@@14 b@@13))
)))
(assert (forall ((bx@@8 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@8 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@8)) bx@@8) ($Is SetType ($Unbox SetType bx@@8) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |648|
 :pattern ( ($IsBox bx@@8 (TSet t@@9)))
)))
(assert (forall ((bx@@9 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@9 (TISet t@@10)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@9)) bx@@9) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@9) (TISet t@@10))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |649|
 :pattern ( ($IsBox bx@@9 (TISet t@@10)))
)))
(assert (forall ((bx@@10 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@10 (TMultiSet t@@11)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@10)) bx@@10) ($Is MultiSetType ($Unbox MultiSetType bx@@10) (TMultiSet t@@11))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |650|
 :pattern ( ($IsBox bx@@10 (TMultiSet t@@11)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@15 T@U) (b@@14 T@U) (o@@5 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@14) o@@5) (|Math#clip| (- (|MultiSet#Multiplicity| a@@15 o@@5) (|MultiSet#Multiplicity| b@@14 o@@5))))
 :qid |DafnyPreludebpl.1017:15|
 :skolemid |818|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Difference| a@@15 b@@14) o@@5))
)))
(assert (forall ((a@@16 Int) ) (!  (=> (< a@@16 0) (= (|Math#clip| a@@16) 0))
 :qid |DafnyPreludebpl.897:15|
 :skolemid |797|
 :pattern ( (|Math#clip| a@@16))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |634|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |632|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MultiSetType v@@8 (TMultiSet t0@@7) h@@5) (forall ((bx@@11 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@8 bx@@11)) ($IsAllocBox bx@@11 t0@@7 h@@5))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |687|
 :pattern ( (|MultiSet#Multiplicity| v@@8 bx@@11))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |688|
 :pattern ( ($IsAlloc MultiSetType v@@8 (TMultiSet t0@@7) h@@5))
)))
(assert (forall ((h@@6 T@U) (v@@9 T@U) ) (! ($IsAlloc intType v@@9 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |677|
 :pattern ( ($IsAlloc intType v@@9 TInt h@@6))
)))
(assert (forall ((v@@10 T@U) ) (! ($Is intType v@@10 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |656|
 :pattern ( ($Is intType v@@10 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |s'#0@0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |s0#0| () T@U)
(declare-fun |t'#0@0| () T@U)
(declare-fun |t1#0| () T@U)
(declare-fun |t0#0| () T@U)
(declare-fun |mu'#0@0| () T@U)
(declare-fun |mu1#0| () T@U)
(declare-fun |mu0#0| () T@U)
(declare-fun |$rhs#0@0| () T@U)
(declare-fun |$rhs#1@0| () T@U)
(declare-fun |$rhs#2@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s'#0| () T@U)
(declare-fun |t'#0| () T@U)
(declare-fun |mu'#0| () T@U)
(declare-fun |$rhs#0| () T@U)
(declare-fun |$rhs#1| () T@U)
(declare-fun |$rhs#2| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$BinaryExpressions.__default.BadMinusSets1)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |s'#0@0| (|Set#Difference| |s1#0| |s0#0|)) (= |t'#0@0| (|ISet#Difference| |t1#0| |t0#0|))) (=> (and (and (= |mu'#0@0| (|MultiSet#Difference| |mu1#0| |mu0#0|)) ($Is SetType |$rhs#0@0| (TSet TInt))) (and ($Is (MapType0Type BoxType boolType) |$rhs#1@0| (TISet TInt)) ($Is MultiSetType |$rhs#2@0| (TMultiSet TInt)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) ($Is SetType |$rhs#0@0| (TSet Tclass._System.nat))) (=> ($Is SetType |$rhs#0@0| (TSet Tclass._System.nat)) (and (=> (= (ControlFlow 0 2) (- 0 3)) ($Is (MapType0Type BoxType boolType) |$rhs#1@0| (TISet Tclass._System.nat))) (=> ($Is (MapType0Type BoxType boolType) |$rhs#1@0| (TISet Tclass._System.nat)) (=> (= (ControlFlow 0 2) (- 0 1)) ($Is MultiSetType |$rhs#2@0| (TMultiSet Tclass._System.nat))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and (and (and ($Is SetType |s0#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |s0#0| (TSet Tclass._System.nat) $Heap)) (and ($Is (MapType0Type BoxType boolType) |t0#0| (TISet Tclass._System.nat)) ($IsAlloc (MapType0Type BoxType boolType) |t0#0| (TISet Tclass._System.nat) $Heap))) (and (and ($Is MultiSetType |mu0#0| (TMultiSet Tclass._System.nat)) ($IsAlloc MultiSetType |mu0#0| (TMultiSet Tclass._System.nat) $Heap)) (and ($Is SetType |s1#0| (TSet TInt)) ($IsAlloc SetType |s1#0| (TSet TInt) $Heap)))) (and (and (and ($Is (MapType0Type BoxType boolType) |t1#0| (TISet TInt)) ($IsAlloc (MapType0Type BoxType boolType) |t1#0| (TISet TInt) $Heap)) (and ($Is MultiSetType |mu1#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |mu1#0| (TMultiSet TInt) $Heap))) (and (and ($Is SetType |s'#0| (TSet TInt)) ($IsAlloc SetType |s'#0| (TSet TInt) $Heap)) true))) (and (and (and (and ($Is (MapType0Type BoxType boolType) |t'#0| (TISet TInt)) ($IsAlloc (MapType0Type BoxType boolType) |t'#0| (TISet TInt) $Heap)) true) (and (and ($Is MultiSetType |mu'#0| (TMultiSet TInt)) ($IsAlloc MultiSetType |mu'#0| (TMultiSet TInt) $Heap)) true)) (and (and (and ($Is SetType |$rhs#0| (TSet TInt)) true) (and ($Is (MapType0Type BoxType boolType) |$rhs#1| (TISet TInt)) true)) (and (and ($Is MultiSetType |$rhs#2| (TMultiSet TInt)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 2)))))) anon0_correct))))
PreconditionGeneratedEntry_correct)))
))
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
(assert (not (= (ControlFlow 0 2) (- 4))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
