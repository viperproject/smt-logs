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
(declare-fun TReal () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._module.Record () T@U)
(declare-fun Tagclass._module.Shared () T@U)
(declare-fun |##_module.Record.Record| () T@U)
(declare-fun |##_module.Shared.AA| () T@U)
(declare-fun |##_module.Shared.BB| () T@U)
(declare-fun tytagFamily$Record () T@U)
(declare-fun tytagFamily$Shared () T@U)
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
(declare-fun |$IsA#_module.Record| (T@U) Bool)
(declare-fun _module.Record.Record_q (T@U) Bool)
(declare-fun |#_module.Shared.AA| (Int Real Real) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Shared.id (T@U) Int)
(declare-fun _module.Shared.a (T@U) Real)
(declare-fun _module.Shared.c (T@U) Real)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Record () T@U)
(declare-fun Tclass._module.Shared () T@U)
(declare-fun |#_module.Shared.BB| (Int Real) T@U)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Shared.AA_q (T@U) Bool)
(declare-fun _module.Shared.BB_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |#_module.Record.Record| (Int) T@U)
(declare-fun |$IsA#_module.Shared| (T@U) Bool)
(declare-fun q@Real (Int) Real)
(declare-fun _module.Shared.b (T@U) Real)
(declare-fun _module.Record.t (T@U) Int)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
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
(assert (distinct TInt TReal TagInt TagReal alloc Tagclass._module.Record Tagclass._module.Shared |##_module.Record.Record| |##_module.Shared.AA| |##_module.Shared.BB| tytagFamily$Record tytagFamily$Shared)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((d T@U) ) (!  (=> (|$IsA#_module.Record| d) (_module.Record.Record_q d))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (|$IsA#_module.Record| d))
)))
(assert (forall ((|a#29#0#0| Int) (|a#29#1#0| Real) (|a#29#2#0| Real) ) (! (= (DatatypeCtorId (|#_module.Shared.AA| |a#29#0#0| |a#29#1#0| |a#29#2#0|)) |##_module.Shared.AA|)
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |570|
 :pattern ( (|#_module.Shared.AA| |a#29#0#0| |a#29#1#0| |a#29#2#0|))
)))
(assert (forall ((|a#33#0#0| Int) (|a#33#1#0| Real) (|a#33#2#0| Real) ) (! (= (_module.Shared.id (|#_module.Shared.AA| |a#33#0#0| |a#33#1#0| |a#33#2#0|)) |a#33#0#0|)
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |579|
 :pattern ( (|#_module.Shared.AA| |a#33#0#0| |a#33#1#0| |a#33#2#0|))
)))
(assert (forall ((|a#34#0#0| Int) (|a#34#1#0| Real) (|a#34#2#0| Real) ) (! (= (_module.Shared.a (|#_module.Shared.AA| |a#34#0#0| |a#34#1#0| |a#34#2#0|)) |a#34#1#0|)
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |580|
 :pattern ( (|#_module.Shared.AA| |a#34#0#0| |a#34#1#0| |a#34#2#0|))
)))
(assert (forall ((|a#35#0#0| Int) (|a#35#1#0| Real) (|a#35#2#0| Real) ) (! (= (_module.Shared.c (|#_module.Shared.AA| |a#35#0#0| |a#35#1#0| |a#35#2#0|)) |a#35#2#0|)
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |581|
 :pattern ( (|#_module.Shared.AA| |a#35#0#0| |a#35#1#0| |a#35#2#0|))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 Tclass._module.Record) (_module.Record.Record_q d@@0))
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (_module.Record.Record_q d@@0) ($Is DatatypeTypeType d@@0 Tclass._module.Record))
)))
(assert (forall ((|a#31#0#0| Int) (|a#31#1#0| Real) (|a#31#2#0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.Shared.AA| |a#31#0#0| |a#31#1#0| |a#31#2#0|) Tclass._module.Shared)  (and (and ($Is intType (int_2_U |a#31#0#0|) TInt) ($Is realType (real_2_U |a#31#1#0|) TReal)) ($Is realType (real_2_U |a#31#2#0|) TReal)))
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |574|
 :pattern ( ($Is DatatypeTypeType (|#_module.Shared.AA| |a#31#0#0| |a#31#1#0| |a#31#2#0|) Tclass._module.Shared))
)))
(assert (forall ((|a#38#0#0| Int) (|a#38#1#0| Real) ) (! (= ($Is DatatypeTypeType (|#_module.Shared.BB| |a#38#0#0| |a#38#1#0|) Tclass._module.Shared)  (and ($Is intType (int_2_U |a#38#0#0|) TInt) ($Is realType (real_2_U |a#38#1#0|) TReal)))
 :qid |SharedDestructorsdfy.39:54|
 :skolemid |586|
 :pattern ( ($Is DatatypeTypeType (|#_module.Shared.BB| |a#38#0#0| |a#38#1#0|) Tclass._module.Shared))
)))
(assert (forall ((x@@2 Real) ) (! (= (LitReal x@@2) x@@2)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.Record.Record_q d@@1) (= (DatatypeCtorId d@@1) |##_module.Record.Record|))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (_module.Record.Record_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.Shared.AA_q d@@2) (= (DatatypeCtorId d@@2) |##_module.Shared.AA|))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (_module.Shared.AA_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.Shared.BB_q d@@3) (= (DatatypeCtorId d@@3) |##_module.Shared.BB|))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (_module.Shared.BB_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Shared.AA_q d@@4) (exists ((|a#30#0#0| Int) (|a#30#1#0| Real) (|a#30#2#0| Real) ) (! (= d@@4 (|#_module.Shared.AA| |a#30#0#0| |a#30#1#0| |a#30#2#0|))
 :qid |SharedDestructorsdfy.39:22|
 :skolemid |572|
)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (_module.Shared.AA_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.Shared.BB_q d@@5) (exists ((|a#37#0#0| Int) (|a#37#1#0| Real) ) (! (= d@@5 (|#_module.Shared.BB| |a#37#0#0| |a#37#1#0|))
 :qid |SharedDestructorsdfy.39:54|
 :skolemid |584|
)))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( (_module.Shared.BB_q d@@5))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Record.Record_q d@@6) (exists ((|a#25#0#0| Int) ) (! (= d@@6 (|#_module.Record.Record| |a#25#0#0|))
 :qid |SharedDestructorsdfy.38:26|
 :skolemid |559|
)))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (_module.Record.Record_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Shared| d@@7) (or (_module.Shared.AA_q d@@7) (_module.Shared.BB_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( (|$IsA#_module.Shared| d@@7))
)))
(assert (forall ((x@@5 Int) ) (! (= (q@Real x@@5) (to_real x@@5))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@5))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.Shared) (or (_module.Shared.AA_q d@@8) (_module.Shared.BB_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( (_module.Shared.BB_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Shared))
 :pattern ( (_module.Shared.AA_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Shared))
)))
(assert (forall ((|a#36#0#0| Int) (|a#36#1#0| Real) ) (! (= (DatatypeCtorId (|#_module.Shared.BB| |a#36#0#0| |a#36#1#0|)) |##_module.Shared.BB|)
 :qid |SharedDestructorsdfy.39:54|
 :skolemid |582|
 :pattern ( (|#_module.Shared.BB| |a#36#0#0| |a#36#1#0|))
)))
(assert (forall ((|a#40#0#0| Int) (|a#40#1#0| Real) ) (! (= (_module.Shared.id (|#_module.Shared.BB| |a#40#0#0| |a#40#1#0|)) |a#40#0#0|)
 :qid |SharedDestructorsdfy.39:54|
 :skolemid |590|
 :pattern ( (|#_module.Shared.BB| |a#40#0#0| |a#40#1#0|))
)))
(assert (forall ((|a#41#0#0| Int) (|a#41#1#0| Real) ) (! (= (_module.Shared.b (|#_module.Shared.BB| |a#41#0#0| |a#41#1#0|)) |a#41#1#0|)
 :qid |SharedDestructorsdfy.39:54|
 :skolemid |591|
 :pattern ( (|#_module.Shared.BB| |a#41#0#0| |a#41#1#0|))
)))
(assert (forall ((|a#24#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.Record.Record| |a#24#0#0|)) |##_module.Record.Record|)
 :qid |SharedDestructorsdfy.38:26|
 :skolemid |557|
 :pattern ( (|#_module.Record.Record| |a#24#0#0|))
)))
(assert (forall ((|a#28#0#0| Int) ) (! (= (_module.Record.t (|#_module.Record.Record| |a#28#0#0|)) |a#28#0#0|)
 :qid |SharedDestructorsdfy.38:26|
 :skolemid |564|
 :pattern ( (|#_module.Record.Record| |a#28#0#0|))
)))
(assert (forall ((x@@6 T@U) (T@@1 T@T) ) (! (= ($Unbox T@@1 ($Box T@@1 x@@6)) x@@6)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@1 x@@6))
)))
(assert (forall ((|a#26#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Record.Record| |a#26#0#0|) Tclass._module.Record) ($Is intType (int_2_U |a#26#0#0|) TInt))
 :qid |SharedDestructorsdfy.38:26|
 :skolemid |561|
 :pattern ( ($Is DatatypeTypeType (|#_module.Record.Record| |a#26#0#0|) Tclass._module.Record))
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
 :skolemid |769|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((d@@9 T@U) ($h T@U) ) (!  (=> (and ($IsGoodHeap $h) (and (_module.Record.Record_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.Record $h))) ($IsAlloc intType (int_2_U (_module.Record.t d@@9)) TInt $h))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Record.t d@@9)) TInt $h))
)))
(assert (forall ((d@@10 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.Shared.AA_q d@@10) ($IsAlloc DatatypeTypeType d@@10 Tclass._module.Shared $h@@0))) ($IsAlloc intType (int_2_U (_module.Shared.id d@@10)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Shared.id d@@10)) TInt $h@@0))
)))
(assert (forall ((d@@11 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.Shared.AA_q d@@11) ($IsAlloc DatatypeTypeType d@@11 Tclass._module.Shared $h@@1))) ($IsAlloc realType (real_2_U (_module.Shared.a d@@11)) TReal $h@@1))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Shared.a d@@11)) TReal $h@@1))
)))
(assert (forall ((d@@12 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (_module.Shared.AA_q d@@12) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.Shared $h@@2))) ($IsAlloc realType (real_2_U (_module.Shared.c d@@12)) TReal $h@@2))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Shared.c d@@12)) TReal $h@@2))
)))
(assert (forall ((d@@13 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Shared.BB_q d@@13) ($IsAlloc DatatypeTypeType d@@13 Tclass._module.Shared $h@@3))) ($IsAlloc intType (int_2_U (_module.Shared.id d@@13)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Shared.id d@@13)) TInt $h@@3))
)))
(assert (forall ((d@@14 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Shared.BB_q d@@14) ($IsAlloc DatatypeTypeType d@@14 Tclass._module.Shared $h@@4))) ($IsAlloc realType (real_2_U (_module.Shared.b d@@14)) TReal $h@@4))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc realType (real_2_U (_module.Shared.b d@@14)) TReal $h@@4))
)))
(assert (forall ((d@@15 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) ($Is DatatypeTypeType d@@15 Tclass._module.Record)) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Record $h@@5))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAlloc DatatypeTypeType d@@15 Tclass._module.Record $h@@5))
)))
(assert (forall ((d@@16 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) ($Is DatatypeTypeType d@@16 Tclass._module.Shared)) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Shared $h@@6))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsAlloc DatatypeTypeType d@@16 Tclass._module.Shared $h@@6))
)))
(assert (= (Tag Tclass._module.Record) Tagclass._module.Record))
(assert (= (TagFamily Tclass._module.Record) tytagFamily$Record))
(assert (= (Tag Tclass._module.Shared) Tagclass._module.Shared))
(assert (= (TagFamily Tclass._module.Shared) tytagFamily$Shared))
(assert (forall ((x@@7 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@7))) (Lit BoxType ($Box realType (real_2_U x@@7))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@2 T@T) ) (! (= ($Box T@@2 (Lit T@@2 x@@8)) (Lit BoxType ($Box T@@2 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@2 (Lit T@@2 x@@8)))
)))
(assert (forall ((h T@U) (v T@U) ) (! ($IsAlloc intType v TInt h)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v TInt h))
)))
(assert (forall ((h@@0 T@U) (v@@0 T@U) ) (! ($IsAlloc realType v@@0 TReal h@@0)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@0 TReal h@@0))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is realType v@@2 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@2 TReal))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |sh#0| () T@U)
(declare-fun |let#3_0#0#0| () T@U)
(declare-fun |dt_update_tmp#3#Z#3_0@0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun |let#3_1#0#0| () Real)
(declare-fun |dt_update#a#2#Z#3_0@0| () Real)
(declare-fun |sh'#0@2| () T@U)
(declare-fun |let#2_0#0#0| () T@U)
(declare-fun |dt_update_tmp#2#Z#2_0@0| () T@U)
(declare-fun |let#2_1#0#0| () Real)
(declare-fun |dt_update#a#1#Z#2_0@0| () Real)
(declare-fun |sh'#0@1| () T@U)
(declare-fun |f#0@1| () Real)
(declare-fun |r#0| () T@U)
(declare-fun |f#0@0| () Real)
(declare-fun |let#0_0#0#0| () T@U)
(declare-fun |dt_update_tmp#1#Z#0_0@0| () T@U)
(declare-fun |let#0_1#0#0| () Real)
(declare-fun |dt_update#a#0#Z#0_0@0| () Real)
(declare-fun |sh'#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |dt_update_tmp#0#Z#0@0| () T@U)
(declare-fun |let#1#0#0| () Int)
(declare-fun |dt_update#t#0#Z#0@0| () Int)
(declare-fun |r'#0@0| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |r'#0| () T@U)
(declare-fun |sh'#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.N)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (_module.Shared.AA_q |sh#0|)) (=> (_module.Shared.AA_q |sh#0|) (=> (= |let#3_0#0#0| |sh#0|) (=> (and ($Is DatatypeTypeType |let#3_0#0#0| Tclass._module.Shared) (= |dt_update_tmp#3#Z#3_0@0| |let#3_0#0#0|)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (_module.Shared.BB_q |bb#0|)) (=> (_module.Shared.BB_q |bb#0|) (=> (= |let#3_1#0#0| (_module.Shared.b |bb#0|)) (=> (and (and ($Is realType (real_2_U |let#3_1#0#0|) TReal) (= |dt_update#a#2#Z#3_0@0| |let#3_1#0#0|)) (and (or (_module.Shared.AA_q |dt_update_tmp#3#Z#3_0@0|) (_module.Shared.BB_q |dt_update_tmp#3#Z#3_0@0|)) (= (ControlFlow 0 6) (- 0 5)))) (_module.Shared.AA_q |dt_update_tmp#3#Z#3_0@0|)))))))))))
(let ((anon11_Then_correct  (and (=> (= (ControlFlow 0 2) (- 0 4)) (_module.Shared.AA_q |sh'#0@2|)) (=> (_module.Shared.AA_q |sh'#0@2|) (=> (= |let#2_0#0#0| |sh'#0@2|) (=> (and ($Is DatatypeTypeType |let#2_0#0#0| Tclass._module.Shared) (= |dt_update_tmp#2#Z#2_0@0| |let#2_0#0#0|)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (_module.Shared.BB_q |bb#0|)) (=> (_module.Shared.BB_q |bb#0|) (=> (= |let#2_1#0#0| (_module.Shared.b |bb#0|)) (=> (and (and ($Is realType (real_2_U |let#2_1#0#0|) TReal) (= |dt_update#a#1#Z#2_0@0| |let#2_1#0#0|)) (and (or (_module.Shared.AA_q |dt_update_tmp#2#Z#2_0@0|) (_module.Shared.BB_q |dt_update_tmp#2#Z#2_0@0|)) (= (ControlFlow 0 2) (- 0 1)))) (_module.Shared.AA_q |dt_update_tmp#2#Z#2_0@0|)))))))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 9) 2) anon11_Then_correct) (=> (= (ControlFlow 0 9) 6) anon11_Else_correct))))
(let ((anon5_correct  (=> (and (= |sh'#0@2| |sh'#0@1|) (= (ControlFlow 0 15) 9)) anon6_correct)))
(let ((anon10_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (_module.Shared.AA_q |sh#0|)) (=> (_module.Shared.AA_q |sh#0|) (=> (and (= |f#0@1| (_module.Shared.a |sh#0|)) (= (ControlFlow 0 16) 15)) anon5_correct)))))
(let ((anon9_Else_correct  (=> (not (_module.Shared.AA_q |sh#0|)) (=> (and (_module.Record.Record_q |r#0|) (_module.Record.Record_q |r#0|)) (=> (and (and (_module.Record.Record_q |r#0|) (_module.Record.Record_q |r#0|)) (= |sh'#0@1| (|#_module.Shared.AA| (_module.Record.t |r#0|) (q@Real (_module.Record.t |r#0|)) (LitReal 0.0)))) (and (=> (= (ControlFlow 0 18) 16) anon10_Then_correct) (=> (= (ControlFlow 0 18) 15) anon5_correct)))))))
(let ((anon9_Then_correct  (=> (_module.Shared.AA_q |sh#0|) (and (=> (= (ControlFlow 0 10) (- 0 14)) (_module.Shared.AA_q |sh#0|)) (=> (_module.Shared.AA_q |sh#0|) (=> (= |f#0@0| (_module.Shared.a |sh#0|)) (and (=> (= (ControlFlow 0 10) (- 0 13)) (_module.Shared.AA_q |sh#0|)) (=> (_module.Shared.AA_q |sh#0|) (=> (= |let#0_0#0#0| |sh#0|) (=> (and ($Is DatatypeTypeType |let#0_0#0#0| Tclass._module.Shared) (= |dt_update_tmp#1#Z#0_0@0| |let#0_0#0#0|)) (and (=> (= (ControlFlow 0 10) (- 0 12)) (_module.Shared.BB_q |bb#0|)) (=> (_module.Shared.BB_q |bb#0|) (=> (and (and (= |let#0_1#0#0| (+ (_module.Shared.b |bb#0|) 100.2)) ($Is realType (real_2_U |let#0_1#0#0|) TReal)) (and (= |dt_update#a#0#Z#0_0@0| |let#0_1#0#0|) (or (_module.Shared.AA_q |dt_update_tmp#1#Z#0_0@0|) (_module.Shared.BB_q |dt_update_tmp#1#Z#0_0@0|)))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (_module.Shared.AA_q |dt_update_tmp#1#Z#0_0@0|)) (=> (_module.Shared.AA_q |dt_update_tmp#1#Z#0_0@0|) (=> (and (and (let ((|dt_update_tmp#1#0_0| |sh#0|))
 (or (_module.Shared.AA_q |dt_update_tmp#1#0_0|) (_module.Shared.BB_q |dt_update_tmp#1#0_0|))) (= |sh'#0@0| (let ((|dt_update_tmp#1#0_0@@0| |sh#0|))
(let ((|dt_update#a#0#0_0| (+ (_module.Shared.b |bb#0|) 100.2)))
(|#_module.Shared.AA| (_module.Shared.id |dt_update_tmp#1#0_0@@0|) |dt_update#a#0#0_0| (_module.Shared.c |dt_update_tmp#1#0_0@@0|)))))) (and (= |sh'#0@2| |sh'#0@0|) (= (ControlFlow 0 10) 9))) anon6_correct))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (= |let#0#0#0| |r#0|) ($Is DatatypeTypeType |let#0#0#0| Tclass._module.Record)) (=> (and (and (= |dt_update_tmp#0#Z#0@0| |let#0#0#0|) (_module.Record.Record_q |r#0|)) (and (or (_module.Shared.AA_q |sh#0|) (_module.Shared.BB_q |sh#0|)) (= |let#1#0#0| (+ (_module.Record.t |r#0|) (_module.Shared.id |sh#0|))))) (=> (and (and (and (_module.Record.Record_q |r#0|) (or (_module.Shared.AA_q |sh#0|) (_module.Shared.BB_q |sh#0|))) (and ($Is intType (int_2_U |let#1#0#0|) TInt) (= |dt_update#t#0#Z#0@0| |let#1#0#0|))) (and (and (_module.Record.Record_q |r#0|) (or (_module.Shared.AA_q |sh#0|) (_module.Shared.BB_q |sh#0|))) (= |r'#0@0| (let ((|dt_update#t#0#0| (+ (_module.Record.t |r#0|) (_module.Shared.id |sh#0|))))
(|#_module.Record.Record| |dt_update#t#0#0|))))) (and (=> (= (ControlFlow 0 19) 10) anon9_Then_correct) (=> (= (ControlFlow 0 19) 18) anon9_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |r#0| Tclass._module.Record) ($IsAlloc DatatypeTypeType |r#0| Tclass._module.Record $Heap)) (|$IsA#_module.Record| |r#0|)) (and (and ($Is DatatypeTypeType |sh#0| Tclass._module.Shared) ($IsAlloc DatatypeTypeType |sh#0| Tclass._module.Shared $Heap)) (|$IsA#_module.Shared| |sh#0|))) (=> (and (and (and (and ($Is DatatypeTypeType |bb#0| Tclass._module.Shared) ($IsAlloc DatatypeTypeType |bb#0| Tclass._module.Shared $Heap)) (|$IsA#_module.Shared| |bb#0|)) (and ($Is DatatypeTypeType |r'#0| Tclass._module.Record) ($IsAlloc DatatypeTypeType |r'#0| Tclass._module.Record $Heap))) (and (and (and ($Is DatatypeTypeType |sh'#0| Tclass._module.Shared) ($IsAlloc DatatypeTypeType |sh'#0| Tclass._module.Shared $Heap)) (= 1 $FunctionContextHeight)) (and (_module.Shared.BB_q |bb#0|) (= (ControlFlow 0 20) 19)))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 16) (- 17))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 6) (- 8))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
