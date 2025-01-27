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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.word () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$word () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.extract (T@U) T@U)
(declare-fun |_module.__default.extract#canCall| (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass._module.word () T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |lambda#0| (T@U Int Int) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#4| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.word |tytagFamily$_tuple#2| tytagFamily$word)
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
(assert (= (Ctor MapType) 3))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|src#0| T@U) ) (!  (=> (or (|_module.__default.extract#canCall| |src#0|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |src#0| (TMap TInt Tclass._module.word)) (forall ((|i#0| Int) ) (!  (=> (and (<= (LitInt 0) |i#0|) (< |i#0| 16)) (|Set#IsMember| (|Map#Domain| |src#0|) ($Box intType (int_2_U |i#0|))))
 :qid |gitissue27dfy.7:21|
 :skolemid |480|
 :pattern ( (|Set#IsMember| (|Map#Domain| |src#0|) ($Box intType (int_2_U |i#0|))))
))))) ($Is MapType (_module.__default.extract |src#0|) (TMap TInt Tclass._module.word)))
 :qid |gitissue27dfy.6:24|
 :skolemid |481|
 :pattern ( (_module.__default.extract |src#0|))
))))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
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
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 5)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (t0@@0 T@U) (t1@@0 T@U) ) (!  (=> (forall ((bx T@U) ) (!  (=> (|Set#IsMember| a@@1 bx) (and ($IsBox bx t0@@0) ($IsBox (MapType0Select BoxType BoxType b@@1 bx) t1@@0)))
 :qid |DafnyPreludebpl.1452:11|
 :skolemid |288|
)) ($Is MapType (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)) (TMap t0@@0 t1@@0)))
 :qid |DafnyPreludebpl.1449:15|
 :skolemid |289|
 :pattern ( (|Map#Glue| a@@1 b@@1 (TMap t0@@0 t1@@0)))
)))
(assert (forall ((|l#0| T@U) (|$w#0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#1| |l#0|) |$w#0|) (MapType0Select BoxType BoxType |l#0| |$w#0|))
 :qid |gitissue27dfy.9:34|
 :skolemid |491|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#1| |l#0|) |$w#0|))
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
(assert (= (Ctor SetType) 6))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.word) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.word)))
 :qid |unknown.0:0|
 :skolemid |479|
 :pattern ( ($IsBox bx@@2 Tclass._module.word))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1| Int) (|l#2| Int) (|$w#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1| |l#2|) |$w#0@@0|))  (and ($IsBox |$w#0@@0| |l#0@@0|) (and (<= |l#1| (U_2_int ($Unbox intType |$w#0@@0|))) (< (U_2_int ($Unbox intType |$w#0@@0|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |490|
 :pattern ( (MapType0Select BoxType boolType (|lambda#0| |l#0@@0| |l#1| |l#2|) |$w#0@@0|))
)))
(assert (forall ((|x#0| T@U) ) (! (= ($Is intType |x#0| Tclass._module.word)  (and (<= (LitInt 0) (U_2_int |x#0|)) (< (U_2_int |x#0|) 4294967296)))
 :qid |unknown.0:0|
 :skolemid |488|
 :pattern ( ($Is intType |x#0| Tclass._module.word))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@1) ($Is T@@1 v@@0 t@@1))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@1))
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
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|src#0@@0| T@U) ) (!  (=> (or (|_module.__default.extract#canCall| |src#0@@0|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |src#0@@0| (TMap TInt Tclass._module.word)) (forall ((|i#1| Int) ) (!  (=> (and (<= (LitInt 0) |i#1|) (< |i#1| 16)) (|Set#IsMember| (|Map#Domain| |src#0@@0|) ($Box intType (int_2_U |i#1|))))
 :qid |gitissue27dfy.7:21|
 :skolemid |482|
 :pattern ( (|Set#IsMember| (|Map#Domain| |src#0@@0|) ($Box intType (int_2_U |i#1|))))
))))) (= (_module.__default.extract |src#0@@0|) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt (LitInt 0) 16)) (|lambda#1| (|Map#Elements| |src#0@@0|)) (TMap TInt Tclass._module.word))))
 :qid |gitissue27dfy.6:24|
 :skolemid |484|
 :pattern ( (_module.__default.extract |src#0@@0|))
))))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@4 T@U) (s T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@4 (TMap s t@@7)) (and (= ($Box MapType ($Unbox MapType bx@@4)) bx@@4) ($Is MapType ($Unbox MapType bx@@4) (TMap s t@@7))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@4 (TMap s t@@7)))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)))
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
)))) (= (Ctor refType) 7)) (= (Ctor FieldType) 8)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 9)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@1| |l#1@@0| |l#2@@0| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |492|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#4| |l#0@@1| |l#1@@0| |l#2@@0| |l#3|) $o $f))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
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
(assert (forall ((bx@@6 T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@8)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@8))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@6 (TSet t@@8)))
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
(assert (= (Tag Tclass._module.word) Tagclass._module.word))
(assert (= (TagFamily Tclass._module.word) tytagFamily$word))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
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
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((|src#0@@1| T@U) ) (!  (=> (or (|_module.__default.extract#canCall| (Lit MapType |src#0@@1|)) (and (< 1 $FunctionContextHeight) (and ($Is MapType |src#0@@1| (TMap TInt Tclass._module.word)) (forall ((|i#3| Int) ) (!  (=> (and (<= (LitInt 0) |i#3|) (< |i#3| 16)) (|Set#IsMember| (|Map#Domain| |src#0@@1|) ($Box intType (int_2_U |i#3|))))
 :qid |gitissue27dfy.7:21|
 :skolemid |485|
 :pattern ( (|Set#IsMember| (|Map#Domain| |src#0@@1|) ($Box intType (int_2_U |i#3|))))
))))) (= (_module.__default.extract (Lit MapType |src#0@@1|)) (|Map#Glue| (|Set#FromBoogieMap| (|lambda#0| TInt (LitInt 0) 16)) (|lambda#1| (|Map#Elements| (Lit MapType |src#0@@1|))) (TMap TInt Tclass._module.word))))
 :qid |gitissue27dfy.6:24|
 :weight 3
 :skolemid |486|
 :pattern ( (_module.__default.extract (Lit MapType |src#0@@1|)))
))))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@4 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@4)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@5 (TMap t0@@4 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@5) (TSet t0@@4)) ($Is SetType (|Map#Values| v@@5) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@5) (TSet (Tclass._System.Tuple2 t0@@4 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@5 (TMap t0@@4 t1@@3)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#5@0| () Int)
(declare-fun |src#0@@2| () T@U)
(declare-fun |i#4@0| () Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.__default.extract)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon13_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| 16))) (= (ControlFlow 0 6) 3)) anon13_correct)))
(let ((anon20_Then_correct  (=> (and (<= (LitInt 0) |i#5@0|) (< |i#5@0| 16)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType (int_2_U |i#5@0|)))) (=> (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType (int_2_U |i#5@0|))) (=> (= (ControlFlow 0 4) 3) anon13_correct))))))
(let ((anon19_Else_correct  (=> (< |i#5@0| (LitInt 0)) (and (=> (= (ControlFlow 0 8) 4) anon20_Then_correct) (=> (= (ControlFlow 0 8) 6) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (<= (LitInt 0) |i#5@0|) (and (=> (= (ControlFlow 0 7) 4) anon20_Then_correct) (=> (= (ControlFlow 0 7) 6) anon20_Else_correct)))))
(let ((anon18_Then_correct  (and (=> (= (ControlFlow 0 9) 7) anon19_Then_correct) (=> (= (ControlFlow 0 9) 8) anon19_Else_correct))))
(let ((anon18_Else_correct true))
(let ((anon17_Then_correct true))
(let ((anon6_correct  (=> (forall ((|i#0@@0| T@U) ) (!  (=> (and (<= (LitInt 0) (U_2_int |i#0@@0|)) (< (U_2_int |i#0@@0|) 16)) (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType |i#0@@0|)))
 :qid |gitissue27dfy.7:21|
 :skolemid |487|
 :pattern ( (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType |i#0@@0|)))
)) (and (and (=> (= (ControlFlow 0 10) 1) anon17_Then_correct) (=> (= (ControlFlow 0 10) 9) anon18_Then_correct)) (=> (= (ControlFlow 0 10) 2) anon18_Else_correct)))))
(let ((anon4_correct  (=> (and (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| 16)) (and (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType (int_2_U |i#4@0|))) (= (ControlFlow 0 12) 10))) anon6_correct)))
(let ((anon16_Else_correct  (=> (and (< |i#4@0| (LitInt 0)) (= (ControlFlow 0 14) 12)) anon4_correct)))
(let ((anon16_Then_correct  (=> (and (<= (LitInt 0) |i#4@0|) (= (ControlFlow 0 13) 12)) anon4_correct)))
(let ((anon15_Else_correct  (=> (and (=> (and (<= (LitInt 0) |i#4@0|) (< |i#4@0| 16)) (|Set#IsMember| (|Map#Domain| |src#0@@2|) ($Box intType (int_2_U |i#4@0|)))) (= (ControlFlow 0 11) 10)) anon6_correct)))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#4| null $Heap alloc false)) (and (and (=> (= (ControlFlow 0 15) 11) anon15_Else_correct) (=> (= (ControlFlow 0 15) 13) anon16_Then_correct)) (=> (= (ControlFlow 0 15) 14) anon16_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is MapType |src#0@@2| (TMap TInt Tclass._module.word))) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 16) 15))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
