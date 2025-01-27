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
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.GenDt () T@U)
(declare-fun |##_module.GenDt.Left| () T@U)
(declare-fun |##_module.GenDt.Middle| () T@U)
(declare-fun |##_module.GenDt.Right| () T@U)
(declare-fun tytagFamily$GenDt () T@U)
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
(declare-fun |_module.GenDt#Equal| (T@U T@U) Bool)
(declare-fun _module.GenDt.Left_q (T@U) Bool)
(declare-fun _module.GenDt._h1 (T@U) T@U)
(declare-fun _module.GenDt.Right_q (T@U) Bool)
(declare-fun _module.GenDt.y (T@U) T@U)
(declare-fun |#_module.GenDt.Middle| (T@U Int T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.GenDt._h2 (T@U) T@U)
(declare-fun _module.GenDt._h3 (T@U) Int)
(declare-fun _module.GenDt._h4 (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.GenDt (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.GenDt.Middle_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.GenDt.Left| (T@U) T@U)
(declare-fun |#_module.GenDt.Right| (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass._module.GenDt_0 (T@U) T@U)
(declare-fun Tclass._module.GenDt_1 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |$IsA#_module.GenDt| (T@U) Bool)
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
(assert (distinct TInt TagInt alloc Tagclass._module.GenDt |##_module.GenDt.Left| |##_module.GenDt.Middle| |##_module.GenDt.Right| tytagFamily$GenDt)
)
(assert (= (Tag TInt) TagInt))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (and (_module.GenDt.Left_q a) (_module.GenDt.Left_q b)) (= (|_module.GenDt#Equal| a b) (= (_module.GenDt._h1 a) (_module.GenDt._h1 b))))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (|_module.GenDt#Equal| a b) (_module.GenDt.Left_q a))
 :pattern ( (|_module.GenDt#Equal| a b) (_module.GenDt.Left_q b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (_module.GenDt.Right_q a@@0) (_module.GenDt.Right_q b@@0)) (= (|_module.GenDt#Equal| a@@0 b@@0) (= (_module.GenDt.y a@@0) (_module.GenDt.y b@@0))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( (|_module.GenDt#Equal| a@@0 b@@0) (_module.GenDt.Right_q a@@0))
 :pattern ( (|_module.GenDt#Equal| a@@0 b@@0) (_module.GenDt.Right_q b@@0))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| Int) (|a#27#2#0| T@U) ) (! (= (DatatypeCtorId (|#_module.GenDt.Middle| |a#27#0#0| |a#27#1#0| |a#27#2#0|)) |##_module.GenDt.Middle|)
 :qid |gitissue133dfy.24:40|
 :skolemid |546|
 :pattern ( (|#_module.GenDt.Middle| |a#27#0#0| |a#27#1#0| |a#27#2#0|))
)))
(assert (forall ((|a#31#0#0| T@U) (|a#31#1#0| Int) (|a#31#2#0| T@U) ) (! (= (_module.GenDt._h2 (|#_module.GenDt.Middle| |a#31#0#0| |a#31#1#0| |a#31#2#0|)) |a#31#0#0|)
 :qid |gitissue133dfy.24:40|
 :skolemid |559|
 :pattern ( (|#_module.GenDt.Middle| |a#31#0#0| |a#31#1#0| |a#31#2#0|))
)))
(assert (forall ((|a#33#0#0| T@U) (|a#33#1#0| Int) (|a#33#2#0| T@U) ) (! (= (_module.GenDt._h3 (|#_module.GenDt.Middle| |a#33#0#0| |a#33#1#0| |a#33#2#0|)) |a#33#1#0|)
 :qid |gitissue133dfy.24:40|
 :skolemid |561|
 :pattern ( (|#_module.GenDt.Middle| |a#33#0#0| |a#33#1#0| |a#33#2#0|))
)))
(assert (forall ((|a#34#0#0| T@U) (|a#34#1#0| Int) (|a#34#2#0| T@U) ) (! (= (_module.GenDt._h4 (|#_module.GenDt.Middle| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |a#34#2#0|)
 :qid |gitissue133dfy.24:40|
 :skolemid |562|
 :pattern ( (|#_module.GenDt.Middle| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((_module.GenDt$X T@U) (_module.GenDt$Y T@U) (|a#29#0#0| T@U) (|a#29#1#0| Int) (|a#29#2#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.GenDt.Middle| |a#29#0#0| |a#29#1#0| |a#29#2#0|) (Tclass._module.GenDt _module.GenDt$X _module.GenDt$Y))  (and (and ($IsBox |a#29#0#0| _module.GenDt$X) ($Is intType (int_2_U |a#29#1#0|) TInt)) ($IsBox |a#29#2#0| _module.GenDt$Y)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($Is DatatypeTypeType (|#_module.GenDt.Middle| |a#29#0#0| |a#29#1#0| |a#29#2#0|) (Tclass._module.GenDt _module.GenDt$X _module.GenDt$Y)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|_module.GenDt#Equal| a@@1 b@@1) (= a@@1 b@@1))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( (|_module.GenDt#Equal| a@@1 b@@1))
)))
(assert (forall ((d T@U) ) (! (= (_module.GenDt.Left_q d) (= (DatatypeCtorId d) |##_module.GenDt.Left|))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.GenDt.Left_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.GenDt.Middle_q d@@0) (= (DatatypeCtorId d@@0) |##_module.GenDt.Middle|))
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( (_module.GenDt.Middle_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.GenDt.Right_q d@@1) (= (DatatypeCtorId d@@1) |##_module.GenDt.Right|))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (_module.GenDt.Right_q d@@1))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.GenDt.Middle_q d@@2) (exists ((|a#28#0#0| T@U) (|a#28#1#0| Int) (|a#28#2#0| T@U) ) (! (= d@@2 (|#_module.GenDt.Middle| |a#28#0#0| |a#28#1#0| |a#28#2#0|))
 :qid |gitissue133dfy.24:40|
 :skolemid |548|
)))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( (_module.GenDt.Middle_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.GenDt.Left_q d@@3) (exists ((|a#22#0#0| T@U) ) (! (= d@@3 (|#_module.GenDt.Left| |a#22#0#0|))
 :qid |gitissue133dfy.24:28|
 :skolemid |537|
)))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (_module.GenDt.Left_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.GenDt.Right_q d@@4) (exists ((|a#37#0#0| T@U) ) (! (= d@@4 (|#_module.GenDt.Right| |a#37#0#0|))
 :qid |gitissue133dfy.24:57|
 :skolemid |566|
)))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (_module.GenDt.Right_q d@@4))
)))
(assert (forall ((v T@U) (t T@U) (h T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h) ($IsAlloc T@@0 v t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h))
)))
(assert (forall ((_module.GenDt$X@@0 T@U) (_module.GenDt$Y@@0 T@U) (|a#29#0#0@@0| T@U) (|a#29#1#0@@0| Int) (|a#29#2#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_module.GenDt.Middle| |a#29#0#0@@0| |a#29#1#0@@0| |a#29#2#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@0 _module.GenDt$Y@@0) $h)  (and (and ($IsAllocBox |a#29#0#0@@0| _module.GenDt$X@@0 $h) ($IsAlloc intType (int_2_U |a#29#1#0@@0|) TInt $h)) ($IsAllocBox |a#29#2#0@@0| _module.GenDt$Y@@0 $h))))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.GenDt.Middle| |a#29#0#0@@0| |a#29#1#0@@0| |a#29#2#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@0 _module.GenDt$Y@@0) $h))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (_module.GenDt.Middle_q a@@2) (_module.GenDt.Middle_q b@@2)) (= (|_module.GenDt#Equal| a@@2 b@@2)  (and (and (= (_module.GenDt._h2 a@@2) (_module.GenDt._h2 b@@2)) (= (_module.GenDt._h3 a@@2) (_module.GenDt._h3 b@@2))) (= (_module.GenDt._h4 a@@2) (_module.GenDt._h4 b@@2)))))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (|_module.GenDt#Equal| a@@2 b@@2) (_module.GenDt.Middle_q a@@2))
 :pattern ( (|_module.GenDt#Equal| a@@2 b@@2) (_module.GenDt.Middle_q b@@2))
)))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx TInt) (and (= ($Box intType ($Unbox intType bx)) bx) ($Is intType ($Unbox intType bx) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((_module.GenDt$X@@1 T@U) (_module.GenDt$Y@@1 T@U) ) (! (= (Tclass._module.GenDt_0 (Tclass._module.GenDt _module.GenDt$X@@1 _module.GenDt$Y@@1)) _module.GenDt$X@@1)
 :qid |unknown.0:0|
 :skolemid |482|
 :pattern ( (Tclass._module.GenDt _module.GenDt$X@@1 _module.GenDt$Y@@1))
)))
(assert (forall ((_module.GenDt$X@@2 T@U) (_module.GenDt$Y@@2 T@U) ) (! (= (Tclass._module.GenDt_1 (Tclass._module.GenDt _module.GenDt$X@@2 _module.GenDt$Y@@2)) _module.GenDt$Y@@2)
 :qid |unknown.0:0|
 :skolemid |483|
 :pattern ( (Tclass._module.GenDt _module.GenDt$X@@2 _module.GenDt$Y@@2))
)))
(assert (forall ((_module.GenDt$X@@3 T@U) (_module.GenDt$Y@@3 T@U) (|a#23#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.GenDt.Left| |a#23#0#0|) (Tclass._module.GenDt _module.GenDt$X@@3 _module.GenDt$Y@@3)) ($IsBox |a#23#0#0| _module.GenDt$X@@3))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($Is DatatypeTypeType (|#_module.GenDt.Left| |a#23#0#0|) (Tclass._module.GenDt _module.GenDt$X@@3 _module.GenDt$Y@@3)))
)))
(assert (forall ((_module.GenDt$X@@4 T@U) (_module.GenDt$Y@@4 T@U) (|a#38#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.GenDt.Right| |a#38#0#0|) (Tclass._module.GenDt _module.GenDt$X@@4 _module.GenDt$Y@@4)) ($IsBox |a#38#0#0| _module.GenDt$Y@@4))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($Is DatatypeTypeType (|#_module.GenDt.Right| |a#38#0#0|) (Tclass._module.GenDt _module.GenDt$X@@4 _module.GenDt$Y@@4)))
)))
(assert (forall ((|a#21#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.GenDt.Left| |a#21#0#0|)) |##_module.GenDt.Left|)
 :qid |gitissue133dfy.24:28|
 :skolemid |535|
 :pattern ( (|#_module.GenDt.Left| |a#21#0#0|))
)))
(assert (forall ((|a#25#0#0| T@U) ) (! (= (_module.GenDt._h1 (|#_module.GenDt.Left| |a#25#0#0|)) |a#25#0#0|)
 :qid |gitissue133dfy.24:28|
 :skolemid |544|
 :pattern ( (|#_module.GenDt.Left| |a#25#0#0|))
)))
(assert (forall ((|a#36#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.GenDt.Right| |a#36#0#0|)) |##_module.GenDt.Right|)
 :qid |gitissue133dfy.24:57|
 :skolemid |564|
 :pattern ( (|#_module.GenDt.Right| |a#36#0#0|))
)))
(assert (forall ((|a#40#0#0| T@U) ) (! (= (_module.GenDt.y (|#_module.GenDt.Right| |a#40#0#0|)) |a#40#0#0|)
 :qid |gitissue133dfy.24:57|
 :skolemid |573|
 :pattern ( (|#_module.GenDt.Right| |a#40#0#0|))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall ((|a#32#0#0| T@U) (|a#32#1#0| Int) (|a#32#2#0| T@U) ) (! (< (BoxRank |a#32#0#0|) (DtRank (|#_module.GenDt.Middle| |a#32#0#0| |a#32#1#0| |a#32#2#0|)))
 :qid |gitissue133dfy.24:40|
 :skolemid |560|
 :pattern ( (|#_module.GenDt.Middle| |a#32#0#0| |a#32#1#0| |a#32#2#0|))
)))
(assert (forall ((|a#35#0#0| T@U) (|a#35#1#0| Int) (|a#35#2#0| T@U) ) (! (< (BoxRank |a#35#2#0|) (DtRank (|#_module.GenDt.Middle| |a#35#0#0| |a#35#1#0| |a#35#2#0|)))
 :qid |gitissue133dfy.24:40|
 :skolemid |563|
 :pattern ( (|#_module.GenDt.Middle| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#_module.GenDt| d@@5) (or (or (_module.GenDt.Left_q d@@5) (_module.GenDt.Middle_q d@@5)) (_module.GenDt.Right_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( (|$IsA#_module.GenDt| d@@5))
)))
(assert (forall ((_module.GenDt$X@@5 T@U) (_module.GenDt$Y@@5 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.GenDt _module.GenDt$X@@5 _module.GenDt$Y@@5)) (or (or (_module.GenDt.Left_q d@@6) (_module.GenDt.Middle_q d@@6)) (_module.GenDt.Right_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (_module.GenDt.Right_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.GenDt _module.GenDt$X@@5 _module.GenDt$Y@@5)))
 :pattern ( (_module.GenDt.Middle_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.GenDt _module.GenDt$X@@5 _module.GenDt$Y@@5)))
 :pattern ( (_module.GenDt.Left_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.GenDt _module.GenDt$X@@5 _module.GenDt$Y@@5)))
)))
(assert (forall ((_module.GenDt$X@@6 T@U) (_module.GenDt$Y@@6 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.GenDt _module.GenDt$X@@6 _module.GenDt$Y@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@0)) bx@@0) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@0) (Tclass._module.GenDt _module.GenDt$X@@6 _module.GenDt$Y@@6))))
 :qid |unknown.0:0|
 :skolemid |484|
 :pattern ( ($IsBox bx@@0 (Tclass._module.GenDt _module.GenDt$X@@6 _module.GenDt$Y@@6)))
)))
(assert (forall ((|a#26#0#0| T@U) ) (! (< (BoxRank |a#26#0#0|) (DtRank (|#_module.GenDt.Left| |a#26#0#0|)))
 :qid |gitissue133dfy.24:28|
 :skolemid |545|
 :pattern ( (|#_module.GenDt.Left| |a#26#0#0|))
)))
(assert (forall ((|a#41#0#0| T@U) ) (! (< (BoxRank |a#41#0#0|) (DtRank (|#_module.GenDt.Right| |a#41#0#0|)))
 :qid |gitissue133dfy.24:57|
 :skolemid |574|
 :pattern ( (|#_module.GenDt.Right| |a#41#0#0|))
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
)))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 7)
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
 :skolemid |603|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((_module.GenDt$X@@7 T@U) (_module.GenDt$Y@@7 T@U) ) (!  (and (= (Tag (Tclass._module.GenDt _module.GenDt$X@@7 _module.GenDt$Y@@7)) Tagclass._module.GenDt) (= (TagFamily (Tclass._module.GenDt _module.GenDt$X@@7 _module.GenDt$Y@@7)) tytagFamily$GenDt))
 :qid |unknown.0:0|
 :skolemid |481|
 :pattern ( (Tclass._module.GenDt _module.GenDt$X@@7 _module.GenDt$Y@@7))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((d@@8 T@U) (_module.GenDt$X@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.GenDt.Left_q d@@8) (exists ((_module.GenDt$Y@@8 T@U) ) (! ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.GenDt _module.GenDt$X@@8 _module.GenDt$Y@@8) $h@@0)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 (Tclass._module.GenDt _module.GenDt$X@@8 _module.GenDt$Y@@8) $h@@0))
)))) ($IsAllocBox (_module.GenDt._h1 d@@8) _module.GenDt$X@@8 $h@@0))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsAllocBox (_module.GenDt._h1 d@@8) _module.GenDt$X@@8 $h@@0))
)))
(assert (forall ((d@@9 T@U) (_module.GenDt$X@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.GenDt.Middle_q d@@9) (exists ((_module.GenDt$Y@@9 T@U) ) (! ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.GenDt _module.GenDt$X@@9 _module.GenDt$Y@@9) $h@@1)
 :qid |unknown.0:0|
 :skolemid |552|
 :pattern ( ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.GenDt _module.GenDt$X@@9 _module.GenDt$Y@@9) $h@@1))
)))) ($IsAllocBox (_module.GenDt._h2 d@@9) _module.GenDt$X@@9 $h@@1))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( ($IsAllocBox (_module.GenDt._h2 d@@9) _module.GenDt$X@@9 $h@@1))
)))
(assert (forall ((d@@10 T@U) (_module.GenDt$Y@@10 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.GenDt.Middle_q d@@10) (exists ((_module.GenDt$X@@10 T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.GenDt _module.GenDt$X@@10 _module.GenDt$Y@@10) $h@@2)
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._module.GenDt _module.GenDt$X@@10 _module.GenDt$Y@@10) $h@@2))
)))) ($IsAllocBox (_module.GenDt._h4 d@@10) _module.GenDt$Y@@10 $h@@2))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsAllocBox (_module.GenDt._h4 d@@10) _module.GenDt$Y@@10 $h@@2))
)))
(assert (forall ((d@@11 T@U) (_module.GenDt$Y@@11 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.GenDt.Right_q d@@11) (exists ((_module.GenDt$X@@11 T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.GenDt _module.GenDt$X@@11 _module.GenDt$Y@@11) $h@@3)
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._module.GenDt _module.GenDt$X@@11 _module.GenDt$Y@@11) $h@@3))
)))) ($IsAllocBox (_module.GenDt.y d@@11) _module.GenDt$Y@@11 $h@@3))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( ($IsAllocBox (_module.GenDt.y d@@11) _module.GenDt$Y@@11 $h@@3))
)))
(assert (forall ((d@@12 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.GenDt.Middle_q d@@12) (exists ((_module.GenDt$X@@12 T@U) (_module.GenDt$Y@@12 T@U) ) (! ($IsAlloc DatatypeTypeType d@@12 (Tclass._module.GenDt _module.GenDt$X@@12 _module.GenDt$Y@@12) $h@@4)
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 (Tclass._module.GenDt _module.GenDt$X@@12 _module.GenDt$Y@@12) $h@@4))
)))) ($IsAlloc intType (int_2_U (_module.GenDt._h3 d@@12)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc intType (int_2_U (_module.GenDt._h3 d@@12)) TInt $h@@4))
)))
(assert (forall ((_module.GenDt$X@@13 T@U) (_module.GenDt$Y@@13 T@U) (|a#23#0#0@@0| T@U) ($h@@5 T@U) ) (!  (=> ($IsGoodHeap $h@@5) (= ($IsAlloc DatatypeTypeType (|#_module.GenDt.Left| |a#23#0#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@13 _module.GenDt$Y@@13) $h@@5) ($IsAllocBox |a#23#0#0@@0| _module.GenDt$X@@13 $h@@5)))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.GenDt.Left| |a#23#0#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@13 _module.GenDt$Y@@13) $h@@5))
)))
(assert (forall ((_module.GenDt$X@@14 T@U) (_module.GenDt$Y@@14 T@U) (|a#38#0#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.GenDt.Right| |a#38#0#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@14 _module.GenDt$Y@@14) $h@@6) ($IsAllocBox |a#38#0#0@@0| _module.GenDt$Y@@14 $h@@6)))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.GenDt.Right| |a#38#0#0@@0|) (Tclass._module.GenDt _module.GenDt$X@@14 _module.GenDt$Y@@14) $h@@6))
)))
(assert (forall ((h@@0 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@0)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@0))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |g#0| () T@U)
(declare-fun |_mcc#4#0_0@0| () T@U)
(declare-fun _module._default.ChangeGen$_T1 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |u#0_0@0| () T@U)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |let#0_1#0#0| () T@U)
(declare-fun _module._default.ChangeGen$_T0 () T@U)
(declare-fun |dt_update_tmp#0#Z#0_0@0| () T@U)
(declare-fun |let#0_2#0#0| () T@U)
(declare-fun |dt_update#y#0#Z#0_0@0| () T@U)
(declare-fun |h#0_0@0| () T@U)
(declare-fun |_mcc#1#1_0@0| () T@U)
(declare-fun |_mcc#2#1_0@0| () Int)
(declare-fun |_mcc#3#1_0@0| () T@U)
(declare-fun |_mcc#0#2_0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |defass#h#0_0| () Bool)
(declare-fun |h#0_0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.ChangeGen)
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
 (=> (= (ControlFlow 0 0) 11) (let ((anon7_Else_correct true))
(let ((anon7_Then_correct  (=> (= |g#0| (|#_module.GenDt.Right| |_mcc#4#0_0@0|)) (=> (and ($IsBox |_mcc#4#0_0@0| _module._default.ChangeGen$_T1) ($IsAllocBox |_mcc#4#0_0@0| _module._default.ChangeGen$_T1 $Heap)) (=> (and (and (and ($IsBox |u#0_0@0| _module._default.ChangeGen$_T1) ($IsAllocBox |u#0_0@0| _module._default.ChangeGen$_T1 $Heap)) (= |let#0_0#0#0| |_mcc#4#0_0@0|)) (and ($IsBox |let#0_0#0#0| _module._default.ChangeGen$_T1) (= |u#0_0@0| |let#0_0#0#0|))) (and (=> (= (ControlFlow 0 4) (- 0 6)) (_module.GenDt.Right_q |g#0|)) (=> (_module.GenDt.Right_q |g#0|) (=> (= |let#0_1#0#0| |g#0|) (=> (and ($Is DatatypeTypeType |let#0_1#0#0| (Tclass._module.GenDt _module._default.ChangeGen$_T0 _module._default.ChangeGen$_T1)) (= |dt_update_tmp#0#Z#0_0@0| |let#0_1#0#0|)) (=> (and (and (= |let#0_2#0#0| |u#0_0@0|) ($IsBox |let#0_2#0#0| _module._default.ChangeGen$_T1)) (and (= |dt_update#y#0#Z#0_0@0| |let#0_2#0#0|) (= |h#0_0@0| (let ((|dt_update#y#0#0_0| |u#0_0@0|))
(|#_module.GenDt.Right| |dt_update#y#0#0_0|))))) (and (=> (= (ControlFlow 0 4) (- 0 5)) true) (=> (and (and (|$IsA#_module.GenDt| |g#0|) (|$IsA#_module.GenDt| |h#0_0@0|)) (= (ControlFlow 0 4) (- 0 3))) (|_module.GenDt#Equal| |g#0| |h#0_0@0|)))))))))))))
(let ((anon6_Else_correct  (=> (or (not (= |g#0| (|#_module.GenDt.Middle| |_mcc#1#1_0@0| |_mcc#2#1_0@0| |_mcc#3#1_0@0|))) (not true)) (and (=> (= (ControlFlow 0 8) 4) anon7_Then_correct) (=> (= (ControlFlow 0 8) 7) anon7_Else_correct)))))
(let ((anon6_Then_correct true))
(let ((anon5_Else_correct  (=> (or (not (= |g#0| (|#_module.GenDt.Left| |_mcc#0#2_0@0|))) (not true)) (and (=> (= (ControlFlow 0 9) 2) anon6_Then_correct) (=> (= (ControlFlow 0 9) 8) anon6_Else_correct)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 10) 1) anon5_Then_correct) (=> (= (ControlFlow 0 10) 9) anon5_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |g#0| (Tclass._module.GenDt _module._default.ChangeGen$_T0 _module._default.ChangeGen$_T1)) ($IsAlloc DatatypeTypeType |g#0| (Tclass._module.GenDt _module._default.ChangeGen$_T0 _module._default.ChangeGen$_T1) $Heap)) (|$IsA#_module.GenDt| |g#0|)) (and (and (=> |defass#h#0_0| (and ($Is DatatypeTypeType |h#0_0| (Tclass._module.GenDt _module._default.ChangeGen$_T0 _module._default.ChangeGen$_T1)) ($IsAlloc DatatypeTypeType |h#0_0| (Tclass._module.GenDt _module._default.ChangeGen$_T0 _module._default.ChangeGen$_T1) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 11) 10)))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
