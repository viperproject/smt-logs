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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Intersection| (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |ISet#Intersection| (T@U T@U) T@U)
(declare-fun |MultiSet#Intersection| (T@U T@U) T@U)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
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
(assert (distinct TagSet TagISet TagMultiSet alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |961|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |DafnyPreludebpl.889:15|
 :skolemid |795|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#Intersection| a@@0 b@@0) o)  (and (|Set#IsMember| a@@0 o) (|Set#IsMember| b@@0 o)))
 :qid |DafnyPreludebpl.724:15|
 :skolemid |753|
 :pattern ( (|Set#IsMember| (|Set#Intersection| a@@0 b@@0) o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |668|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Intersection| (|Set#Intersection| a@@1 b@@1) b@@1) (|Set#Intersection| a@@1 b@@1))
 :qid |DafnyPreludebpl.737:15|
 :skolemid |756|
 :pattern ( (|Set#Intersection| (|Set#Intersection| a@@1 b@@1) b@@1))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (! (= (|ISet#Intersection| (|ISet#Intersection| a@@2 b@@2) b@@2) (|ISet#Intersection| a@@2 b@@2))
 :qid |DafnyPreludebpl.851:15|
 :skolemid |782|
 :pattern ( (|ISet#Intersection| (|ISet#Intersection| a@@2 b@@2) b@@2))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (! (= (|MultiSet#Intersection| (|MultiSet#Intersection| a@@3 b@@3) b@@3) (|MultiSet#Intersection| a@@3 b@@3))
 :qid |DafnyPreludebpl.1005:15|
 :skolemid |816|
 :pattern ( (|MultiSet#Intersection| (|MultiSet#Intersection| a@@3 b@@3) b@@3))
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
(assert (forall ((a@@4 T@U) (b@@4 T@U) (o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@4) o@@1) (|Math#min| (|MultiSet#Multiplicity| a@@4 o@@1) (|MultiSet#Multiplicity| b@@4 o@@1)))
 :qid |DafnyPreludebpl.1000:15|
 :skolemid |815|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#Intersection| a@@4 b@@4) o@@1))
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
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |959|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) (o@@2 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|ISet#Intersection| a@@5 b@@5) o@@2))  (and (U_2_bool (MapType0Select BoxType boolType a@@5 o@@2)) (U_2_bool (MapType0Select BoxType boolType b@@5 o@@2))))
 :qid |DafnyPreludebpl.844:15|
 :skolemid |779|
 :pattern ( (MapType0Select BoxType boolType (|ISet#Intersection| a@@5 b@@5) o@@2))
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
(assert (forall ((a@@6 T@U) (b@@6 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@6) ($HeapSucc b@@6 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |733|
 :pattern ( ($HeapSucc a@@6 b@@6) ($HeapSucc b@@6 c))
)))
(assert (forall ((v@@6 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@6) t@@2) ($Is T@@3 v@@6 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |654|
 :pattern ( ($IsBox ($Box T@@3 v@@6) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@5 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@5)) (<= (|MultiSet#Multiplicity| ms bx@@5) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |799|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@5))
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
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |837|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((v@@7 T@U) (t0@@5 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@7 (TSet t0@@5) h@@4) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@7 bx@@6) ($IsAllocBox bx@@6 t0@@5 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |683|
 :pattern ( (|Set#IsMember| v@@7 bx@@6))
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
(assert (forall ((a@@7 T@U) (b@@7 T@U) ) (! (= (|Set#Intersection| a@@7 (|Set#Intersection| a@@7 b@@7)) (|Set#Intersection| a@@7 b@@7))
 :qid |DafnyPreludebpl.741:15|
 :skolemid |757|
 :pattern ( (|Set#Intersection| a@@7 (|Set#Intersection| a@@7 b@@7)))
)))
(assert (forall ((a@@8 T@U) (b@@8 T@U) ) (! (= (|ISet#Intersection| a@@8 (|ISet#Intersection| a@@8 b@@8)) (|ISet#Intersection| a@@8 b@@8))
 :qid |DafnyPreludebpl.853:15|
 :skolemid |783|
 :pattern ( (|ISet#Intersection| a@@8 (|ISet#Intersection| a@@8 b@@8)))
)))
(assert (forall ((a@@9 T@U) (b@@9 T@U) ) (! (= (|MultiSet#Intersection| a@@9 (|MultiSet#Intersection| a@@9 b@@9)) (|MultiSet#Intersection| a@@9 b@@9))
 :qid |DafnyPreludebpl.1010:15|
 :skolemid |817|
 :pattern ( (|MultiSet#Intersection| a@@9 (|MultiSet#Intersection| a@@9 b@@9)))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@6 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@6))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |804|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@6))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |805|
 :pattern ( (|MultiSet#Card| s@@1))
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
(assert (forall ((a@@10 Int) (b@@10 Int) ) (! (= (<= a@@10 b@@10) (= (|Math#min| a@@10 b@@10) a@@10))
 :qid |DafnyPreludebpl.885:15|
 :skolemid |793|
 :pattern ( (|Math#min| a@@10 b@@10))
)))
(assert (forall ((a@@11 Int) (b@@11 Int) ) (! (= (<= b@@11 a@@11) (= (|Math#min| a@@11 b@@11) b@@11))
 :qid |DafnyPreludebpl.887:15|
 :skolemid |794|
 :pattern ( (|Math#min| a@@11 b@@11))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |648|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((bx@@8 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@8 (TISet t@@10)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8)) bx@@8) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@8) (TISet t@@10))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |649|
 :pattern ( ($IsBox bx@@8 (TISet t@@10)))
)))
(assert (forall ((bx@@9 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@9 (TMultiSet t@@11)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@9)) bx@@9) ($Is MultiSetType ($Unbox MultiSetType bx@@9) (TMultiSet t@@11))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |650|
 :pattern ( ($IsBox bx@@9 (TMultiSet t@@11)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
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
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |838|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@8 T@U) (t0@@7 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MultiSetType v@@8 (TMultiSet t0@@7) h@@5) (forall ((bx@@10 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@8 bx@@10)) ($IsAllocBox bx@@10 t0@@7 h@@5))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |687|
 :pattern ( (|MultiSet#Multiplicity| v@@8 bx@@10))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |688|
 :pattern ( ($IsAlloc MultiSetType v@@8 (TMultiSet t0@@7) h@@5))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id Impl$$BinaryExpressions.__default.Times)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
