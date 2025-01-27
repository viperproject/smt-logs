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
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun |MultiSet#FromSeq| (T@U) T@U)
(declare-fun $IsGoodMultiSet (T@U) Bool)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun |MultiSet#Multiplicity| (T@U T@U) Int)
(declare-fun |MultiSet#FromSet| (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |MultiSet#UnionOne| (T@U T@U) T@U)
(declare-fun |MultiSet#Card| (T@U) Int)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |MultiSet#Equal| (T@U T@U) Bool)
(declare-fun |MultiSet#Empty| () T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert (forall ((a@@0 T@U) (x@@3 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@3) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@3) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (forall ((s T@U) ) (! ($IsGoodMultiSet (|MultiSet#FromSeq| s))
 :qid |DafnyPreludebpl.1083:15|
 :skolemid |214|
 :pattern ( (|MultiSet#FromSeq| s))
)))
(assert (forall ((s@@0 T@U) ) (!  (and (= (= (|Set#Card| s@@0) 0) (= s@@0 |Set#Empty|)) (=> (or (not (= (|Set#Card| s@@0) 0)) (not true)) (exists ((x@@5 T@U) ) (! (|Set#IsMember| s@@0 x@@5)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s@@0 x@@5))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((s@@1 T@U) (a@@2 T@U) ) (!  (and (= (= (|MultiSet#Multiplicity| (|MultiSet#FromSet| s@@1) a@@2) 0)  (not (|Set#IsMember| s@@1 a@@2))) (= (= (|MultiSet#Multiplicity| (|MultiSet#FromSet| s@@1) a@@2) 1) (|Set#IsMember| s@@1 a@@2)))
 :qid |DafnyPreludebpl.1069:15|
 :skolemid |212|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSet| s@@1) a@@2))
)))
(assert (forall ((x@@6 Int) ) (! (= (LitInt x@@6) x@@6)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@6))
)))
(assert (forall ((x@@7 T@U) (T T@T) ) (! (= (Lit T x@@7) x@@7)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@7))
)))
(assert (forall ((x@@8 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@8)) x@@8)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@8))
)))
(assert (forall ((a@@3 T@U) (x@@9 T@U) (y@@0 T@U) ) (!  (=> (or (not (= x@@9 y@@0)) (not true)) (= (|MultiSet#Multiplicity| a@@3 y@@0) (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@3 x@@9) y@@0)))
 :qid |DafnyPreludebpl.978:15|
 :skolemid |195|
 :pattern ( (|MultiSet#UnionOne| a@@3 x@@9) (|MultiSet#Multiplicity| a@@3 y@@0))
)))
(assert (forall ((a@@4 T@U) (x@@10 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#UnionOne| a@@4 x@@10)) (+ (|MultiSet#Card| a@@4) 1))
 :qid |DafnyPreludebpl.983:15|
 :skolemid |196|
 :pattern ( (|MultiSet#Card| (|MultiSet#UnionOne| a@@4 x@@10)))
)))
(assert (forall ((s@@2 T@U) (v T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@2 v)) (+ 1 (|Seq#Length| s@@2)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@2 v))
)))
(assert (forall ((s@@3 T@U) (i Int) (v@@0 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@3)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@0) i) v@@0)) (=> (or (not (= i (|Seq#Length| s@@3))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@3 v@@0) i) (|Seq#Index| s@@3 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@3 v@@0) i))
)))
(assert (forall ((s@@4 T@U) (x@@11 T@U) ) (! (= (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@4))) (= x@@11 (|Seq#Index| s@@4 i@@0)))
 :qid |DafnyPreludebpl.1108:11|
 :skolemid |219|
 :pattern ( (|Seq#Index| s@@4 i@@0))
)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@4) x@@11)))
 :qid |DafnyPreludebpl.1106:15|
 :skolemid |220|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#FromSeq| s@@4) x@@11))
)))
(assert (forall ((a@@5 T@U) (b T@U) ) (!  (=> (|MultiSet#Equal| a@@5 b) (= a@@5 b))
 :qid |DafnyPreludebpl.1054:15|
 :skolemid |209|
 :pattern ( (|MultiSet#Equal| a@@5 b))
)))
(assert (forall ((ms T@U) ) (! (= ($IsGoodMultiSet ms) (forall ((bx T@U) ) (!  (and (<= 0 (|MultiSet#Multiplicity| ms bx)) (<= (|MultiSet#Multiplicity| ms bx) (|MultiSet#Card| ms)))
 :qid |DafnyPreludebpl.921:19|
 :skolemid |183|
 :pattern ( (|MultiSet#Multiplicity| ms bx))
)))
 :qid |DafnyPreludebpl.918:15|
 :skolemid |184|
 :pattern ( ($IsGoodMultiSet ms))
)))
(assert (forall ((s@@5 T@U) ) (! (<= 0 (|Set#Card| s@@5))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@5))
)))
(assert (forall ((s@@6 T@U) ) (! (<= 0 (|MultiSet#Card| s@@6))
 :qid |DafnyPreludebpl.928:15|
 :skolemid |185|
 :pattern ( (|MultiSet#Card| s@@6))
)))
(assert (forall ((s@@7 T@U) ) (! (<= 0 (|Seq#Length| s@@7))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@7))
)))
(assert (forall ((o@@1 T@U) ) (! (= (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1) 0)
 :qid |DafnyPreludebpl.938:15|
 :skolemid |187|
 :pattern ( (|MultiSet#Multiplicity| |MultiSet#Empty| o@@1))
)))
(assert (forall ((a@@6 T@U) (x@@12 T@U) ) (! (= (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@6 x@@12) x@@12) (+ (|MultiSet#Multiplicity| a@@6 x@@12) 1))
 :qid |DafnyPreludebpl.968:15|
 :skolemid |193|
 :pattern ( (|MultiSet#UnionOne| a@@6 x@@12))
)))
(assert (forall ((x@@13 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@13)) x@@13)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@13))
)))
(assert (forall ((s@@8 T@U) ) (!  (and (= (= (|MultiSet#Card| s@@8) 0) (= s@@8 |MultiSet#Empty|)) (=> (or (not (= (|MultiSet#Card| s@@8) 0)) (not true)) (exists ((x@@14 T@U) ) (! (< 0 (|MultiSet#Multiplicity| s@@8 x@@14))
 :qid |DafnyPreludebpl.946:20|
 :skolemid |188|
 :pattern ( (|MultiSet#Multiplicity| s@@8 x@@14))
))))
 :qid |DafnyPreludebpl.942:15|
 :skolemid |189|
 :pattern ( (|MultiSet#Card| s@@8))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 3)) (= (Ctor FieldType) 4)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |656|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@9 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@9 val@@4)) s@@9) (= (|Seq#Build_inv1| (|Seq#Build| s@@9 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@9 val@@4))
)))
(assert (forall ((s@@10 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSet| s@@10)) (|Set#Card| s@@10))
 :qid |DafnyPreludebpl.1074:15|
 :skolemid |213|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSet| s@@10)))
)))
(assert (forall ((s@@11 T@U) ) (! (= (|MultiSet#Card| (|MultiSet#FromSeq| s@@11)) (|Seq#Length| s@@11))
 :qid |DafnyPreludebpl.1085:15|
 :skolemid |215|
 :pattern ( (|MultiSet#Card| (|MultiSet#FromSeq| s@@11)))
)))
(assert (= (|MultiSet#FromSeq| |Seq#Empty|) |MultiSet#Empty|))
(assert (forall ((a@@7 T@U) (x@@15 T@U) ) (!  (=> (|Set#IsMember| a@@7 x@@15) (= (|Set#Card| (|Set#UnionOne| a@@7 x@@15)) (|Set#Card| a@@7)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@7 x@@15)))
)))
(assert (forall ((s@@12 T@U) (v@@1 T@U) ) (! (= (|MultiSet#FromSeq| (|Seq#Build| s@@12 v@@1)) (|MultiSet#UnionOne| (|MultiSet#FromSeq| s@@12) v@@1))
 :qid |DafnyPreludebpl.1089:15|
 :skolemid |216|
 :pattern ( (|MultiSet#FromSeq| (|Seq#Build| s@@12 v@@1)))
)))
(assert (forall ((x@@16 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@16))) (Lit BoxType ($Box intType (int_2_U x@@16))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@16))))
)))
(assert (forall ((x@@17 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@17)) (Lit BoxType ($Box T@@2 x@@17)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@17)))
)))
(assert (forall ((a@@8 T@U) (x@@18 T@U) (y@@1 T@U) ) (!  (=> (< 0 (|MultiSet#Multiplicity| a@@8 y@@1)) (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@8 x@@18) y@@1)))
 :qid |DafnyPreludebpl.973:15|
 :skolemid |194|
 :pattern ( (|MultiSet#UnionOne| a@@8 x@@18) (|MultiSet#Multiplicity| a@@8 y@@1))
)))
(assert (forall ((s@@13 T@U) ) (!  (=> (= (|Seq#Length| s@@13) 0) (= s@@13 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@13))
)))
(assert (forall ((a@@9 T@U) (x@@19 T@U) (o@@2 T@U) ) (! (= (< 0 (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@19) o@@2))  (or (= o@@2 x@@19) (< 0 (|MultiSet#Multiplicity| a@@9 o@@2))))
 :qid |DafnyPreludebpl.963:15|
 :skolemid |192|
 :pattern ( (|MultiSet#Multiplicity| (|MultiSet#UnionOne| a@@9 x@@19) o@@2))
)))
(assert (forall ((a@@10 T@U) (b@@0 T@U) ) (! (= (|MultiSet#Equal| a@@10 b@@0) (forall ((o@@3 T@U) ) (! (= (|MultiSet#Multiplicity| a@@10 o@@3) (|MultiSet#Multiplicity| b@@0 o@@3))
 :qid |DafnyPreludebpl.1050:19|
 :skolemid |207|
 :pattern ( (|MultiSet#Multiplicity| a@@10 o@@3))
 :pattern ( (|MultiSet#Multiplicity| b@@0 o@@3))
)))
 :qid |DafnyPreludebpl.1047:15|
 :skolemid |208|
 :pattern ( (|MultiSet#Equal| a@@10 b@@0))
)))
(assert (forall ((a@@11 T@U) (x@@20 T@U) ) (!  (=> (not (|Set#IsMember| a@@11 x@@20)) (= (|Set#Card| (|Set#UnionOne| a@@11 x@@20)) (+ (|Set#Card| a@@11) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@11 x@@20)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun alloc () T@U)
(declare-fun SetType () T@T)
(declare-fun SeqType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SetType) 7) (= (Ctor SeqType) 8)))
(set-info :boogie-vc-id Impl$$_module.__default.test5)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|MultiSet#Equal| (|MultiSet#FromSet| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))))) (=> (|MultiSet#Equal| (|MultiSet#FromSet| (Lit SetType (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))) (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1))))) (=> (= (ControlFlow 0 2) (- 0 1)) (|MultiSet#Equal| (|MultiSet#FromSeq| (Lit SeqType (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))) (|MultiSet#UnionOne| (|MultiSet#UnionOne| |MultiSet#Empty| ($Box intType (int_2_U (LitInt 1)))) ($Box intType (int_2_U (LitInt 1)))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct)))
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
