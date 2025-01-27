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
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.MoreTests.C () T@U)
(declare-fun Tagclass.MoreTests.C? () T@U)
(declare-fun Tagclass.MoreTests.Even () T@U)
(declare-fun Tagclass.MoreTests.Z () T@U)
(declare-fun Tagclass.MoreTests.X () T@U)
(declare-fun Tagclass.MoreTests.Y () T@U)
(declare-fun Tagclass.MoreTests.Dt () T@U)
(declare-fun Tagclass.MoreTests.DtCovariant () T@U)
(declare-fun |##MoreTests.Dt.Make| () T@U)
(declare-fun |##MoreTests.DtCovariant.MakeCovariant| () T@U)
(declare-fun Tagclass.MoreTests.Z? () T@U)
(declare-fun Tagclass.MoreTests.X? () T@U)
(declare-fun Tagclass.MoreTests.Y? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Even () T@U)
(declare-fun tytagFamily$Z () T@U)
(declare-fun tytagFamily$X () T@U)
(declare-fun tytagFamily$Y () T@U)
(declare-fun tytagFamily$Dt () T@U)
(declare-fun tytagFamily$DtCovariant () T@U)
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
(declare-fun Tclass.MoreTests.Even () T@U)
(declare-fun implements$MoreTests.X (T@U) Bool)
(declare-fun Tclass.MoreTests.C? () T@U)
(declare-fun implements$MoreTests.Y (T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun MoreTests.Dt.Make_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.MoreTests.Dt (T@U) T@U)
(declare-fun MoreTests.DtCovariant.MakeCovariant_q (T@U) Bool)
(declare-fun Tclass.MoreTests.DtCovariant (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tclass.MoreTests.X? () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Tclass.MoreTests.Z? () T@U)
(declare-fun Tclass.MoreTests.Y? () T@U)
(declare-fun Tclass.MoreTests.Z () T@U)
(declare-fun Tclass.MoreTests.X () T@U)
(declare-fun Tclass.MoreTests.Y () T@U)
(declare-fun Tclass.MoreTests.C () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |#MoreTests.Dt.Make| (T@U) T@U)
(declare-fun |#MoreTests.DtCovariant.MakeCovariant| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass.MoreTests.Dt_0 (T@U) T@U)
(declare-fun Tclass.MoreTests.DtCovariant_0 (T@U) T@U)
(declare-fun MoreTests.Dt._h0 (T@U) T@U)
(declare-fun MoreTests.DtCovariant._h1 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun implements$MoreTests.Z (T@U) Bool)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass.MoreTests.C Tagclass.MoreTests.C? Tagclass.MoreTests.Even Tagclass.MoreTests.Z Tagclass.MoreTests.X Tagclass.MoreTests.Y Tagclass.MoreTests.Dt Tagclass.MoreTests.DtCovariant |##MoreTests.Dt.Make| |##MoreTests.DtCovariant.MakeCovariant| Tagclass.MoreTests.Z? Tagclass.MoreTests.X? Tagclass.MoreTests.Y? tytagFamily$nat tytagFamily$C tytagFamily$Even tytagFamily$Z tytagFamily$X tytagFamily$Y tytagFamily$Dt tytagFamily$DtCovariant)
)
(assert (= (Tag TInt) TagInt))
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
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.MoreTests.Even $h@@0)
 :qid |unknown.0:0|
 :skolemid |544|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.MoreTests.Even $h@@0))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (implements$MoreTests.X Tclass.MoreTests.C?))
(assert (implements$MoreTests.Y Tclass.MoreTests.C?))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((MoreTests.Dt$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.MoreTests.Dt MoreTests.Dt$T)) (MoreTests.Dt.Make_q d))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (MoreTests.Dt.Make_q d) ($Is DatatypeTypeType d (Tclass.MoreTests.Dt MoreTests.Dt$T)))
)))
(assert (forall ((MoreTests.DtCovariant$T T@U) (d@@0 T@U) ) (!  (=> ($Is DatatypeTypeType d@@0 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T)) (MoreTests.DtCovariant.MakeCovariant_q d@@0))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( (MoreTests.DtCovariant.MakeCovariant_q d@@0) ($Is DatatypeTypeType d@@0 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.MoreTests.C?)  (or (= $o null) (= (dtype $o) Tclass.MoreTests.C?)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($Is refType $o Tclass.MoreTests.C?))
)))
(assert (forall ((bx T@U) ($h@@1 T@U) ) (!  (=> (and ($IsAllocBox bx Tclass.MoreTests.X? $h@@1) ($IsGoodHeap $h@@1)) ($IsAllocBox bx Tclass.MoreTests.Z? $h@@1))
 :qid |unknown.0:0|
 :skolemid |593|
 :pattern ( ($IsAllocBox bx Tclass.MoreTests.X? $h@@1))
)))
(assert (forall ((bx@@0 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsAllocBox bx@@0 Tclass.MoreTests.Y? $h@@2) ($IsGoodHeap $h@@2)) ($IsAllocBox bx@@0 Tclass.MoreTests.Z? $h@@2))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsAllocBox bx@@0 Tclass.MoreTests.Y? $h@@2))
)))
(assert (forall ((bx@@1 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsAllocBox bx@@1 Tclass.MoreTests.C? $h@@3) ($IsGoodHeap $h@@3)) ($IsAllocBox bx@@1 Tclass.MoreTests.X? $h@@3))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAllocBox bx@@1 Tclass.MoreTests.C? $h@@3))
)))
(assert (forall ((bx@@2 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsAllocBox bx@@2 Tclass.MoreTests.C? $h@@4) ($IsGoodHeap $h@@4)) ($IsAllocBox bx@@2 Tclass.MoreTests.Y? $h@@4))
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( ($IsAllocBox bx@@2 Tclass.MoreTests.C? $h@@4))
)))
(assert (forall ((|c#0| T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.MoreTests.Z $h@@5) ($IsAlloc refType |c#0| Tclass.MoreTests.Z? $h@@5))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsAlloc refType |c#0| Tclass.MoreTests.Z $h@@5))
 :pattern ( ($IsAlloc refType |c#0| Tclass.MoreTests.Z? $h@@5))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.MoreTests.X $h@@6) ($IsAlloc refType |c#0@@0| Tclass.MoreTests.X? $h@@6))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.MoreTests.X $h@@6))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.MoreTests.X? $h@@6))
)))
(assert (forall ((|c#0@@1| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@1| Tclass.MoreTests.Y $h@@7) ($IsAlloc refType |c#0@@1| Tclass.MoreTests.Y? $h@@7))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.MoreTests.Y $h@@7))
 :pattern ( ($IsAlloc refType |c#0@@1| Tclass.MoreTests.Y? $h@@7))
)))
(assert (forall ((|c#0@@2| T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType |c#0@@2| Tclass.MoreTests.C $h@@8) ($IsAlloc refType |c#0@@2| Tclass.MoreTests.C? $h@@8))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.MoreTests.C $h@@8))
 :pattern ( ($IsAlloc refType |c#0@@2| Tclass.MoreTests.C? $h@@8))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@9 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.MoreTests.Z? $h@@9)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@9 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.MoreTests.Z? $h@@9))
)))
(assert (forall (($o@@1 T@U) ($h@@10 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.MoreTests.X? $h@@10)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@10 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.MoreTests.X? $h@@10))
)))
(assert (forall (($o@@2 T@U) ($h@@11 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass.MoreTests.Y? $h@@11)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsAlloc refType $o@@2 Tclass.MoreTests.Y? $h@@11))
)))
(assert (forall (($o@@3 T@U) ($h@@12 T@U) ) (! (= ($IsAlloc refType $o@@3 Tclass.MoreTests.C? $h@@12)  (or (= $o@@3 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@3) alloc)))))
 :qid |unknown.0:0|
 :skolemid |589|
 :pattern ( ($IsAlloc refType $o@@3 Tclass.MoreTests.C? $h@@12))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((x@@5 Int) ) (! (= (LitInt x@@5) x@@5)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@5))
)))
(assert (forall ((x@@6 T@U) (T T@T) ) (! (= (Lit T x@@6) x@@6)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@6))
)))
(assert (forall ((d@@1 T@U) ) (! (= (MoreTests.Dt.Make_q d@@1) (= (DatatypeCtorId d@@1) |##MoreTests.Dt.Make|))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( (MoreTests.Dt.Make_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (MoreTests.DtCovariant.MakeCovariant_q d@@2) (= (DatatypeCtorId d@@2) |##MoreTests.DtCovariant.MakeCovariant|))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( (MoreTests.DtCovariant.MakeCovariant_q d@@2))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (MoreTests.Dt.Make_q d@@3) (exists ((|a#1#0#0| T@U) ) (! (= d@@3 (|#MoreTests.Dt.Make| |a#1#0#0|))
 :qid |gitissue2013dfy.104:25|
 :skolemid |547|
)))
 :qid |unknown.0:0|
 :skolemid |548|
 :pattern ( (MoreTests.Dt.Make_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (MoreTests.DtCovariant.MakeCovariant_q d@@4) (exists ((|a#7#0#0| T@U) ) (! (= d@@4 (|#MoreTests.DtCovariant.MakeCovariant| |a#7#0#0|))
 :qid |gitissue2013dfy.105:44|
 :skolemid |561|
)))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (MoreTests.DtCovariant.MakeCovariant_q d@@4))
)))
(assert (forall ((|x#0@@1| T@U) ) (! (= ($Is intType |x#0@@1| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@1|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@1| Tclass._System.nat))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@4 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@4 t@@0 h@@1) ($IsAllocBox bx@@4 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@4 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((MoreTests.Dt$T@@0 T@U) ) (!  (and (= (Tag (Tclass.MoreTests.Dt MoreTests.Dt$T@@0)) Tagclass.MoreTests.Dt) (= (TagFamily (Tclass.MoreTests.Dt MoreTests.Dt$T@@0)) tytagFamily$Dt))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( (Tclass.MoreTests.Dt MoreTests.Dt$T@@0))
)))
(assert (forall ((MoreTests.DtCovariant$T@@0 T@U) ) (!  (and (= (Tag (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@0)) Tagclass.MoreTests.DtCovariant) (= (TagFamily (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@0)) tytagFamily$DtCovariant))
 :qid |unknown.0:0|
 :skolemid |540|
 :pattern ( (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@0))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@5 Tclass._System.nat))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.MoreTests.C) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass.MoreTests.C)))
 :qid |unknown.0:0|
 :skolemid |531|
 :pattern ( ($IsBox bx@@6 Tclass.MoreTests.C))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.MoreTests.C?) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass.MoreTests.C?)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( ($IsBox bx@@7 Tclass.MoreTests.C?))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.MoreTests.Even) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass.MoreTests.Even)))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( ($IsBox bx@@8 Tclass.MoreTests.Even))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.MoreTests.Z) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.MoreTests.Z)))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsBox bx@@9 Tclass.MoreTests.Z))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.MoreTests.X) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.MoreTests.X)))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsBox bx@@10 Tclass.MoreTests.X))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 Tclass.MoreTests.Y) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) Tclass.MoreTests.Y)))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( ($IsBox bx@@11 Tclass.MoreTests.Y))
)))
(assert (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 Tclass.MoreTests.Z?) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) Tclass.MoreTests.Z?)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsBox bx@@12 Tclass.MoreTests.Z?))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 Tclass.MoreTests.X?) (and (= ($Box refType ($Unbox refType bx@@13)) bx@@13) ($Is refType ($Unbox refType bx@@13) Tclass.MoreTests.X?)))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( ($IsBox bx@@13 Tclass.MoreTests.X?))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 Tclass.MoreTests.Y?) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) Tclass.MoreTests.Y?)))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($IsBox bx@@14 Tclass.MoreTests.Y?))
)))
(assert (forall ((|c#0@@3| T@U) ) (! (= ($Is refType |c#0@@3| Tclass.MoreTests.Z)  (and ($Is refType |c#0@@3| Tclass.MoreTests.Z?) (or (not (= |c#0@@3| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( ($Is refType |c#0@@3| Tclass.MoreTests.Z))
 :pattern ( ($Is refType |c#0@@3| Tclass.MoreTests.Z?))
)))
(assert (forall ((|c#0@@4| T@U) ) (! (= ($Is refType |c#0@@4| Tclass.MoreTests.X)  (and ($Is refType |c#0@@4| Tclass.MoreTests.X?) (or (not (= |c#0@@4| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |581|
 :pattern ( ($Is refType |c#0@@4| Tclass.MoreTests.X))
 :pattern ( ($Is refType |c#0@@4| Tclass.MoreTests.X?))
)))
(assert (forall ((|c#0@@5| T@U) ) (! (= ($Is refType |c#0@@5| Tclass.MoreTests.Y)  (and ($Is refType |c#0@@5| Tclass.MoreTests.Y?) (or (not (= |c#0@@5| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($Is refType |c#0@@5| Tclass.MoreTests.Y))
 :pattern ( ($Is refType |c#0@@5| Tclass.MoreTests.Y?))
)))
(assert (forall ((|c#0@@6| T@U) ) (! (= ($Is refType |c#0@@6| Tclass.MoreTests.C)  (and ($Is refType |c#0@@6| Tclass.MoreTests.C?) (or (not (= |c#0@@6| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($Is refType |c#0@@6| Tclass.MoreTests.C))
 :pattern ( ($Is refType |c#0@@6| Tclass.MoreTests.C?))
)))
(assert (forall ((MoreTests.Dt$T@@1 T@U) (|a#2#0#0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#MoreTests.Dt.Make| |a#2#0#0|) (Tclass.MoreTests.Dt MoreTests.Dt$T@@1) $h@@13) ($IsAllocBox |a#2#0#0| MoreTests.Dt$T@@1 $h@@13)))
 :qid |unknown.0:0|
 :skolemid |550|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MoreTests.Dt.Make| |a#2#0#0|) (Tclass.MoreTests.Dt MoreTests.Dt$T@@1) $h@@13))
)))
(assert (forall ((MoreTests.DtCovariant$T@@1 T@U) (|a#8#0#0| T@U) ($h@@14 T@U) ) (!  (=> ($IsGoodHeap $h@@14) (= ($IsAlloc DatatypeTypeType (|#MoreTests.DtCovariant.MakeCovariant| |a#8#0#0|) (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@1) $h@@14) ($IsAllocBox |a#8#0#0| MoreTests.DtCovariant$T@@1 $h@@14)))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( ($IsAlloc DatatypeTypeType (|#MoreTests.DtCovariant.MakeCovariant| |a#8#0#0|) (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@1) $h@@14))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass.MoreTests.Even) (= (Mod (U_2_int |x#0@@2|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |543|
 :pattern ( ($Is intType |x#0@@2| Tclass.MoreTests.Even))
)))
(assert (forall (($o@@4 T@U) ($heap T@U) ) (!  (=> ($IsAlloc refType $o@@4 Tclass.MoreTests.X? $heap) ($IsAlloc refType $o@@4 Tclass.MoreTests.Z? $heap))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsAlloc refType $o@@4 Tclass.MoreTests.X? $heap))
)))
(assert (forall (($o@@5 T@U) ($heap@@0 T@U) ) (!  (=> ($IsAlloc refType $o@@5 Tclass.MoreTests.Y? $heap@@0) ($IsAlloc refType $o@@5 Tclass.MoreTests.Z? $heap@@0))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( ($IsAlloc refType $o@@5 Tclass.MoreTests.Y? $heap@@0))
)))
(assert (forall (($o@@6 T@U) ($heap@@1 T@U) ) (!  (=> ($IsAlloc refType $o@@6 Tclass.MoreTests.C? $heap@@1) ($IsAlloc refType $o@@6 Tclass.MoreTests.X? $heap@@1))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o@@6 Tclass.MoreTests.C? $heap@@1))
)))
(assert (forall (($o@@7 T@U) ($heap@@2 T@U) ) (!  (=> ($IsAlloc refType $o@@7 Tclass.MoreTests.C? $heap@@2) ($IsAlloc refType $o@@7 Tclass.MoreTests.Y? $heap@@2))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( ($IsAlloc refType $o@@7 Tclass.MoreTests.C? $heap@@2))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 TInt) (and (= ($Box intType ($Unbox intType bx@@15)) bx@@15) ($Is intType ($Unbox intType bx@@15) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@15 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@16 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@16) ($IsAllocBox bx@@16 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@16))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3))
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
(assert (forall ((MoreTests.Dt$T@@2 T@U) ) (! (= (Tclass.MoreTests.Dt_0 (Tclass.MoreTests.Dt MoreTests.Dt$T@@2)) MoreTests.Dt$T@@2)
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( (Tclass.MoreTests.Dt MoreTests.Dt$T@@2))
)))
(assert (forall ((MoreTests.DtCovariant$T@@2 T@U) ) (! (= (Tclass.MoreTests.DtCovariant_0 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@2)) MoreTests.DtCovariant$T@@2)
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@2))
)))
(assert (forall ((|a#0#0#0| T@U) ) (! (= (DatatypeCtorId (|#MoreTests.Dt.Make| |a#0#0#0|)) |##MoreTests.Dt.Make|)
 :qid |gitissue2013dfy.104:25|
 :skolemid |545|
 :pattern ( (|#MoreTests.Dt.Make| |a#0#0#0|))
)))
(assert (forall ((|a#4#0#0| T@U) ) (! (= (MoreTests.Dt._h0 (|#MoreTests.Dt.Make| |a#4#0#0|)) |a#4#0#0|)
 :qid |gitissue2013dfy.104:25|
 :skolemid |553|
 :pattern ( (|#MoreTests.Dt.Make| |a#4#0#0|))
)))
(assert (forall ((|a#6#0#0| T@U) ) (! (= (DatatypeCtorId (|#MoreTests.DtCovariant.MakeCovariant| |a#6#0#0|)) |##MoreTests.DtCovariant.MakeCovariant|)
 :qid |gitissue2013dfy.105:44|
 :skolemid |559|
 :pattern ( (|#MoreTests.DtCovariant.MakeCovariant| |a#6#0#0|))
)))
(assert (forall ((|a#10#0#0| T@U) ) (! (= (MoreTests.DtCovariant._h1 (|#MoreTests.DtCovariant.MakeCovariant| |a#10#0#0|)) |a#10#0#0|)
 :qid |gitissue2013dfy.105:44|
 :skolemid |567|
 :pattern ( (|#MoreTests.DtCovariant.MakeCovariant| |a#10#0#0|))
)))
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((MoreTests.Dt$T@@3 T@U) (|a#2#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#MoreTests.Dt.Make| |a#2#0#0@@0|) (Tclass.MoreTests.Dt MoreTests.Dt$T@@3)) ($IsBox |a#2#0#0@@0| MoreTests.Dt$T@@3))
 :qid |unknown.0:0|
 :skolemid |549|
 :pattern ( ($Is DatatypeTypeType (|#MoreTests.Dt.Make| |a#2#0#0@@0|) (Tclass.MoreTests.Dt MoreTests.Dt$T@@3)))
)))
(assert (forall ((MoreTests.DtCovariant$T@@3 T@U) (|a#8#0#0@@0| T@U) ) (! (= ($Is DatatypeTypeType (|#MoreTests.DtCovariant.MakeCovariant| |a#8#0#0@@0|) (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@3)) ($IsBox |a#8#0#0@@0| MoreTests.DtCovariant$T@@3))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( ($Is DatatypeTypeType (|#MoreTests.DtCovariant.MakeCovariant| |a#8#0#0@@0|) (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@3)))
)))
(assert (forall ((|a#5#0#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#MoreTests.Dt.Make| |a#5#0#0|)))
 :qid |gitissue2013dfy.104:25|
 :skolemid |554|
 :pattern ( (|#MoreTests.Dt.Make| |a#5#0#0|))
)))
(assert (forall ((|a#11#0#0| T@U) ) (! (< (BoxRank |a#11#0#0|) (DtRank (|#MoreTests.DtCovariant.MakeCovariant| |a#11#0#0|)))
 :qid |gitissue2013dfy.105:44|
 :skolemid |568|
 :pattern ( (|#MoreTests.DtCovariant.MakeCovariant| |a#11#0#0|))
)))
(assert (forall ((d@@5 T@U) (MoreTests.Dt$T@@4 T@U) ($h@@15 T@U) ) (!  (=> (and ($IsGoodHeap $h@@15) (and (MoreTests.Dt.Make_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.MoreTests.Dt MoreTests.Dt$T@@4) $h@@15))) ($IsAllocBox (MoreTests.Dt._h0 d@@5) MoreTests.Dt$T@@4 $h@@15))
 :qid |unknown.0:0|
 :skolemid |551|
 :pattern ( ($IsAllocBox (MoreTests.Dt._h0 d@@5) MoreTests.Dt$T@@4 $h@@15))
)))
(assert (forall ((d@@6 T@U) (MoreTests.DtCovariant$T@@4 T@U) ($h@@16 T@U) ) (!  (=> (and ($IsGoodHeap $h@@16) (and (MoreTests.DtCovariant.MakeCovariant_q d@@6) ($IsAlloc DatatypeTypeType d@@6 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@4) $h@@16))) ($IsAllocBox (MoreTests.DtCovariant._h1 d@@6) MoreTests.DtCovariant$T@@4 $h@@16))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( ($IsAllocBox (MoreTests.DtCovariant._h1 d@@6) MoreTests.DtCovariant$T@@4 $h@@16))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@8 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))  (=> (and (or (not (= $o@@8 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@8) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3227|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@8 $f))
)))
(assert (forall ((x@@9 Int) (y@@0 Int) ) (! (= (Mod x@@9 y@@0) (mod x@@9 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@9 y@@0))
)))
(assert (forall ((d@@7 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@7)) (DtRank d@@7))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@7)))
)))
(assert (forall ((bx@@17 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@17 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@17)) bx@@17) ($Is SetType ($Unbox SetType bx@@17) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@17 (TSet t@@5)))
)))
(assert (forall ((MoreTests.Dt$T@@5 T@U) (bx@@18 T@U) ) (!  (=> ($IsBox bx@@18 (Tclass.MoreTests.Dt MoreTests.Dt$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@18)) bx@@18) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@18) (Tclass.MoreTests.Dt MoreTests.Dt$T@@5))))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsBox bx@@18 (Tclass.MoreTests.Dt MoreTests.Dt$T@@5)))
)))
(assert (forall ((MoreTests.DtCovariant$T@@5 T@U) (bx@@19 T@U) ) (!  (=> ($IsBox bx@@19 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@5)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@19)) bx@@19) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@19) (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@5))))
 :qid |unknown.0:0|
 :skolemid |542|
 :pattern ( ($IsBox bx@@19 (Tclass.MoreTests.DtCovariant MoreTests.DtCovariant$T@@5)))
)))
(assert (forall (($o@@9 T@U) ) (!  (=> ($Is refType $o@@9 Tclass.MoreTests.X?) ($Is refType $o@@9 Tclass.MoreTests.Z?))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is refType $o@@9 Tclass.MoreTests.X?))
)))
(assert (forall ((bx@@20 T@U) ) (!  (=> ($IsBox bx@@20 Tclass.MoreTests.X?) ($IsBox bx@@20 Tclass.MoreTests.Z?))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@20 Tclass.MoreTests.X?))
)))
(assert (forall (($o@@10 T@U) ) (!  (=> ($Is refType $o@@10 Tclass.MoreTests.Y?) ($Is refType $o@@10 Tclass.MoreTests.Z?))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is refType $o@@10 Tclass.MoreTests.Y?))
)))
(assert (forall ((bx@@21 T@U) ) (!  (=> ($IsBox bx@@21 Tclass.MoreTests.Y?) ($IsBox bx@@21 Tclass.MoreTests.Z?))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsBox bx@@21 Tclass.MoreTests.Y?))
)))
(assert (forall (($o@@11 T@U) ) (!  (=> ($Is refType $o@@11 Tclass.MoreTests.C?) ($Is refType $o@@11 Tclass.MoreTests.X?))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@11 Tclass.MoreTests.C?))
)))
(assert (forall ((bx@@22 T@U) ) (!  (=> ($IsBox bx@@22 Tclass.MoreTests.C?) ($IsBox bx@@22 Tclass.MoreTests.X?))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( ($IsBox bx@@22 Tclass.MoreTests.C?))
)))
(assert (forall (($o@@12 T@U) ) (!  (=> ($Is refType $o@@12 Tclass.MoreTests.C?) ($Is refType $o@@12 Tclass.MoreTests.Y?))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($Is refType $o@@12 Tclass.MoreTests.C?))
)))
(assert (forall ((bx@@23 T@U) ) (!  (=> ($IsBox bx@@23 Tclass.MoreTests.C?) ($IsBox bx@@23 Tclass.MoreTests.Y?))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( ($IsBox bx@@23 Tclass.MoreTests.C?))
)))
(assert (forall ((h@@4 T@U) (r T@U) (f T@U) (x@@10 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10))) ($HeapSucc h@@4 (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@4 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@4 r) f x@@10)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.MoreTests.C) Tagclass.MoreTests.C))
(assert (= (TagFamily Tclass.MoreTests.C) tytagFamily$C))
(assert (= (Tag Tclass.MoreTests.C?) Tagclass.MoreTests.C?))
(assert (= (TagFamily Tclass.MoreTests.C?) tytagFamily$C))
(assert (= (Tag Tclass.MoreTests.Even) Tagclass.MoreTests.Even))
(assert (= (TagFamily Tclass.MoreTests.Even) tytagFamily$Even))
(assert (= (Tag Tclass.MoreTests.Z) Tagclass.MoreTests.Z))
(assert (= (TagFamily Tclass.MoreTests.Z) tytagFamily$Z))
(assert (= (Tag Tclass.MoreTests.X) Tagclass.MoreTests.X))
(assert (= (TagFamily Tclass.MoreTests.X) tytagFamily$X))
(assert (= (Tag Tclass.MoreTests.Y) Tagclass.MoreTests.Y))
(assert (= (TagFamily Tclass.MoreTests.Y) tytagFamily$Y))
(assert (= (Tag Tclass.MoreTests.Z?) Tagclass.MoreTests.Z?))
(assert (= (TagFamily Tclass.MoreTests.Z?) tytagFamily$Z))
(assert (= (Tag Tclass.MoreTests.X?) Tagclass.MoreTests.X?))
(assert (= (TagFamily Tclass.MoreTests.X?) tytagFamily$X))
(assert (= (Tag Tclass.MoreTests.Y?) Tagclass.MoreTests.Y?))
(assert (= (TagFamily Tclass.MoreTests.Y?) tytagFamily$Y))
(assert (forall (($o@@13 T@U) ) (! (= ($Is refType $o@@13 Tclass.MoreTests.Z?)  (or (= $o@@13 null) (implements$MoreTests.Z (dtype $o@@13))))
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( ($Is refType $o@@13 Tclass.MoreTests.Z?))
)))
(assert (forall (($o@@14 T@U) ) (! (= ($Is refType $o@@14 Tclass.MoreTests.X?)  (or (= $o@@14 null) (implements$MoreTests.X (dtype $o@@14))))
 :qid |unknown.0:0|
 :skolemid |579|
 :pattern ( ($Is refType $o@@14 Tclass.MoreTests.X?))
)))
(assert (forall (($o@@15 T@U) ) (! (= ($Is refType $o@@15 Tclass.MoreTests.Y?)  (or (= $o@@15 null) (implements$MoreTests.Y (dtype $o@@15))))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($Is refType $o@@15 Tclass.MoreTests.Y?))
)))
(assert (forall ((x@@11 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@11))) (Lit BoxType ($Box intType (int_2_U x@@11))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@11))))
)))
(assert (forall ((|a#3#0#0| T@U) ) (! (= (|#MoreTests.Dt.Make| (Lit BoxType |a#3#0#0|)) (Lit DatatypeTypeType (|#MoreTests.Dt.Make| |a#3#0#0|)))
 :qid |gitissue2013dfy.104:25|
 :skolemid |552|
 :pattern ( (|#MoreTests.Dt.Make| (Lit BoxType |a#3#0#0|)))
)))
(assert (forall ((|a#9#0#0| T@U) ) (! (= (|#MoreTests.DtCovariant.MakeCovariant| (Lit BoxType |a#9#0#0|)) (Lit DatatypeTypeType (|#MoreTests.DtCovariant.MakeCovariant| |a#9#0#0|)))
 :qid |gitissue2013dfy.105:44|
 :skolemid |566|
 :pattern ( (|#MoreTests.DtCovariant.MakeCovariant| (Lit BoxType |a#9#0#0|)))
)))
(assert (forall ((x@@12 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@12)) (Lit BoxType ($Box T@@5 x@@12)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@12)))
)))
(assert (forall ((h@@5 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@5)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@5))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |s#0@0| () T@U)
(declare-fun |S#0@0| () T@U)
(declare-fun |k#0@0| () T@U)
(declare-fun |K#0@0| () T@U)
(declare-fun |let#0#0#0| () T@U)
(declare-fun |u#Z#0@0| () T@U)
(declare-fun |M#0@0| () T@U)
(declare-fun |let#1#0#0| () T@U)
(declare-fun |u#Z#1@0| () T@U)
(declare-fun |N#0@0| () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@7| () T@U)
(declare-fun |s#0| () T@U)
(declare-fun |t#0| () T@U)
(declare-fun |u#0| () T@U)
(declare-fun |S#0| () T@U)
(declare-fun |T#0| () T@U)
(declare-fun |U#0| () T@U)
(declare-fun |k#0| () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |n#0| () T@U)
(declare-fun |defass#K#0| () Bool)
(declare-fun |K#0| () T@U)
(declare-fun |defass#M#0| () Bool)
(declare-fun |M#0| () T@U)
(declare-fun |defass#N#0| () Bool)
(declare-fun |N#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$MoreTests.__default.Test)
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
 (=> (= (ControlFlow 0 0) 29) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.MoreTests.C?)) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@0)) (and ($IsHeapAnchor $Heap@0) (= |s#0@0| (Lit SetType (|Set#UnionOne| |Set#Empty| ($Box intType (int_2_U (LitInt 100))))))))) (and (=> (= (ControlFlow 0 2) (- 0 28)) ($Is SetType |s#0@0| (TSet Tclass._System.nat))) (=> ($Is SetType |s#0@0| (TSet Tclass._System.nat)) (and (=> (= (ControlFlow 0 2) (- 0 27)) ($Is SetType |s#0@0| (TSet Tclass.MoreTests.Even))) (=> ($Is SetType |s#0@0| (TSet Tclass.MoreTests.Even)) (and (=> (= (ControlFlow 0 2) (- 0 26)) ($Is SetType |s#0@0| (TSet Tclass._System.nat))) (=> ($Is SetType |s#0@0| (TSet Tclass._System.nat)) (and (=> (= (ControlFlow 0 2) (- 0 25)) ($Is SetType |s#0@0| (TSet Tclass.MoreTests.Even))) (=> ($Is SetType |s#0@0| (TSet Tclass.MoreTests.Even)) (and (=> (= (ControlFlow 0 2) (- 0 24)) true) (=> (= |S#0@0| (|Set#UnionOne| |Set#Empty| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 23)) ($Is SetType |S#0@0| (TSet Tclass.MoreTests.X))) (=> ($Is SetType |S#0@0| (TSet Tclass.MoreTests.X)) (and (=> (= (ControlFlow 0 2) (- 0 22)) ($Is SetType |S#0@0| (TSet Tclass.MoreTests.Y))) (=> ($Is SetType |S#0@0| (TSet Tclass.MoreTests.Y)) (and (=> (= (ControlFlow 0 2) (- 0 21)) ($Is SetType |S#0@0| (TSet Tclass.MoreTests.X))) (=> ($Is SetType |S#0@0| (TSet Tclass.MoreTests.X)) (and (=> (= (ControlFlow 0 2) (- 0 20)) ($Is SetType |S#0@0| (TSet Tclass.MoreTests.Y))) (=> ($Is SetType |S#0@0| (TSet Tclass.MoreTests.Y)) (=> (= |k#0@0| (Lit DatatypeTypeType (|#MoreTests.Dt.Make| ($Box intType (int_2_U (LitInt 100)))))) (and (=> (= (ControlFlow 0 2) (- 0 19)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass._System.nat))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass._System.nat)) (and (=> (= (ControlFlow 0 2) (- 0 18)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even)) (and (=> (= (ControlFlow 0 2) (- 0 17)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass._System.nat))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass._System.nat)) (and (=> (= (ControlFlow 0 2) (- 0 16)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even)) (and (=> (= (ControlFlow 0 2) (- 0 15)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt TInt))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt TInt)) (and (=> (= (ControlFlow 0 2) (- 0 14)) ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt TInt))) (=> ($Is DatatypeTypeType |k#0@0| (Tclass.MoreTests.Dt TInt)) (and (=> (= (ControlFlow 0 2) (- 0 13)) true) (=> (= |K#0@0| (|#MoreTests.DtCovariant.MakeCovariant| ($Box refType $nw@0))) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) ($Is DatatypeTypeType |K#0@0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X))) (=> ($Is DatatypeTypeType |K#0@0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X)) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) ($Is DatatypeTypeType |K#0@0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y))) (=> ($Is DatatypeTypeType |K#0@0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y)) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (=> (= |let#0#0#0| |K#0@0|) (=> (and ($Is DatatypeTypeType |let#0#0#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Z)) (= |u#Z#0@0| |let#0#0#0|)) (and (=> (= (ControlFlow 0 2) (- 0 7)) ($Is DatatypeTypeType (let ((|u#1| |K#0@0|))
|u#1|) (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X))) (=> ($Is DatatypeTypeType (let ((|u#1@@0| |K#0@0|))
|u#1@@0|) (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X)) (=> (= |M#0@0| (let ((|u#1@@1| |K#0@0|))
|u#1@@1|)) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (=> (= |let#1#0#0| |M#0@0|) (=> (and ($Is DatatypeTypeType |let#1#0#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Z)) (= |u#Z#1@0| |let#1#0#0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) ($Is DatatypeTypeType (let ((|u#2| |M#0@0|))
|u#2|) (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y))) (=> ($Is DatatypeTypeType (let ((|u#2@@0| |M#0@0|))
|u#2@@0|) (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y)) (=> (= |N#0@0| (let ((|u#2@@1| |M#0@0|))
|u#2@@1|)) (and (=> (= (ControlFlow 0 2) (- 0 4)) true) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@7| Tclass.MoreTests.C) ($IsAlloc refType |c#0@@7| Tclass.MoreTests.C $Heap))) true)) (and (and ($Is SetType |s#0| (TSet TInt)) ($IsAlloc SetType |s#0| (TSet TInt) $Heap)) true)) (and (and (and ($Is SetType |t#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |t#0| (TSet Tclass._System.nat) $Heap)) true) (and (and ($Is SetType |u#0| (TSet Tclass.MoreTests.Even)) ($IsAlloc SetType |u#0| (TSet Tclass.MoreTests.Even) $Heap)) true))) (=> (and (and (and (and (and ($Is SetType |S#0| (TSet Tclass.MoreTests.Z)) ($IsAlloc SetType |S#0| (TSet Tclass.MoreTests.Z) $Heap)) true) (and (and ($Is SetType |T#0| (TSet Tclass.MoreTests.X)) ($IsAlloc SetType |T#0| (TSet Tclass.MoreTests.X) $Heap)) true)) (and (and (and ($Is SetType |U#0| (TSet Tclass.MoreTests.Y)) ($IsAlloc SetType |U#0| (TSet Tclass.MoreTests.Y) $Heap)) true) (and (and ($Is DatatypeTypeType |k#0| (Tclass.MoreTests.Dt TInt)) ($IsAlloc DatatypeTypeType |k#0| (Tclass.MoreTests.Dt TInt) $Heap)) true))) (and (and (and (and ($Is DatatypeTypeType |m#0| (Tclass.MoreTests.Dt Tclass._System.nat)) ($IsAlloc DatatypeTypeType |m#0| (Tclass.MoreTests.Dt Tclass._System.nat) $Heap)) true) (and (and ($Is DatatypeTypeType |n#0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even)) ($IsAlloc DatatypeTypeType |n#0| (Tclass.MoreTests.Dt Tclass.MoreTests.Even) $Heap)) true)) (and (and (and (=> |defass#K#0| (and ($Is DatatypeTypeType |K#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Z)) ($IsAlloc DatatypeTypeType |K#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Z) $Heap))) true) (and (=> |defass#M#0| (and ($Is DatatypeTypeType |M#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X)) ($IsAlloc DatatypeTypeType |M#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.X) $Heap))) true)) (and (and (=> |defass#N#0| (and ($Is DatatypeTypeType |N#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y)) ($IsAlloc DatatypeTypeType |N#0| (Tclass.MoreTests.DtCovariant Tclass.MoreTests.Y) $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 29) 2)))))) anon0_correct))))
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
