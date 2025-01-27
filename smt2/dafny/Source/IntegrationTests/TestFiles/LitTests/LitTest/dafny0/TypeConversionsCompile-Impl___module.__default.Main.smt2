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
(declare-fun TChar () T@U)
(declare-fun TInt () T@U)
(declare-fun TReal () T@U)
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagReal () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._module.EvenInt () T@U)
(declare-fun Tagclass._module.Handful () T@U)
(declare-fun Tagclass._module.SmallReal () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun tytagFamily$EvenInt () T@U)
(declare-fun tytagFamily$Handful () T@U)
(declare-fun tytagFamily$SmallReal () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun TBitvector (Int) T@U)
(declare-fun |Set#UnionOne| (T@U T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun bv7Type () T@T)
(declare-fun bv7_2_U ((_ BitVec 7)) T@U)
(declare-fun U_2_bv7 (T@U) (_ BitVec 7))
(declare-fun bv32Type () T@T)
(declare-fun bv32_2_U ((_ BitVec 32)) T@U)
(declare-fun U_2_bv32 (T@U) (_ BitVec 32))
(declare-fun bv67Type () T@T)
(declare-fun bv67_2_U ((_ BitVec 67)) T@U)
(declare-fun U_2_bv67 (T@U) (_ BitVec 67))
(declare-fun bv300Type () T@T)
(declare-fun bv300_2_U ((_ BitVec 300)) T@U)
(declare-fun U_2_bv300 (T@U) (_ BitVec 300))
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._module.Handful () T@U)
(declare-fun Tclass._module.EvenInt () T@U)
(declare-fun Tclass._module.SmallReal () T@U)
(declare-fun refType () T@T)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Set#Card| (T@U) Int)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun q@Int (Real) Int)
(declare-fun LitInt (Int) Int)
(declare-fun LitReal (Real) Real)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun nat_from_bv7 ((_ BitVec 7)) Int)
(declare-fun nat_from_bv32 ((_ BitVec 32)) Int)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Mod (Int Int) Int)
(declare-fun q@Real (Int) Real)
(declare-fun charType () T@T)
(declare-fun Inv0_TBitvector (T@U) Int)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TChar TInt TReal TagChar TagInt TagReal TagSet alloc Tagclass._System.nat Tagclass._System.array? Tagclass._System.array Tagclass._module.EvenInt Tagclass._module.Handful Tagclass._module.SmallReal tytagFamily$nat tytagFamily$array tytagFamily$EvenInt tytagFamily$Handful tytagFamily$SmallReal)
)
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (= (Tag TReal) TagReal))
(assert (forall ((v T@U) (h T@U) ) (! ($IsAlloc intType v (TBitvector 0) h)
 :qid |DafnyPreludebpl.295:15|
 :skolemid |66|
 :pattern ( ($IsAlloc intType v (TBitvector 0) h))
)))
(assert (forall ((a T@U) (x@@2 T@U) ) (! (|Set#IsMember| (|Set#UnionOne| a x@@2) x@@2)
 :qid |DafnyPreludebpl.686:15|
 :skolemid |129|
 :pattern ( (|Set#UnionOne| a x@@2))
)))
(assert  (and (and (= (Ctor bv7Type) 3) (forall ((arg0@@2 (_ BitVec 7)) ) (! (= (U_2_bv7 (bv7_2_U arg0@@2)) arg0@@2)
 :qid |typeInv:U_2_bv7|
 :pattern ( (bv7_2_U arg0@@2))
))) (forall ((x@@3 T@U) ) (! (= (bv7_2_U (U_2_bv7 x@@3)) x@@3)
 :qid |cast:U_2_bv7|
 :pattern ( (U_2_bv7 x@@3))
))))
(assert (forall ((v@@0 T@U) (heap T@U) ) (! ($IsAlloc bv7Type v@@0 (TBitvector 7) heap)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( ($IsAlloc bv7Type v@@0 (TBitvector 7) heap))
)))
(assert  (and (and (= (Ctor bv32Type) 4) (forall ((arg0@@3 (_ BitVec 32)) ) (! (= (U_2_bv32 (bv32_2_U arg0@@3)) arg0@@3)
 :qid |typeInv:U_2_bv32|
 :pattern ( (bv32_2_U arg0@@3))
))) (forall ((x@@4 T@U) ) (! (= (bv32_2_U (U_2_bv32 x@@4)) x@@4)
 :qid |cast:U_2_bv32|
 :pattern ( (U_2_bv32 x@@4))
))))
(assert (forall ((v@@1 T@U) (heap@@0 T@U) ) (! ($IsAlloc bv32Type v@@1 (TBitvector 32) heap@@0)
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsAlloc bv32Type v@@1 (TBitvector 32) heap@@0))
)))
(assert  (and (and (= (Ctor bv67Type) 5) (forall ((arg0@@4 (_ BitVec 67)) ) (! (= (U_2_bv67 (bv67_2_U arg0@@4)) arg0@@4)
 :qid |typeInv:U_2_bv67|
 :pattern ( (bv67_2_U arg0@@4))
))) (forall ((x@@5 T@U) ) (! (= (bv67_2_U (U_2_bv67 x@@5)) x@@5)
 :qid |cast:U_2_bv67|
 :pattern ( (U_2_bv67 x@@5))
))))
(assert (forall ((v@@2 T@U) (heap@@1 T@U) ) (! ($IsAlloc bv67Type v@@2 (TBitvector 67) heap@@1)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc bv67Type v@@2 (TBitvector 67) heap@@1))
)))
(assert  (and (and (= (Ctor bv300Type) 6) (forall ((arg0@@5 (_ BitVec 300)) ) (! (= (U_2_bv300 (bv300_2_U arg0@@5)) arg0@@5)
 :qid |typeInv:U_2_bv300|
 :pattern ( (bv300_2_U arg0@@5))
))) (forall ((x@@6 T@U) ) (! (= (bv300_2_U (U_2_bv300 x@@6)) x@@6)
 :qid |cast:U_2_bv300|
 :pattern ( (U_2_bv300 x@@6))
))))
(assert (forall ((v@@3 T@U) (heap@@2 T@U) ) (! ($IsAlloc bv300Type v@@3 (TBitvector 300) heap@@2)
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($IsAlloc bv300Type v@@3 (TBitvector 300) heap@@2))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |375|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((a@@0 T@U) (x@@7 T@U) (y T@U) ) (!  (=> (|Set#IsMember| a@@0 y) (|Set#IsMember| (|Set#UnionOne| a@@0 x@@7) y))
 :qid |DafnyPreludebpl.690:15|
 :skolemid |130|
 :pattern ( (|Set#UnionOne| a@@0 x@@7) (|Set#IsMember| a@@0 y))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass._module.Handful $h@@0)
 :qid |unknown.0:0|
 :skolemid |547|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass._module.Handful $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass._module.EvenInt $h@@1)
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass._module.EvenInt $h@@1))
)))
(assert (forall ((|r#0| T@U) ($h@@2 T@U) ) (! ($IsAlloc realType |r#0| Tclass._module.SmallReal $h@@2)
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( ($IsAlloc realType |r#0| Tclass._module.SmallReal $h@@2))
)))
(assert (forall ((a@@1 T@U) (x@@8 T@U) (o T@U) ) (! (= (|Set#IsMember| (|Set#UnionOne| a@@1 x@@8) o)  (or (= o x@@8) (|Set#IsMember| a@@1 o)))
 :qid |DafnyPreludebpl.682:15|
 :skolemid |128|
 :pattern ( (|Set#IsMember| (|Set#UnionOne| a@@1 x@@8) o))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 (TBitvector 0))
 :qid |DafnyPreludebpl.236:15|
 :skolemid |45|
 :pattern ( ($Is intType v@@4 (TBitvector 0)))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is bv7Type v@@5 (TBitvector 7))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( ($Is bv7Type v@@5 (TBitvector 7)))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is bv32Type v@@6 (TBitvector 32))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($Is bv32Type v@@6 (TBitvector 32)))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is bv67Type v@@7 (TBitvector 67))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is bv67Type v@@7 (TBitvector 67)))
)))
(assert (forall ((v@@8 T@U) ) (! ($Is bv300Type v@@8 (TBitvector 300))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( ($Is bv300Type v@@8 (TBitvector 300)))
)))
(assert (= (Ctor refType) 7))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@3) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@3))
 :qid |unknown.0:0|
 :skolemid |381|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@3))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@3))
)))
(assert (forall ((o@@0 T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o@@0))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o@@0))
)))
(assert (forall ((s T@U) ) (!  (and (= (= (|Set#Card| s) 0) (= s |Set#Empty|)) (=> (or (not (= (|Set#Card| s) 0)) (not true)) (exists ((x@@9 T@U) ) (! (|Set#IsMember| s x@@9)
 :qid |DafnyPreludebpl.678:20|
 :skolemid |126|
 :pattern ( (|Set#IsMember| s x@@9))
))))
 :qid |DafnyPreludebpl.674:15|
 :skolemid |127|
 :pattern ( (|Set#Card| s))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 8)) (= (Ctor BoxType) 9)) (forall ((arg0@@6 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@6 arg1)) 10)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@7 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@7 arg1@@0)) arg0@@7)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@7 arg1@@0))
))) (forall ((arg0@@8 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@8 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@8 arg1@@1))
))))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@1 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@0 o@@1) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@1) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@10 Real) ) (! (= (q@Int x@@10) (to_int x@@10))
 :qid |DafnyPreludebpl.578:14|
 :skolemid |113|
 :pattern ( (q@Int x@@10))
)))
(assert (forall ((x@@11 Int) ) (! (= (LitInt x@@11) x@@11)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |17|
 :pattern ( (LitInt x@@11))
)))
(assert (forall ((x@@12 Real) ) (! (= (LitReal x@@12) x@@12)
 :qid |DafnyPreludebpl.111:30|
 :skolemid |19|
 :pattern ( (LitReal x@@12))
)))
(assert (forall ((x@@13 T@U) (T T@T) ) (! (= (Lit T x@@13) x@@13)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@13))
)))
(assert (forall ((x@@14 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@14)) x@@14)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@14))
)))
(assert (= (Ctor SetType) 11))
(assert (forall ((v@@9 T@U) (t0@@0 T@U) ) (! (= ($Is SetType v@@9 (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v@@9 bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v@@9 bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v@@9 (TSet t0@@0)))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert (forall ((_System.array$arg@@2 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2))  (and ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array _System.array$arg@@2)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._System.array? _System.array$arg@@2)))
)))
(assert (forall ((v@@10 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@10) t h@@1) ($IsAlloc T@@1 v@@10 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@10) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@2) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@0 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@11 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@11 t@@1 h@@3) ($IsAlloc T@@2 v@@11 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@11 t@@1 h@@3))
)))
(assert (forall ((b (_ BitVec 7)) ) (!  (and (and (<= 0 (nat_from_bv7 b)) (< (nat_from_bv7 b) 128)) (= (nat_from_bv7 b) (bv2int b)))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( (nat_from_bv7 b))
)))
(assert (forall ((b@@0 (_ BitVec 32)) ) (!  (and (and (<= 0 (nat_from_bv32 b@@0)) (< (nat_from_bv32 b@@0) 4294967296)) (= (nat_from_bv32 b@@0) (bv2int b@@0)))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( (nat_from_bv32 b@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@3)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@3)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.array? _System.array$arg@@3))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@4)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |377|
 :pattern ( (Tclass._System.array _System.array$arg@@4))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( ($IsBox bx@@1 Tclass._System.nat))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._module.EvenInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) Tclass._module.EvenInt)))
 :qid |unknown.0:0|
 :skolemid |508|
 :pattern ( ($IsBox bx@@2 Tclass._module.EvenInt))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._module.Handful) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) Tclass._module.Handful)))
 :qid |unknown.0:0|
 :skolemid |512|
 :pattern ( ($IsBox bx@@3 Tclass._module.Handful))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._module.SmallReal) (and (= ($Box realType ($Unbox realType bx@@4)) bx@@4) ($Is realType ($Unbox realType bx@@4) Tclass._module.SmallReal)))
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( ($IsBox bx@@4 Tclass._module.SmallReal))
)))
(assert (forall ((_System.array$arg@@5 T@U) ($o@@1 T@U) ) (! (= ($Is refType $o@@1 (Tclass._System.array? _System.array$arg@@5))  (or (= $o@@1 null) (= (dtype $o@@1) (Tclass._System.array? _System.array$arg@@5))))
 :qid |unknown.0:0|
 :skolemid |373|
 :pattern ( ($Is refType $o@@1 (Tclass._System.array? _System.array$arg@@5)))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass._module.EvenInt) (= (Mod (U_2_int |x#0@@3|) (LitInt 2)) (LitInt 0)))
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( ($Is intType |x#0@@3| Tclass._module.EvenInt))
)))
(assert (forall ((x@@15 Int) ) (! (= (q@Real x@@15) (to_real x@@15))
 :qid |DafnyPreludebpl.579:15|
 :skolemid |114|
 :pattern ( (q@Real x@@15))
)))
(assert (forall ((a@@2 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@2 c)) (not true)) (=> (and ($HeapSucc a@@2 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@2 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@2 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 TReal) (and (= ($Box realType ($Unbox realType bx@@6)) bx@@6) ($Is realType ($Unbox realType bx@@6) TReal)))
 :qid |DafnyPreludebpl.179:15|
 :skolemid |28|
 :pattern ( ($IsBox bx@@6 TReal))
)))
(assert (= (Ctor charType) 12))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TChar) (and (= ($Box charType ($Unbox charType bx@@7)) bx@@7) ($Is charType ($Unbox charType bx@@7) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@7 TChar))
)))
(assert (forall ((v@@12 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@12) t@@2) ($Is T@@3 v@@12 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@12) t@@2))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array.Length o@@2))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@2))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Set#Card| s@@0))
 :qid |DafnyPreludebpl.664:15|
 :skolemid |124|
 :pattern ( (|Set#Card| s@@0))
)))
(assert (forall ((v@@13 T@U) (t0@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@13 (TSet t0@@1) h@@4) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| v@@13 bx@@8) ($IsAllocBox bx@@8 t0@@1 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@13 bx@@8))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@13 (TSet t0@@1) h@@4))
)))
(assert (forall ((w Int) ) (! (= (Inv0_TBitvector (TBitvector w)) w)
 :qid |DafnyPreludebpl.38:15|
 :skolemid |0|
 :pattern ( (TBitvector w))
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
(assert (forall ((i Int) ) (! (= (q@Int (q@Real i)) i)
 :qid |DafnyPreludebpl.580:15|
 :skolemid |115|
 :pattern ( (q@Int (q@Real i)))
)))
(assert (forall ((_System.array$arg@@6 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@6)) _System.array$arg@@6)
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( (Tclass._System.array? _System.array$arg@@6))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( (Tclass._System.array _System.array$arg@@7))
)))
(assert (forall ((x@@16 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@16)) x@@16)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@16))
)))
(assert (forall ((_System.array$arg@@8 T@U) ($h@@5 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@2)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( (_System.array.Length $o@@2) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@2) alloc)) (Tclass._System.array? _System.array$arg@@8))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@3) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |558|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((x@@17 Int) (y@@0 Int) ) (! (= (Mod x@@17 y@@0) (mod x@@17 y@@0))
 :qid |DafnyPreludebpl.1649:14|
 :skolemid |340|
 :pattern ( (Mod x@@17 y@@0))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (TBitvector 0)) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) (TBitvector 0))))
 :qid |DafnyPreludebpl.191:15|
 :skolemid |31|
 :pattern ( ($IsBox bx@@9 (TBitvector 0)))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@9 T@U) (bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 (Tclass._System.array? _System.array$arg@@9)) (and (= ($Box refType ($Unbox refType bx@@11)) bx@@11) ($Is refType ($Unbox refType bx@@11) (Tclass._System.array? _System.array$arg@@9))))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( ($IsBox bx@@11 (Tclass._System.array? _System.array$arg@@9)))
)))
(assert (forall ((_System.array$arg@@10 T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.array _System.array$arg@@10)) (and (= ($Box refType ($Unbox refType bx@@12)) bx@@12) ($Is refType ($Unbox refType bx@@12) (Tclass._System.array _System.array$arg@@10))))
 :qid |unknown.0:0|
 :skolemid |379|
 :pattern ( ($IsBox bx@@12 (Tclass._System.array _System.array$arg@@10)))
)))
(assert (forall ((bx@@13 T@U) ) (!  (=> ($IsBox bx@@13 (TBitvector 7)) (and (= ($Box bv7Type ($Unbox bv7Type bx@@13)) bx@@13) ($Is bv7Type ($Unbox bv7Type bx@@13) (TBitvector 7))))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsBox bx@@13 (TBitvector 7)))
)))
(assert (forall ((bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (TBitvector 32)) (and (= ($Box bv32Type ($Unbox bv32Type bx@@14)) bx@@14) ($Is bv32Type ($Unbox bv32Type bx@@14) (TBitvector 32))))
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($IsBox bx@@14 (TBitvector 32)))
)))
(assert (forall ((bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (TBitvector 67)) (and (= ($Box bv67Type ($Unbox bv67Type bx@@15)) bx@@15) ($Is bv67Type ($Unbox bv67Type bx@@15) (TBitvector 67))))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@15 (TBitvector 67)))
)))
(assert (forall ((bx@@16 T@U) ) (!  (=> ($IsBox bx@@16 (TBitvector 300)) (and (= ($Box bv300Type ($Unbox bv300Type bx@@16)) bx@@16) ($Is bv300Type ($Unbox bv300Type bx@@16) (TBitvector 300))))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( ($IsBox bx@@16 (TBitvector 300)))
)))
(assert (forall ((a@@3 T@U) (x@@18 T@U) ) (!  (=> (|Set#IsMember| a@@3 x@@18) (= (|Set#Card| (|Set#UnionOne| a@@3 x@@18)) (|Set#Card| a@@3)))
 :qid |DafnyPreludebpl.694:15|
 :skolemid |131|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@3 x@@18)))
)))
(assert (forall ((h@@5 T@U) (r T@U) (f T@U) (x@@19 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@19))) ($HeapSucc h@@5 (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@19))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@5 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@5 r) f x@@19)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._module.EvenInt) Tagclass._module.EvenInt))
(assert (= (TagFamily Tclass._module.EvenInt) tytagFamily$EvenInt))
(assert (= (Tag Tclass._module.Handful) Tagclass._module.Handful))
(assert (= (TagFamily Tclass._module.Handful) tytagFamily$Handful))
(assert (= (Tag Tclass._module.SmallReal) Tagclass._module.SmallReal))
(assert (= (TagFamily Tclass._module.SmallReal) tytagFamily$SmallReal))
(assert (forall ((|r#0@@0| T@U) ) (! (= ($Is realType |r#0@@0| Tclass._module.SmallReal)  (and (<= (LitReal (- 0.0 4.0)) (U_2_real |r#0@@0|)) (< (U_2_real |r#0@@0|) 300.0)))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( ($Is realType |r#0@@0| Tclass._module.SmallReal))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass._module.Handful)  (and (<= (LitInt 0) (U_2_int |x#0@@4|)) (< (U_2_int |x#0@@4|) 32768)))
 :qid |unknown.0:0|
 :skolemid |546|
 :pattern ( ($Is intType |x#0@@4| Tclass._module.Handful))
)))
(assert (forall ((x@@20 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@20))) (Lit BoxType ($Box intType (int_2_U x@@20))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@20))))
)))
(assert (forall ((x@@21 Real) ) (! (= ($Box realType (real_2_U (LitReal x@@21))) (Lit BoxType ($Box realType (real_2_U x@@21))))
 :qid |DafnyPreludebpl.112:15|
 :skolemid |20|
 :pattern ( ($Box realType (real_2_U (LitReal x@@21))))
)))
(assert (forall ((x@@22 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@22)) (Lit BoxType ($Box T@@5 x@@22)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@22)))
)))
(assert (forall ((h@@6 T@U) (v@@14 T@U) ) (! ($IsAlloc intType v@@14 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@14 TInt h@@6))
)))
(assert (forall ((h@@7 T@U) (v@@15 T@U) ) (! ($IsAlloc realType v@@15 TReal h@@7)
 :qid |DafnyPreludebpl.290:14|
 :skolemid |62|
 :pattern ( ($IsAlloc realType v@@15 TReal h@@7))
)))
(assert (forall ((h@@8 T@U) (v@@16 T@U) ) (! ($IsAlloc charType v@@16 TChar h@@8)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@16 TChar h@@8))
)))
(assert (forall ((a@@4 T@U) (x@@23 T@U) ) (!  (=> (not (|Set#IsMember| a@@4 x@@23)) (= (|Set#Card| (|Set#UnionOne| a@@4 x@@23)) (+ (|Set#Card| a@@4) 1)))
 :qid |DafnyPreludebpl.698:15|
 :skolemid |132|
 :pattern ( (|Set#Card| (|Set#UnionOne| a@@4 x@@23)))
)))
(assert (forall ((v@@17 T@U) ) (! ($Is intType v@@17 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@17 TInt))
)))
(assert (forall ((v@@18 T@U) ) (! ($Is realType v@@18 TReal)
 :qid |DafnyPreludebpl.229:14|
 :skolemid |41|
 :pattern ( ($Is realType v@@18 TReal))
)))
(assert (forall ((v@@19 T@U) ) (! ($Is charType v@@19 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@19 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |$rhs#2@0| () Real)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |$rhs#3@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |$rhs#4@0| () Int)
(declare-fun |newtype$check#2@0| () Real)
(declare-fun |$rhs#5@0| () Real)
(declare-fun |$rhs#6@0| () (_ BitVec 67))
(declare-fun |$rhs#7@0| () (_ BitVec 32))
(declare-fun |$rhs#8@0| () (_ BitVec 7))
(declare-fun |$rhs#9@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |got##0@0| () (_ BitVec 7))
(declare-fun |expected##0@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintExpected$T@0 () T@U)
(declare-fun |call1formal@got#0@0| () T@U)
(declare-fun |call2formal@expected#0@0| () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |expected##1@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@0 () T@U)
(declare-fun |call1formal@got#0@0@@0| () T@U)
(declare-fun |call2formal@expected#0@0@@0| () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |got##2@0| () Int)
(declare-fun |expected##2@0| () Int)
(declare-fun |call1formal@got#0@0@@1| () T@U)
(declare-fun |call2formal@expected#0@0@@1| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |newtype$check#6@0| () Real)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |got##3@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |expected##3@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@1 () T@U)
(declare-fun |call1formal@got#0@0@@2| () T@U)
(declare-fun |call2formal@expected#0@0@@2| () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun |got##4@0| () Real)
(declare-fun |expected##4@0| () Real)
(declare-fun |call1formal@got#0@0@@3| () T@U)
(declare-fun |call2formal@expected#0@0@@3| () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun |got##5@0| () Real)
(declare-fun |expected##5@0| () Real)
(declare-fun |call1formal@got#0@0@@4| () T@U)
(declare-fun |call2formal@expected#0@0@@4| () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |newtype$check#9@0| () Real)
(declare-fun |newtype$check#10@0| () Real)
(declare-fun |newtype$check#11@0| () Real)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |got##6@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |expected##6@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@2 () T@U)
(declare-fun |call1formal@got#0@0@@5| () T@U)
(declare-fun |call2formal@expected#0@0@@5| () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#15@0| () Int)
(declare-fun |got##7@0| () Int)
(declare-fun |newtype$check#16@0| () Int)
(declare-fun |expected##7@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@3 () T@U)
(declare-fun |call1formal@got#0@0@@6| () T@U)
(declare-fun |call2formal@expected#0@0@@6| () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |newtype$check#18@0| () Real)
(declare-fun |got##8@0| () Real)
(declare-fun |newtype$check#19@0| () Real)
(declare-fun |expected##8@0| () Real)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@4 () T@U)
(declare-fun |call1formal@got#0@0@@7| () T@U)
(declare-fun |call2formal@expected#0@0@@7| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun |got##9@0| () Real)
(declare-fun |expected##9@0| () Real)
(declare-fun |call1formal@got#0@0@@8| () T@U)
(declare-fun |call2formal@expected#0@0@@8| () T@U)
(declare-fun $Heap@10 () T@U)
(declare-fun |got##10@0| () Real)
(declare-fun |expected##10@0| () Real)
(declare-fun |call1formal@got#0@0@@9| () T@U)
(declare-fun |call2formal@expected#0@0@@9| () T@U)
(declare-fun $Heap@11 () T@U)
(declare-fun |expected##11@0| () (_ BitVec 32))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@5 () T@U)
(declare-fun |call1formal@got#0@0@@10| () T@U)
(declare-fun |call2formal@expected#0@0@@10| () T@U)
(declare-fun $Heap@12 () T@U)
(declare-fun |expected##12@0| () (_ BitVec 67))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@6 () T@U)
(declare-fun |call1formal@got#0@0@@11| () T@U)
(declare-fun |call2formal@expected#0@0@@11| () T@U)
(declare-fun $Heap@13 () T@U)
(declare-fun |got##13@0| () (_ BitVec 32))
(declare-fun |expected##13@0| () (_ BitVec 32))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@7 () T@U)
(declare-fun |call1formal@got#0@0@@12| () T@U)
(declare-fun |call2formal@expected#0@0@@12| () T@U)
(declare-fun $Heap@14 () T@U)
(declare-fun |got##14@0| () (_ BitVec 67))
(declare-fun |expected##14@0| () (_ BitVec 67))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@8 () T@U)
(declare-fun |call1formal@got#0@0@@13| () T@U)
(declare-fun |call2formal@expected#0@0@@13| () T@U)
(declare-fun $Heap@15 () T@U)
(declare-fun |b67#0@0| () (_ BitVec 67))
(declare-fun |got##15@0| () (_ BitVec 67))
(declare-fun |expected##15@0| () (_ BitVec 67))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@9 () T@U)
(declare-fun |call1formal@got#0@0@@14| () T@U)
(declare-fun |call2formal@expected#0@0@@14| () T@U)
(declare-fun $Heap@16 () T@U)
(declare-fun |got##16@0| () (_ BitVec 32))
(declare-fun |expected##16@0| () (_ BitVec 32))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@10 () T@U)
(declare-fun |call1formal@got#0@0@@15| () T@U)
(declare-fun |call2formal@expected#0@0@@15| () T@U)
(declare-fun $Heap@17 () T@U)
(declare-fun |got##17@0| () (_ BitVec 67))
(declare-fun |expected##17@0| () (_ BitVec 67))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@11 () T@U)
(declare-fun |call1formal@got#0@0@@16| () T@U)
(declare-fun |call2formal@expected#0@0@@16| () T@U)
(declare-fun $Heap@18 () T@U)
(declare-fun |got##18@0| () (_ BitVec 7))
(declare-fun |expected##18@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@12 () T@U)
(declare-fun |call1formal@got#0@0@@17| () T@U)
(declare-fun |call2formal@expected#0@0@@17| () T@U)
(declare-fun $Heap@19 () T@U)
(declare-fun |newtype$check#23@0| () Real)
(declare-fun |got##19@0| () Int)
(declare-fun |expected##19@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@13 () T@U)
(declare-fun |call1formal@got#0@0@@18| () T@U)
(declare-fun |call2formal@expected#0@0@@18| () T@U)
(declare-fun $Heap@20 () T@U)
(declare-fun |got##20@0| () (_ BitVec 67))
(declare-fun |expected##20@0| () (_ BitVec 67))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@14 () T@U)
(declare-fun |call1formal@got#0@0@@19| () T@U)
(declare-fun |call2formal@expected#0@0@@19| () T@U)
(declare-fun $Heap@21 () T@U)
(declare-fun |got##21@0| () (_ BitVec 32))
(declare-fun |expected##21@0| () (_ BitVec 32))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@15 () T@U)
(declare-fun |call1formal@got#0@0@@20| () T@U)
(declare-fun |call2formal@expected#0@0@@20| () T@U)
(declare-fun $Heap@22 () T@U)
(declare-fun |got##22@0| () (_ BitVec 7))
(declare-fun |expected##22@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@16 () T@U)
(declare-fun |call1formal@got#0@0@@21| () T@U)
(declare-fun |call2formal@expected#0@0@@21| () T@U)
(declare-fun $Heap@23 () T@U)
(declare-fun |expected##23@0| () Int)
(declare-fun |call1formal@got#0@0@@22| () T@U)
(declare-fun |call2formal@expected#0@0@@22| () T@U)
(declare-fun $Heap@24 () T@U)
(declare-fun |expected##24@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@17 () T@U)
(declare-fun |call1formal@got#0@0@@23| () T@U)
(declare-fun |call2formal@expected#0@0@@23| () T@U)
(declare-fun $Heap@25 () T@U)
(declare-fun |expected##25@0| () Int)
(declare-fun call0formal@_module._default.PrintExpected$T@0@@18 () T@U)
(declare-fun |call1formal@got#0@0@@24| () T@U)
(declare-fun |call2formal@expected#0@0@@24| () T@U)
(declare-fun $Heap@26 () T@U)
(declare-fun |newtype$check#29@0| () (_ BitVec 32))
(declare-fun |got##26@0| () (_ BitVec 7))
(declare-fun |expected##26@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@19 () T@U)
(declare-fun |call1formal@got#0@0@@25| () T@U)
(declare-fun |call2formal@expected#0@0@@25| () T@U)
(declare-fun $Heap@27 () T@U)
(declare-fun |newtype$check#30@0| () (_ BitVec 67))
(declare-fun |got##27@0| () (_ BitVec 7))
(declare-fun |expected##27@0| () (_ BitVec 7))
(declare-fun call0formal@_module._default.PrintExpected$T@0@@20 () T@U)
(declare-fun |call1formal@got#0@0@@26| () T@U)
(declare-fun |call2formal@expected#0@0@@26| () T@U)
(declare-fun $Heap@28 () T@U)
(declare-fun |got##28@0| () Real)
(declare-fun |expected##28@0| () Real)
(declare-fun |call1formal@got#0@0@@27| () T@U)
(declare-fun |call2formal@expected#0@0@@27| () T@U)
(declare-fun $Heap@29 () T@U)
(declare-fun $Heap@30 () T@U)
(declare-fun |a0#0@0| () Int)
(declare-fun |a1#0@0| () Int)
(declare-fun |a2#0@0| () Int)
(declare-fun |lng#0@0| () Int)
(declare-fun |s#0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@31 () T@U)
(declare-fun |newtype$check#31@0| () Int)
(declare-fun |newtype$check#32@0| () Int)
(declare-fun |handful#0@0| () Int)
(declare-fun |newtype$check#33@0| () Int)
(declare-fun |newtype$check#34@0| () Int)
(declare-fun |$rhs#10@0| () Int)
(declare-fun |newtype$check#35@0| () Int)
(declare-fun |newtype$check#36@0| () Int)
(declare-fun |$rhs#11@0| () Int)
(declare-fun |newtype$check#37@0| () Int)
(declare-fun |newtype$check#38@0| () Int)
(declare-fun |a2#0@1| () Int)
(declare-fun |newtype$check#39@0| () Int)
(declare-fun |newtype$check#40@0| () Int)
(declare-fun |newtype$check#41@0| () Int)
(declare-fun |$rhs#13@0| () Int)
(declare-fun |$rhs#14@0| () Int)
(declare-fun |newtype$check#42@0| () Int)
(declare-fun |newtype$check#43@0| () Int)
(declare-fun |$rhs#15@0| () Int)
(declare-fun |newtype$check#44@0| () Int)
(declare-fun |newtype$check#45@0| () Int)
(declare-fun |$rhs#16@0| () Int)
(declare-fun |newtype$check#46@0| () Int)
(declare-fun |$rhs#17@0| () (_ BitVec 32))
(declare-fun |$rhs#18@0| () Int)
(declare-fun |newtype$check#47@0| () Int)
(declare-fun |newtype$check#48@0| () Int)
(declare-fun |$rhs#19@0| () Int)
(declare-fun |newtype$check#49@0| () Int)
(declare-fun |newtype$check#50@0| () Int)
(declare-fun |$rhs#20@0| () Int)
(declare-fun |newtype$check#51@0| () Int)
(declare-fun |n#0| () Int)
(declare-fun |handful#0| () Int)
(declare-fun |even#0| () Int)
(declare-fun |small#0| () Real)
(declare-fun |noll#0| () Int)
(declare-fun |a0#0| () Int)
(declare-fun |a1#0| () Int)
(declare-fun |a2#0| () Int)
(declare-fun |lng#0| () Int)
(declare-fun |s#0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 66) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |$rhs#0@0| (LitInt 3))) (and (=> (= (ControlFlow 0 2) (- 0 65)) ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 4)) Tclass._System.nat) (=> (= |$rhs#1@0| (LitInt 4)) (=> (and (= |$rhs#2@0| (LitReal 5.0)) (= |newtype$check#0@0| (LitInt 5))) (and (=> (= (ControlFlow 0 2) (- 0 64)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 32768)) (=> (and (= |$rhs#3@0| (LitInt 5)) (= |newtype$check#1@0| (LitInt 6))) (and (=> (= (ControlFlow 0 2) (- 0 63)) (= (Mod |newtype$check#1@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#1@0| (LitInt 2)) (LitInt 0)) (=> (and (= |$rhs#4@0| (LitInt 6)) (= |newtype$check#2@0| (LitReal (- 0.0 1.0)))) (and (=> (= (ControlFlow 0 2) (- 0 62)) (and (<= (LitReal (- 0.0 4.0)) |newtype$check#2@0|) (< |newtype$check#2@0| 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) |newtype$check#2@0|) (< |newtype$check#2@0| 300.0)) (=> (= |$rhs#5@0| (LitReal (- 0.0 1.0))) (=> (and (and (and (= |$rhs#6@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b1111111111111111111111111111111111111111111111111111111111111111111)))) (= |$rhs#7@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #xffffffff))))) (and (= |$rhs#8@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1111111)))) (= |$rhs#9@0| (LitInt 0)))) (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |TypeConversionsCompiledfy.12:8|
 :skolemid |496|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
)) ($HeapSucc $Heap $Heap@0)))) (and (=> (= (ControlFlow 0 2) (- 0 61)) (and (<= 0 |$rhs#0@0|) (< |$rhs#0@0| 128))) (=> (and (<= 0 |$rhs#0@0|) (< |$rhs#0@0| 128)) (=> (= |got##0@0| ((_ int2bv 7) |$rhs#0@0|)) (=> (and (and (= |expected##0@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b0000011)))) (= call0formal@_module._default.PrintExpected$T@0 (TBitvector 7))) (and (= |call1formal@got#0@0| ($Box bv7Type (bv7_2_U |got##0@0|))) (= |call2formal@expected#0@0| ($Box bv7Type (bv7_2_U |expected##0@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
))) (and ($HeapSucc $Heap@0 $Heap@1) (= |newtype$check#4@0| (LitInt 0)))) (and (=> (= (ControlFlow 0 2) (- 0 60)) (and (<= 0 |newtype$check#4@0|) (< |newtype$check#4@0| 1))) (=> (and (<= 0 |newtype$check#4@0|) (< |newtype$check#4@0| 1)) (=> (and (and (and (= |expected##1@0| (LitInt 0)) (= call0formal@_module._default.PrintExpected$T@0@@0 (TBitvector 0))) (and (= |call1formal@got#0@0@@0| ($Box intType (int_2_U 0))) (= |call2formal@expected#0@0@@0| ($Box intType (int_2_U |expected##1@0|))))) (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@6)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6))
)) ($HeapSucc $Heap@1 $Heap@2)))) (and (=> (= (ControlFlow 0 2) (- 0 59)) (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|)) (=> (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|) (=> (and (and (= |got##2@0| (q@Int |$rhs#2@0|)) (= |expected##2@0| (LitInt 5))) (and (= |call1formal@got#0@0@@1| ($Box intType (int_2_U |got##2@0|))) (= |call2formal@expected#0@0@@1| ($Box intType (int_2_U |expected##2@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@7)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@7))
))) (and ($HeapSucc $Heap@2 $Heap@3) (= |newtype$check#6@0| (* 2.0 |$rhs#2@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 58)) (= (q@Real (q@Int |newtype$check#6@0|)) |newtype$check#6@0|)) (=> (= (q@Real (q@Int |newtype$check#6@0|)) |newtype$check#6@0|) (and (=> (= (ControlFlow 0 2) (- 0 57)) (= (Mod (q@Int |newtype$check#6@0|) (LitInt 2)) (LitInt 0))) (=> (= (Mod (q@Int |newtype$check#6@0|) (LitInt 2)) (LitInt 0)) (=> (= |newtype$check#7@0| (q@Int (* 2.0 |$rhs#2@0|))) (and (=> (= (ControlFlow 0 2) (- 0 56)) (= (Mod |newtype$check#7@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#7@0| (LitInt 2)) (LitInt 0)) (=> (and (= |got##3@0| (q@Int (* 2.0 |$rhs#2@0|))) (= |newtype$check#8@0| (LitInt 10))) (and (=> (= (ControlFlow 0 2) (- 0 55)) (= (Mod |newtype$check#8@0| (LitInt 2)) (LitInt 0))) (=> (= (Mod |newtype$check#8@0| (LitInt 2)) (LitInt 0)) (=> (and (and (= |expected##3@0| (LitInt 10)) (= call0formal@_module._default.PrintExpected$T@0@@1 Tclass._module.EvenInt)) (and (= |call1formal@got#0@0@@2| ($Box intType (int_2_U |got##3@0|))) (= |call2formal@expected#0@0@@2| ($Box intType (int_2_U |expected##3@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@8)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@8))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (and (= |got##4@0| (q@Real |$rhs#0@0|)) (= |expected##4@0| (LitReal 3.0))) (and (= |call1formal@got#0@0@@3| ($Box realType (real_2_U |got##4@0|))) (= |call2formal@expected#0@0@@3| ($Box realType (real_2_U |expected##4@0|)))))) (=> (and (and (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@9)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@9))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (and (= |got##5@0| (q@Real |$rhs#4@0|)) (= |expected##5@0| (LitReal 6.0))) (and (= |call1formal@got#0@0@@4| ($Box realType (real_2_U |got##5@0|))) (= |call2formal@expected#0@0@@4| ($Box realType (real_2_U |expected##5@0|)))))) (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@10) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@10)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@10))
))) (and ($HeapSucc $Heap@5 $Heap@6) (= |newtype$check#9@0| (LitReal 3.0))))) (and (=> (= (ControlFlow 0 2) (- 0 54)) (and (<= (LitReal (- 0.0 4.0)) |newtype$check#9@0|) (< |newtype$check#9@0| 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) |newtype$check#9@0|) (< |newtype$check#9@0| 300.0)) (=> (= |newtype$check#10@0| (+ |$rhs#5@0| 3.0)) (and (=> (= (ControlFlow 0 2) (- 0 53)) (and (<= (LitReal (- 0.0 4.0)) |newtype$check#10@0|) (< |newtype$check#10@0| 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) |newtype$check#10@0|) (< |newtype$check#10@0| 300.0)) (=> (= |newtype$check#11@0| (+ |$rhs#5@0| 3.0)) (and (=> (= (ControlFlow 0 2) (- 0 52)) (= (q@Real (q@Int |newtype$check#11@0|)) |newtype$check#11@0|)) (=> (= (q@Real (q@Int |newtype$check#11@0|)) |newtype$check#11@0|) (and (=> (= (ControlFlow 0 2) (- 0 51)) (and (<= (LitInt 0) (q@Int |newtype$check#11@0|)) (< (q@Int |newtype$check#11@0|) 32768))) (=> (and (<= (LitInt 0) (q@Int |newtype$check#11@0|)) (< (q@Int |newtype$check#11@0|) 32768)) (=> (= |newtype$check#12@0| (q@Int (+ |$rhs#5@0| 3.0))) (and (=> (= (ControlFlow 0 2) (- 0 50)) (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#12@0|) (< |newtype$check#12@0| 32768)) (=> (and (= |got##6@0| (q@Int (+ |$rhs#5@0| 3.0))) (= |newtype$check#13@0| (LitInt 2))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#13@0|) (< |newtype$check#13@0| 32768)) (=> (and (and (and (= |expected##6@0| (LitInt 2)) (= call0formal@_module._default.PrintExpected$T@0@@2 Tclass._module.Handful)) (and (= |call1formal@got#0@0@@5| ($Box intType (int_2_U |got##6@0|))) (= |call2formal@expected#0@0@@5| ($Box intType (int_2_U |expected##6@0|))))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@11) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@11)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@11))
)) ($HeapSucc $Heap@6 $Heap@7)))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (and (<= (LitInt 0) 0) (< 0 32768))) (=> (and (<= (LitInt 0) 0) (< 0 32768)) (=> (= |newtype$check#15@0| 0) (and (=> (= (ControlFlow 0 2) (- 0 47)) (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#15@0|) (< |newtype$check#15@0| 32768)) (=> (and (= |got##7@0| 0) (= |newtype$check#16@0| (LitInt 0))) (and (=> (= (ControlFlow 0 2) (- 0 46)) (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#16@0|) (< |newtype$check#16@0| 32768)) (=> (and (and (and (= |expected##7@0| (LitInt 0)) (= call0formal@_module._default.PrintExpected$T@0@@3 Tclass._module.Handful)) (and (= |call1formal@got#0@0@@6| ($Box intType (int_2_U |got##7@0|))) (= |call2formal@expected#0@0@@6| ($Box intType (int_2_U |expected##7@0|))))) (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@7 $o@@12)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@12))
)) ($HeapSucc $Heap@7 $Heap@8)))) (and (=> (= (ControlFlow 0 2) (- 0 45)) (and (<= (LitReal (- 0.0 4.0)) (q@Real 0)) (< (q@Real 0) 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) (q@Real 0)) (< (q@Real 0) 300.0)) (=> (= |newtype$check#18@0| (q@Real 0)) (and (=> (= (ControlFlow 0 2) (- 0 44)) (and (<= (LitReal (- 0.0 4.0)) |newtype$check#18@0|) (< |newtype$check#18@0| 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) |newtype$check#18@0|) (< |newtype$check#18@0| 300.0)) (=> (and (= |got##8@0| (q@Real 0)) (= |newtype$check#19@0| (LitReal 0.0))) (and (=> (= (ControlFlow 0 2) (- 0 43)) (and (<= (LitReal (- 0.0 4.0)) |newtype$check#19@0|) (< |newtype$check#19@0| 300.0))) (=> (and (<= (LitReal (- 0.0 4.0)) |newtype$check#19@0|) (< |newtype$check#19@0| 300.0)) (=> (and (and (= |expected##8@0| (LitReal 0.0)) (= call0formal@_module._default.PrintExpected$T@0@@4 Tclass._module.SmallReal)) (and (= |call1formal@got#0@0@@7| ($Box realType (real_2_U |got##8@0|))) (= |call2formal@expected#0@0@@7| ($Box realType (real_2_U |expected##8@0|))))) (=> (and (and (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@13 T@U) ) (!  (=> (and (or (not (= $o@@13 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@13) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@13) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@8 $o@@13)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@13))
)) ($HeapSucc $Heap@8 $Heap@9))) (and (and (= |got##9@0| (q@Real (nat_from_bv32 |$rhs#7@0|))) (= |expected##9@0| (LitReal 4294967295.0))) (and (= |call1formal@got#0@0@@8| ($Box realType (real_2_U |got##9@0|))) (= |call2formal@expected#0@0@@8| ($Box realType (real_2_U |expected##9@0|)))))) (and (and (and ($IsGoodHeap $Heap@10) ($IsHeapAnchor $Heap@10)) (and (forall (($o@@14 T@U) ) (!  (=> (and (or (not (= $o@@14 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@14) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@14) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@9 $o@@14)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@14))
)) ($HeapSucc $Heap@9 $Heap@10))) (and (and (= |got##10@0| (q@Real (nat_from_bv7 |$rhs#8@0|))) (= |expected##10@0| (LitReal 127.0))) (and (= |call1formal@got#0@0@@9| ($Box realType (real_2_U |got##10@0|))) (= |call2formal@expected#0@0@@9| ($Box realType (real_2_U |expected##10@0|))))))) (=> (and (and (and (and (and (and ($IsGoodHeap $Heap@11) ($IsHeapAnchor $Heap@11)) (and (forall (($o@@15 T@U) ) (!  (=> (and (or (not (= $o@@15 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@15) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@15) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@10 $o@@15)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@15))
)) ($HeapSucc $Heap@10 $Heap@11))) (and (and (= |expected##11@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000000)))) (= call0formal@_module._default.PrintExpected$T@0@@5 (TBitvector 32))) (and (= |call1formal@got#0@0@@10| ($Box bv32Type (bv32_2_U #x00000000))) (= |call2formal@expected#0@0@@10| ($Box bv32Type (bv32_2_U |expected##11@0|)))))) (and (and (and ($IsGoodHeap $Heap@12) ($IsHeapAnchor $Heap@12)) (and (forall (($o@@16 T@U) ) (!  (=> (and (or (not (= $o@@16 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@16) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@16) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@11 $o@@16)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@16))
)) ($HeapSucc $Heap@11 $Heap@12))) (and (and (= |expected##12@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000000000)))) (= call0formal@_module._default.PrintExpected$T@0@@6 (TBitvector 67))) (and (= |call1formal@got#0@0@@11| ($Box bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000000000))) (= |call2formal@expected#0@0@@11| ($Box bv67Type (bv67_2_U |expected##12@0|))))))) (and (and (and (and ($IsGoodHeap $Heap@13) ($IsHeapAnchor $Heap@13)) (forall (($o@@17 T@U) ) (!  (=> (and (or (not (= $o@@17 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@17) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@17) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@12 $o@@17)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@17))
))) (and ($HeapSucc $Heap@12 $Heap@13) (= |got##13@0| (concat #b0000000000000000000000000 |$rhs#8@0|)))) (and (and (= |expected##13@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x0000007f)))) (= call0formal@_module._default.PrintExpected$T@0@@7 (TBitvector 32))) (and (= |call1formal@got#0@0@@12| ($Box bv32Type (bv32_2_U |got##13@0|))) (= |call2formal@expected#0@0@@12| ($Box bv32Type (bv32_2_U |expected##13@0|))))))) (and (and (and (and (and ($IsGoodHeap $Heap@14) ($IsHeapAnchor $Heap@14)) (forall (($o@@18 T@U) ) (!  (=> (and (or (not (= $o@@18 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@18) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@18) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@13 $o@@18)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@18))
))) (and ($HeapSucc $Heap@13 $Heap@14) (= |got##14@0| (concat #b000000000000000000000000000000000000000000000000000000000000 |$rhs#8@0|)))) (and (and (= |expected##14@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000001111111)))) (= call0formal@_module._default.PrintExpected$T@0@@8 (TBitvector 67))) (and (= |call1formal@got#0@0@@13| ($Box bv67Type (bv67_2_U |got##14@0|))) (= |call2formal@expected#0@0@@13| ($Box bv67Type (bv67_2_U |expected##14@0|)))))) (and (and (and ($IsGoodHeap $Heap@15) ($IsHeapAnchor $Heap@15)) (forall (($o@@19 T@U) ) (!  (=> (and (or (not (= $o@@19 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@19) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@19) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@14 $o@@19)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@19))
))) (and ($HeapSucc $Heap@14 $Heap@15) (= |b67#0@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000110010)))))))) (and (=> (= (ControlFlow 0 2) (- 0 42)) (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|)) (=> (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 41)) (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 147573952589676412928))) (=> (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 147573952589676412928)) (=> (= |got##15@0| ((_ int2bv 67) (q@Int |$rhs#2@0|))) (=> (and (and (and (= |expected##15@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000000101)))) (= call0formal@_module._default.PrintExpected$T@0@@9 (TBitvector 67))) (and (= |call1formal@got#0@0@@14| ($Box bv67Type (bv67_2_U |got##15@0|))) (= |call2formal@expected#0@0@@14| ($Box bv67Type (bv67_2_U |expected##15@0|))))) (and (and ($IsGoodHeap $Heap@16) ($IsHeapAnchor $Heap@16)) (and (forall (($o@@20 T@U) ) (!  (=> (and (or (not (= $o@@20 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@20) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@20) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@15 $o@@20)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@20))
)) ($HeapSucc $Heap@15 $Heap@16)))) (and (=> (= (ControlFlow 0 2) (- 0 40)) (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|)) (=> (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 39)) (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 4294967296))) (=> (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 4294967296)) (=> (= |got##16@0| ((_ int2bv 32) (q@Int |$rhs#2@0|))) (=> (and (and (= |expected##16@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000005)))) (= call0formal@_module._default.PrintExpected$T@0@@10 (TBitvector 32))) (and (= |call1formal@got#0@0@@15| ($Box bv32Type (bv32_2_U |got##16@0|))) (= |call2formal@expected#0@0@@15| ($Box bv32Type (bv32_2_U |expected##16@0|))))) (=> (and (and (and (and ($IsGoodHeap $Heap@17) ($IsHeapAnchor $Heap@17)) (forall (($o@@21 T@U) ) (!  (=> (and (or (not (= $o@@21 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@21) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@21) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@16 $o@@21)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@21))
))) (and ($HeapSucc $Heap@16 $Heap@17) (= |got##17@0| (concat #b00000000000000000000000000000000000 |$rhs#7@0|)))) (and (and (and (= |expected##17@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000011111111111111111111111111111111)))) (= call0formal@_module._default.PrintExpected$T@0@@11 (TBitvector 67))) (and (= |call1formal@got#0@0@@16| ($Box bv67Type (bv67_2_U |got##17@0|))) (= |call2formal@expected#0@0@@16| ($Box bv67Type (bv67_2_U |expected##17@0|))))) (and (and ($IsGoodHeap $Heap@18) ($IsHeapAnchor $Heap@18)) (and (forall (($o@@22 T@U) ) (!  (=> (and (or (not (= $o@@22 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@22) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@22) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@17 $o@@22)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@22))
)) ($HeapSucc $Heap@17 $Heap@18))))) (and (=> (= (ControlFlow 0 2) (- 0 38)) (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|)) (=> (= (q@Real (q@Int |$rhs#2@0|)) |$rhs#2@0|) (and (=> (= (ControlFlow 0 2) (- 0 37)) (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 128))) (=> (and (<= 0 (q@Int |$rhs#2@0|)) (< (q@Int |$rhs#2@0|) 128)) (=> (= |got##18@0| ((_ int2bv 7) (q@Int |$rhs#2@0|))) (=> (and (and (= |expected##18@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b0000101)))) (= call0formal@_module._default.PrintExpected$T@0@@12 (TBitvector 7))) (and (= |call1formal@got#0@0@@17| ($Box bv7Type (bv7_2_U |got##18@0|))) (= |call2formal@expected#0@0@@17| ($Box bv7Type (bv7_2_U |expected##18@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@19) ($IsHeapAnchor $Heap@19)) (forall (($o@@23 T@U) ) (!  (=> (and (or (not (= $o@@23 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@23) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@23) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@18 $o@@23)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@23))
))) (and ($HeapSucc $Heap@18 $Heap@19) (= |newtype$check#23@0| (LitReal 0.0)))) (and (=> (= (ControlFlow 0 2) (- 0 36)) (= (q@Real (q@Int |newtype$check#23@0|)) |newtype$check#23@0|)) (=> (= (q@Real (q@Int |newtype$check#23@0|)) |newtype$check#23@0|) (and (=> (= (ControlFlow 0 2) (- 0 35)) (and (<= 0 (q@Int |newtype$check#23@0|)) (< (q@Int |newtype$check#23@0|) 1))) (=> (and (<= 0 (q@Int |newtype$check#23@0|)) (< (q@Int |newtype$check#23@0|) 1)) (=> (= |got##19@0| 0) (=> (and (and (and (= |expected##19@0| (LitInt 0)) (= call0formal@_module._default.PrintExpected$T@0@@13 (TBitvector 0))) (and (= |call1formal@got#0@0@@18| ($Box intType (int_2_U |got##19@0|))) (= |call2formal@expected#0@0@@18| ($Box intType (int_2_U |expected##19@0|))))) (and (and ($IsGoodHeap $Heap@20) ($IsHeapAnchor $Heap@20)) (and (forall (($o@@24 T@U) ) (!  (=> (and (or (not (= $o@@24 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@24) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@24) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@19 $o@@24)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@24))
)) ($HeapSucc $Heap@19 $Heap@20)))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 147573952589676412928))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 147573952589676412928)) (=> (= |got##20@0| ((_ int2bv 67) |$rhs#3@0|)) (=> (and (and (and (= |expected##20@0| (U_2_bv67 (Lit bv67Type (bv67_2_U #b0000000000000000000000000000000000000000000000000000000000000000101)))) (= call0formal@_module._default.PrintExpected$T@0@@14 (TBitvector 67))) (and (= |call1formal@got#0@0@@19| ($Box bv67Type (bv67_2_U |got##20@0|))) (= |call2formal@expected#0@0@@19| ($Box bv67Type (bv67_2_U |expected##20@0|))))) (and (and ($IsGoodHeap $Heap@21) ($IsHeapAnchor $Heap@21)) (and (forall (($o@@25 T@U) ) (!  (=> (and (or (not (= $o@@25 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@25) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@25) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@20 $o@@25)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@25))
)) ($HeapSucc $Heap@20 $Heap@21)))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 4294967296))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 4294967296)) (=> (= |got##21@0| ((_ int2bv 32) |$rhs#3@0|)) (=> (and (and (and (= |expected##21@0| (U_2_bv32 (Lit bv32Type (bv32_2_U #x00000005)))) (= call0formal@_module._default.PrintExpected$T@0@@15 (TBitvector 32))) (and (= |call1formal@got#0@0@@20| ($Box bv32Type (bv32_2_U |got##21@0|))) (= |call2formal@expected#0@0@@20| ($Box bv32Type (bv32_2_U |expected##21@0|))))) (and (and ($IsGoodHeap $Heap@22) ($IsHeapAnchor $Heap@22)) (and (forall (($o@@26 T@U) ) (!  (=> (and (or (not (= $o@@26 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@26) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@26) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@21 $o@@26)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@26))
)) ($HeapSucc $Heap@21 $Heap@22)))) (and (=> (= (ControlFlow 0 2) (- 0 32)) (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 128))) (=> (and (<= 0 |$rhs#3@0|) (< |$rhs#3@0| 128)) (=> (= |got##22@0| ((_ int2bv 7) |$rhs#3@0|)) (=> (and (and (and (and (= |expected##22@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b0000101)))) (= call0formal@_module._default.PrintExpected$T@0@@16 (TBitvector 7))) (and (= |call1formal@got#0@0@@21| ($Box bv7Type (bv7_2_U |got##22@0|))) (= |call2formal@expected#0@0@@21| ($Box bv7Type (bv7_2_U |expected##22@0|))))) (and (and ($IsGoodHeap $Heap@23) ($IsHeapAnchor $Heap@23)) (forall (($o@@27 T@U) ) (!  (=> (and (or (not (= $o@@27 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@27) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@27) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@22 $o@@27)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@27))
)))) (and (and (and ($HeapSucc $Heap@22 $Heap@23) (= |expected##23@0| (LitInt 5))) (and (= |call1formal@got#0@0@@22| ($Box intType (int_2_U |$rhs#3@0|))) (= |call2formal@expected#0@0@@22| ($Box intType (int_2_U |expected##23@0|))))) (and (and ($IsGoodHeap $Heap@24) ($IsHeapAnchor $Heap@24)) (and (forall (($o@@28 T@U) ) (!  (=> (and (or (not (= $o@@28 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@28) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@28) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@23 $o@@28)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@28))
)) ($HeapSucc $Heap@23 $Heap@24))))) (and (=> (= (ControlFlow 0 2) (- 0 31)) (bvult #x00000000 #x00000001)) (=> (bvult #x00000000 #x00000001) (=> (and (and (and (= |expected##24@0| (LitInt 0)) (= call0formal@_module._default.PrintExpected$T@0@@17 (TBitvector 0))) (and (= |call1formal@got#0@0@@23| ($Box intType (int_2_U 0))) (= |call2formal@expected#0@0@@23| ($Box intType (int_2_U |expected##24@0|))))) (and (and ($IsGoodHeap $Heap@25) ($IsHeapAnchor $Heap@25)) (and (forall (($o@@29 T@U) ) (!  (=> (and (or (not (= $o@@29 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@29) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@29) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@24 $o@@29)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@29))
)) ($HeapSucc $Heap@24 $Heap@25)))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (bvult #b0000000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000001)) (=> (bvult #b0000000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000001) (=> (and (and (= |expected##25@0| (LitInt 0)) (= call0formal@_module._default.PrintExpected$T@0@@18 (TBitvector 0))) (and (= |call1formal@got#0@0@@24| ($Box intType (int_2_U 0))) (= |call2formal@expected#0@0@@24| ($Box intType (int_2_U |expected##25@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@26) ($IsHeapAnchor $Heap@26)) (forall (($o@@30 T@U) ) (!  (=> (and (or (not (= $o@@30 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@30) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@30) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@25 $o@@30)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@30))
))) (and ($HeapSucc $Heap@25 $Heap@26) (= |newtype$check#29@0| (concat #b0000000000000000000000000 |$rhs#8@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (bvult |newtype$check#29@0| #x00000080)) (=> (bvult |newtype$check#29@0| #x00000080) (=> (= |got##26@0| ((_ extract 6 0) (concat #b0000000000000000000000000 |$rhs#8@0|))) (=> (and (and (= |expected##26@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1111111)))) (= call0formal@_module._default.PrintExpected$T@0@@19 (TBitvector 7))) (and (= |call1formal@got#0@0@@25| ($Box bv7Type (bv7_2_U |got##26@0|))) (= |call2formal@expected#0@0@@25| ($Box bv7Type (bv7_2_U |expected##26@0|))))) (=> (and (and (and ($IsGoodHeap $Heap@27) ($IsHeapAnchor $Heap@27)) (forall (($o@@31 T@U) ) (!  (=> (and (or (not (= $o@@31 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@31) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@31) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@26 $o@@31)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@31))
))) (and ($HeapSucc $Heap@26 $Heap@27) (= |newtype$check#30@0| (concat #b000000000000000000000000000000000000000000000000000000000000 |$rhs#8@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 28)) (bvult |newtype$check#30@0| #b0000000000000000000000000000000000000000000000000000000000010000000)) (=> (bvult |newtype$check#30@0| #b0000000000000000000000000000000000000000000000000000000000010000000) (=> (= |got##27@0| ((_ extract 6 0) (concat #b000000000000000000000000000000000000000000000000000000000000 |$rhs#8@0|))) (=> (and (= |expected##27@0| (U_2_bv7 (Lit bv7Type (bv7_2_U #b1111111)))) (= call0formal@_module._default.PrintExpected$T@0@@20 (TBitvector 7))) (=> (and (and (= |call1formal@got#0@0@@26| ($Box bv7Type (bv7_2_U |got##27@0|))) (= |call2formal@expected#0@0@@26| ($Box bv7Type (bv7_2_U |expected##27@0|)))) (and ($IsGoodHeap $Heap@28) ($IsHeapAnchor $Heap@28))) (=> (and (and (and (forall (($o@@32 T@U) ) (!  (=> (and (or (not (= $o@@32 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@32) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@32) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@27 $o@@32)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@32))
)) ($HeapSucc $Heap@27 $Heap@28)) (and (= |got##28@0| (q@Real |$rhs#3@0|)) (= |expected##28@0| (LitReal 5.0)))) (and (and (= |call1formal@got#0@0@@27| ($Box realType (real_2_U |got##28@0|))) (= |call2formal@expected#0@0@@27| ($Box realType (real_2_U |expected##28@0|)))) (and ($IsGoodHeap $Heap@29) ($IsHeapAnchor $Heap@29)))) (=> (and (and (and (and (forall (($o@@33 T@U) ) (!  (=> (and (or (not (= $o@@33 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@33) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@33) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@28 $o@@33)))
 :qid |TypeConversionsCompiledfy.17:8|
 :skolemid |499|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@33))
)) ($HeapSucc $Heap@28 $Heap@29)) (and ($IsGoodHeap $Heap@30) ($IsHeapAnchor $Heap@30))) (and (and (forall (($o@@34 T@U) ) (!  (=> (and (or (not (= $o@@34 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@34) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@34) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@29 $o@@34)))
 :qid |TypeConversionsCompiledfy.79:8|
 :skolemid |540|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $o@@34))
)) ($HeapSucc $Heap@29 $Heap@30)) (and (<= (LitInt (- 0 20)) |a0#0@0|) (< |a0#0@0| 2199023255552)))) (and (and (and (<= (LitInt (- 0 20)) |a1#0@0|) (< |a1#0@0| 2199023255552)) (and (<= (LitInt (- 0 20)) |a2#0@0|) (< |a2#0@0| 2199023255552))) (and (and (<= (LitInt (- 0 9223372036854775808)) |lng#0@0|) (< |lng#0@0| 9223372036854775808)) (= |s#0@0| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| (|Set#UnionOne| |Set#Empty| ($Box realType (real_2_U (LitReal 4.0)))) ($Box realType (real_2_U (LitReal 6.3)))) ($Box realType (real_2_U |$rhs#2@0|))) ($Box realType (real_2_U (LitReal 1000.2)))))))) (and (=> (= (ControlFlow 0 2) (- 0 27)) (<= 0 (LitInt 68))) (=> (<= 0 (LitInt 68)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TChar))) (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $nw@0) alloc)))) (= (_System.array.Length $nw@0) (LitInt 68)))) (and (and (= $Heap@31 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@30 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@30 $nw@0) alloc ($Box boolType (bool_2_U true))))) ($IsGoodHeap $Heap@31)) (and ($IsHeapAnchor $Heap@31) (= |newtype$check#31@0| (LitInt 120))))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (and (<= (LitInt 0) |newtype$check#31@0|) (< |newtype$check#31@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#31@0|) (< |newtype$check#31@0| 32768)) (=> (= |newtype$check#32@0| (LitInt 120)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (<= (LitInt 0) |newtype$check#32@0|) (< |newtype$check#32@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#32@0|) (< |newtype$check#32@0| 32768)) (=> (and (= |handful#0@0| (LitInt 120)) (= |newtype$check#33@0| (LitInt (- 0 1)))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (and (<= (LitInt (- 0 20)) |newtype$check#33@0|) (< |newtype$check#33@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#33@0|) (< |newtype$check#33@0| 2199023255552)) (=> (= |newtype$check#34@0| (LitInt (- 0 1))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (and (<= (LitInt (- 0 20)) |newtype$check#34@0|) (< |newtype$check#34@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#34@0|) (< |newtype$check#34@0| 2199023255552)) (=> (and (= |$rhs#10@0| (LitInt (- 0 1))) (= |newtype$check#35@0| (LitInt 4))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (and (<= (LitInt (- 0 20)) |newtype$check#35@0|) (< |newtype$check#35@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#35@0|) (< |newtype$check#35@0| 2199023255552)) (=> (= |newtype$check#36@0| (LitInt 4)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (and (<= (LitInt (- 0 20)) |newtype$check#36@0|) (< |newtype$check#36@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#36@0|) (< |newtype$check#36@0| 2199023255552)) (=> (and (= |$rhs#11@0| (LitInt 4)) (= |newtype$check#37@0| (LitInt 8589934592))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (and (<= (LitInt (- 0 20)) |newtype$check#37@0|) (< |newtype$check#37@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#37@0|) (< |newtype$check#37@0| 2199023255552)) (=> (= |newtype$check#38@0| (LitInt 8589934592)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (and (<= (LitInt (- 0 20)) |newtype$check#38@0|) (< |newtype$check#38@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#38@0|) (< |newtype$check#38@0| 2199023255552)) (=> (and (= |a2#0@1| (LitInt 8589934592)) (= |newtype$check#39@0| (LitInt 6345789))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (and (<= 0 |newtype$check#39@0|) (< |newtype$check#39@0| 4294967296))) (=> (and (<= 0 |newtype$check#39@0|) (< |newtype$check#39@0| 4294967296)) (=> (= |newtype$check#40@0| (LitInt (- 0 9223372036854775808))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#40@0|) (< |newtype$check#40@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#40@0|) (< |newtype$check#40@0| 9223372036854775808)) (=> (= |newtype$check#41@0| (LitInt (- 0 9223372036854775808))) (and (=> (= (ControlFlow 0 2) (- 0 16)) (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#41@0|) (< |newtype$check#41@0| 9223372036854775808))) (=> (and (<= (LitInt (- 0 9223372036854775808)) |newtype$check#41@0|) (< |newtype$check#41@0| 9223372036854775808)) (=> (= |$rhs#13@0| (LitInt (- 0 9223372036854775808))) (=> (and (= |$rhs#14@0| (|Set#Card| |s#0@0|)) (= |newtype$check#42@0| (|Set#Card| |s#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (and (<= (LitInt 0) |newtype$check#42@0|) (< |newtype$check#42@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#42@0|) (< |newtype$check#42@0| 32768)) (=> (= |newtype$check#43@0| (|Set#Card| |s#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 14)) (and (<= (LitInt 0) |newtype$check#43@0|) (< |newtype$check#43@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#43@0|) (< |newtype$check#43@0| 32768)) (=> (and (= |$rhs#15@0| (|Set#Card| |s#0@0|)) (= |newtype$check#44@0| (|Set#Card| |s#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (and (<= (LitInt (- 0 20)) |newtype$check#44@0|) (< |newtype$check#44@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#44@0|) (< |newtype$check#44@0| 2199023255552)) (=> (= |newtype$check#45@0| (|Set#Card| |s#0@0|)) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (<= (LitInt (- 0 20)) |newtype$check#45@0|) (< |newtype$check#45@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#45@0|) (< |newtype$check#45@0| 2199023255552)) (=> (and (= |$rhs#16@0| (|Set#Card| |s#0@0|)) (= |newtype$check#46@0| (|Set#Card| |s#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (<= 0 |newtype$check#46@0|) (< |newtype$check#46@0| 4294967296))) (=> (and (<= 0 |newtype$check#46@0|) (< |newtype$check#46@0| 4294967296)) (=> (= |$rhs#17@0| ((_ int2bv 32) (|Set#Card| |s#0@0|))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |$rhs#18@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#47@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= (LitInt 0) |newtype$check#47@0|) (< |newtype$check#47@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#47@0|) (< |newtype$check#47@0| 32768)) (=> (= |newtype$check#48@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= (LitInt 0) |newtype$check#48@0|) (< |newtype$check#48@0| 32768))) (=> (and (<= (LitInt 0) |newtype$check#48@0|) (< |newtype$check#48@0| 32768)) (=> (= |$rhs#19@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |newtype$check#49@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (<= (LitInt (- 0 20)) |newtype$check#49@0|) (< |newtype$check#49@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#49@0|) (< |newtype$check#49@0| 2199023255552)) (=> (= |newtype$check#50@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= (LitInt (- 0 20)) |newtype$check#50@0|) (< |newtype$check#50@0| 2199023255552))) (=> (and (<= (LitInt (- 0 20)) |newtype$check#50@0|) (< |newtype$check#50@0| 2199023255552)) (=> (= |$rhs#20@0| (_System.array.Length $nw@0)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (= |newtype$check#51@0| (_System.array.Length $nw@0)) (= (ControlFlow 0 2) (- 0 1))) (and (<= 0 |newtype$check#51@0|) (< |newtype$check#51@0| 4294967296))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (<= (LitInt 0) |n#0|) true)) (=> (and (and (and (<= (LitInt 0) |handful#0|) (< |handful#0| 32768)) true) (and (= (Mod |even#0| (LitInt 2)) (LitInt 0)) true)) (=> (and (and (and (and (and (and (<= (LitReal (- 0.0 4.0)) |small#0|) (< |small#0| 300.0)) true) (and (= 0 |noll#0|) true)) (and (and (<= (LitInt (- 0 20)) |a0#0|) (< |a0#0| 2199023255552)) true)) (and (and (and (<= (LitInt (- 0 20)) |a1#0|) (< |a1#0| 2199023255552)) true) (and (and (<= (LitInt (- 0 20)) |a2#0|) (< |a2#0| 2199023255552)) true))) (and (and (and (and (<= (LitInt (- 0 9223372036854775808)) |lng#0|) (< |lng#0| 9223372036854775808)) true) (and (and ($Is SetType |s#0| (TSet TReal)) ($IsAlloc SetType |s#0| (TSet TReal) $Heap)) true)) (and (and (and ($Is refType |a#0| (Tclass._System.array TChar)) ($IsAlloc refType |a#0| (Tclass._System.array TChar) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 66) 2))))) anon0_correct)))))
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
