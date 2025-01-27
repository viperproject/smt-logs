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
(declare-fun Tagclass._module.Lindgren () T@U)
(declare-fun |##_module.Lindgren.HerrNilsson| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$Lindgren () T@U)
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
(declare-fun |$let#12_x| (Int) Int)
(declare-fun |$let#12$canCall| (Int) Bool)
(declare-fun |Seq#Contains| (T@U T@U) Bool)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Lindgren.HerrNilsson| () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._module.Lindgren () T@U)
(declare-fun |$let#8$canCall| () Bool)
(declare-fun |$let#8_y| () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |_module.Lindgren#Equal| (T@U T@U) Bool)
(declare-fun |$let#5$canCall| () Bool)
(declare-fun |$let#5_x| () Int)
(declare-fun |$let#13$canCall| () Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |Map#Empty| () T@U)
(declare-fun |$let#13_x| () Int)
(declare-fun |$let#6$canCall| () Bool)
(declare-fun |$let#6_x| () Int)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |$let#7_x| (Int) Int)
(declare-fun |$let#7$canCall| (Int) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |$let#9$canCall| () Bool)
(declare-fun |$let#9_y| () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |$let#11$canCall| () Bool)
(declare-fun |Map#Build| (T@U T@U T@U) T@U)
(declare-fun |$let#11_x| () Int)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
(declare-fun |$let#10$canCall| () Bool)
(declare-fun |$let#10_x| () Int)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.Lindgren |##_module.Lindgren.HerrNilsson| |tytagFamily$_tuple#2| tytagFamily$Lindgren)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((n Int) ) (!  (=> (|$let#12$canCall| n) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U n))) ($Box intType (int_2_U n))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U (|$let#12_x| n)))))
 :qid |SmallTestsdfy.715:9|
 :skolemid |3286|
 :pattern ( (|$let#12_x| n))
)))
(assert (forall ((s T@U) (v T@U) (x@@2 T@U) ) (! (= (|Seq#Contains| (|Seq#Build| s v) x@@2)  (or (= v x@@2) (|Seq#Contains| s x@@2)))
 :qid |DafnyPreludebpl.1197:15|
 :skolemid |2868|
 :pattern ( (|Seq#Contains| (|Seq#Build| s v) x@@2))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |3102|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((x@@3 T@U) ) (!  (not (|Seq#Contains| |Seq#Empty| x@@3))
 :qid |DafnyPreludebpl.1188:15|
 :skolemid |2866|
 :pattern ( (|Seq#Contains| |Seq#Empty| x@@3))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#_module.Lindgren.HerrNilsson|) |##_module.Lindgren.HerrNilsson|))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |3090|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert ($Is DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren))
(assert  (=> |$let#8$canCall| (and ($Is DatatypeTypeType |$let#8_y| Tclass._module.Lindgren) (= |$let#8_y| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))))
(assert (forall (($h T@U) ) (!  (=> ($IsGoodHeap $h) ($IsAlloc DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |3482|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.Lindgren.HerrNilsson| Tclass._module.Lindgren $h))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Lindgren#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |3488|
 :pattern ( (|_module.Lindgren#Equal| a b))
)))
(assert  (=> |$let#5$canCall| (= |$let#5_x| (LitInt 1))))
(assert (forall ((x@@4 Int) ) (! (= (LitInt x@@4) x@@4)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |2651|
 :pattern ( (LitInt x@@4))
)))
(assert (forall ((x@@5 T@U) (T T@T) ) (! (= (Lit T x@@5) x@@5)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |2649|
 :pattern ( (Lit T x@@5))
)))
(assert (= (Ctor MapType) 4))
(assert  (=> |$let#13$canCall| (|Set#IsMember| (|Map#Domain| (let ((|m#0| (Lit MapType |Map#Empty|)))
|m#0|)) ($Box intType (int_2_U |$let#13_x|)))))
(assert  (=> |$let#6$canCall| (or (or (= |$let#6_x| (LitInt 3)) (= |$let#6_x| (LitInt 7))) (= |$let#6_x| (LitInt 11)))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@0) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@0))))
 :qid |unknown.0:0|
 :skolemid |3091|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@0))
)))
(assert (forall ((n@@0 Int) ) (!  (=> (|$let#7$canCall| n@@0) (= (|$let#7_x| n@@0) (+ n@@0 12)))
 :qid |SmallTestsdfy.710:9|
 :skolemid |3280|
 :pattern ( (|$let#7_x| n@@0))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |3083|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@6 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@6)) x@@6)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |2660|
 :pattern ( ($Unbox T@@0 x@@6))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |3084|
)))
 :qid |unknown.0:0|
 :skolemid |3085|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 5))
(assert (forall ((v@@0 T@U) (t0 T@U) ) (! (= ($Is SetType v@@0 (TSet t0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@0 bx) ($IsBox bx t0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |2680|
 :pattern ( (|Set#IsMember| v@@0 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |2681|
 :pattern ( ($Is SetType v@@0 (TSet t0)))
)))
(assert (forall ((s@@0 T@U) (v@@1 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@1)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |2858|
 :pattern ( (|Seq#Build| s@@0 v@@1))
)))
(assert (forall ((v@@2 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@2) t h) ($IsAlloc T@@1 v@@2 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |2673|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@2) t h))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.Lindgren) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) Tclass._module.Lindgren)))
 :qid |unknown.0:0|
 :skolemid |3234|
 :pattern ( ($IsBox bx@@0 Tclass._module.Lindgren))
)))
(assert  (=> |$let#9$canCall| (and ($Is DatatypeTypeType |$let#9_y| Tclass._module.Lindgren) (|_module.Lindgren#Equal| |$let#9_y| |$let#9_y|))))
(assert (forall ((s@@1 T@U) (i Int) (v@@3 T@U) ) (!  (and (=> (= i (|Seq#Length| s@@1)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) v@@3)) (=> (or (not (= i (|Seq#Length| s@@1))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@1 v@@3) i) (|Seq#Index| s@@1 i))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |2859|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@1 v@@3) i))
)))
(assert (forall ((s@@2 T@U) (x@@7 T@U) ) (! (= (|Seq#Contains| s@@2 x@@7) (exists ((i@@0 Int) ) (!  (and (and (<= 0 i@@0) (< i@@0 (|Seq#Length| s@@2))) (= (|Seq#Index| s@@2 i@@0) x@@7))
 :qid |DafnyPreludebpl.1184:19|
 :skolemid |2864|
 :pattern ( (|Seq#Index| s@@2 i@@0))
)))
 :qid |DafnyPreludebpl.1181:15|
 :skolemid |2865|
 :pattern ( (|Seq#Contains| s@@2 x@@7))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |2661|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@4 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@4) t@@0) ($Is T@@2 v@@4 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |2672|
 :pattern ( ($IsBox ($Box T@@2 v@@4) t@@0))
)))
(assert  (=> |$let#11$canCall| (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U |$let#11_x|)))))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |2855|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((v@@5 T@U) (t0@@0 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v@@5 bx@@2) ($IsAllocBox bx@@2 t0@@0 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |2701|
 :pattern ( (|Set#IsMember| v@@5 bx@@2))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |2702|
 :pattern ( ($IsAlloc SetType v@@5 (TSet t0@@0) h@@0))
)))
(assert (forall ((t@@1 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@1 u)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |2643|
 :pattern ( (TMap t@@1 u))
)))
(assert (forall ((t@@2 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |2644|
 :pattern ( (TMap t@@2 u@@0))
)))
(assert (forall ((t@@3 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@3 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |2645|
 :pattern ( (TMap t@@3 u@@1))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |3082|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |3087|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |3088|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |3097|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |3099|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |2635|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2636|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |2659|
 :pattern ( ($Box T@@3 x@@8))
)))
(assert  (and (and (forall ((t0@@1 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0@@1 t1 (MapType0Store t0@@1 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)))
(assert (forall ((v@@6 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@6 (TMap t0@@2 t1@@0) h@@1) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@3) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@3) t1@@0 h@@1) ($IsAllocBox bx@@3 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |2709|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@3))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@3))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |2710|
 :pattern ( ($IsAlloc MapType v@@6 (TMap t0@@2 t1@@0) h@@1))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3098|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3100|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |2919|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((bx@@4 T@U) (s@@4 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@4 (TMap s@@4 t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@4)) bx@@4) ($Is MapType ($Unbox MapType bx@@4) (TMap s@@4 t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |2670|
 :pattern ( ($IsBox bx@@4 (TMap s@@4 t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |3089|
 :pattern ( ($IsBox bx@@5 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3849|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((s@@5 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@5 val@@4)) s@@5) (= (|Seq#Build_inv1| (|Seq#Build| s@@5 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |2857|
 :pattern ( (|Seq#Build| s@@5 val@@4))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |3086|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |2907|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |2908|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@7 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@7)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |2909|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |2910|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |2918|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@8 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@8) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@8 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |2916|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |2917|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@8))
)))
(assert (forall ((m@@8 T@U) (u@@4 T@U) (|u'| T@U) (v@@9 T@U) ) (!  (and (=> (= |u'| u@@4) (and (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) v@@9))) (=> (or (not (= |u'| u@@4)) (not true)) (and (= (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (|Set#IsMember| (|Map#Domain| m@@8) |u'|)) (= (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|) (MapType0Select BoxType BoxType (|Map#Elements| m@@8) |u'|)))))
 :qid |DafnyPreludebpl.1463:15|
 :skolemid |2924|
 :pattern ( (|Set#IsMember| (|Map#Domain| (|Map#Build| m@@8 u@@4 v@@9)) |u'|))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| (|Map#Build| m@@8 u@@4 v@@9)) |u'|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |2718|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@6 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@6 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@6)) bx@@6) ($Is SetType ($Unbox SetType bx@@6) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |2666|
 :pattern ( ($IsBox bx@@6 (TSet t@@7)))
)))
(assert (forall ((v@@10 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@10 (TMap t0@@4 t1@@2)) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@10) bx@@7) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@7) t1@@2) ($IsBox bx@@7 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |2689|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@10) bx@@7))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@10) bx@@7))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |2690|
 :pattern ( ($Is MapType v@@10 (TMap t0@@4 t1@@2)))
)))
(assert (= (Tag Tclass._module.Lindgren) Tagclass._module.Lindgren))
(assert (= (TagFamily Tclass._module.Lindgren) tytagFamily$Lindgren))
(assert (= |#_module.Lindgren.HerrNilsson| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@1)
 :qid |unknown.0:0|
 :skolemid |3092|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@1))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@1))
 :qid |unknown.0:0|
 :skolemid |3093|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@1))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@2)
 :qid |unknown.0:0|
 :skolemid |3094|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@2))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@2))
 :qid |unknown.0:0|
 :skolemid |3095|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@2))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |3096|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |2652|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@10)) (Lit BoxType ($Box T@@4 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |2650|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@10)))
)))
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |2856|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((h@@2 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |2695|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@2))
)))
(assert  (=> |$let#10$canCall| (or (or (or (= |$let#10_x| (LitInt 3)) (= |$let#10_x| (LitInt 3))) (= |$let#10_x| (LitInt 2))) (= |$let#10_x| (LitInt 3)))))
(assert (forall ((m@@9 T@U) ) (!  (or (= m@@9 |Map#Empty|) (exists ((k@@0 T@U) (v@@12 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@9) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@12)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |2911|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |2912|
 :pattern ( (|Map#Items| m@@9))
)))
(assert (forall ((s@@7 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@7))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@1))) (|Seq#Rank| s@@7)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |2901|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@7 i@@1))))
)))
(assert (forall ((v@@13 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@13 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@13) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@13) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@13) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |2691|
 :pattern ( ($Is MapType v@@13 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((v@@14 T@U) ) (! ($Is intType v@@14 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |2674|
 :pattern ( ($Is intType v@@14 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |m#Z#0@0| () T@U)
(declare-fun |x#13@0| () Int)
(declare-fun |xx#0@6| () Int)
(declare-fun |n#0| () Int)
(declare-fun |x#11@0| () Int)
(declare-fun |xx#0@5| () Int)
(declare-fun |x#9@0| () Int)
(declare-fun |xx#0@4| () Int)
(declare-fun |x#7@0| () Int)
(declare-fun |xx#0@3| () Int)
(declare-fun |y#3@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |yy#0@1| () T@U)
(declare-fun |y#1@0| () T@U)
(declare-fun |yy#0@0| () T@U)
(declare-fun |x#5@0| () Int)
(declare-fun |xx#0@2| () Int)
(declare-fun |x#3@0| () Int)
(declare-fun |xx#0@1| () Int)
(declare-fun |x#1@0| () Int)
(declare-fun |xx#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#yy#0| () Bool)
(declare-fun |yy#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.LetSuchThat3)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon27_Else_correct true))
(let ((anon27_Then_correct  (=> (= |let#0#0#0| (Lit MapType |Map#Empty|)) (=> (and ($Is MapType |let#0#0#0| (TMap TInt TInt)) (= |m#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (let ((|m#2| (Lit MapType |Map#Empty|)))
|m#2|)) ($Box intType (int_2_U 0)))) (exists ((|x#12| T@U) ) (! (|Set#IsMember| (|Map#Domain| (let ((|m#1| (Lit MapType |Map#Empty|)))
|m#1|)) ($Box intType |x#12|))
 :qid |SmallTestsdfy.716:13|
 :skolemid |3288|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (let ((|m#2@@0| (Lit MapType |Map#Empty|)))
|m#2@@0|)) ($Box intType (int_2_U 0)))) (exists ((|x#12@@0| Int) ) (! (|Set#IsMember| (|Map#Domain| (let ((|m#1@@0| (Lit MapType |Map#Empty|)))
|m#1@@0|)) ($Box intType (int_2_U |x#12@@0|)))
 :qid |SmallTestsdfy.716:13|
 :skolemid |3288|
))) (=> (|Set#IsMember| (|Map#Domain| (let ((|m#3| (Lit MapType |Map#Empty|)))
|m#3|)) ($Box intType (int_2_U |x#13@0|))) (=> (and (and |$let#13$canCall| |$let#13$canCall|) (and (= |xx#0@6| (let ((|x#12@@1| |$let#13_x|))
(+ |x#12@@1| 10))) (= (ControlFlow 0 8) (- 0 7)))) true))))))))
(let ((anon26_Then_correct  (and (=> (= (ControlFlow 0 11) (- 0 12)) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 2)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 0)))) (exists ((|x#10| T@U) ) (! (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType |x#10|))
 :qid |SmallTestsdfy.715:13|
 :skolemid |3287|
))))))) (=> (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 2)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U |n#0|) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |n#0|)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U 0)))) (exists ((|x#10@@0| Int) ) (! (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |x#10@@0|)))
 :qid |SmallTestsdfy.715:13|
 :skolemid |3287|
)))))) (=> (and (and (|Seq#Contains| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U |n#0|))) ($Box intType (int_2_U (LitInt 2)))) ($Box intType (int_2_U |x#11@0|))) (|$let#12$canCall| |n#0|)) (and (|$let#12$canCall| |n#0|) (= |xx#0@5| (let ((|x#10@@1| (|$let#12_x| |n#0|)))
(+ |x#10@@1| 10))))) (and (=> (= (ControlFlow 0 11) 8) anon27_Then_correct) (=> (= (ControlFlow 0 11) 10) anon27_Else_correct)))))))
(let ((anon26_Else_correct true))
(let ((anon25_Then_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U 0)))) (exists ((|x#8| T@U) ) (! (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType |x#8|))
 :qid |SmallTestsdfy.714:13|
 :skolemid |3285|
)))) (=> (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U 0)))) (exists ((|x#8@@0| Int) ) (! (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U |x#8@@0|)))
 :qid |SmallTestsdfy.714:13|
 :skolemid |3285|
))) (=> (and (and (|Set#IsMember| (|Map#Domain| (|Map#Build| (|Map#Build| |Map#Empty| ($Box intType (int_2_U (LitInt 5))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 6))) ($Box intType (int_2_U (LitInt 12))))) ($Box intType (int_2_U |x#9@0|))) |$let#11$canCall|) (and |$let#11$canCall| (= |xx#0@4| (let ((|x#8@@1| |$let#11_x|))
(+ |x#8@@1| 10))))) (and (=> (= (ControlFlow 0 13) 11) anon26_Then_correct) (=> (= (ControlFlow 0 13) 6) anon26_Else_correct)))))))
(let ((anon25_Else_correct true))
(let ((anon24_Then_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (or (or (or (= (LitInt 2) (LitInt 3)) (= (LitInt 2) (LitInt 3))) (= (LitInt 2) (LitInt 2))) (= (LitInt 2) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 3))) (= (LitInt 0) (LitInt 2))) (= (LitInt 0) (LitInt 3)))) (exists ((|x#6| Int) ) (!  (or (or (or (= |x#6| (LitInt 3)) (= |x#6| (LitInt 3))) (= |x#6| (LitInt 2))) (= |x#6| (LitInt 3)))
 :qid |SmallTestsdfy.713:13|
 :skolemid |3284|
)))))))) (=> (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 2)) TInt) (or (or (or (= (LitInt 2) (LitInt 3)) (= (LitInt 2) (LitInt 3))) (= (LitInt 2) (LitInt 2))) (= (LitInt 2) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 3))) (= (LitInt 3) (LitInt 2))) (= (LitInt 3) (LitInt 3)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 3))) (= (LitInt 0) (LitInt 2))) (= (LitInt 0) (LitInt 3)))) (exists ((|x#6@@0| Int) ) (!  (or (or (or (= |x#6@@0| (LitInt 3)) (= |x#6@@0| (LitInt 3))) (= |x#6@@0| (LitInt 2))) (= |x#6@@0| (LitInt 3)))
 :qid |SmallTestsdfy.713:13|
 :skolemid |3284|
))))))) (=> (and (and (or (or (or (= |x#7@0| (LitInt 3)) (= |x#7@0| (LitInt 3))) (= |x#7@0| (LitInt 2))) (= |x#7@0| (LitInt 3))) |$let#10$canCall|) (and |$let#10$canCall| (= |xx#0@3| (let ((|x#6@@1| |$let#10_x|))
(+ |x#6@@1| 10))))) (and (=> (= (ControlFlow 0 15) 13) anon25_Then_correct) (=> (= (ControlFlow 0 15) 5) anon25_Else_correct)))))))
(let ((anon24_Else_correct true))
(let ((anon10_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (|_module.Lindgren#Equal| |#_module.Lindgren.HerrNilsson| |#_module.Lindgren.HerrNilsson|)) (exists ((|y#2| T@U) ) (!  (and ($Is DatatypeTypeType |y#2| Tclass._module.Lindgren) (|_module.Lindgren#Equal| |y#2| |y#2|))
 :qid |SmallTestsdfy.712:13|
 :skolemid |3283|
)))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (|_module.Lindgren#Equal| |#_module.Lindgren.HerrNilsson| |#_module.Lindgren.HerrNilsson|)) (exists ((|y#2@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#2@@0| Tclass._module.Lindgren) (|_module.Lindgren#Equal| |y#2@@0| |y#2@@0|))
 :qid |SmallTestsdfy.712:13|
 :skolemid |3283|
))) (=> (and ($Is DatatypeTypeType |y#3@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#3@0| Tclass._module.Lindgren $Heap)) (=> (and (and (|_module.Lindgren#Equal| |y#3@0| |y#3@0|) |$let#9$canCall|) (and |$let#9$canCall| (= |yy#0@1| (let ((|y#2@@1| |$let#9_y|))
|y#2@@1|)))) (and (=> (= (ControlFlow 0 17) 15) anon24_Then_correct) (=> (= (ControlFlow 0 17) 4) anon24_Else_correct))))))))
(let ((anon23_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |y#3@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#3@0| Tclass._module.Lindgren $Heap))) (= (ControlFlow 0 20) 17)) anon10_correct)))
(let ((anon23_Then_correct  (=> (and (and ($Is DatatypeTypeType |y#3@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#3@0| Tclass._module.Lindgren $Heap)) (= (ControlFlow 0 19) 17)) anon10_correct)))
(let ((anon8_correct  (and (=> (= (ControlFlow 0 21) (- 0 22)) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (exists ((|y#0| T@U) ) (!  (and ($Is DatatypeTypeType |y#0| Tclass._module.Lindgren) (= |y#0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
 :qid |SmallTestsdfy.711:13|
 :skolemid |3282|
))))) (=> (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (or (and ($Is DatatypeTypeType (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) Tclass._module.Lindgren) (= (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|) (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|))) (exists ((|y#0@@0| T@U) ) (!  (and ($Is DatatypeTypeType |y#0@@0| Tclass._module.Lindgren) (= |y#0@@0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)))
 :qid |SmallTestsdfy.711:13|
 :skolemid |3282|
)))) (=> (and ($Is DatatypeTypeType |y#1@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#1@0| Tclass._module.Lindgren $Heap)) (=> (and (and (= |y#1@0| (Lit DatatypeTypeType |#_module.Lindgren.HerrNilsson|)) |$let#8$canCall|) (and |$let#8$canCall| (= |yy#0@0| (let ((|y#0@@1| |$let#8_y|))
|y#0@@1|)))) (and (=> (= (ControlFlow 0 21) 19) anon23_Then_correct) (=> (= (ControlFlow 0 21) 20) anon23_Else_correct))))))))
(let ((anon22_Else_correct  (=> (and (not (and ($Is DatatypeTypeType |y#1@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#1@0| Tclass._module.Lindgren $Heap))) (= (ControlFlow 0 24) 21)) anon8_correct)))
(let ((anon22_Then_correct  (=> (and (and ($Is DatatypeTypeType |y#1@0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |y#1@0| Tclass._module.Lindgren $Heap)) (= (ControlFlow 0 23) 21)) anon8_correct)))
(let ((anon21_Then_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (or (and ($Is intType (int_2_U (+ |n#0| 12)) TInt) (= (+ |n#0| 12) (+ |n#0| 12))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (+ |n#0| 12))) (exists ((|x#4| Int) ) (! (= |x#4| (+ |n#0| 12))
 :qid |SmallTestsdfy.710:13|
 :skolemid |3281|
))))) (=> (or (and ($Is intType (int_2_U (+ |n#0| 12)) TInt) (= (+ |n#0| 12) (+ |n#0| 12))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (+ |n#0| 12))) (exists ((|x#4@@0| Int) ) (! (= |x#4@@0| (+ |n#0| 12))
 :qid |SmallTestsdfy.710:13|
 :skolemid |3281|
)))) (=> (and (and (= |x#5@0| (+ |n#0| 12)) (|$let#7$canCall| |n#0|)) (and (|$let#7$canCall| |n#0|) (= |xx#0@2| (let ((|x#4@@1| (|$let#7_x| |n#0|)))
(+ |x#4@@1| 10))))) (and (=> (= (ControlFlow 0 25) 23) anon22_Then_correct) (=> (= (ControlFlow 0 25) 24) anon22_Else_correct)))))))
(let ((anon21_Else_correct true))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 27) (- 0 28)) (or (and ($Is intType (int_2_U (LitInt 11)) TInt) (or (or (= (LitInt 11) (LitInt 3)) (= (LitInt 11) (LitInt 7))) (= (LitInt 11) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 7)) TInt) (or (or (= (LitInt 7) (LitInt 3)) (= (LitInt 7) (LitInt 7))) (= (LitInt 7) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 7))) (= (LitInt 3) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 7))) (= (LitInt 0) (LitInt 11)))) (exists ((|x#2| Int) ) (!  (or (or (= |x#2| (LitInt 3)) (= |x#2| (LitInt 7))) (= |x#2| (LitInt 11)))
 :qid |SmallTestsdfy.709:13|
 :skolemid |3279|
))))))) (=> (or (and ($Is intType (int_2_U (LitInt 11)) TInt) (or (or (= (LitInt 11) (LitInt 3)) (= (LitInt 11) (LitInt 7))) (= (LitInt 11) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 7)) TInt) (or (or (= (LitInt 7) (LitInt 3)) (= (LitInt 7) (LitInt 7))) (= (LitInt 7) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 3)) TInt) (or (or (= (LitInt 3) (LitInt 3)) (= (LitInt 3) (LitInt 7))) (= (LitInt 3) (LitInt 11)))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (or (or (= (LitInt 0) (LitInt 3)) (= (LitInt 0) (LitInt 7))) (= (LitInt 0) (LitInt 11)))) (exists ((|x#2@@0| Int) ) (!  (or (or (= |x#2@@0| (LitInt 3)) (= |x#2@@0| (LitInt 7))) (= |x#2@@0| (LitInt 11)))
 :qid |SmallTestsdfy.709:13|
 :skolemid |3279|
)))))) (=> (and (and (or (or (= |x#3@0| (LitInt 3)) (= |x#3@0| (LitInt 7))) (= |x#3@0| (LitInt 11))) |$let#6$canCall|) (and |$let#6$canCall| (= |xx#0@1| (let ((|x#2@@1| |$let#6_x|))
(+ |x#2@@1| 10))))) (and (=> (= (ControlFlow 0 27) 25) anon21_Then_correct) (=> (= (ControlFlow 0 27) 3) anon21_Else_correct)))))))
(let ((anon20_Else_correct true))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (or (and ($Is intType (int_2_U (LitInt 1)) TInt) (= (LitInt 1) (LitInt 1))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (LitInt 1))) (exists ((|x#0| Int) ) (! (= |x#0| (LitInt 1))
 :qid |SmallTestsdfy.708:13|
 :skolemid |3278|
))))) (=> (or (and ($Is intType (int_2_U (LitInt 1)) TInt) (= (LitInt 1) (LitInt 1))) (or (and ($Is intType (int_2_U (LitInt 0)) TInt) (= (LitInt 0) (LitInt 1))) (exists ((|x#0@@0| Int) ) (! (= |x#0@@0| (LitInt 1))
 :qid |SmallTestsdfy.708:13|
 :skolemid |3278|
)))) (=> (and (and (= |x#1@0| (LitInt 1)) |$let#5$canCall|) (and |$let#5$canCall| (= |xx#0@0| (let ((|x#0@@1| |$let#5_x|))
(+ |x#0@@1| 10))))) (and (=> (= (ControlFlow 0 29) 27) anon20_Then_correct) (=> (= (ControlFlow 0 29) 2) anon20_Else_correct)))))))
(let ((anon19_Else_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 31) 29) anon19_Then_correct) (=> (= (ControlFlow 0 31) 1) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> |defass#yy#0| (and ($Is DatatypeTypeType |yy#0| Tclass._module.Lindgren) ($IsAlloc DatatypeTypeType |yy#0| Tclass._module.Lindgren $Heap)))) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 32) 31))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 8) (- 9))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
