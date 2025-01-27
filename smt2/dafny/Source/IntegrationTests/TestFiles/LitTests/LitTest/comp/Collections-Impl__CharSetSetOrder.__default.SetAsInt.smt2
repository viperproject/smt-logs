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
(declare-fun TChar () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagSet () T@U)
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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun |Set#Difference| (T@U T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun CharSetSetOrder.__default.Pow2 (T@U Int) Int)
(declare-fun |CharSetSetOrder.__default.Pow2#canCall| (Int) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun |Set#Empty| () T@U)
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
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun Mul (Int Int) Int)
(declare-fun charType () T@T)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
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
(assert (distinct TChar TagChar TagSet alloc Tagclass._System.nat tytagFamily$nat)
)
(assert (= (Tag TChar) TagChar))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |1100|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |1101|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1320|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |1099|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((a@@2 T@U) (b T@U) (y@@0 T@U) ) (!  (=> (|Set#IsMember| b y@@0) (not (|Set#IsMember| (|Set#Difference| a@@2 b) y@@0)))
 :qid |DafnyPreludebpl.757:15|
 :skolemid |1115|
 :pattern ( (|Set#Difference| a@@2 b) (|Set#IsMember| b y@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly T@U) (|i#0| Int) ) (!  (=> (or (|CharSetSetOrder.__default.Pow2#canCall| |i#0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0|))) (<= (LitInt 0) (CharSetSetOrder.__default.Pow2 $ly |i#0|)))
 :qid |Collectionsdfy.63:12|
 :skolemid |1456|
 :pattern ( (CharSetSetOrder.__default.Pow2 $ly |i#0|))
))))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1096|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((a@@3 T@U) (b@@0 T@U) (o@@1 T@U) ) (! (= (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1)  (and (|Set#IsMember| a@@3 o@@1) (not (|Set#IsMember| b@@0 o@@1))))
 :qid |DafnyPreludebpl.752:15|
 :skolemid |1114|
 :pattern ( (|Set#IsMember| (|Set#Difference| a@@3 b@@0) o@@1))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@2 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@2) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1089|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@2) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1090|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |988|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |986|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((a@@4 T@U) (b@@1 T@U) ) (! (= (|Set#Subset| a@@4 b@@1) (forall ((o@@3 T@U) ) (!  (=> (|Set#IsMember| a@@4 o@@3) (|Set#IsMember| b@@1 o@@3))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |1117|
 :pattern ( (|Set#IsMember| a@@4 o@@3))
 :pattern ( (|Set#IsMember| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |1118|
 :pattern ( (|Set#Subset| a@@4 b@@1))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |997|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1017|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1018|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1319|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1010|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1082|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1081|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1318|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((a@@5 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@5 b@@2) (= a@@5 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1121|
 :pattern ( (|Set#Equal| a@@5 b@@2))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|i#0@@0| Int) ) (!  (=> (or (|CharSetSetOrder.__default.Pow2#canCall| |i#0@@0|) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0@@0|))) (and (=> (or (not (= |i#0@@0| (LitInt 0))) (not true)) (|CharSetSetOrder.__default.Pow2#canCall| (- |i#0@@0| 1))) (= (CharSetSetOrder.__default.Pow2 ($LS $ly@@0) |i#0@@0|) (ite (= |i#0@@0| (LitInt 0)) 1 (Mul (LitInt 2) (CharSetSetOrder.__default.Pow2 $ly@@0 (- |i#0@@0| 1)))))))
 :qid |Collectionsdfy.63:12|
 :skolemid |1458|
 :pattern ( (CharSetSetOrder.__default.Pow2 ($LS $ly@@0) |i#0@@0|))
))))
(assert (forall ((a@@6 T@U) (b@@3 T@U) (c T@U) ) (!  (=> (or (not (= a@@6 c)) (not true)) (=> (and ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c)) ($HeapSucc a@@6 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1088|
 :pattern ( ($HeapSucc a@@6 b@@3) ($HeapSucc b@@3 c))
)))
(assert (= (Ctor charType) 8))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TChar) (and (= ($Box charType ($Unbox charType bx@@2)) bx@@2) ($Is charType ($Unbox charType bx@@2) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |1001|
 :pattern ( ($IsBox bx@@2 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1009|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1038|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1039|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |972|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |973|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |996|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall (($ly@@1 T@U) (|i#0@@1| Int) ) (! (= (CharSetSetOrder.__default.Pow2 ($LS $ly@@1) |i#0@@1|) (CharSetSetOrder.__default.Pow2 $ly@@1 |i#0@@1|))
 :qid |Collectionsdfy.63:12|
 :skolemid |1454|
 :pattern ( (CharSetSetOrder.__default.Pow2 ($LS $ly@@1) |i#0@@1|))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |992|
 :pattern ( (|char#FromInt| n))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5156|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((x@@9 Int) (y@@1 Int) ) (! (= (Mul x@@9 y@@1) (* x@@9 y@@1))
 :qid |DafnyPreludebpl.1647:14|
 :skolemid |1309|
 :pattern ( (Mul x@@9 y@@1))
)))
(assert (forall ((bx@@4 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1003|
 :pattern ( ($IsBox bx@@4 (TSet t@@5)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |993|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (forall ((a@@7 T@U) (b@@4 T@U) ) (! (= (|Set#Equal| a@@7 b@@4) (forall ((o@@4 T@U) ) (! (= (|Set#IsMember| a@@7 o@@4) (|Set#IsMember| b@@4 o@@4))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1119|
 :pattern ( (|Set#IsMember| a@@7 o@@4))
 :pattern ( (|Set#IsMember| b@@4 o@@4))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1120|
 :pattern ( (|Set#Equal| a@@7 b@@4))
)))
(assert (forall ((x@@10 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@10))) (Lit BoxType ($Box intType (int_2_U x@@10))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |989|
 :pattern ( ($Box intType (int_2_U (LitInt x@@10))))
)))
(assert (forall ((x@@11 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@11)) (Lit BoxType ($Box T@@5 x@@11)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |987|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@11)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|i#0@@2| Int) ) (!  (=> (or (|CharSetSetOrder.__default.Pow2#canCall| (LitInt |i#0@@2|)) (and (< 0 $FunctionContextHeight) (<= (LitInt 0) |i#0@@2|))) (and (=> (or (not (= (LitInt |i#0@@2|) (LitInt 0))) (not true)) (|CharSetSetOrder.__default.Pow2#canCall| (LitInt (- |i#0@@2| 1)))) (= (CharSetSetOrder.__default.Pow2 ($LS $ly@@2) (LitInt |i#0@@2|)) (ite (= (LitInt |i#0@@2|) (LitInt 0)) 1 (Mul (LitInt 2) (LitInt (CharSetSetOrder.__default.Pow2 ($LS $ly@@2) (LitInt (- |i#0@@2| 1)))))))))
 :qid |Collectionsdfy.63:12|
 :weight 3
 :skolemid |1459|
 :pattern ( (CharSetSetOrder.__default.Pow2 ($LS $ly@@2) (LitInt |i#0@@2|)))
))))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc charType v@@4 TChar h@@4)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |1035|
 :pattern ( ($IsAlloc charType v@@4 TChar h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |1014|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |ss#0@0| () T@U)
(declare-fun |i#0_0@1| () T@U)
(declare-fun |ss#0@1| () T@U)
(declare-fun |newtype$check#0_0@1| () Int)
(declare-fun |newtype$check#0_1@1| () Int)
(declare-fun |##i#0_0@1| () Int)
(declare-fun $Heap () T@U)
(declare-fun |acc#0@2| () Int)
(declare-fun |acc#0@1| () Int)
(declare-fun $LZ () T@U)
(declare-fun |i#0_1@1| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#0_0@0| () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |acc#0@0| () Int)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |ss#0| () T@U)
(declare-fun |i#0_0| () T@U)
(set-info :boogie-vc-id Impl$$CharSetSetOrder.__default.SetAsInt)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon7_correct  (and (=> (= (ControlFlow 0 5) (- 0 8)) (exists ((|$as#i0_0#0_0| T@U) ) (!  (and ($Is charType |$as#i0_0#0_0| TChar) (|Set#IsMember| |ss#0@0| ($Box charType |$as#i0_0#0_0|)))
 :qid |Collectionsdfy.71:11|
 :skolemid |1466|
))) (=> (exists ((|$as#i0_0#0_0@@0| T@U) ) (!  (and ($Is charType |$as#i0_0#0_0@@0| TChar) (|Set#IsMember| |ss#0@0| ($Box charType |$as#i0_0#0_0@@0|)))
 :qid |Collectionsdfy.71:11|
 :skolemid |1466|
)) (=> (and (and ($Is charType |i#0_0@1| TChar) (|Set#IsMember| |ss#0@0| ($Box charType |i#0_0@1|))) (and (= |ss#0@1| (|Set#Difference| |ss#0@0| (|Set#UnionOne| |Set#Empty| ($Box charType |i#0_0@1|)))) (= |newtype$check#0_0@1| (|char#ToInt| |i#0_0@1|)))) (and (=> (= (ControlFlow 0 5) (- 0 7)) (<= (LitInt 0) |newtype$check#0_0@1|)) (=> (<= (LitInt 0) |newtype$check#0_0@1|) (=> (= |newtype$check#0_1@1| (|char#ToInt| |i#0_0@1|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= (LitInt 0) |newtype$check#0_1@1|)) (=> (<= (LitInt 0) |newtype$check#0_1@1|) (=> (and (= |##i#0_0@1| (|char#ToInt| |i#0_0@1|)) ($IsAlloc intType (int_2_U |##i#0_0@1|) Tclass._System.nat $Heap)) (=> (and (and (|CharSetSetOrder.__default.Pow2#canCall| (|char#ToInt| |i#0_0@1|)) (|CharSetSetOrder.__default.Pow2#canCall| (|char#ToInt| |i#0_0@1|))) (and (= |acc#0@2| (+ |acc#0@1| (CharSetSetOrder.__default.Pow2 ($LS $LZ) (|char#ToInt| |i#0_0@1|)))) (= (ControlFlow 0 5) (- 0 4)))) (and (|Set#Subset| |ss#0@1| |ss#0@0|) (not (|Set#Subset| |ss#0@0| |ss#0@1|)))))))))))))))
(let ((anon12_Else_correct  (=> (and (not ($Is charType |i#0_1@1| TChar)) (= (ControlFlow 0 10) 5)) anon7_correct)))
(let ((anon12_Then_correct  (=> (and ($Is charType |i#0_1@1| TChar) (= (ControlFlow 0 9) 5)) anon7_correct)))
(let ((anon11_Else_correct  (=> (not (|Set#Equal| |ss#0@0| |Set#Empty|)) (and (=> (= (ControlFlow 0 11) 9) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 12) 3) anon11_Then_correct) (=> (= (ControlFlow 0 12) 11) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_LoopBody_correct  (and (=> (= (ControlFlow 0 13) 2) anon10_Then_correct) (=> (= (ControlFlow 0 13) 12) anon10_Else_correct))))
(let ((anon9_LoopDone_correct true))
(let ((anon9_LoopHead_correct  (=> ($Is charType |i#0_0@0| TChar) (=> (and (and (and ($Is SetType |ss#0@0| (TSet TChar)) ($IsAlloc SetType |ss#0@0| (TSet TChar) $Heap)) (not false)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |Collectionsdfy.70:5|
 :skolemid |1464|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |Collectionsdfy.70:5|
 :skolemid |1465|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (|Set#Subset| |ss#0@0| |s#0|)))) (and (=> (= (ControlFlow 0 14) 1) anon9_LoopDone_correct) (=> (= (ControlFlow 0 14) 13) anon9_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |acc#0@0| (LitInt 0)) (= (ControlFlow 0 15) 14)) anon9_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |s#0| (TSet TChar)) ($IsAlloc SetType |s#0| (TSet TChar) $Heap))) (=> (and (and (and ($Is SetType |ss#0| (TSet TChar)) ($IsAlloc SetType |ss#0| (TSet TChar) $Heap)) true) (and (and ($Is charType |i#0_0| TChar) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 15)))) anon0_correct))))
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
