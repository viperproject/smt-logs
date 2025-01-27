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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.TestVariables.DT () T@U)
(declare-fun |##TestVariables.DT.A| () T@U)
(declare-fun |##TestVariables.DT.B| () T@U)
(declare-fun |##TestVariables.DT.C| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$DT () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun SetType () T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#TestVariables.DT.A| () T@U)
(declare-fun |#TestVariables.DT.B| () T@U)
(declare-fun |#TestVariables.DT.C| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.TestVariables.DT () T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TestVariables.DT.A_q (T@U) Bool)
(declare-fun TestVariables.DT.B_q (T@U) Bool)
(declare-fun TestVariables.DT.C_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun |$IsA#TestVariables.DT| (T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |lambda#1| () T@U)
(declare-fun |lambda#4| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass.TestVariables.DT |##TestVariables.DT.A| |##TestVariables.DT.B| |##TestVariables.DT.C| tytagFamily$object |tytagFamily$_#Func1| tytagFamily$DT)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 3)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (= (Ctor SetType) 7)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |1378|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#1_0#heap#0| T@U) (|$l#1_0#y#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#1_0#heap#0| |$l#1_0#y#0|)) ($IsBox |$l#1_0#y#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |2640|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#1_0#heap#0| |$l#1_0#y#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1131|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#TestVariables.DT.A|) |##TestVariables.DT.A|))
(assert (= (DatatypeCtorId |#TestVariables.DT.B|) |##TestVariables.DT.B|))
(assert (= (DatatypeCtorId |#TestVariables.DT.C|) |##TestVariables.DT.C|))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |1395|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |1396|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |1397|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._System.object $h) ($IsAlloc refType |c#0| Tclass._System.object? $h))
 :qid |unknown.0:0|
 :skolemid |1357|
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._System.object? $h))
)))
(assert (= (Ctor DatatypeTypeType) 9))
(assert ($Is DatatypeTypeType |#TestVariables.DT.A| Tclass.TestVariables.DT))
(assert ($Is DatatypeTypeType |#TestVariables.DT.B| Tclass.TestVariables.DT))
(assert ($Is DatatypeTypeType |#TestVariables.DT.C| Tclass.TestVariables.DT))
(assert (forall (($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o Tclass._System.object? $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1354|
 :pattern ( ($IsAlloc refType $o Tclass._System.object? $h@@0))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1124|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1125|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1023|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1021|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1391|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((d T@U) ) (! (= (TestVariables.DT.A_q d) (= (DatatypeCtorId d) |##TestVariables.DT.A|))
 :qid |unknown.0:0|
 :skolemid |1500|
 :pattern ( (TestVariables.DT.A_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (TestVariables.DT.B_q d@@0) (= (DatatypeCtorId d@@0) |##TestVariables.DT.B|))
 :qid |unknown.0:0|
 :skolemid |1502|
 :pattern ( (TestVariables.DT.B_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (TestVariables.DT.C_q d@@1) (= (DatatypeCtorId d@@1) |##TestVariables.DT.C|))
 :qid |unknown.0:0|
 :skolemid |1504|
 :pattern ( (TestVariables.DT.C_q d@@1))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1032|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |1383|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |1384|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |1385|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |1386|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (TestVariables.DT.A_q d@@2) (= d@@2 |#TestVariables.DT.A|))
 :qid |unknown.0:0|
 :skolemid |1501|
 :pattern ( (TestVariables.DT.A_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (TestVariables.DT.B_q d@@3) (= d@@3 |#TestVariables.DT.B|))
 :qid |unknown.0:0|
 :skolemid |1503|
 :pattern ( (TestVariables.DT.B_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (TestVariables.DT.C_q d@@4) (= d@@4 |#TestVariables.DT.C|))
 :qid |unknown.0:0|
 :skolemid |1505|
 :pattern ( (TestVariables.DT.C_q d@@4))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1052|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1053|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |1107|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1045|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1117|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@3) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1116|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |1379|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1380|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |1381|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |1382|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |1387|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |1388|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |1389|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |1390|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((s T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@4) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |1088|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |1376|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1352|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1355|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.TestVariables.DT) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass.TestVariables.DT)))
 :qid |unknown.0:0|
 :skolemid |1485|
 :pattern ( ($IsBox bx@@7 Tclass.TestVariables.DT))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._System.object)  (and ($Is refType |c#0@@0| Tclass._System.object?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1356|
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@0| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |1401|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |1402|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#1_0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#1_0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |2641|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#1_0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#1_0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#1_0#ly#0|) |l#0@@1|)
 :qid |OrPatternsdfy.75:31|
 :skolemid |2643|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#1_0#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1156|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1123|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1393|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |1394|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TInt) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1033|
 :pattern ( ($IsBox bx@@8 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1044|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |1377|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1073|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1074|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |1373|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |1374|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@0 T@U) ) (! ($Is refType $o@@0 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1353|
 :pattern ( ($Is refType $o@@0 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1007|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1008|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1031|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (|$IsA#TestVariables.DT| d@@5) (or (or (TestVariables.DT.A_q d@@5) (TestVariables.DT.B_q d@@5)) (TestVariables.DT.C_q d@@5)))
 :qid |unknown.0:0|
 :skolemid |1507|
 :pattern ( (|$IsA#TestVariables.DT| d@@5))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |1108|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |1398|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |1399|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |1400|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |1375|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |2638|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1372|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 Tclass.TestVariables.DT) (or (or (TestVariables.DT.A_q d@@6) (TestVariables.DT.B_q d@@6)) (TestVariables.DT.C_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1508|
 :pattern ( (TestVariables.DT.C_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.TestVariables.DT))
 :pattern ( (TestVariables.DT.B_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.TestVariables.DT))
 :pattern ( (TestVariables.DT.A_q d@@6) ($Is DatatypeTypeType d@@6 Tclass.TestVariables.DT))
)))
(assert (forall ((|$l#1_0#heap#0@@0| T@U) (|$l#1_0#y#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#1_0#heap#0@@0| |$l#1_0#y#0@@0|) ($Box intType ($Unbox intType |$l#1_0#y#0@@0|)))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |2639|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType |lambda#1| |$l#1_0#heap#0@@0| |$l#1_0#y#0@@0|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |1392|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@11 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1038|
 :pattern ( ($IsBox bx@@11 (TSet t@@5)))
)))
(assert (forall ((d@@7 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) ($Is DatatypeTypeType d@@7 Tclass.TestVariables.DT)) ($IsAlloc DatatypeTypeType d@@7 Tclass.TestVariables.DT $h@@1))
 :qid |unknown.0:0|
 :skolemid |1506|
 :pattern ( ($IsAlloc DatatypeTypeType d@@7 Tclass.TestVariables.DT $h@@1))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.TestVariables.DT) Tagclass.TestVariables.DT))
(assert (= (TagFamily Tclass.TestVariables.DT) tytagFamily$DT))
(assert (= |#TestVariables.DT.A| (Lit DatatypeTypeType |#TestVariables.DT.A|)))
(assert (= |#TestVariables.DT.B| (Lit DatatypeTypeType |#TestVariables.DT.B|)))
(assert (= |#TestVariables.DT.C| (Lit DatatypeTypeType |#TestVariables.DT.C|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |1089|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1154|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1155|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1024|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1022|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@10 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@10)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1067|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@10))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#1_0#heap#0@@1| T@U) (|$l#1_0#y#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#1_0#heap#0@@1| |$l#1_0#y#0@@1|) |l#0@@3|)
 :qid |OrPatternsdfy.75:31|
 :skolemid |2642|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@3|) |$l#1_0#heap#0@@1| |$l#1_0#y#0@@1|))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1046|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$lambdaHeap#2_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x#2_0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |dt#0| () T@U)
(declare-fun |$lambdaHeap#1_0@0| () T@U)
(declare-fun |x#1_0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$TestVariables.__default.M2)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct true))
(let ((anon14_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#2_0@0|) (or (= $Heap |$lambdaHeap#2_0@0|) ($HeapSucc $Heap |$lambdaHeap#2_0@0|))) (and (=> (= (ControlFlow 0 15) 13) anon15_Then_correct) (=> (= (ControlFlow 0 15) 14) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (= |x#2_0@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| TInt) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))) (= (ControlFlow 0 12) (- 0 11))) (= |x#2_0@0| (LitInt 1)))))
(let ((anon13_Then_correct  (=> (= |dt#0| |#TestVariables.DT.A|) (and (=> (= (ControlFlow 0 16) 15) anon14_Then_correct) (=> (= (ControlFlow 0 16) 12) anon14_Else_correct)))))
(let ((anon18_Else_correct true))
(let ((anon18_Then_correct true))
(let ((anon17_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0@0|) (or (= $Heap |$lambdaHeap#1_0@0|) ($HeapSucc $Heap |$lambdaHeap#1_0@0|))) (and (=> (= (ControlFlow 0 8) 6) anon18_Then_correct) (=> (= (ControlFlow 0 8) 7) anon18_Else_correct)))))
(let ((anon17_Else_correct  (=> (and (= |x#1_0@0| (U_2_int ($Unbox intType (Apply1 TInt TInt $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 |lambda#1| (|lambda#2| TInt) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U (LitInt 1))))))) (= (ControlFlow 0 5) (- 0 4))) (= |x#1_0@0| (LitInt 1)))))
(let ((anon16_Then_correct  (=> (= |dt#0| |#TestVariables.DT.B|) (and (=> (= (ControlFlow 0 9) 8) anon17_Then_correct) (=> (= (ControlFlow 0 9) 5) anon17_Else_correct)))))
(let ((anon19_Else_correct true))
(let ((anon19_Then_correct true))
(let ((anon16_Else_correct  (=> (or (not (= |dt#0| |#TestVariables.DT.B|)) (not true)) (and (=> (= (ControlFlow 0 3) 1) anon19_Then_correct) (=> (= (ControlFlow 0 3) 2) anon19_Else_correct)))))
(let ((anon13_Else_correct  (=> (or (not (= |dt#0| |#TestVariables.DT.A|)) (not true)) (and (=> (= (ControlFlow 0 10) 9) anon16_Then_correct) (=> (= (ControlFlow 0 10) 3) anon16_Else_correct)))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 17) 16) anon13_Then_correct) (=> (= (ControlFlow 0 17) 10) anon13_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is DatatypeTypeType |dt#0| Tclass.TestVariables.DT) ($IsAlloc DatatypeTypeType |dt#0| Tclass.TestVariables.DT $Heap)) (|$IsA#TestVariables.DT| |dt#0|)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 18) 17))) anon0_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
