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
(declare-fun TagBool () T@U)
(declare-fun TagMultiSet () T@U)
(declare-fun alloc () T@U)
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
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#UpdateMultiplicity| (T@U T@U Int) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MultiSetType () T@T)
(declare-fun TMultiSet (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
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
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun Inv0_TMultiSet (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TBool TagBool TagMultiSet alloc)
)
(assert (= (Tag TBool) TagBool))
(assert (forall ((m T@U) (o T@U) (n Int) (p T@U) ) (!  (=> (<= 0 n) (and (=> (= o p) (= (|MultiSet#Multiplicity| (|MultiSet#UpdateMultiplicity| m o n) p) n)) (=> (or (not (= o p)) (not true)) (= (|MultiSet#Multiplicity| (|MultiSet#UpdateMultiplicity| m o n) p) (|MultiSet#Multiplicity| m p)))))
 :qid |DafnyPreludebpl.908:15|
 :skolemid |182|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UpdateMultiplicity| m o n) p))
)))
(assert (= (Ctor MultiSetType) 3))
(assert (forall ((v T@U) (t0 T@U) ) (!  (=> ($Is MultiSetType v (TMultiSet t0)) ($IsGoodMultiSet v))
 :qid |DafnyPreludebpl.250:15|
 :skolemid |52|
 :pattern ( ($Is MultiSetType v (TMultiSet t0)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m@@0 T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m@@0 x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@1 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@1 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@1 y0)))
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
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
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
(assert (forall ((a T@U) (x@@5 T@U) (y T@U) ) (!  (=> (or (not (= x@@5 y)) (not true)) (= (|MultiSet#Multiplicity| a y) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a x@@5) y)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a x@@5) (|MultiSet#Multiplicity| a y))
)))
(assert (forall ((a@@0 T@U) (x@@6 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)) (+ (|MultiSet#Card| a@@0) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@0 x@@6)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((a@@1 T@U) (b T@U) ) (!  (=> (|MultiSet#Equal| a@@1 b) (= a@@1 b))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@1 b))
)))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) ) (! (= ($Is MultiSetType v@@2 (TMultiSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@2 bx@@0)) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.248:11|
 :skolemid |50|
 :pattern ( (|MultiSet#Multiplicity| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.246:15|
 :skolemid |51|
 :pattern ( ($Is MultiSetType v@@2 (TMultiSet t0@@1)))
)))
(assert (forall ((s T@U) (x@@7 T@U) (n@@0 Int) ) (!  (=> (<= 0 n@@0) (= (|MultiSet#Card| (|MultiSet#UpdateMultiplicity| s x@@7 n@@0)) (+ (- (|MultiSet#Card| s) (|MultiSet#Multiplicity| s x@@7)) n@@0)))
 :qid |DafnyPreludebpl.930:15|
 :skolemid |186|
 :pattern ( (|MultiSet#Card| (|MultiSet#UpdateMultiplicity| s x@@7 n@@0)))
)))
(assert (forall ((a@@2 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TBool) (and (= ($Box boolType ($Unbox boolType bx@@1)) bx@@1) ($Is boolType ($Unbox boolType bx@@1) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |29|
 :pattern ( ($IsBox bx@@1 TBool))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx@@2 T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx@@2)) (<= (|MultiSet#Multiplicity| ms bx@@2) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx@@2))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|MultiSet#Card| s@@0))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@0))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((a@@3 T@U) (x@@8 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@3 x@@8) x@@8) (+ (|MultiSet#Multiplicity| a@@3 x@@8) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@3 x@@8))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TMultiSet (TMultiSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.49:15|
 :skolemid |5|
 :pattern ( (TMultiSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TMultiSet t@@4)) TagMultiSet)
 :qid |DafnyPreludebpl.50:15|
 :skolemid |6|
 :pattern ( (TMultiSet t@@4))
)))
(assert (forall ((x@@9 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@9)) x@@9)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@9))
)))
(assert (forall ((s@@1 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@1) 0) (= s@@1 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@1) 0)) (not true)) (exists ((x@@10 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@1 x@@10))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@1 x@@10))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@1))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |485|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((bx@@3 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@3 (TMultiSet t@@5)) (and (= ($Box MultiSetType ($Unbox MultiSetType bx@@3)) bx@@3) ($Is MultiSetType ($Unbox MultiSetType bx@@3) (TMultiSet t@@5))))
 :qid |DafnyPreludebpl.201:15|
 :skolemid |34|
 :pattern ( ($IsBox bx@@3 (TMultiSet t@@5)))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((a@@4 T@U) (x@@13 T@U) (y@@0 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@4 y@@0)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@4 x@@13) y@@0)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@4 x@@13) (|MultiSet#Multiplicity| a@@4 y@@0))
)))
(assert (forall ((a@@5 T@U) (x@@14 T@U) (o@@2 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@14) o@@2))  (or (= o@@2 x@@14) (< 0 (|MultiSet#Multiplicity| a@@5 o@@2))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@5 x@@14) o@@2))
)))
(assert (forall ((a@@6 T@U) (b@@1 T@U) ) (! (= (|MultiSet#Equal| a@@6 b@@1) (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| a@@6 o@@3) (|MultiSet#Multiplicity| b@@1 o@@3))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@6 o@@3))
 :pattern ( (|MultiSet#Multiplicity| b@@1 o@@3))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@6 b@@1))
)))
(assert (forall ((a@@7 T@U) (b@@2 T@U) ) (! (= (|MultiSet#Subset| a@@7 b@@2) (forall ((o@@4 T@U) ) (! (<= (|MultiSet#Multiplicity| a@@7 o@@4) (|MultiSet#Multiplicity| b@@2 o@@4))
 :qid |DafnyPreludebpl.1041:19|
 :skolemid |205|
 :pattern ( (|MultiSet#Multiplicity| a@@7 o@@4))
 :pattern ( (|MultiSet#Multiplicity| b@@2 o@@4))
)))
 :qid |DafnyPreludebpl.1038:15|
 :skolemid |206|
 :pattern ( (|MultiSet#Subset| a@@7 b@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) (h@@3 T@U) ) (! (= ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@3 h@@3))
 :qid |DafnyPreludebpl.307:11|
 :skolemid |71|
 :pattern ( (|MultiSet#Multiplicity| v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.305:15|
 :skolemid |72|
 :pattern ( ($IsAlloc MultiSetType v@@4 (TMultiSet t0@@3) h@@3))
)))
(assert (forall ((h@@4 T@U) (v@@5 T@U) ) (! ($IsAlloc boolType v@@5 TBool h@@4)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |63|
 :pattern ( ($IsAlloc boolType v@@5 TBool h@@4))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |42|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |s#0@1| () T@U)
(declare-fun |x#0_0@1| () Bool)
(declare-fun |s#0@2| () T@U)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun $Heap () T@U)
(declare-fun null () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |s#0@0| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon12_Else_correct true))
(let ((anon12_Then_correct  (and (=> (= (ControlFlow 0 5) (- 0 7)) (or (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (Lit boolType (bool_2_U true)))) 0)) (or (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (Lit boolType (bool_2_U false)))) 0)) (exists ((|$as#x0_0#0_0| T@U) ) (! (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType |$as#x0_0#0_0|)) 0)
 :qid |githubissue3874dfy.7:13|
 :skolemid |484|
))))) (=> (or (and ($Is boolType (Lit boolType (bool_2_U true)) TBool) (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (Lit boolType (bool_2_U true)))) 0)) (or (and ($Is boolType (Lit boolType (bool_2_U false)) TBool) (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (Lit boolType (bool_2_U false)))) 0)) (exists ((|$as#x0_0#0_0@@0| Bool) ) (! (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (bool_2_U |$as#x0_0#0_0@@0|))) 0)
 :qid |githubissue3874dfy.7:13|
 :skolemid |484|
)))) (=> (> (|MultiSet#Multiplicity| |s#0@1| ($Box boolType (bool_2_U |x#0_0@1|))) 0) (and (=> (= (ControlFlow 0 5) (- 0 6)) (<= 0 (LitInt 0))) (=> (<= 0 (LitInt 0)) (=> (and (= |s#0@2| (|MultiSet#UpdateMultiplicity| |s#0@1| ($Box boolType (bool_2_U |x#0_0@1|)) (LitInt 0))) (= (ControlFlow 0 5) (- 0 4))) (and (|MultiSet#Subset| |s#0@2| |s#0@1|) (not (|MultiSet#Equal| |s#0@2| |s#0@1|)))))))))))
(let ((anon11_Else_correct  (=> (not (|MultiSet#Equal| |s#0@1| |MultiSet#Empty|)) (and (=> (= (ControlFlow 0 9) 5) anon12_Then_correct) (=> (= (ControlFlow 0 9) 8) anon12_Else_correct)))))
(let ((anon11_Then_correct true))
(let ((anon10_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 10) 3) anon11_Then_correct) (=> (= (ControlFlow 0 10) 9) anon11_Else_correct)))))
(let ((anon10_Then_correct true))
(let ((anon9_LoopBody_correct  (and (=> (= (ControlFlow 0 11) 2) anon10_Then_correct) (=> (= (ControlFlow 0 11) 10) anon10_Else_correct))))
(let ((anon9_LoopDone_correct true))
(let ((anon9_LoopHead_correct  (=> (and (and (and ($Is MultiSetType |s#0@1| (TMultiSet TBool)) ($IsAlloc MultiSetType |s#0@1| (TMultiSet TBool) $Heap)) (not false)) (and (and (forall (($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0)))
 :qid |githubissue3874dfy.6:5|
 :skolemid |482|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@0))
)) ($HeapSucc $Heap $Heap)) (and (forall (($o@@1 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@1 $f@@0))))
 :qid |githubissue3874dfy.6:5|
 :skolemid |483|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@1) $f@@0))
)) (|MultiSet#Subset| |s#0@1| |s#0@0|)))) (and (=> (= (ControlFlow 0 12) 1) anon9_LoopDone_correct) (=> (= (ControlFlow 0 12) 11) anon9_LoopBody_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |s#0@0| (Lit MultiSetType (|MultiSet#UnionOne| |MultiSet#Empty| ($Box boolType (Lit boolType (bool_2_U true)))))) (= (ControlFlow 0 13) 12)) anon9_LoopHead_correct))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is MultiSetType |s#0| (TMultiSet TBool)) ($IsAlloc MultiSetType |s#0| (TMultiSet TBool) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 14) 13))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
