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
(declare-fun TBool () T@U)
(declare-fun TagBool () T@U)
(declare-fun TagSet () T@U)
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun |##M3.Cache.None| () T@U)
(declare-fun Tagclass.M3.Cache () T@U)
(declare-fun |##M3.Cache.Some| () T@U)
(declare-fun class.M3.Container? () T@U)
(declare-fun Tagclass.M3.Container? () T@U)
(declare-fun Tagclass.M3.Container () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$Cache () T@U)
(declare-fun tytagFamily$Container () T@U)
(declare-fun field$cache () T@U)
(declare-fun field$Repr () T@U)
(declare-fun field$elems () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.M3.Container (T@U) T@U)
(declare-fun Tclass.M3.Container? (T@U) T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#M3.Cache.None| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.M3.Cache (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun M3.Container.Repr () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun M3.Container.cache () T@U)
(declare-fun M3.Container.elems () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#M3.Cache.Some| (Int T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun M3.Cache.None_q (T@U) Bool)
(declare-fun M3.Cache.Some_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun TSeq (T@U) T@U)
(declare-fun M3.Cache.index (T@U) Int)
(declare-fun $FunctionContextHeight () Int)
(declare-fun M3.Container.Valid_k_k (T@U T@U T@U) Bool)
(declare-fun |M3.Container.Valid_k_k#canCall| (T@U T@U T@U) Bool)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun M3.Cache.value (T@U) T@U)
(declare-fun DeclType (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun Tclass.M3.Cache_0 (T@U) T@U)
(declare-fun Tclass.M3.Container?_0 (T@U) T@U)
(declare-fun Tclass.M3.Container_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TBool TagBool TagSet TagSeq alloc allocName Tagclass._System.nat Tagclass._System.object? Tagclass._System.object |##M3.Cache.None| Tagclass.M3.Cache |##M3.Cache.Some| class.M3.Container? Tagclass.M3.Container? Tagclass.M3.Container tytagFamily$nat tytagFamily$object tytagFamily$Cache tytagFamily$Container field$cache field$Repr field$elems)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TBool) TagBool))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1975|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (Ctor refType) 3))
(assert (forall ((M3.Container$T T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass.M3.Container M3.Container$T) $h@@0) ($IsAlloc refType |c#0| (Tclass.M3.Container? M3.Container$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |2259|
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M3.Container M3.Container$T) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass.M3.Container? M3.Container$T) $h@@0))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (DatatypeCtorId |#M3.Cache.None|) |##M3.Cache.None|))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |1981|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((M3.Cache$T T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) ($IsAlloc DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T) $h@@2))
 :qid |unknown.0:0|
 :skolemid |2115|
 :pattern ( ($IsAlloc DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T) $h@@2))
)))
(assert (= (FDim M3.Container.Repr) 0))
(assert (= (FieldOfDecl class.M3.Container? field$Repr) M3.Container.Repr))
(assert ($IsGhostField M3.Container.Repr))
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
(assert (forall ((M3.Container$T@@0 T@U) ($o T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o (Tclass.M3.Container? M3.Container$T@@0) $h@@3)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |2138|
 :pattern ( ($IsAlloc refType $o (Tclass.M3.Container? M3.Container$T@@0) $h@@3))
)))
(assert (= (FDim M3.Container.cache) 0))
(assert (= (FieldOfDecl class.M3.Container? field$cache) M3.Container.cache))
(assert  (not ($IsGhostField M3.Container.cache)))
(assert (= (FDim M3.Container.elems) 0))
(assert (= (FieldOfDecl class.M3.Container? field$elems) M3.Container.elems))
(assert  (not ($IsGhostField M3.Container.elems)))
(assert (forall ((M3.Cache$T@@0 T@U) ) (! ($Is DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T@@0))
 :qid |unknown.0:0|
 :skolemid |2114|
 :pattern ( ($Is DatatypeTypeType |#M3.Cache.None| (Tclass.M3.Cache M3.Cache$T@@0)))
)))
(assert (forall (($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1978|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._System.object? $h@@4))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1647|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1645|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((M3.Cache$T@@1 T@U) (|a#18#0#0| Int) (|a#18#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0| |a#18#1#0|) (Tclass.M3.Cache M3.Cache$T@@1))  (and ($Is intType (int_2_U |a#18#0#0|) Tclass._System.nat) ($IsBox |a#18#1#0| M3.Cache$T@@1)))
 :qid |unknown.0:0|
 :skolemid |2120|
 :pattern ( ($Is DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0| |a#18#1#0|) (Tclass.M3.Cache M3.Cache$T@@1)))
)))
(assert (forall ((d T@U) ) (! (= (M3.Cache.None_q d) (= (DatatypeCtorId d) |##M3.Cache.None|))
 :qid |unknown.0:0|
 :skolemid |2109|
 :pattern ( (M3.Cache.None_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (M3.Cache.Some_q d@@0) (= (DatatypeCtorId d@@0) |##M3.Cache.Some|))
 :qid |unknown.0:0|
 :skolemid |2117|
 :pattern ( (M3.Cache.Some_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1656|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (M3.Cache.Some_q d@@1) (exists ((|a#17#0#0| Int) (|a#17#1#0| T@U) ) (! (= d@@1 (|#M3.Cache.Some| |a#17#0#0| |a#17#1#0|))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2118|
)))
 :qid |unknown.0:0|
 :skolemid |2119|
 :pattern ( (M3.Cache.Some_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (M3.Cache.None_q d@@2) (= d@@2 |#M3.Cache.None|))
 :qid |unknown.0:0|
 :skolemid |2110|
 :pattern ( (M3.Cache.None_q d@@2))
)))
(assert (= (Ctor SetType) 8))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1676|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1677|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |1974|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert  (and (forall ((t0@@1 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@1 t1@@0 t2 (MapType1Store t0@@1 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| T@U) (|l#4| T@U) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) (or (= $o@@1 |l#3|) (|Set#IsMember| |l#4| ($Box refType $o@@1)))))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |3873|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3| |l#4|) $o@@1 $f))
)))
(assert ($IsGhostField alloc))
(assert (forall ((M3.Container$T@@1 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass.M3.Container M3.Container$T@@1))  (and ($Is refType |c#0@@1| (Tclass.M3.Container? M3.Container$T@@1)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |2258|
 :pattern ( ($Is refType |c#0@@1| (Tclass.M3.Container M3.Container$T@@1)))
 :pattern ( ($Is refType |c#0@@1| (Tclass.M3.Container? M3.Container$T@@1)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1669|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert (forall ((M3.Cache$T@@2 T@U) ) (!  (and (= (Tag (Tclass.M3.Cache M3.Cache$T@@2)) Tagclass.M3.Cache) (= (TagFamily (Tclass.M3.Cache M3.Cache$T@@2)) tytagFamily$Cache))
 :qid |unknown.0:0|
 :skolemid |2111|
 :pattern ( (Tclass.M3.Cache M3.Cache$T@@2))
)))
(assert (forall ((M3.Container$T@@2 T@U) ) (!  (and (= (Tag (Tclass.M3.Container? M3.Container$T@@2)) Tagclass.M3.Container?) (= (TagFamily (Tclass.M3.Container? M3.Container$T@@2)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |2134|
 :pattern ( (Tclass.M3.Container? M3.Container$T@@2))
)))
(assert (forall ((M3.Container$T@@3 T@U) ) (!  (and (= (Tag (Tclass.M3.Container M3.Container$T@@3)) Tagclass.M3.Container) (= (TagFamily (Tclass.M3.Container M3.Container$T@@3)) tytagFamily$Container))
 :qid |unknown.0:0|
 :skolemid |2142|
 :pattern ( (Tclass.M3.Container M3.Container$T@@3))
)))
(assert (forall ((M3.Container$T@@4 T@U) ($h@@5 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass.M3.Container? M3.Container$T@@4)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) M3.Container.cache)) (Tclass.M3.Cache M3.Container$T@@4) $h@@5))
 :qid |unknown.0:0|
 :skolemid |2140|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) M3.Container.cache)) (Tclass.M3.Container? M3.Container$T@@4))
)))
(assert (= (Ctor SeqType) 9))
(assert (forall ((M3.Container$T@@5 T@U) ($h@@6 T@U) ($o@@3 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass.M3.Container? M3.Container$T@@5)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) alloc)))) ($IsAlloc SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) M3.Container.elems)) (TSeq M3.Container$T@@5) $h@@6))
 :qid |unknown.0:0|
 :skolemid |2217|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@6 $o@@3) M3.Container.elems)) (Tclass.M3.Container? M3.Container$T@@5))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1973|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1976|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1979|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((M3.Container$T@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass.M3.Container? M3.Container$T@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass.M3.Container? M3.Container$T@@6))))
 :qid |unknown.0:0|
 :skolemid |2137|
 :pattern ( ($Is refType $o@@4 (Tclass.M3.Container? M3.Container$T@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1980|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((M3.Container$T@@7 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass.M3.Container? M3.Container$T@@7)))) ($Is SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M3.Container.Repr)) (TSet Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |2256|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@7 $o@@5) M3.Container.Repr)) (Tclass.M3.Container? M3.Container$T@@7))
)))
(assert (forall ((M3.Container$T@@8 T@U) ($h@@8 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass.M3.Container? M3.Container$T@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) alloc)))) ($IsAlloc SetType ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M3.Container.Repr)) (TSet Tclass._System.object?) $h@@8))
 :qid |unknown.0:0|
 :skolemid |2257|
 :pattern ( ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@6) M3.Container.Repr)) (Tclass.M3.Container? M3.Container$T@@8))
)))
(assert (forall ((M3.Cache$T@@3 T@U) (d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)) (or (M3.Cache.None_q d@@3) (M3.Cache.Some_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |2130|
 :pattern ( (M3.Cache.Some_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)))
 :pattern ( (M3.Cache.None_q d@@3) ($Is DatatypeTypeType d@@3 (Tclass.M3.Cache M3.Cache$T@@3)))
)))
(assert (forall ((d@@4 T@U) ($h@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@9) (and (M3.Cache.Some_q d@@4) (exists ((M3.Cache$T@@4 T@U) ) (! ($IsAlloc DatatypeTypeType d@@4 (Tclass.M3.Cache M3.Cache$T@@4) $h@@9)
 :qid |unknown.0:0|
 :skolemid |2122|
 :pattern ( ($IsAlloc DatatypeTypeType d@@4 (Tclass.M3.Cache M3.Cache$T@@4) $h@@9))
)))) ($IsAlloc intType (int_2_U (M3.Cache.index d@@4)) Tclass._System.nat $h@@9))
 :qid |unknown.0:0|
 :skolemid |2123|
 :pattern ( ($IsAlloc intType (int_2_U (M3.Cache.index d@@4)) Tclass._System.nat $h@@9))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((M3.Container$T@@9 T@U) ($Heap T@U) (this T@U) ) (!  (=> (or (|M3.Container.Valid_k_k#canCall| M3.Container$T@@9 $Heap this) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this (Tclass.M3.Container M3.Container$T@@9)) ($IsAlloc refType this (Tclass.M3.Container M3.Container$T@@9) $Heap)))))) (= (M3.Container.Valid_k_k M3.Container$T@@9 $Heap this)  (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.cache))) (and (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.elems)))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.elems)) (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.cache)))) (M3.Cache.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap this) M3.Container.cache))))))))
 :qid |unknown.0:0|
 :skolemid |2148|
 :pattern ( (M3.Container.Valid_k_k M3.Container$T@@9 $Heap this) ($IsGoodHeap $Heap))
))))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |1737|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TBool) (and (= ($Box boolType ($Unbox boolType bx@@3)) bx@@3) ($Is boolType ($Unbox boolType bx@@3) TBool)))
 :qid |DafnyPreludebpl.182:15|
 :skolemid |1659|
 :pattern ( ($IsBox bx@@3 TBool))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1668|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert (forall ((s T@U) ) (! (<= 0 (|Seq#Length| s))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1851|
 :pattern ( (|Seq#Length| s))
)))
(assert (forall ((v@@2 T@U) (t0@@2 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@4) ($IsAllocBox bx@@4 t0@@2 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1697|
 :pattern ( (|Set#IsMember| v@@2 bx@@4))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1698|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@2) h@@0))
)))
(assert (forall ((|a#16#0#0| Int) (|a#16#1#0| T@U) ) (! (= (DatatypeCtorId (|#M3.Cache.Some| |a#16#0#0| |a#16#1#0|)) |##M3.Cache.Some|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2116|
 :pattern ( (|#M3.Cache.Some| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall ((|a#20#0#0| Int) (|a#20#1#0| T@U) ) (! (= (M3.Cache.index (|#M3.Cache.Some| |a#20#0#0| |a#20#1#0|)) |a#20#0#0|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2126|
 :pattern ( (|#M3.Cache.Some| |a#20#0#0| |a#20#1#0|))
)))
(assert (forall ((|a#21#0#0| Int) (|a#21#1#0| T@U) ) (! (= (M3.Cache.value (|#M3.Cache.Some| |a#21#0#0| |a#21#1#0|)) |a#21#1#0|)
 :qid |CachedContainerdfy.144:35|
 :skolemid |2127|
 :pattern ( (|#M3.Cache.Some| |a#21#0#0| |a#21#1#0|))
)))
(assert (forall (($o@@7 T@U) ) (! ($Is refType $o@@7 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1977|
 :pattern ( ($Is refType $o@@7 Tclass._System.object?))
)))
(assert (forall ((v@@3 T@U) (t0@@3 T@U) (h@@1 T@U) ) (! (= ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1) (forall ((i Int) ) (!  (=> (and (<= 0 i) (< i (|Seq#Length| v@@3))) ($IsAllocBox (|Seq#Index| v@@3 i) t0@@3 h@@1))
 :qid |DafnyPreludebpl.311:11|
 :skolemid |1703|
 :pattern ( (|Seq#Index| v@@3 i))
)))
 :qid |DafnyPreludebpl.309:15|
 :skolemid |1704|
 :pattern ( ($IsAlloc SeqType v@@3 (TSeq t0@@3) h@@1))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1631|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1632|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |1637|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |1638|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((M3.Cache$T@@5 T@U) ) (! (= (Tclass.M3.Cache_0 (Tclass.M3.Cache M3.Cache$T@@5)) M3.Cache$T@@5)
 :qid |unknown.0:0|
 :skolemid |2112|
 :pattern ( (Tclass.M3.Cache M3.Cache$T@@5))
)))
(assert (forall ((M3.Container$T@@10 T@U) ) (! (= (Tclass.M3.Container?_0 (Tclass.M3.Container? M3.Container$T@@10)) M3.Container$T@@10)
 :qid |unknown.0:0|
 :skolemid |2135|
 :pattern ( (Tclass.M3.Container? M3.Container$T@@10))
)))
(assert (forall ((M3.Container$T@@11 T@U) ) (! (= (Tclass.M3.Container_0 (Tclass.M3.Container M3.Container$T@@11)) M3.Container$T@@11)
 :qid |unknown.0:0|
 :skolemid |2143|
 :pattern ( (Tclass.M3.Container M3.Container$T@@11))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1655|
 :pattern ( ($Box T@@3 x@@5))
)))
(assert (forall ((|a#22#0#0| Int) (|a#22#1#0| T@U) ) (! (< (BoxRank |a#22#1#0|) (DtRank (|#M3.Cache.Some| |a#22#0#0| |a#22#1#0|)))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2128|
 :pattern ( (|#M3.Cache.Some| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((d@@5 T@U) (M3.Cache$T@@6 T@U) ($h@@10 T@U) ) (!  (=> (and ($IsGoodHeap $h@@10) (and (M3.Cache.Some_q d@@5) ($IsAlloc DatatypeTypeType d@@5 (Tclass.M3.Cache M3.Cache$T@@6) $h@@10))) ($IsAllocBox (M3.Cache.value d@@5) M3.Cache$T@@6 $h@@10))
 :qid |unknown.0:0|
 :skolemid |2124|
 :pattern ( ($IsAllocBox (M3.Cache.value d@@5) M3.Cache$T@@6 $h@@10))
)))
(assert (forall ((M3.Container$T@@12 T@U) ($h@@11 T@U) ($o@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@11) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass.M3.Container? M3.Container$T@@12)))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) M3.Container.cache)) (Tclass.M3.Cache M3.Container$T@@12)))
 :qid |unknown.0:0|
 :skolemid |2139|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@11 $o@@8) M3.Container.cache)) (Tclass.M3.Container? M3.Container$T@@12))
)))
(assert (forall ((M3.Container$T@@13 T@U) ($h@@12 T@U) ($o@@9 T@U) ) (!  (=> (and ($IsGoodHeap $h@@12) (and (or (not (= $o@@9 null)) (not true)) (= (dtype $o@@9) (Tclass.M3.Container? M3.Container$T@@13)))) ($Is SeqType ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) M3.Container.elems)) (TSeq M3.Container$T@@13)))
 :qid |unknown.0:0|
 :skolemid |2216|
 :pattern ( ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@12 $o@@9) M3.Container.elems)) (Tclass.M3.Container? M3.Container$T@@13))
)))
(assert (forall ((d@@6 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@6)) (DtRank d@@6))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |1714|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@6)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@5)) bx@@5) ($Is SetType ($Unbox SetType bx@@5) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1662|
 :pattern ( ($IsBox bx@@5 (TSet t@@5)))
)))
(assert (forall ((bx@@6 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@6 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@6)) bx@@6) ($Is SeqType ($Unbox SeqType bx@@6) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |1665|
 :pattern ( ($IsBox bx@@6 (TSeq t@@6)))
)))
(assert (forall ((M3.Cache$T@@7 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass.M3.Cache M3.Cache$T@@7)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) (Tclass.M3.Cache M3.Cache$T@@7))))
 :qid |unknown.0:0|
 :skolemid |2113|
 :pattern ( ($IsBox bx@@7 (Tclass.M3.Cache M3.Cache$T@@7)))
)))
(assert (forall ((M3.Container$T@@14 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass.M3.Container? M3.Container$T@@14)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass.M3.Container? M3.Container$T@@14))))
 :qid |unknown.0:0|
 :skolemid |2136|
 :pattern ( ($IsBox bx@@8 (Tclass.M3.Container? M3.Container$T@@14)))
)))
(assert (forall ((M3.Container$T@@15 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass.M3.Container M3.Container$T@@15)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass.M3.Container M3.Container$T@@15))))
 :qid |unknown.0:0|
 :skolemid |2144|
 :pattern ( ($IsBox bx@@9 (Tclass.M3.Container M3.Container$T@@15)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= |#M3.Cache.None| (Lit DatatypeTypeType |#M3.Cache.None|)))
(assert (forall ((|a#19#0#0| Int) (|a#19#1#0| T@U) ) (! (= (|#M3.Cache.Some| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)) (Lit DatatypeTypeType (|#M3.Cache.Some| |a#19#0#0| |a#19#1#0|)))
 :qid |CachedContainerdfy.144:35|
 :skolemid |2125|
 :pattern ( (|#M3.Cache.Some| (LitInt |a#19#0#0|) (Lit BoxType |a#19#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1648|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@7)) (Lit BoxType ($Box T@@4 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1646|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@7)))
)))
(assert (forall ((s@@0 T@U) ) (!  (=> (= (|Seq#Length| s@@0) 0) (= s@@0 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1852|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall ((h@@2 T@U) (v@@4 T@U) ) (! ($IsAlloc boolType v@@4 TBool h@@2)
 :qid |DafnyPreludebpl.291:14|
 :skolemid |1693|
 :pattern ( ($IsAlloc boolType v@@4 TBool h@@2))
)))
(assert (forall ((M3.Cache$T@@8 T@U) (|a#18#0#0@@0| Int) (|a#18#1#0@@0| T@U) ($h@@13 T@U) ) (!  (=> ($IsGoodHeap $h@@13) (= ($IsAlloc DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.M3.Cache M3.Cache$T@@8) $h@@13)  (and ($IsAlloc intType (int_2_U |a#18#0#0@@0|) Tclass._System.nat $h@@13) ($IsAllocBox |a#18#1#0@@0| M3.Cache$T@@8 $h@@13))))
 :qid |unknown.0:0|
 :skolemid |2121|
 :pattern ( ($IsAlloc DatatypeTypeType (|#M3.Cache.Some| |a#18#0#0@@0| |a#18#1#0@@0|) (Tclass.M3.Cache M3.Cache$T@@8) $h@@13))
)))
(assert (forall ((v@@5 T@U) (t0@@4 T@U) ) (! (= ($Is SeqType v@@5 (TSeq t0@@4)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@5))) ($IsBox (|Seq#Index| v@@5 i@@0) t0@@4))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |1683|
 :pattern ( (|Seq#Index| v@@5 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |1684|
 :pattern ( ($Is SeqType v@@5 (TSeq t0@@4)))
)))
(assert (forall ((s@@1 T@U) (i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| s@@1))) (< (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))) (|Seq#Rank| s@@1)))
 :qid |DafnyPreludebpl.1353:15|
 :skolemid |1897|
 :pattern ( (DtRank ($Unbox DatatypeTypeType (|Seq#Index| s@@1 i@@1))))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is boolType v@@6 TBool)
 :qid |DafnyPreludebpl.230:14|
 :skolemid |1672|
 :pattern ( ($Is boolType v@@6 TBool))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun M3.Container$T@@16 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun this@@0 () T@U)
(declare-fun |b$reqreads#1@0| () Bool)
(declare-fun |b$reqreads#2@1| () Bool)
(declare-fun |b$reqreads#3@1| () Bool)
(declare-fun |b$reqreads#4@1| () Bool)
(declare-fun |b$reqreads#5@1| () Bool)
(declare-fun |b$reqreads#6@1| () Bool)
(declare-fun |b$reqreads#2@0| () Bool)
(declare-fun |b$reqreads#3@0| () Bool)
(declare-fun |b$reqreads#4@0| () Bool)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun |b$reqreads#5@0| () Bool)
(declare-fun |b$reqreads#6@0| () Bool)
(declare-fun |b$reqreads#0@0| () Bool)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$M3.Container.Valid_k_k)
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
 (=> (= (ControlFlow 0 0) 19) (let ((anon6_correct  (=> (and (= (M3.Container.Valid_k_k M3.Container$T@@16 $Heap@@0 this@@0)  (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (and (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems)))) (= (|Seq#Index| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems)) (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (M3.Cache.value ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))))))) ($Is boolType (bool_2_U (M3.Container.Valid_k_k M3.Container$T@@16 $Heap@@0 this@@0)) TBool)) (and (=> (= (ControlFlow 0 3) (- 0 8)) |b$reqreads#1@0|) (=> |b$reqreads#1@0| (and (=> (= (ControlFlow 0 3) (- 0 7)) |b$reqreads#2@1|) (=> |b$reqreads#2@1| (and (=> (= (ControlFlow 0 3) (- 0 6)) |b$reqreads#3@1|) (=> |b$reqreads#3@1| (and (=> (= (ControlFlow 0 3) (- 0 5)) |b$reqreads#4@1|) (=> |b$reqreads#4@1| (and (=> (= (ControlFlow 0 3) (- 0 4)) |b$reqreads#5@1|) (=> |b$reqreads#5@1| (=> (= (ControlFlow 0 3) (- 0 2)) |b$reqreads#6@1|))))))))))))))
(let ((anon10_Else_correct  (=> (<= (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems))) (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (=> (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (=> (and (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 14) 3))) anon6_correct)))))
(let ((anon10_Then_correct  (=> (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems)))) (=> (and (= |b$reqreads#4@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.elems))) (= |b$reqreads#5@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.cache)))) (and (=> (= (ControlFlow 0 10) (- 0 13)) (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (and (=> (= (ControlFlow 0 10) (- 0 12)) (and (<= 0 (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems)))))) (=> (and (<= 0 (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (< (M3.Cache.index ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (|Seq#Length| ($Unbox SeqType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.elems))))) (=> (= |b$reqreads#6@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.cache))) (and (=> (= (ControlFlow 0 10) (- 0 11)) (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (=> (and (= |b$reqreads#2@1| |b$reqreads#2@0|) (= |b$reqreads#3@1| |b$reqreads#3@0|)) (=> (and (and (= |b$reqreads#4@1| |b$reqreads#4@0|) (= |b$reqreads#5@1| |b$reqreads#5@0|)) (and (= |b$reqreads#6@1| |b$reqreads#6@0|) (= (ControlFlow 0 10) 3))) anon6_correct)))))))))))))
(let ((anon9_Then_correct  (=> (and (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (= |b$reqreads#2@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.cache)))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (=> (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache))) (=> (= |b$reqreads#3@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.elems))) (and (=> (= (ControlFlow 0 15) 10) anon10_Then_correct) (=> (= (ControlFlow 0 15) 14) anon10_Else_correct))))))))
(let ((anon9_Else_correct  (=> (not (M3.Cache.Some_q ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.cache)))) (=> (and (= |b$reqreads#2@1| true) (= |b$reqreads#3@1| true)) (=> (and (and (= |b$reqreads#4@1| true) (= |b$reqreads#5@1| true)) (and (= |b$reqreads#6@1| true) (= (ControlFlow 0 9) 3))) anon6_correct)))))
(let ((anon8_Else_correct  (=> (= |b$reqreads#1@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.cache))) (and (=> (= (ControlFlow 0 17) 15) anon9_Then_correct) (=> (= (ControlFlow 0 17) 9) anon9_Else_correct)))))
(let ((anon8_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@0 alloc this@@0 ($Unbox SetType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) M3.Container.Repr)))) (=> (and (= |b$reqreads#0@0| (U_2_bool (MapType1Select refType FieldType boolType $_ReadsFrame@0 this@@0 M3.Container.Repr))) |b$reqreads#0@0|) (and (=> (= (ControlFlow 0 18) 1) anon8_Then_correct) (=> (= (ControlFlow 0 18) 17) anon8_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 (Tclass.M3.Container M3.Container$T@@16)) ($IsAlloc refType this@@0 (Tclass.M3.Container M3.Container$T@@16) $Heap@@0))) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 19) 18))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
