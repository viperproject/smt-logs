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
(declare-fun TInt () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass.Utils.Option () T@U)
(declare-fun Tagclass.VarUnchanged.MState () T@U)
(declare-fun |##VarUnchanged.MState.MState| () T@U)
(declare-fun |##Utils.Option.Some| () T@U)
(declare-fun |##Utils.Option.None| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Option () T@U)
(declare-fun tytagFamily$MState () T@U)
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
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#Utils.Option.None| () T@U)
(declare-fun VarUnchanged.MState.MState_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.VarUnchanged.MState () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass.Utils.Option (T@U) T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Utils.Option.Some_q (T@U) Bool)
(declare-fun Utils.Option.None_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#VarUnchanged.MState.MState| (T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |#Utils.Option.Some| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun VarUnchanged.MState.x (T@U) T@U)
(declare-fun VarUnchanged.MState.ctx (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.Utils.Option_0 (T@U) T@U)
(declare-fun Utils.Option.value (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Rank| (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass.Utils.Option Tagclass.VarUnchanged.MState |##VarUnchanged.MState.MState| |##Utils.Option.Some| |##Utils.Option.None| |tytagFamily$_tuple#2| tytagFamily$Option tytagFamily$MState)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#Utils.Option.None|) |##Utils.Option.None|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d T@U) ) (!  (=> ($Is DatatypeTypeType d Tclass.VarUnchanged.MState) (VarUnchanged.MState.MState_q d))
 :qid |unknown.0:0|
 :skolemid |953|
 :pattern ( (VarUnchanged.MState.MState_q d) ($Is DatatypeTypeType d Tclass.VarUnchanged.MState))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((Utils.Option$T T@U) ) (! ($Is DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T))
 :qid |unknown.0:0|
 :skolemid |1021|
 :pattern ( ($Is DatatypeTypeType |#Utils.Option.None| (Tclass.Utils.Option Utils.Option$T)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (VarUnchanged.MState.MState_q d@@0) (= (DatatypeCtorId d@@0) |##VarUnchanged.MState.MState|))
 :qid |unknown.0:0|
 :skolemid |939|
 :pattern ( (VarUnchanged.MState.MState_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (Utils.Option.Some_q d@@1) (= (DatatypeCtorId d@@1) |##Utils.Option.Some|))
 :qid |unknown.0:0|
 :skolemid |1010|
 :pattern ( (Utils.Option.Some_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (Utils.Option.None_q d@@2) (= (DatatypeCtorId d@@2) |##Utils.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1019|
 :pattern ( (Utils.Option.None_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (VarUnchanged.MState.MState_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#VarUnchanged.MState.MState| |a#1#0#0| |a#1#1#0|))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |940|
)))
 :qid |unknown.0:0|
 :skolemid |941|
 :pattern ( (VarUnchanged.MState.MState_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (Utils.Option.None_q d@@4) (= d@@4 |#Utils.Option.None|))
 :qid |unknown.0:0|
 :skolemid |1020|
 :pattern ( (Utils.Option.None_q d@@4))
)))
(assert (= (Ctor SetType) 4))
(assert (forall ((v T@U) (t0 T@U) ) (! (= ($Is SetType v (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0)))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (Utils.Option.Some_q d@@5) (exists ((|a#1#0#0@@0| T@U) ) (! (= d@@5 (|#Utils.Option.Some| |a#1#0#0@@0|))
 :qid |Utilsdfy.42:29|
 :skolemid |1011|
)))
 :qid |unknown.0:0|
 :skolemid |1012|
 :pattern ( (Utils.Option.Some_q d@@5))
)))
(assert (forall ((Utils.Option$T@@0 T@U) ) (!  (and (= (Tag (Tclass.Utils.Option Utils.Option$T@@0)) Tagclass.Utils.Option) (= (TagFamily (Tclass.Utils.Option Utils.Option$T@@0)) tytagFamily$Option))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (Tclass.Utils.Option Utils.Option$T@@0))
)))
(assert  (and (and (forall ((t0@@0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@0 t1 (MapType0Store t0@@0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) (bx@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#8#1#0|) bx@@0) (< (DtRank ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |a#8#1#0|) bx@@0))) (DtRank (|#VarUnchanged.MState.MState| |a#8#0#0| |a#8#1#0|))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |950|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#8#1#0|) bx@@0) (|#VarUnchanged.MState.MState| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.VarUnchanged.MState) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass.VarUnchanged.MState)))
 :qid |unknown.0:0|
 :skolemid |788|
 :pattern ( ($IsBox bx@@1 Tclass.VarUnchanged.MState))
)))
(assert (= (Ctor MapType) 6))
(assert (forall ((|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#VarUnchanged.MState.MState| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass.VarUnchanged.MState)  (and ($Is DatatypeTypeType |a#2#0#0@@0| (Tclass.Utils.Option (TSeq TChar))) ($Is MapType |a#2#1#0@@0| (TMap (TSeq TChar) TInt))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |942|
 :pattern ( ($Is DatatypeTypeType (|#VarUnchanged.MState.MState| |a#2#0#0@@0| |a#2#1#0@@0|) Tclass.VarUnchanged.MState))
)))
(assert (forall ((Utils.Option$T@@1 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass.Utils.Option Utils.Option$T@@1)) (or (Utils.Option.Some_q d@@6) (Utils.Option.None_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1024|
 :pattern ( (Utils.Option.None_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.Utils.Option Utils.Option$T@@1)))
 :pattern ( (Utils.Option.Some_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass.Utils.Option Utils.Option$T@@1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (= (Ctor charType) 7))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TChar) (and (= ($Box charType ($Unbox charType bx@@3)) bx@@3) ($Is charType ($Unbox charType bx@@3) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@3 TChar))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((t@@0 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@0 u)) t@@0)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@0 u))
)))
(assert (forall ((t@@1 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@1 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@1 u@@0))
)))
(assert (forall ((t@@2 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@2 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@2 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) |_System._tuple#2$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#0#0#0@@0| T@U) (|a#0#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#VarUnchanged.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|)) |##VarUnchanged.MState.MState|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |938|
 :pattern ( (|#VarUnchanged.MState.MState| |a#0#0#0@@0| |a#0#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (VarUnchanged.MState.x (|#VarUnchanged.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#0#0@@0|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |946|
 :pattern ( (|#VarUnchanged.MState.MState| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (VarUnchanged.MState.ctx (|#VarUnchanged.MState.MState| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |VarUnchangeddfy.73:28|
 :skolemid |948|
 :pattern ( (|#VarUnchanged.MState.MState| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSeq (TSeq t@@5)) t@@5)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSeq t@@6)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@6))
)))
(assert (forall ((Utils.Option$T@@2 T@U) ) (! (= (Tclass.Utils.Option_0 (Tclass.Utils.Option Utils.Option$T@@2)) Utils.Option$T@@2)
 :qid |unknown.0:0|
 :skolemid |786|
 :pattern ( (Tclass.Utils.Option Utils.Option$T@@2))
)))
(assert (forall ((|a#0#0#0@@1| T@U) ) (! (= (DatatypeCtorId (|#Utils.Option.Some| |a#0#0#0@@1|)) |##Utils.Option.Some|)
 :qid |Utilsdfy.42:29|
 :skolemid |1009|
 :pattern ( (|#Utils.Option.Some| |a#0#0#0@@1|))
)))
(assert (forall ((|a#4#0#0@@1| T@U) ) (! (= (Utils.Option.value (|#Utils.Option.Some| |a#4#0#0@@1|)) |a#4#0#0@@1|)
 :qid |Utilsdfy.42:29|
 :skolemid |1017|
 :pattern ( (|#Utils.Option.Some| |a#4#0#0@@1|))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall ((Utils.Option$T@@3 T@U) (|a#2#0#0@@1| T@U) ) (! (= ($Is DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@1|) (Tclass.Utils.Option Utils.Option$T@@3)) ($IsBox |a#2#0#0@@1| Utils.Option$T@@3))
 :qid |unknown.0:0|
 :skolemid |1013|
 :pattern ( ($Is DatatypeTypeType (|#Utils.Option.Some| |a#2#0#0@@1|) (Tclass.Utils.Option Utils.Option$T@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (DtRank |a#5#0#0@@0|) (DtRank (|#VarUnchanged.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |947|
 :pattern ( (|#VarUnchanged.MState.MState| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@4 T@U) (s@@0 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@4 (TMap s@@0 t@@7)) (and (= ($Box MapType ($Unbox MapType bx@@4)) bx@@4) ($Is MapType ($Unbox MapType bx@@4) (TMap s@@0 t@@7))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@4 (TMap s@@0 t@@7)))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)))
)))
(assert (forall ((|a#5#0#0@@1| T@U) ) (! (< (BoxRank |a#5#0#0@@1|) (DtRank (|#Utils.Option.Some| |a#5#0#0@@1|)))
 :qid |Utilsdfy.42:29|
 :skolemid |1018|
 :pattern ( (|#Utils.Option.Some| |a#5#0#0@@1|))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))) (= (Ctor refType) 8)) (= (Ctor FieldType) 9)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1230|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@1 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@1)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@2 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@2) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@2 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@2))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@8)))
)))
(assert (= (Ctor SeqType) 11))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSeq t@@9)) (and (= ($Box SeqType ($Unbox SeqType bx@@7)) bx@@7) ($Is SeqType ($Unbox SeqType bx@@7) (TSeq t@@9))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@7 (TSeq t@@9)))
)))
(assert (forall ((Utils.Option$T@@4 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.Utils.Option Utils.Option$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@8)) bx@@8) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@8) (Tclass.Utils.Option Utils.Option$T@@4))))
 :qid |unknown.0:0|
 :skolemid |787|
 :pattern ( ($IsBox bx@@8 (Tclass.Utils.Option Utils.Option$T@@4)))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (t1@@1 T@U) ) (! (= ($Is MapType v@@3 (TMap t0@@2 t1@@1)) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@9) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@9) t1@@1) ($IsBox bx@@9 t0@@2)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@9))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@9))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@3 (TMap t0@@2 t1@@1)))
)))
(assert (= (Tag Tclass.VarUnchanged.MState) Tagclass.VarUnchanged.MState))
(assert (= (TagFamily Tclass.VarUnchanged.MState) tytagFamily$MState))
(assert (= |#Utils.Option.None| (Lit DatatypeTypeType |#Utils.Option.None|)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) (d@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| |a#7#1#0@@0|) ($Box DatatypeTypeType d@@8)) (< (DtRank d@@8) (DtRank (|#VarUnchanged.MState.MState| |a#7#0#0@@0| |a#7#1#0@@0|))))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |949|
 :pattern ( (|Set#IsMember| (|Map#Domain| |a#7#1#0@@0|) ($Box DatatypeTypeType d@@8)) (|#VarUnchanged.MState.MState| |a#7#0#0@@0| |a#7#1#0@@0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0@@0| T@U) ) (! (= (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)) (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| |a#3#0#0@@0| |a#3#1#0@@0|)))
 :qid |VarUnchangeddfy.73:28|
 :skolemid |945|
 :pattern ( (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |a#3#0#0@@0|) (Lit MapType |a#3#1#0@@0|)))
)))
(assert (forall ((|a#3#0#0@@1| T@U) ) (! (= (|#Utils.Option.Some| (Lit BoxType |a#3#0#0@@1|)) (Lit DatatypeTypeType (|#Utils.Option.Some| |a#3#0#0@@1|)))
 :qid |Utilsdfy.42:29|
 :skolemid |1016|
 :pattern ( (|#Utils.Option.Some| (Lit BoxType |a#3#0#0@@1|)))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@3 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@3)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i) t0@@3))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@3)))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@0 T@U) (v@@5 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@5)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@0))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@0))))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (!  (=> ($Is MapType v@@6 (TMap t0@@4 t1@@2)) (and (and ($Is SetType (|Map#Domain| v@@6) (TSet t0@@4)) ($Is SetType (|Map#Values| v@@6) (TSet t1@@2))) ($Is SetType (|Map#Items| v@@6) (TSet (Tclass._System.Tuple2 t0@@4 t1@@2)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@6 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is charType v@@8 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@8 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |st#0| () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id CheckWellFormed$$VarUnchanged.S)
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
 (=> (= (ControlFlow 0 0) 9) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0|)) (|Set#IsMember| (|Map#Domain| (VarUnchanged.MState.ctx |st#0|)) (Utils.Option.value (VarUnchanged.MState.x |st#0|)))) (= (ControlFlow 0 6) 3)) anon5_correct)))
(let ((anon9_Then_correct  (=> (VarUnchanged.MState.MState_q |st#0|) (=> (and (Utils.Option.Some_q (VarUnchanged.MState.x |st#0|)) (VarUnchanged.MState.MState_q |st#0|)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (Utils.Option.Some_q (VarUnchanged.MState.x |st#0|))) (=> (Utils.Option.Some_q (VarUnchanged.MState.x |st#0|)) (=> (VarUnchanged.MState.MState_q |st#0|) (=> (and (|Set#IsMember| (|Map#Domain| (VarUnchanged.MState.ctx |st#0|)) (Utils.Option.value (VarUnchanged.MState.x |st#0|))) (= (ControlFlow 0 4) 3)) anon5_correct))))))))
(let ((anon8_Then_correct  (=> ($Is DatatypeTypeType |st#0| Tclass.VarUnchanged.MState) (and (=> (= (ControlFlow 0 7) 4) anon9_Then_correct) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct)))))
(let ((anon10_Then_correct  (=> (and (and (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|)))) (=> (U_2_bool (Lit boolType (bool_2_U (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|))))))))) (and (VarUnchanged.MState.MState_q (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|)))) (VarUnchanged.MState.MState_q (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|))))))) (= (ControlFlow 0 2) (- 0 1))) (U_2_bool (Lit boolType (bool_2_U (Utils.Option.Some_q (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|)))))))))) (|Set#IsMember| (Lit SetType (|Map#Domain| (Lit MapType (VarUnchanged.MState.ctx (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|))))))) ($Box SeqType (Lit SeqType ($Unbox SeqType (Utils.Option.value (Lit DatatypeTypeType (VarUnchanged.MState.x (Lit DatatypeTypeType (|#VarUnchanged.MState.MState| (Lit DatatypeTypeType |#Utils.Option.None|) (Lit MapType |Map#Empty|)))))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 8) 7) anon8_Then_correct) (=> (= (ControlFlow 0 8) 2) anon10_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 9) 8))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
