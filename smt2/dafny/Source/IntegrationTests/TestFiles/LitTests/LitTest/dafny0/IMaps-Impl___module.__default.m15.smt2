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
(declare-fun TagISet () T@U)
(declare-fun TagIMap () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.A () T@U)
(declare-fun Tagclass._module.A? () T@U)
(declare-fun class._module.A? () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$A () T@U)
(declare-fun field$x () T@U)
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
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun |lambda#29| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun |IMap#Domain| (T@U) T@U)
(declare-fun |IMap#Glue| (T@U T@U T@U) T@U)
(declare-fun |IMap#Elements| (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._module.A? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.A () T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun _module.A.x () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun TISet (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |IMap#Empty| () T@U)
(declare-fun |IMap#Values| (T@U) T@U)
(declare-fun |IMap#Items| (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun IMapType () T@T)
(declare-fun TIMap (T@U T@U) T@U)
(declare-fun |ISet#Empty| () T@U)
(declare-fun |lambda#33| (T@U T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TIMap (T@U) T@U)
(declare-fun Inv1_TIMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TISet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagISet TagIMap alloc allocName |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.A Tagclass._module.A? class._module.A? |tytagFamily$_tuple#2| tytagFamily$A field$x)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert  (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor BoxType) 3)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$w#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#29| |l#0| |l#1|) |$w#0|))  (and ($IsBox |$w#0| |l#0|) (|Set#IsMember| |l#1| |$w#0|)))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |597|
 :pattern ( (MapType0Select BoxType boolType (|lambda#29| |l#0| |l#1|) |$w#0|))
)))
(assert (forall ((a T@U) (b T@U) (t T@U) ) (! (= (|IMap#Domain| (|IMap#Glue| a b t)) a)
 :qid |DafnyPreludebpl.1576:15|
 :skolemid |316|
 :pattern ( (|IMap#Domain| (|IMap#Glue| a b t)))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (t@@0 T@U) ) (! (= (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)) b@@0)
 :qid |DafnyPreludebpl.1579:15|
 :skolemid |317|
 :pattern ( (|IMap#Elements| (|IMap#Glue| a@@0 b@@0 t@@0)))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (Ctor refType) 5))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.A?)  (or (= $o null) (= (dtype $o) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( ($Is refType $o Tclass._module.A?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.A $h) ($IsAlloc refType |c#0| Tclass._module.A? $h))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.A $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.A? $h))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert (= (FDim _module.A.x) 0))
(assert (= (FieldOfDecl class._module.A? field$x) _module.A.x))
(assert  (not ($IsGhostField _module.A.x)))
(assert  (and (and (and (= (Ctor FieldType) 6) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.A? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.A? $h@@0))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)) (forall ((bx T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v bx)) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.244:11|
 :skolemid |48|
 :pattern ( (MapType0Select BoxType boolType v bx))
)))
 :qid |DafnyPreludebpl.242:15|
 :skolemid |49|
 :pattern ( ($Is (MapType0Type BoxType boolType) v (TISet t0@@0)))
)))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@1) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@1))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@1))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@1) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@1 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@1))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v@@0 T@U) (t0@@1 T@U) ) (! (= ($Is SetType v@@0 (TSet t0@@1)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@0 bx@@0) ($IsBox bx@@0 t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@0 bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@0 (TSet t0@@1)))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@2 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.A?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.A.x)) TInt $h@@2))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |586|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) _module.A.x)))
)))
(assert (forall ((v@@1 T@U) (t@@1 T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v@@1) t@@1 h@@0) ($IsAlloc T@@0 v@@1 t@@1 h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v@@1) t@@1 h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@2 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@2 h@@1) ($IsAllocBox bx@@1 t@@2 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@2 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@2 T@U) (t@@3 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@2 t@@3 h@@2) ($IsAlloc T@@1 v@@2 t@@3 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@2 t@@3 h@@2))
)))
(assert (forall ((u T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u)))
 :qid |DafnyPreludebpl.1571:15|
 :skolemid |315|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| |IMap#Empty|) u))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.A) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._module.A)))
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( ($IsBox bx@@2 Tclass._module.A))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.A?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._module.A?)))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( ($IsBox bx@@3 Tclass._module.A?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.A)  (and ($Is refType |c#0@@0| Tclass._module.A?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |587|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.A))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.A?))
)))
(assert (forall ((m@@1 T@U) ) (!  (or (= m@@1 |IMap#Empty|) (exists ((k@@2 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@1) k@@2))
 :qid |DafnyPreludebpl.1525:32|
 :skolemid |303|
)))
 :qid |DafnyPreludebpl.1523:15|
 :skolemid |304|
 :pattern ( (|IMap#Domain| m@@1))
)))
(assert (forall ((m@@2 T@U) ) (!  (or (= m@@2 |IMap#Empty|) (exists ((v@@3 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@2) v@@3))
 :qid |DafnyPreludebpl.1528:32|
 :skolemid |305|
)))
 :qid |DafnyPreludebpl.1526:15|
 :skolemid |306|
 :pattern ( (|IMap#Values| m@@2))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (h@@3 T@U) ) (! (= ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@2) h@@3) (forall ((bx@@4 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType v@@4 bx@@4)) ($IsAllocBox bx@@4 t0@@2 h@@3))
 :qid |DafnyPreludebpl.303:11|
 :skolemid |69|
 :pattern ( (MapType0Select BoxType boolType v@@4 bx@@4))
)))
 :qid |DafnyPreludebpl.301:15|
 :skolemid |70|
 :pattern ( ($IsAlloc (MapType0Type BoxType boolType) v@@4 (TISet t0@@2) h@@3))
)))
(assert (forall ((m@@3 T@U) (item T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item)))) (= (MapType0Select BoxType BoxType (|IMap#Elements| m@@3) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1564:15|
 :skolemid |314|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Items| m@@3) item))
)))
(assert (forall ((m@@4 T@U) (v@@5 T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@5)) (exists ((u@@0 T@U) ) (!  (and (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0)) (= v@@5 (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0)))
 :qid |DafnyPreludebpl.1552:10|
 :skolemid |312|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| m@@4) u@@0))
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| m@@4) u@@0))
)))
 :qid |DafnyPreludebpl.1550:15|
 :skolemid |313|
 :pattern ( (MapType0Select BoxType boolType (|IMap#Values| m@@4) v@@5))
)))
(assert (= (Ctor IMapType) 9))
(assert (forall ((v@@6 T@U) (t0@@3 T@U) (t1@@0 T@U) (h@@4 T@U) ) (! (= ($IsAlloc IMapType v@@6 (TIMap t0@@3 t1@@0) h@@4) (forall ((bx@@5 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@6) bx@@5)) (and ($IsAllocBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@6) bx@@5) t1@@0 h@@4) ($IsAllocBox bx@@5 t0@@3 h@@4)))
 :qid |DafnyPreludebpl.327:19|
 :skolemid |77|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@6) bx@@5))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@6) bx@@5))
)))
 :qid |DafnyPreludebpl.324:15|
 :skolemid |78|
 :pattern ( ($IsAlloc IMapType v@@6 (TIMap t0@@3 t1@@0) h@@4))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((m@@5 T@U) ) (! (= (= m@@5 |IMap#Empty|) (= (|IMap#Domain| m@@5) |ISet#Empty|))
 :qid |DafnyPreludebpl.1533:15|
 :skolemid |309|
 :pattern ( (|IMap#Domain| m@@5))
)))
(assert (forall ((m@@6 T@U) ) (! (= (= m@@6 |IMap#Empty|) (= (|IMap#Values| m@@6) |ISet#Empty|))
 :qid |DafnyPreludebpl.1536:15|
 :skolemid |310|
 :pattern ( (|IMap#Values| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (! (= (= m@@7 |IMap#Empty|) (= (|IMap#Items| m@@7) |ISet#Empty|))
 :qid |DafnyPreludebpl.1539:15|
 :skolemid |311|
 :pattern ( (|IMap#Items| m@@7))
)))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$w#0@@0| T@U) ) (! (= (MapType0Select BoxType BoxType (|lambda#33| |l#0@@0| |l#1@@0|) |$w#0@@0|) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#0@@0| ($Unbox refType |$w#0@@0|)) |l#1@@0|))
 :qid |DafnyPreludebpl.593:5|
 :skolemid |599|
 :pattern ( (MapType0Select BoxType BoxType (|lambda#33| |l#0@@0| |l#1@@0|) |$w#0@@0|))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |IMap#Empty|) (exists ((k@@3 T@U) (v@@7 T@U) ) (! (U_2_bool (MapType0Select BoxType boolType (|IMap#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@3 v@@7))))
 :qid |DafnyPreludebpl.1531:32|
 :skolemid |307|
)))
 :qid |DafnyPreludebpl.1529:15|
 :skolemid |308|
 :pattern ( (|IMap#Items| m@@8))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@6 TInt))
)))
(assert (forall ((v@@8 T@U) (t@@4 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@8) t@@4) ($Is T@@2 v@@8 t@@4))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@8) t@@4))
)))
(assert (forall ((v@@9 T@U) (t0@@4 T@U) (h@@5 T@U) ) (! (= ($IsAlloc SetType v@@9 (TSet t0@@4) h@@5) (forall ((bx@@7 T@U) ) (!  (=> (|Set#IsMember| v@@9 bx@@7) ($IsAllocBox bx@@7 t0@@4 h@@5))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@9 bx@@7))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@9 (TSet t0@@4) h@@5))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Inv0_TIMap (TIMap t@@5 u@@1)) t@@5)
 :qid |DafnyPreludebpl.62:15|
 :skolemid |12|
 :pattern ( (TIMap t@@5 u@@1))
)))
(assert (forall ((t@@6 T@U) (u@@2 T@U) ) (! (= (Inv1_TIMap (TIMap t@@6 u@@2)) u@@2)
 :qid |DafnyPreludebpl.63:15|
 :skolemid |13|
 :pattern ( (TIMap t@@6 u@@2))
)))
(assert (forall ((t@@7 T@U) (u@@3 T@U) ) (! (= (Tag (TIMap t@@7 u@@3)) TagIMap)
 :qid |DafnyPreludebpl.64:15|
 :skolemid |14|
 :pattern ( (TIMap t@@7 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
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
(assert (forall ((t@@8 T@U) ) (! (= (Inv0_TSet (TSet t@@8)) t@@8)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@8))
)))
(assert (forall ((t@@9 T@U) ) (! (= (Tag (TSet t@@9)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@9))
)))
(assert (forall ((t@@10 T@U) ) (! (= (Inv0_TISet (TISet t@@10)) t@@10)
 :qid |DafnyPreludebpl.45:15|
 :skolemid |3|
 :pattern ( (TISet t@@10))
)))
(assert (forall ((t@@11 T@U) ) (! (= (Tag (TISet t@@11)) TagISet)
 :qid |DafnyPreludebpl.46:15|
 :skolemid |4|
 :pattern ( (TISet t@@11))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@1 T@U) ) (! (= ($Is IMapType v@@10 (TIMap t0@@5 t1@@1)) (forall ((bx@@8 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| v@@10) bx@@8)) (and ($IsBox (MapType0Select BoxType BoxType (|IMap#Elements| v@@10) bx@@8) t1@@1) ($IsBox bx@@8 t0@@5)))
 :qid |DafnyPreludebpl.276:19|
 :skolemid |58|
 :pattern ( (MapType0Select BoxType BoxType (|IMap#Elements| v@@10) bx@@8))
 :pattern ( (MapType0Select BoxType boolType (|IMap#Domain| v@@10) bx@@8))
)))
 :qid |DafnyPreludebpl.273:15|
 :skolemid |59|
 :pattern ( ($Is IMapType v@@10 (TIMap t0@@5 t1@@1)))
)))
(assert (forall (($h@@3 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.A?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.A.x)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |585|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) _module.A.x)))
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
(assert (forall ((bx@@9 T@U) (s T@U) (t@@12 T@U) ) (!  (=> ($IsBox bx@@9 (TIMap s t@@12)) (and (= ($Box IMapType ($Unbox IMapType bx@@9)) bx@@9) ($Is IMapType ($Unbox IMapType bx@@9) (TIMap s t@@12))))
 :qid |DafnyPreludebpl.210:15|
 :skolemid |37|
 :pattern ( ($IsBox bx@@9 (TIMap s t@@12)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@10)) bx@@10) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@10) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (U_2_bool (MapType0Select BoxType boolType |ISet#Empty| o@@0)))
 :qid |DafnyPreludebpl.816:15|
 :skolemid |154|
 :pattern ( (MapType0Select BoxType boolType |ISet#Empty| o@@0))
)))
(assert  (and (forall ((t0@@6 T@T) (t1@@2 T@T) (t2 T@T) (val@@1 T@U) (m@@9 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@6 t1@@2 t2 (MapType1Store t0@@6 t1@@2 t2 m@@9 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@10 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@10 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@10 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@11 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@11 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@11 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |589|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@1| |l#1@@1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) (t0@@7 T@U) (t1@@3 T@U) ) (!  (=> (forall ((bx@@11 T@U) ) (!  (=> (U_2_bool (MapType0Select BoxType boolType a@@2 bx@@11)) (and ($IsBox bx@@11 t0@@7) ($IsBox (MapType0Select BoxType BoxType b@@2 bx@@11) t1@@3)))
 :qid |DafnyPreludebpl.1585:11|
 :skolemid |318|
)) ($Is IMapType (|IMap#Glue| a@@2 b@@2 (TIMap t0@@7 t1@@3)) (TIMap t0@@7 t1@@3)))
 :qid |DafnyPreludebpl.1582:15|
 :skolemid |319|
 :pattern ( (|IMap#Glue| a@@2 b@@2 (TIMap t0@@7 t1@@3)))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@2 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@2)) (DtRank d@@2))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@2)))
)))
(assert (forall ((bx@@12 T@U) (t@@13 T@U) ) (!  (=> ($IsBox bx@@12 (TSet t@@13)) (and (= ($Box SetType ($Unbox SetType bx@@12)) bx@@12) ($Is SetType ($Unbox SetType bx@@12) (TSet t@@13))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@12 (TSet t@@13)))
)))
(assert (forall ((bx@@13 T@U) (t@@14 T@U) ) (!  (=> ($IsBox bx@@13 (TISet t@@14)) (and (= ($Box (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13)) bx@@13) ($Is (MapType0Type BoxType boolType) ($Unbox (MapType0Type BoxType boolType) bx@@13) (TISet t@@14))))
 :qid |DafnyPreludebpl.198:15|
 :skolemid |33|
 :pattern ( ($IsBox bx@@13 (TISet t@@14)))
)))
(assert (forall ((h@@6 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@4))) ($HeapSucc h@@6 (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@6 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@6 r) f x@@4)))
)))
(assert (= (Tag Tclass._module.A) Tagclass._module.A))
(assert (= (TagFamily Tclass._module.A) tytagFamily$A))
(assert (= (Tag Tclass._module.A?) Tagclass._module.A?))
(assert (= (TagFamily Tclass._module.A?) tytagFamily$A))
(assert (forall ((d@@3 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@3) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@3) |_System._tuple#2$T0@@6| $h@@4))
)))
(assert (forall ((d@@4 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@4) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@4) |_System._tuple#2$T1@@7| $h@@5))
)))
(assert (forall ((h@@7 T@U) (v@@11 T@U) ) (! ($IsAlloc intType v@@11 TInt h@@7)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@11 TInt h@@7))
)))
(assert (forall ((v@@12 T@U) (t0@@8 T@U) (t1@@4 T@U) ) (!  (=> ($Is IMapType v@@12 (TIMap t0@@8 t1@@4)) (and (and ($Is (MapType0Type BoxType boolType) (|IMap#Domain| v@@12) (TISet t0@@8)) ($Is (MapType0Type BoxType boolType) (|IMap#Values| v@@12) (TISet t1@@4))) ($Is (MapType0Type BoxType boolType) (|IMap#Items| v@@12) (TISet (Tclass._System.Tuple2 t0@@8 t1@@4)))))
 :qid |DafnyPreludebpl.281:15|
 :skolemid |60|
 :pattern ( ($Is IMapType v@@12 (TIMap t0@@8 t1@@4)))
)))
(assert (forall ((v@@13 T@U) ) (! ($Is intType v@@13 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@13 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |m#0@0| () T@U)
(declare-fun |b#0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |a#0@0| () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |m#0| () T@U)
(declare-fun |defass#aa#0| () Bool)
(declare-fun |aa#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.m15)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon3_correct  (=> (= |m#0@0| (|IMap#Glue| (|lambda#29| Tclass._module.A |b#0|) (|lambda#33| $Heap _module.A.x) (TIMap Tclass._module.A TInt))) (=> (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.A?)) (=> (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (not (U_2_bool (MapType0Select BoxType boolType (|IMap#Domain| |m#0@0|) ($Box refType $nw@0)))))))))))
(let ((anon5_Else_correct  (=> (and (not (|Set#IsMember| |b#0| ($Box refType |a#0@0|))) (= (ControlFlow 0 7) 2)) anon3_correct)))
(let ((anon5_Then_correct  (=> (|Set#IsMember| |b#0| ($Box refType |a#0@0|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (or (not (= |a#0@0| null)) (not true))) (=> (or (not (= |a#0@0| null)) (not true)) (=> (= (ControlFlow 0 5) 2) anon3_correct))))))
(let ((anon4_Then_correct  (=> (and ($Is refType |a#0@0| Tclass._module.A) ($IsAlloc refType |a#0@0| Tclass._module.A $Heap)) (and (=> (= (ControlFlow 0 8) 5) anon5_Then_correct) (=> (= (ControlFlow 0 8) 7) anon5_Else_correct)))))
(let ((anon4_Else_correct  (=> (and (not (and ($Is refType |a#0@0| Tclass._module.A) ($IsAlloc refType |a#0@0| Tclass._module.A $Heap))) (= (ControlFlow 0 4) 2)) anon3_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 9) 8) anon4_Then_correct) (=> (= (ControlFlow 0 9) 4) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and ($Is SetType |b#0| (TSet Tclass._module.A)) ($IsAlloc SetType |b#0| (TSet Tclass._module.A) $Heap))) (=> (and (and (and ($Is IMapType |m#0| (TIMap Tclass._module.A TInt)) ($IsAlloc IMapType |m#0| (TIMap Tclass._module.A TInt) $Heap)) true) (and (and (=> |defass#aa#0| (and ($Is refType |aa#0| Tclass._module.A) ($IsAlloc refType |aa#0| Tclass._module.A $Heap))) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 10) 9)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
