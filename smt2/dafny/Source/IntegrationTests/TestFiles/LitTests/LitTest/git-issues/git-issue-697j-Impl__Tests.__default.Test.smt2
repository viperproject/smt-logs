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
(declare-fun Tagclass.Tests.PInt () T@U)
(declare-fun Tagclass.Tests.PNat () T@U)
(declare-fun Tagclass.Tests.MyPlainInt () T@U)
(declare-fun Tagclass.Tests.MyPInt () T@U)
(declare-fun Tagclass.Tests.MyPNat () T@U)
(declare-fun Tagclass.Tests.Cell () T@U)
(declare-fun Tagclass.Tests.Cell? () T@U)
(declare-fun Tagclass.Tests.Cell5 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$PInt () T@U)
(declare-fun tytagFamily$PNat () T@U)
(declare-fun tytagFamily$MyPlainInt () T@U)
(declare-fun tytagFamily$MyPInt () T@U)
(declare-fun tytagFamily$MyPNat () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun tytagFamily$Cell5 () T@U)
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
(declare-fun $FunctionContextHeight () Int)
(declare-fun Tests.Cell.k (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun Tclass.Tests.Cell? () T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Tag (T@U) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.Tests.PInt () T@U)
(declare-fun Tclass.Tests.PNat () T@U)
(declare-fun Tclass.Tests.MyPlainInt () T@U)
(declare-fun Tclass.Tests.MyPInt () T@U)
(declare-fun Tclass.Tests.MyPNat () T@U)
(declare-fun |lambda#8| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass.Tests.Cell () T@U)
(declare-fun Tclass.Tests.Cell5 () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun Tests.__default.P (Int) Bool)
(declare-fun |Tests.__default.P#canCall| (Int) Bool)
(declare-fun |lambda#4| (T@U Int) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun |Set#FromBoogieMap| (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass.Tests.PInt Tagclass.Tests.PNat Tagclass.Tests.MyPlainInt Tagclass.Tests.MyPInt Tagclass.Tests.MyPNat Tagclass.Tests.Cell Tagclass.Tests.Cell? Tagclass.Tests.Cell5 tytagFamily$nat tytagFamily$PInt tytagFamily$PNat tytagFamily$MyPlainInt tytagFamily$MyPInt tytagFamily$MyPNat tytagFamily$Cell tytagFamily$Cell5)
)
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 3)) (= (Ctor BoxType) 4)) (= (Ctor refType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($h T@U) ($o T@U) ) (!  (=> (and (and ($IsGoodHeap $h) (and (or (not (= $o null)) (not true)) (= (dtype $o) Tclass.Tests.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))) ($IsAlloc intType (int_2_U (Tests.Cell.k $o)) TInt $h))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |517|
 :pattern ( (Tests.Cell.k $o) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h $o) alloc)))
))))
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
(assert (forall ((|x#0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h@@0)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h@@0))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.Tests.PInt $h@@1)
 :qid |unknown.0:0|
 :skolemid |502|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.Tests.PInt $h@@1))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@2 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass.Tests.PNat $h@@2)
 :qid |unknown.0:0|
 :skolemid |505|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass.Tests.PNat $h@@2))
)))
(assert (forall ((|c1#0| T@U) ($h@@3 T@U) ) (! ($IsAlloc intType |c1#0| Tclass.Tests.MyPlainInt $h@@3)
 :qid |unknown.0:0|
 :skolemid |507|
 :pattern ( ($IsAlloc intType |c1#0| Tclass.Tests.MyPlainInt $h@@3))
)))
(assert (forall ((|x#0@@2| T@U) ($h@@4 T@U) ) (! ($IsAlloc intType |x#0@@2| Tclass.Tests.MyPInt $h@@4)
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($IsAlloc intType |x#0@@2| Tclass.Tests.MyPInt $h@@4))
)))
(assert (forall ((|x#0@@3| T@U) ($h@@5 T@U) ) (! ($IsAlloc intType |x#0@@3| Tclass.Tests.MyPNat $h@@5)
 :qid |unknown.0:0|
 :skolemid |513|
 :pattern ( ($IsAlloc intType |x#0@@3| Tclass.Tests.MyPNat $h@@5))
)))
(assert (forall ((a@@1 T@U) (x@@4 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o)  (or (= o x@@4) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@4) o))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$y#7| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#8| |l#0| |l#1|) |$y#7|))  (and ($IsBox |$y#7| |l#0|) (|Set#IsMember| |l#1| |$y#7|)))
 :qid |gitissue697jdfy.32:9|
 :skolemid |5343|
 :pattern ( (MapType0Select BoxType boolType (|lambda#8| |l#0| |l#1|) |$y#7|))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall (($o@@0 T@U) ) (! (= ($Is refType $o@@0 Tclass.Tests.Cell?)  (or (= $o@@0 null) (= (dtype $o@@0) Tclass.Tests.Cell?)))
 :qid |unknown.0:0|
 :skolemid |514|
 :pattern ( ($Is refType $o@@0 Tclass.Tests.Cell?))
)))
(assert (forall ((|c#0| T@U) ($h@@6 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.Tests.Cell $h@@6) ($IsAlloc refType |c#0| Tclass.Tests.Cell? $h@@6))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( ($IsAlloc refType |c#0| Tclass.Tests.Cell $h@@6))
 :pattern ( ($IsAlloc refType |c#0| Tclass.Tests.Cell? $h@@6))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@7 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass.Tests.Cell5 $h@@7) ($IsAlloc refType |c#0@@0| Tclass.Tests.Cell $h@@7))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass.Tests.Cell5 $h@@7))
)))
(assert (forall (($o@@1 T@U) ($h@@8 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass.Tests.Cell? $h@@8)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@8 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsAlloc refType $o@@1 Tclass.Tests.Cell? $h@@8))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@4| Int) ) (!  (=> (or (|Tests.__default.P#canCall| |x#0@@4|) (< 0 $FunctionContextHeight)) (= (Tests.__default.P |x#0@@4|)  (or (not (= |x#0@@4| 3)) (not true))))
 :qid |gitissue697jdfy.22:15|
 :skolemid |481|
 :pattern ( (Tests.__default.P |x#0@@4|))
))))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| Int) (|$y#3| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#4| |l#0@@0| |l#1@@0|) |$y#3|))  (and ($IsBox |$y#3| |l#0@@0|) (< (U_2_int ($Unbox intType |$y#3|)) |l#1@@0|)))
 :qid |gitissue697jdfy.26:8|
 :skolemid |5342|
 :pattern ( (MapType0Select BoxType boolType (|lambda#4| |l#0@@0| |l#1@@0|) |$y#3|))
)))
(assert (forall ((x@@7 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@7)) x@@7)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@7))
)))
(assert  (=> (< 0 $FunctionContextHeight) (forall (($o@@2 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.Tests.Cell?)) ($Is intType (int_2_U (Tests.Cell.k $o@@2)) TInt))
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (Tests.Cell.k $o@@2))
))))
(assert (forall ((m@@1 T@U) (bx T@U) ) (! (= (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx) (U_2_bool (MapType0Select BoxType boolType m@@1 bx)))
 :qid |DafnyPreludebpl.805:15|
 :skolemid |153|
 :pattern ( (|Set#IsMember| (|Set#FromBoogieMap| m@@1) bx))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert (forall ((|x#0@@5| T@U) ) (! (= ($Is intType |x#0@@5| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@5|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@5| Tclass._System.nat))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@1) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@1 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((|x#0@@6| T@U) ) (! (= ($Is intType |x#0@@6| Tclass.Tests.PNat)  (and (<= (LitInt 0) (U_2_int |x#0@@6|)) (Tests.__default.P (U_2_int |x#0@@6|))))
 :qid |unknown.0:0|
 :skolemid |504|
 :pattern ( ($Is intType |x#0@@6| Tclass.Tests.PNat))
)))
(assert (forall ((|x#0@@7| T@U) ) (! (= ($Is intType |x#0@@7| Tclass.Tests.MyPNat)  (and (<= (LitInt 0) (U_2_int |x#0@@7|)) (Tests.__default.P (U_2_int |x#0@@7|))))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($Is intType |x#0@@7| Tclass.Tests.MyPNat))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@8| Int) ) (!  (=> (or (|Tests.__default.P#canCall| (LitInt |x#0@@8|)) (< 0 $FunctionContextHeight)) (= (Tests.__default.P (LitInt |x#0@@8|)) (U_2_bool (Lit boolType (bool_2_U  (or (not (= |x#0@@8| 3)) (not true)))))))
 :qid |gitissue697jdfy.22:15|
 :weight 3
 :skolemid |482|
 :pattern ( (Tests.__default.P (LitInt |x#0@@8|)))
))))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@2 Tclass._System.nat))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass.Tests.PInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass.Tests.PInt)))
 :qid |unknown.0:0|
 :skolemid |486|
 :pattern ( ($IsBox bx@@3 Tclass.Tests.PInt))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass.Tests.PNat) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass.Tests.PNat)))
 :qid |unknown.0:0|
 :skolemid |487|
 :pattern ( ($IsBox bx@@4 Tclass.Tests.PNat))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass.Tests.MyPlainInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass.Tests.MyPlainInt)))
 :qid |unknown.0:0|
 :skolemid |490|
 :pattern ( ($IsBox bx@@5 Tclass.Tests.MyPlainInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass.Tests.MyPInt) (and (= ($Box intType ($Unbox intType bx@@6)) bx@@6) ($Is intType ($Unbox intType bx@@6) Tclass.Tests.MyPInt)))
 :qid |unknown.0:0|
 :skolemid |491|
 :pattern ( ($IsBox bx@@6 Tclass.Tests.MyPInt))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass.Tests.MyPNat) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) Tclass.Tests.MyPNat)))
 :qid |unknown.0:0|
 :skolemid |492|
 :pattern ( ($IsBox bx@@7 Tclass.Tests.MyPNat))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.Tests.Cell) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) Tclass.Tests.Cell)))
 :qid |unknown.0:0|
 :skolemid |495|
 :pattern ( ($IsBox bx@@8 Tclass.Tests.Cell))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.Tests.Cell?) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) Tclass.Tests.Cell?)))
 :qid |unknown.0:0|
 :skolemid |498|
 :pattern ( ($IsBox bx@@9 Tclass.Tests.Cell?))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 Tclass.Tests.Cell5) (and (= ($Box refType ($Unbox refType bx@@10)) bx@@10) ($Is refType ($Unbox refType bx@@10) Tclass.Tests.Cell5)))
 :qid |unknown.0:0|
 :skolemid |499|
 :pattern ( ($IsBox bx@@10 Tclass.Tests.Cell5))
)))
(assert (forall ((|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| Tclass.Tests.Cell)  (and ($Is refType |c#0@@1| Tclass.Tests.Cell?) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($Is refType |c#0@@1| Tclass.Tests.Cell))
 :pattern ( ($Is refType |c#0@@1| Tclass.Tests.Cell?))
)))
(assert (forall ((|l#0@@1| T@U) (|l#1@@1| Int) (|l#2| Int) (|$y#0| T@U) ) (! (= (U_2_bool (MapType0Select BoxType boolType (|lambda#1| |l#0@@1| |l#1@@1| |l#2|) |$y#0|))  (and ($IsBox |$y#0| |l#0@@1|) (and (<= |l#1@@1| (U_2_int ($Unbox intType |$y#0|))) (< (U_2_int ($Unbox intType |$y#0|)) |l#2|))))
 :qid |unknown.0:0|
 :skolemid |5341|
 :pattern ( (MapType0Select BoxType boolType (|lambda#1| |l#0@@1| |l#1@@1| |l#2|) |$y#0|))
)))
(assert (forall ((a@@2 T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b) ($HeapSucc b c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b) ($HeapSucc b c))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass.Tests.Cell5)  (and ($Is refType |c#0@@2| Tclass.Tests.Cell) (= (Tests.Cell.k |c#0@@2|) (LitInt 5))))
 :qid |unknown.0:0|
 :skolemid |523|
 :pattern ( ($Is refType |c#0@@2| Tclass.Tests.Cell5))
)))
(assert (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 TInt) (and (= ($Box intType ($Unbox intType bx@@11)) bx@@11) ($Is intType ($Unbox intType bx@@11) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@11 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@3 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@3) (forall ((bx@@12 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@12) ($IsAllocBox bx@@12 t0@@1 h@@3))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@12))
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
(assert (forall ((x@@8 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@8)) x@@8)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@8))
)))
(assert (forall ((|x#0@@9| T@U) ) (! (= ($Is intType |x#0@@9| Tclass.Tests.PInt) (Tests.__default.P (U_2_int |x#0@@9|)))
 :qid |unknown.0:0|
 :skolemid |501|
 :pattern ( ($Is intType |x#0@@9| Tclass.Tests.PInt))
)))
(assert (forall ((|c0#0| T@U) ) (! (= ($Is intType |c0#0| Tclass.Tests.MyPlainInt) (U_2_bool (Lit boolType (bool_2_U true))))
 :qid |unknown.0:0|
 :skolemid |506|
 :pattern ( ($Is intType |c0#0| Tclass.Tests.MyPlainInt))
)))
(assert (forall ((|x#0@@10| T@U) ) (! (= ($Is intType |x#0@@10| Tclass.Tests.MyPInt) (Tests.__default.P (U_2_int |x#0@@10|)))
 :qid |unknown.0:0|
 :skolemid |509|
 :pattern ( ($Is intType |x#0@@10| Tclass.Tests.MyPInt))
)))
(assert  (and (forall ((t0@@2 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@2 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 t2 (MapType1Store t0@@2 t1@@0 t2 m@@2 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@3 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@3 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@3 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@4 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@4 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@4 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@2| T@U) (|l#1@@2| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@2| $o@@3) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |5340|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1@@2| |l#2@@0| |l#3|) $o@@3 $f))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.Tests.PInt) Tagclass.Tests.PInt))
(assert (= (TagFamily Tclass.Tests.PInt) tytagFamily$PInt))
(assert (= (Tag Tclass.Tests.PNat) Tagclass.Tests.PNat))
(assert (= (TagFamily Tclass.Tests.PNat) tytagFamily$PNat))
(assert (= (Tag Tclass.Tests.MyPlainInt) Tagclass.Tests.MyPlainInt))
(assert (= (TagFamily Tclass.Tests.MyPlainInt) tytagFamily$MyPlainInt))
(assert (= (Tag Tclass.Tests.MyPInt) Tagclass.Tests.MyPInt))
(assert (= (TagFamily Tclass.Tests.MyPInt) tytagFamily$MyPInt))
(assert (= (Tag Tclass.Tests.MyPNat) Tagclass.Tests.MyPNat))
(assert (= (TagFamily Tclass.Tests.MyPNat) tytagFamily$MyPNat))
(assert (= (Tag Tclass.Tests.Cell) Tagclass.Tests.Cell))
(assert (= (TagFamily Tclass.Tests.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.Tests.Cell?) Tagclass.Tests.Cell?))
(assert (= (TagFamily Tclass.Tests.Cell?) tytagFamily$Cell))
(assert (= (Tag Tclass.Tests.Cell5) Tagclass.Tests.Cell5))
(assert (= (TagFamily Tclass.Tests.Cell5) tytagFamily$Cell5))
(assert (forall ((x@@9 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@9))) (Lit BoxType ($Box intType (int_2_U x@@9))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@9))))
)))
(assert (forall ((x@@10 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@10)) (Lit BoxType ($Box T@@5 x@@10)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@10)))
)))
(assert (forall ((h@@4 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@4))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |cc#0@0| () T@U)
(declare-fun |y2#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |cc'1#0@0| () T@U)
(declare-fun |y1#0@0| () T@U)
(declare-fun |cc'0#0@0| () T@U)
(declare-fun |y0#0@0| () T@U)
(declare-fun |b1#0@2| () Bool)
(declare-fun |k##0@0| () Int)
(declare-fun call2formal@this () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun call2formal@this@0 () T@U)
(declare-fun |k##1@0| () Int)
(declare-fun call2formal@this@@0 () T@U)
(declare-fun call2formal@this@0@@0 () T@U)
(declare-fun |l1#1@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |b0#0@2| () Bool)
(declare-fun |l0#1@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |s2#0@1| () T@U)
(declare-fun |m2#0@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |s1#0@1| () T@U)
(declare-fun |m1#0@0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun |s0#0@1| () T@U)
(declare-fun |m0#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |b1#0@1| () Bool)
(declare-fun |s0#0@0| () T@U)
(declare-fun |s1#0@0| () T@U)
(declare-fun |s2#0@0| () T@U)
(declare-fun |k1#1@0| () Int)
(declare-fun |b0#0@1| () Bool)
(declare-fun |k0#1@0| () Int)
(declare-fun |r2#0@1| () T@U)
(declare-fun |n2#0@0| () Int)
(declare-fun |r1#0@1| () T@U)
(declare-fun |n1#0@0| () Int)
(declare-fun |r0#0@1| () T@U)
(declare-fun |n0#0@0| () Int)
(declare-fun |nats#0@1| () T@U)
(declare-fun |r0#0@0| () T@U)
(declare-fun |r1#0@0| () T@U)
(declare-fun |r2#0@0| () T@U)
(declare-fun |nx#0@0| () Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |nats#0@0| () T@U)
(declare-fun |nats#0| () T@U)
(declare-fun |r0#0| () T@U)
(declare-fun |r1#0| () T@U)
(declare-fun |r2#0| () T@U)
(declare-fun |s0#0| () T@U)
(declare-fun |s1#0| () T@U)
(declare-fun |s2#0| () T@U)
(declare-fun |defass#c0#0| () Bool)
(declare-fun |c0#0@@0| () T@U)
(declare-fun |defass#c1#0| () Bool)
(declare-fun |c1#0@@0| () T@U)
(declare-fun |cc#0| () T@U)
(declare-fun |cc'0#0| () T@U)
(declare-fun |cc'1#0| () T@U)
(declare-fun |cc'2#0| () T@U)
(set-info :boogie-vc-id Impl$$Tests.__default.Test)
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
 (=> (= (ControlFlow 0 0) 95) (let ((anon56_correct true))
(let ((anon91_Else_correct  (=> (and (not (|Set#IsMember| |cc#0@0| ($Box refType |y2#0@0|))) (= (ControlFlow 0 5) 2)) anon56_correct)))
(let ((anon91_Then_correct  (=> (and (|Set#IsMember| |cc#0@0| ($Box refType |y2#0@0|)) (= (ControlFlow 0 4) 2)) anon56_correct)))
(let ((anon90_Then_correct  (=> (and ($Is refType |y2#0@0| Tclass.Tests.Cell5) ($IsAlloc refType |y2#0@0| Tclass.Tests.Cell5 $Heap@1)) (and (=> (= (ControlFlow 0 6) 4) anon91_Then_correct) (=> (= (ControlFlow 0 6) 5) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (not (and ($Is refType |y2#0@0| Tclass.Tests.Cell5) ($IsAlloc refType |y2#0@0| Tclass.Tests.Cell5 $Heap@1))) (= (ControlFlow 0 3) 2)) anon56_correct)))
(let ((anon53_correct  (=> (= |cc'1#0@0| (|Set#FromBoogieMap| (|lambda#8| Tclass.Tests.Cell |cc#0@0|))) (and (=> (= (ControlFlow 0 7) 6) anon90_Then_correct) (=> (= (ControlFlow 0 7) 3) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (and (not (|Set#IsMember| |cc#0@0| ($Box refType |y1#0@0|))) (= (ControlFlow 0 10) 7)) anon53_correct)))
(let ((anon89_Then_correct  (=> (and (|Set#IsMember| |cc#0@0| ($Box refType |y1#0@0|)) (= (ControlFlow 0 9) 7)) anon53_correct)))
(let ((anon88_Then_correct  (=> (and ($Is refType |y1#0@0| Tclass.Tests.Cell) ($IsAlloc refType |y1#0@0| Tclass.Tests.Cell $Heap@1)) (and (=> (= (ControlFlow 0 11) 9) anon89_Then_correct) (=> (= (ControlFlow 0 11) 10) anon89_Else_correct)))))
(let ((anon88_Else_correct  (=> (and (not (and ($Is refType |y1#0@0| Tclass.Tests.Cell) ($IsAlloc refType |y1#0@0| Tclass.Tests.Cell $Heap@1))) (= (ControlFlow 0 8) 7)) anon53_correct)))
(let ((anon50_correct  (=> (= |cc'0#0@0| (|Set#FromBoogieMap| (|lambda#8| Tclass.Tests.Cell? |cc#0@0|))) (and (=> (= (ControlFlow 0 12) 11) anon88_Then_correct) (=> (= (ControlFlow 0 12) 8) anon88_Else_correct)))))
(let ((anon87_Else_correct  (=> (and (not (|Set#IsMember| |cc#0@0| ($Box refType |y0#0@0|))) (= (ControlFlow 0 15) 12)) anon50_correct)))
(let ((anon87_Then_correct  (=> (and (|Set#IsMember| |cc#0@0| ($Box refType |y0#0@0|)) (= (ControlFlow 0 14) 12)) anon50_correct)))
(let ((anon86_Then_correct  (=> (and ($Is refType |y0#0@0| Tclass.Tests.Cell?) ($IsAlloc refType |y0#0@0| Tclass.Tests.Cell? $Heap@1)) (and (=> (= (ControlFlow 0 16) 14) anon87_Then_correct) (=> (= (ControlFlow 0 16) 15) anon87_Else_correct)))))
(let ((anon86_Else_correct  (=> (and (not (and ($Is refType |y0#0@0| Tclass.Tests.Cell?) ($IsAlloc refType |y0#0@0| Tclass.Tests.Cell? $Heap@1))) (= (ControlFlow 0 13) 12)) anon50_correct)))
(let ((anon47_correct  (=> (and (and (and (= |b1#0@2| (forall ((|l1#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |l1#0|) (Tests.__default.P |l1#0|)) (< |l1#0| 5)) (or (not (= |l1#0| 4)) (not true)))
 :qid |gitissue697jdfy.60:18|
 :skolemid |494|
))) (= |k##0@0| (LitInt 4))) (and (or (not (= call2formal@this null)) (not true)) (and ($Is refType call2formal@this Tclass.Tests.Cell) ($IsAlloc refType call2formal@this Tclass.Tests.Cell $Heap)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (or (not (= call2formal@this@0 null)) (not true)) (and ($Is refType call2formal@this@0 Tclass.Tests.Cell) ($IsAlloc refType call2formal@this@0 Tclass.Tests.Cell $Heap@0))))) (=> (and (and (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap call2formal@this@0) alloc)))) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |gitissue697jdfy.34:5|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
))) (and ($HeapSucc $Heap $Heap@0) (= |k##1@0| (LitInt 5)))) (and (and (or (not (= call2formal@this@@0 null)) (not true)) (and ($Is refType call2formal@this@@0 Tclass.Tests.Cell) ($IsAlloc refType call2formal@this@@0 Tclass.Tests.Cell $Heap))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (or (not (= call2formal@this@0@@0 null)) (not true)) (and ($Is refType call2formal@this@0@@0 Tclass.Tests.Cell) ($IsAlloc refType call2formal@this@0@@0 Tclass.Tests.Cell $Heap@1))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 call2formal@this@0@@0) alloc))))) (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |gitissue697jdfy.34:5|
 :skolemid |519|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
)) ($HeapSucc $Heap@0 $Heap@1)))) (and (=> (= (ControlFlow 0 17) (- 0 19)) true) (and (=> (= (ControlFlow 0 17) (- 0 18)) true) (=> (= |cc#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box refType null)) ($Box refType call2formal@this@0)) ($Box refType call2formal@this@0@@0))) (and (=> (= (ControlFlow 0 17) 16) anon86_Then_correct) (=> (= (ControlFlow 0 17) 13) anon86_Else_correct)))))))))
(let ((anon85_Else_correct  (=> (and (<= 5 |l1#1@0|) (= (ControlFlow 0 23) 17)) anon47_correct)))
(let ((anon85_Then_correct  (=> (and (< |l1#1@0| 5) (= |newtype$check#8@0| (LitInt 4))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (and (<= (LitInt 0) |newtype$check#8@0|) (Tests.__default.P |newtype$check#8@0|))) (=> (and (<= (LitInt 0) |newtype$check#8@0|) (Tests.__default.P |newtype$check#8@0|)) (=> (= (ControlFlow 0 21) 17) anon47_correct))))))
(let ((anon84_Then_correct  (=> (and (and (<= (LitInt 0) |l1#1@0|) (Tests.__default.P |l1#1@0|)) (= |newtype$check#7@0| (LitInt 5))) (and (=> (= (ControlFlow 0 24) (- 0 25)) (and (<= (LitInt 0) |newtype$check#7@0|) (Tests.__default.P |newtype$check#7@0|))) (=> (and (<= (LitInt 0) |newtype$check#7@0|) (Tests.__default.P |newtype$check#7@0|)) (and (=> (= (ControlFlow 0 24) 21) anon85_Then_correct) (=> (= (ControlFlow 0 24) 23) anon85_Else_correct)))))))
(let ((anon84_Else_correct  (=> (and (not (and (<= (LitInt 0) |l1#1@0|) (Tests.__default.P |l1#1@0|))) (= (ControlFlow 0 20) 17)) anon47_correct)))
(let ((anon44_correct  (=> (= |b0#0@2| (forall ((|l0#0| Int) ) (!  (=> (and (Tests.__default.P |l0#0|) (and (<= (LitInt 2) |l0#0|) (< |l0#0| 5))) (or (not (= |l0#0| 3)) (not true)))
 :qid |gitissue697jdfy.59:18|
 :skolemid |493|
))) (and (=> (= (ControlFlow 0 26) 24) anon84_Then_correct) (=> (= (ControlFlow 0 26) 20) anon84_Else_correct)))))
(let ((anon83_Else_correct  (=> (and (not (and (<= (LitInt 2) |l0#1@0|) (< |l0#1@0| 5))) (= (ControlFlow 0 29) 26)) anon44_correct)))
(let ((anon83_Then_correct  (=> (and (and (<= (LitInt 2) |l0#1@0|) (< |l0#1@0| 5)) (= (ControlFlow 0 28) 26)) anon44_correct)))
(let ((anon82_Else_correct  (=> (< |l0#1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 32) 28) anon83_Then_correct) (=> (= (ControlFlow 0 32) 29) anon83_Else_correct)))))
(let ((anon82_Then_correct  (=> (and (<= (LitInt 2) |l0#1@0|) (= |newtype$check#6@0| (LitInt 5))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (Tests.__default.P |newtype$check#6@0|)) (=> (Tests.__default.P |newtype$check#6@0|) (and (=> (= (ControlFlow 0 30) 28) anon83_Then_correct) (=> (= (ControlFlow 0 30) 29) anon83_Else_correct)))))))
(let ((anon81_Then_correct  (=> (and (Tests.__default.P |l0#1@0|) (= |newtype$check#5@0| (LitInt 2))) (and (=> (= (ControlFlow 0 33) (- 0 34)) (Tests.__default.P |newtype$check#5@0|)) (=> (Tests.__default.P |newtype$check#5@0|) (and (=> (= (ControlFlow 0 33) 30) anon82_Then_correct) (=> (= (ControlFlow 0 33) 32) anon82_Else_correct)))))))
(let ((anon81_Else_correct  (=> (and (not (Tests.__default.P |l0#1@0|)) (= (ControlFlow 0 27) 26)) anon44_correct)))
(let ((anon39_correct  (=> (= |s2#0@1| (|Set#FromBoogieMap| (|lambda#4| Tclass.Tests.MyPNat 5))) (and (=> (= (ControlFlow 0 35) 33) anon81_Then_correct) (=> (= (ControlFlow 0 35) 27) anon81_Else_correct)))))
(let ((anon80_Else_correct  (=> (and (<= 5 |m2#0@0|) (= (ControlFlow 0 38) 35)) anon39_correct)))
(let ((anon80_Then_correct  (=> (and (< |m2#0@0| 5) (= (ControlFlow 0 37) 35)) anon39_correct)))
(let ((anon79_Then_correct  (=> (and (and (<= (LitInt 0) |m2#0@0|) (Tests.__default.P |m2#0@0|)) (= |newtype$check#4@0| (LitInt 5))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (and (<= (LitInt 0) |newtype$check#4@0|) (Tests.__default.P |newtype$check#4@0|))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (Tests.__default.P |newtype$check#4@0|)) (and (=> (= (ControlFlow 0 39) 37) anon80_Then_correct) (=> (= (ControlFlow 0 39) 38) anon80_Else_correct)))))))
(let ((anon79_Else_correct  (=> (and (not (and (<= (LitInt 0) |m2#0@0|) (Tests.__default.P |m2#0@0|))) (= (ControlFlow 0 36) 35)) anon39_correct)))
(let ((anon36_correct  (=> (= |s1#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.Tests.MyPInt (LitInt 2) 5))) (and (=> (= (ControlFlow 0 41) 39) anon79_Then_correct) (=> (= (ControlFlow 0 41) 36) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (and (not (and (<= (LitInt 2) |m1#0@0|) (< |m1#0@0| 5))) (= (ControlFlow 0 44) 41)) anon36_correct)))
(let ((anon78_Then_correct  (=> (and (and (<= (LitInt 2) |m1#0@0|) (< |m1#0@0| 5)) (= (ControlFlow 0 43) 41)) anon36_correct)))
(let ((anon77_Else_correct  (=> (< |m1#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 47) 43) anon78_Then_correct) (=> (= (ControlFlow 0 47) 44) anon78_Else_correct)))))
(let ((anon77_Then_correct  (=> (and (<= (LitInt 2) |m1#0@0|) (= |newtype$check#3@0| (LitInt 5))) (and (=> (= (ControlFlow 0 45) (- 0 46)) (Tests.__default.P |newtype$check#3@0|)) (=> (Tests.__default.P |newtype$check#3@0|) (and (=> (= (ControlFlow 0 45) 43) anon78_Then_correct) (=> (= (ControlFlow 0 45) 44) anon78_Else_correct)))))))
(let ((anon76_Then_correct  (=> (and (Tests.__default.P |m1#0@0|) (= |newtype$check#2@0| (LitInt 2))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (Tests.__default.P |newtype$check#2@0|)) (=> (Tests.__default.P |newtype$check#2@0|) (and (=> (= (ControlFlow 0 48) 45) anon77_Then_correct) (=> (= (ControlFlow 0 48) 47) anon77_Else_correct)))))))
(let ((anon76_Else_correct  (=> (and (not (Tests.__default.P |m1#0@0|)) (= (ControlFlow 0 42) 41)) anon36_correct)))
(let ((anon31_correct  (=> (= |s0#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.Tests.MyPlainInt (LitInt 0) 5))) (and (=> (= (ControlFlow 0 50) 48) anon76_Then_correct) (=> (= (ControlFlow 0 50) 42) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (and (not (and (<= (LitInt 0) |m0#0@0|) (< |m0#0@0| 5))) (= (ControlFlow 0 53) 50)) anon31_correct)))
(let ((anon75_Then_correct  (=> (and (and (<= (LitInt 0) |m0#0@0|) (< |m0#0@0| 5)) (= (ControlFlow 0 52) 50)) anon31_correct)))
(let ((anon74_Else_correct  (=> (< |m0#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 55) 52) anon75_Then_correct) (=> (= (ControlFlow 0 55) 53) anon75_Else_correct)))))
(let ((anon74_Then_correct  (=> (and (<= (LitInt 0) |m0#0@0|) (= |newtype$check#1@0| (LitInt 5))) (and (=> (= (ControlFlow 0 54) 52) anon75_Then_correct) (=> (= (ControlFlow 0 54) 53) anon75_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (U_2_bool (Lit boolType (bool_2_U true))) (= |newtype$check#0@0| (LitInt 0))) (and (=> (= (ControlFlow 0 56) 54) anon74_Then_correct) (=> (= (ControlFlow 0 56) 55) anon74_Else_correct)))))
(let ((anon73_Else_correct  (=> (and (not (U_2_bool (Lit boolType (bool_2_U true)))) (= (ControlFlow 0 51) 50)) anon31_correct)))
(let ((anon26_correct  (=> (= |b1#0@1| (forall ((|k1#0| Int) ) (!  (=> (and (and (<= (LitInt 0) |k1#0|) (Tests.__default.P |k1#0|)) (< |k1#0| 5)) (or (not (= |k1#0| 4)) (not true)))
 :qid |gitissue697jdfy.51:18|
 :skolemid |489|
))) (=> (and ($Is SetType |s0#0@0| (TSet Tclass.Tests.MyPlainInt)) ($IsAlloc SetType |s0#0@0| (TSet Tclass.Tests.MyPlainInt) $Heap)) (=> (and (and ($Is SetType |s1#0@0| (TSet Tclass.Tests.MyPInt)) ($IsAlloc SetType |s1#0@0| (TSet Tclass.Tests.MyPInt) $Heap)) (and ($Is SetType |s2#0@0| (TSet Tclass.Tests.MyPNat)) ($IsAlloc SetType |s2#0@0| (TSet Tclass.Tests.MyPNat) $Heap))) (and (=> (= (ControlFlow 0 57) 56) anon73_Then_correct) (=> (= (ControlFlow 0 57) 51) anon73_Else_correct)))))))
(let ((anon72_Else_correct  (=> (and (<= 5 |k1#1@0|) (= (ControlFlow 0 60) 57)) anon26_correct)))
(let ((anon72_Then_correct  (=> (and (< |k1#1@0| 5) (= (ControlFlow 0 59) 57)) anon26_correct)))
(let ((anon71_Then_correct  (=> (and (<= (LitInt 0) |k1#1@0|) (Tests.__default.P |k1#1@0|)) (and (=> (= (ControlFlow 0 61) 59) anon72_Then_correct) (=> (= (ControlFlow 0 61) 60) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (and (not (and (<= (LitInt 0) |k1#1@0|) (Tests.__default.P |k1#1@0|))) (= (ControlFlow 0 58) 57)) anon26_correct)))
(let ((anon23_correct  (=> (= |b0#0@1| (forall ((|k0#0| Int) ) (!  (=> (and (Tests.__default.P |k0#0|) (and (<= (LitInt 2) |k0#0|) (< |k0#0| 5))) (or (not (= |k0#0| 3)) (not true)))
 :qid |gitissue697jdfy.50:18|
 :skolemid |488|
))) (and (=> (= (ControlFlow 0 62) 61) anon71_Then_correct) (=> (= (ControlFlow 0 62) 58) anon71_Else_correct)))))
(let ((anon70_Else_correct  (=> (and (not (and (<= (LitInt 2) |k0#1@0|) (< |k0#1@0| 5))) (= (ControlFlow 0 65) 62)) anon23_correct)))
(let ((anon70_Then_correct  (=> (and (and (<= (LitInt 2) |k0#1@0|) (< |k0#1@0| 5)) (= (ControlFlow 0 64) 62)) anon23_correct)))
(let ((anon69_Else_correct  (=> (< |k0#1@0| (LitInt 2)) (and (=> (= (ControlFlow 0 67) 64) anon70_Then_correct) (=> (= (ControlFlow 0 67) 65) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (<= (LitInt 2) |k0#1@0|) (and (=> (= (ControlFlow 0 66) 64) anon70_Then_correct) (=> (= (ControlFlow 0 66) 65) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (Tests.__default.P |k0#1@0|) (and (=> (= (ControlFlow 0 68) 66) anon69_Then_correct) (=> (= (ControlFlow 0 68) 67) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (not (Tests.__default.P |k0#1@0|)) (= (ControlFlow 0 63) 62)) anon23_correct)))
(let ((anon18_correct  (=> (= |r2#0@1| (|Set#FromBoogieMap| (|lambda#4| Tclass.Tests.PNat 5))) (and (=> (= (ControlFlow 0 69) 68) anon68_Then_correct) (=> (= (ControlFlow 0 69) 63) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (and (<= 5 |n2#0@0|) (= (ControlFlow 0 72) 69)) anon18_correct)))
(let ((anon67_Then_correct  (=> (and (< |n2#0@0| 5) (= (ControlFlow 0 71) 69)) anon18_correct)))
(let ((anon66_Then_correct  (=> (and (<= (LitInt 0) |n2#0@0|) (Tests.__default.P |n2#0@0|)) (and (=> (= (ControlFlow 0 73) 71) anon67_Then_correct) (=> (= (ControlFlow 0 73) 72) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (and (not (and (<= (LitInt 0) |n2#0@0|) (Tests.__default.P |n2#0@0|))) (= (ControlFlow 0 70) 69)) anon18_correct)))
(let ((anon15_correct  (=> (= |r1#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass.Tests.PInt (LitInt 2) 5))) (and (=> (= (ControlFlow 0 74) 73) anon66_Then_correct) (=> (= (ControlFlow 0 74) 70) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (and (not (and (<= (LitInt 2) |n1#0@0|) (< |n1#0@0| 5))) (= (ControlFlow 0 77) 74)) anon15_correct)))
(let ((anon65_Then_correct  (=> (and (and (<= (LitInt 2) |n1#0@0|) (< |n1#0@0| 5)) (= (ControlFlow 0 76) 74)) anon15_correct)))
(let ((anon64_Else_correct  (=> (< |n1#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 79) 76) anon65_Then_correct) (=> (= (ControlFlow 0 79) 77) anon65_Else_correct)))))
(let ((anon64_Then_correct  (=> (<= (LitInt 2) |n1#0@0|) (and (=> (= (ControlFlow 0 78) 76) anon65_Then_correct) (=> (= (ControlFlow 0 78) 77) anon65_Else_correct)))))
(let ((anon63_Then_correct  (=> (Tests.__default.P |n1#0@0|) (and (=> (= (ControlFlow 0 80) 78) anon64_Then_correct) (=> (= (ControlFlow 0 80) 79) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (not (Tests.__default.P |n1#0@0|)) (= (ControlFlow 0 75) 74)) anon15_correct)))
(let ((anon10_correct  (=> (= |r0#0@1| (|Set#FromBoogieMap| (|lambda#1| TInt (LitInt 0) 5))) (and (=> (= (ControlFlow 0 81) 80) anon63_Then_correct) (=> (= (ControlFlow 0 81) 75) anon63_Else_correct)))))
(let ((anon62_Else_correct  (=> (and (not (and (<= (LitInt 0) |n0#0@0|) (< |n0#0@0| 5))) (= (ControlFlow 0 83) 81)) anon10_correct)))
(let ((anon62_Then_correct  (=> (and (and (<= (LitInt 0) |n0#0@0|) (< |n0#0@0| 5)) (= (ControlFlow 0 82) 81)) anon10_correct)))
(let ((anon61_Else_correct  (=> (< |n0#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 85) 82) anon62_Then_correct) (=> (= (ControlFlow 0 85) 83) anon62_Else_correct)))))
(let ((anon61_Then_correct  (=> (<= (LitInt 0) |n0#0@0|) (and (=> (= (ControlFlow 0 84) 82) anon62_Then_correct) (=> (= (ControlFlow 0 84) 83) anon62_Else_correct)))))
(let ((anon60_Then_correct  (and (=> (= (ControlFlow 0 86) 84) anon61_Then_correct) (=> (= (ControlFlow 0 86) 85) anon61_Else_correct))))
(let ((anon60_Else_correct true))
(let ((anon5_correct  (=> (= |nats#0@1| (|Set#FromBoogieMap| (|lambda#1| Tclass._System.nat (LitInt 2) 5))) (=> (and ($Is SetType |r0#0@0| (TSet TInt)) ($IsAlloc SetType |r0#0@0| (TSet TInt) $Heap)) (=> (and (and ($Is SetType |r1#0@0| (TSet Tclass.Tests.PInt)) ($IsAlloc SetType |r1#0@0| (TSet Tclass.Tests.PInt) $Heap)) (and ($Is SetType |r2#0@0| (TSet Tclass.Tests.PNat)) ($IsAlloc SetType |r2#0@0| (TSet Tclass.Tests.PNat) $Heap))) (and (=> (= (ControlFlow 0 87) 86) anon60_Then_correct) (=> (= (ControlFlow 0 87) 1) anon60_Else_correct)))))))
(let ((anon59_Else_correct  (=> (and (not (and (<= (LitInt 2) |nx#0@0|) (< |nx#0@0| 5))) (= (ControlFlow 0 90) 87)) anon5_correct)))
(let ((anon59_Then_correct  (=> (and (and (<= (LitInt 2) |nx#0@0|) (< |nx#0@0| 5)) (= (ControlFlow 0 89) 87)) anon5_correct)))
(let ((anon58_Else_correct  (=> (< |nx#0@0| (LitInt 2)) (and (=> (= (ControlFlow 0 92) 89) anon59_Then_correct) (=> (= (ControlFlow 0 92) 90) anon59_Else_correct)))))
(let ((anon58_Then_correct  (=> (<= (LitInt 2) |nx#0@0|) (and (=> (= (ControlFlow 0 91) 89) anon59_Then_correct) (=> (= (ControlFlow 0 91) 90) anon59_Else_correct)))))
(let ((anon57_Then_correct  (=> (<= (LitInt 0) |nx#0@0|) (and (=> (= (ControlFlow 0 93) 91) anon58_Then_correct) (=> (= (ControlFlow 0 93) 92) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (< |nx#0@0| (LitInt 0)) (= (ControlFlow 0 88) 87)) anon5_correct)))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and ($Is SetType |nats#0@0| (TSet Tclass._System.nat)) ($IsAlloc SetType |nats#0@0| (TSet Tclass._System.nat) $Heap)) (and (=> (= (ControlFlow 0 94) 93) anon57_Then_correct) (=> (= (ControlFlow 0 94) 88) anon57_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is SetType |nats#0| (TSet Tclass._System.nat)) ($IsAlloc SetType |nats#0| (TSet Tclass._System.nat) $Heap)) true) (=> (and (and (and (and ($Is SetType |r0#0| (TSet TInt)) ($IsAlloc SetType |r0#0| (TSet TInt) $Heap)) true) (and (and ($Is SetType |r1#0| (TSet Tclass.Tests.PInt)) ($IsAlloc SetType |r1#0| (TSet Tclass.Tests.PInt) $Heap)) true)) (and (and (and ($Is SetType |r2#0| (TSet Tclass.Tests.PNat)) ($IsAlloc SetType |r2#0| (TSet Tclass.Tests.PNat) $Heap)) true) (and (and ($Is SetType |s0#0| (TSet Tclass.Tests.MyPlainInt)) ($IsAlloc SetType |s0#0| (TSet Tclass.Tests.MyPlainInt) $Heap)) true))) (=> (and (and (and (and (and ($Is SetType |s1#0| (TSet Tclass.Tests.MyPInt)) ($IsAlloc SetType |s1#0| (TSet Tclass.Tests.MyPInt) $Heap)) true) (and (and ($Is SetType |s2#0| (TSet Tclass.Tests.MyPNat)) ($IsAlloc SetType |s2#0| (TSet Tclass.Tests.MyPNat) $Heap)) true)) (and (and (and (=> |defass#c0#0| (and ($Is refType |c0#0@@0| Tclass.Tests.Cell) ($IsAlloc refType |c0#0@@0| Tclass.Tests.Cell $Heap))) true) (and (=> |defass#c1#0| (and ($Is refType |c1#0@@0| Tclass.Tests.Cell) ($IsAlloc refType |c1#0@@0| Tclass.Tests.Cell $Heap))) true)) (and (and ($Is SetType |cc#0| (TSet Tclass.Tests.Cell?)) ($IsAlloc SetType |cc#0| (TSet Tclass.Tests.Cell?) $Heap)) true))) (and (and (and (and ($Is SetType |cc'0#0| (TSet Tclass.Tests.Cell?)) ($IsAlloc SetType |cc'0#0| (TSet Tclass.Tests.Cell?) $Heap)) true) (and (and ($Is SetType |cc'1#0| (TSet Tclass.Tests.Cell)) ($IsAlloc SetType |cc'1#0| (TSet Tclass.Tests.Cell) $Heap)) true)) (and (and (and ($Is SetType |cc'2#0| (TSet Tclass.Tests.Cell5)) ($IsAlloc SetType |cc'2#0| (TSet Tclass.Tests.Cell5) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 95) 94))))) anon0_correct))))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
