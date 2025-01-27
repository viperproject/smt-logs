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
(declare-fun TagSeq () T@U)
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
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
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun |Map#Glue| (T@U T@U T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.UnboxTest (T@U) T@U)
(declare-fun |_module.__default.UnboxTest#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun |map$project$8#0#i#0| (T@U) Int)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun |lambda#63| (T@U Int Int T@U) T@U)
(declare-fun |lambda#64| (T@U) T@U)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |map$project$9#0#i#0| (T@U) Int)
(declare-fun |lambda#66| (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |lambda#69| (T@U) T@U)
(declare-fun |map$project$10#0#i#0| (T@U) Int)
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
(assert (distinct TInt TagInt TagSet TagSeq TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 |tytagFamily$_tuple#2|)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|Map#Domain| (|Map#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1443:15|
 :skolemid |286|
 :pattern ( (|Map#Domain| (|Map#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1446:15|
 :skolemid |287|
 :pattern ( (|Map#Elements| (|Map#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor SeqType) 3))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0| T@U) ) (!  (=> (or (|_module.__default.UnboxTest#canCall| |s#0|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0| (TSeq (TSeq TInt))))) (and (forall ((|a#1#0#0| Int) ) (!  (=> (and (<= (LitInt 0) |a#1#0#0|) (< |a#1#0#0| (|Seq#Length| |s#0|))) (and (and (<= (LitInt 0) (|map$project$8#0#i#0| ($Unbox SeqType (|Seq#Index| |s#0| |a#1#0#0|)))) (< (|map$project$8#0#i#0| ($Unbox SeqType (|Seq#Index| |s#0| |a#1#0#0|))) (|Seq#Length| |s#0|))) (= ($Unbox SeqType (|Seq#Index| |s#0| |a#1#0#0|)) ($Unbox SeqType (|Seq#Index| |s#0| (|map$project$8#0#i#0| ($Unbox SeqType (|Seq#Index| |s#0| |a#1#0#0|))))))))
 :qid |Mapsdfy.249:7|
 :skolemid |688|
 :pattern ( ($Unbox SeqType (|Seq#Index| |s#0| |a#1#0#0|)))
)) (= (_module.__default.UnboxTest |s#0|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#63| (TSeq TInt) (LitInt 0) (|Seq#Length| |s#0|) |s#0|)) (|lambda#64| |s#0|) (TMap (TSeq TInt) (TSeq TInt))))))
 :qid |Mapsdfy.247:26|
 :skolemid |689|
 :pattern ( (_module.__default.UnboxTest |s#0|))
))))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1|)))
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@0| T@U) ) (!  (=> (or (|_module.__default.UnboxTest#canCall| (Lit SeqType |s#0@@0|)) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@0| (TSeq (TSeq TInt))))) (and (forall ((|a#3#0#0| Int) ) (!  (=> (and (<= (LitInt 0) |a#3#0#0|) (< |a#3#0#0| (|Seq#Length| (Lit SeqType |s#0@@0|)))) (and (and (<= (LitInt 0) (|map$project$9#0#i#0| ($Unbox SeqType (|Seq#Index| (Lit SeqType |s#0@@0|) |a#3#0#0|)))) (< (|map$project$9#0#i#0| ($Unbox SeqType (|Seq#Index| (Lit SeqType |s#0@@0|) |a#3#0#0|))) (|Seq#Length| (Lit SeqType |s#0@@0|)))) (= ($Unbox SeqType (|Seq#Index| (Lit SeqType |s#0@@0|) |a#3#0#0|)) ($Unbox SeqType (|Seq#Index| (Lit SeqType |s#0@@0|) (|map$project$9#0#i#0| ($Unbox SeqType (|Seq#Index| (Lit SeqType |s#0@@0|) |a#3#0#0|))))))))
 :qid |Mapsdfy.249:7|
 :skolemid |691|
 :pattern ( ($Unbox SeqType (|Seq#Index| |s#0@@0| |a#3#0#0|)))
)) (= (_module.__default.UnboxTest (Lit SeqType |s#0@@0|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#63| (TSeq TInt) (LitInt 0) (|Seq#Length| (Lit SeqType |s#0@@0|)) (Lit SeqType |s#0@@0|))) (|lambda#66| (Lit SeqType |s#0@@0|)) (TMap (TSeq TInt) (TSeq TInt))))))
 :qid |Mapsdfy.247:26|
 :weight 3
 :skolemid |692|
 :pattern ( (_module.__default.UnboxTest (Lit SeqType |s#0@@0|)))
))))
(assert (= (Ctor MapType) 5))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|s#0@@1| T@U) ) (!  (=> (or (|_module.__default.UnboxTest#canCall| |s#0@@1|) (and (< 0 $FunctionContextHeight) ($Is SeqType |s#0@@1| (TSeq (TSeq TInt))))) ($Is MapType (_module.__default.UnboxTest |s#0@@1|) (TMap (TSeq TInt) (TSeq TInt))))
 :qid |Mapsdfy.247:26|
 :skolemid |685|
 :pattern ( (_module.__default.UnboxTest |s#0@@1|))
))))
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
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((m@@1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0) (U_2_bool (MapType0Select BoxType boolType m@@1 bx@@0)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx@@0))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@1) ($Is T@@1 v@@0 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@1))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((t@@2 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@2 u)) t@@2)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@2 u))
)))
(assert (forall ((t@@3 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@3 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@3 u@@0))
)))
(assert (forall ((t@@4 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@4 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@4 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)) |_System._tuple#2$T0@@0|)
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|)) |_System._tuple#2$T1@@1|)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |467|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |469|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Inv0_TSet (TSet t@@5)) t@@5)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Tag (TSet t@@6)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Inv0_TSeq (TSeq t@@7)) t@@7)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@7))
)))
(assert (forall ((t@@8 T@U) ) (! (= (Tag (TSeq t@@8)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@8))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |470|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@3 T@U) (s@@0 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@3 (TMap s@@0 t@@9)) (and (= ($Box MapType ($Unbox MapType bx@@3)) bx@@3) ($Is MapType ($Unbox MapType bx@@3) (TMap s@@0 t@@9))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@3 (TMap s@@0 t@@9)))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsBox bx@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@2 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@1 t2 (MapType1Store t0@@2 t1@@1 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
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
 :skolemid |914|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@5) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((v@@1 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@6) v@@1)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@7) item)  (and (|Set#IsMember| (|Map#Domain| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@7) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@7) item))
)))
(assert (forall ((m@@8 T@U) (v@@2 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@8) v@@2) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@8) u@@3) (= v@@2 (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@8) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@8) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@8) v@@2))
)))
(assert (forall ((d T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d)) (DtRank d))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d)))
)))
(assert (forall ((bx@@5 T@U) (t@@10 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@10)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@10))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@5 (TSet t@@10)))
)))
(assert (forall ((bx@@6 T@U) (t@@11 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@11)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@11))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@6 (TSeq t@@11)))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@3 (TMap t0@@3 t1@@2)) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@7) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7) t1@@2) ($IsBox bx@@7 t0@@3)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@7))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@3 (TMap t0@@3 t1@@2)))
)))
(assert (forall ((|l#0@@0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#64| |l#0@@0|) |$w#0|) (|Seq#Index| |l#0@@0| (|map$project$8#0#i#0| ($Unbox SeqType |$w#0|))))
 :qid |Mapsdfy.247:26|
 :skolemid |938|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#64| |l#0@@0|) |$w#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$w#1| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#66| |l#0@@1|) |$w#1|) (|Seq#Index| |l#0@@1| (|map$project$9#0#i#0| ($Unbox SeqType |$w#1|))))
 :qid |Mapsdfy.247:26|
 :skolemid |939|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#66| |l#0@@1|) |$w#1|))
)))
(assert (forall ((|l#0@@2| T@U) (|$w#3| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#69| |l#0@@2|) |$w#3|) (|Seq#Index| |l#0@@2| (|map$project$10#0#i#0| ($Unbox SeqType |$w#3|))))
 :qid |Mapsdfy.247:26|
 :skolemid |940|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#69| |l#0@@2|) |$w#3|))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| Int) (|l#2@@0| Int) (|l#3@@0| T@U) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#63| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@3|) (exists ((|a#0#0#0@@0| Int) ) (!  (and (and (<= |l#1@@0| |a#0#0#0@@0|) (< |a#0#0#0@@0| |l#2@@0|)) (= ($Unbox SeqType |$w#0@@0|) ($Unbox SeqType (|Seq#Index| |l#3@@0| |a#0#0#0@@0|))))
 :qid |Mapsdfy.249:7|
 :skolemid |687|
))))
 :qid |unknown.0:0|
 :skolemid |937|
 :pattern ( (MapType0Select BoxType boolType (|lambda#63| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) |$w#0@@0|))
)))
(assert (forall ((|a#3#0#0@@0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0@@0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0@@0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@1 T@U) ) (!  (=> (= (|Seq#Length| s@@1) 0) (= s@@1 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@4 (TSeq t0@@4)) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@4))) ($IsBox (|Seq#Index| v@@4 i) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@4 i))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@4 (TSeq t0@@4)))
)))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@5 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@5)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@2))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@0))) (|Seq#Rank| s@@2)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |267|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@2 i@@0))))
)))
(assert (forall ((v@@6 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@6 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@6) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@6) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@6) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@6 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is intType v@@7 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@7 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#1@0| () Int)
(declare-fun |s#0@@2| () T@U)
(declare-fun |i#prime#0@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.UnboxTest)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon12_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (<= (LitInt 0) |i#prime#0@0|) (< |i#prime#0@0| (|Seq#Length| |s#0@@2|))))) (= (ControlFlow 0 6) 3)) anon12_correct)))
(let ((anon19_Then_correct  (=> (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (<= (LitInt 0) |i#prime#0@0|) (< |i#prime#0@0| (|Seq#Length| |s#0@@2|)))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (or (or (not (= ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#1@0|)) ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#prime#0@0|)))) (not true)) (= ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#1@0|)) ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#prime#0@0|))))) (=> (or (or (not (= ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#1@0|)) ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#prime#0@0|)))) (not true)) (= ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#1@0|)) ($Unbox SeqType (|Seq#Index| |s#0@@2| |i#prime#0@0|)))) (=> (= (ControlFlow 0 4) 3) anon12_correct))))))
(let ((anon18_Else_correct  (=> (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|)))) (and (=> (= (ControlFlow 0 9) 4) anon19_Then_correct) (=> (= (ControlFlow 0 9) 6) anon19_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 7) (- 0 8)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 7) 4) anon19_Then_correct) (=> (= (ControlFlow 0 7) 6) anon19_Else_correct)))))))
(let ((anon17_Else_correct  (=> (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|)))) (and (=> (= (ControlFlow 0 12) 7) anon18_Then_correct) (=> (= (ControlFlow 0 12) 9) anon18_Else_correct)))))
(let ((anon17_Then_correct  (=> (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|)))) (=> (and (<= 0 |i#1@0|) (< |i#1@0| (|Seq#Length| |s#0@@2|))) (and (=> (= (ControlFlow 0 10) 7) anon18_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Else_correct)))))))
(let ((anon16_Else_correct  (=> (< |i#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 14) 10) anon17_Then_correct) (=> (= (ControlFlow 0 14) 12) anon17_Else_correct)))))
(let ((anon16_Then_correct  (=> (<= (LitInt 0) |i#1@0|) (and (=> (= (ControlFlow 0 13) 10) anon17_Then_correct) (=> (= (ControlFlow 0 13) 12) anon17_Else_correct)))))
(let ((anon15_Then_correct  (and (=> (= (ControlFlow 0 15) 13) anon16_Then_correct) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct))))
(let ((anon15_Else_correct true))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 16) 1) anon14_Then_correct) (=> (= (ControlFlow 0 16) 15) anon15_Then_correct)) (=> (= (ControlFlow 0 16) 2) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is SeqType |s#0@@2| (TSeq (TSeq TInt)))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 17) 16))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
