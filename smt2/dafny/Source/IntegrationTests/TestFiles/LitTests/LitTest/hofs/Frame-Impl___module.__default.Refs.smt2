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
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun Handle0 (T@U T@U T@U) T@U)
(declare-fun |lambda#2| (T@U T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun TagFamily (T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#7| (T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun |lambda#6| (T@U) T@U)
(declare-fun |lambda#18| (Bool) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc0 tytagFamily$object tytagFamily$array |tytagFamily$_#Func0|)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |359|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
 :qid |unknown.0:0|
 :skolemid |365|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@0))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@0))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |358|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@1))
)))
(assert (forall ((t0@@1 T@U) (heap T@U) (h@@0 T@U) (r@@0 T@U) (rd T@U) ) (! (= (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)) (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType h@@0 heap))
 :qid |unknown.0:0|
 :skolemid |414|
 :pattern ( (Apply0 t0@@1 heap (Handle0 h@@0 r@@0 rd)))
)))
(assert (forall (($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@2))
)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#0#heap#0| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#2| |l#0| |l#1|) |$l#0#heap#0|) ($Box intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |$l#0#heap#0| |l#0|) |l#1|))))
 :qid |Framedfy.17:7|
 :skolemid |515|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) BoxType (|lambda#2| |l#0| |l#1|) |$l#0#heap#0|))
)))
(assert (forall ((h@@1 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@1 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@1 k))
)))
(assert (forall ((|l#0@@0| T@U) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#4| |l#0@@0|) |$l#0#o#0|)) (= |$l#0#o#0| |l#0@@0|))
 :qid |Framedfy.17:7|
 :skolemid |517|
 :pattern ( (MapType0Select refType boolType (|lambda#4| |l#0@@0|) |$l#0#o#0|))
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
(assert (= (Ctor SetType) 8))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx) (|Set#IsMember| (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType rd@@0 heap@@0) bx))
 :qid |unknown.0:0|
 :skolemid |416|
 :pattern ( (|Set#IsMember| (Reads0 t0@@2 heap@@0 (Handle0 h@@2 r@@1 rd@@0)) bx))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@3 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) alloc)))) ($IsAllocBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@3))
 :qid |unknown.0:0|
 :skolemid |356|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@3 T@U) (heap@@1 T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@1) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@3))) (|Set#Equal| (Reads0 t0@@3 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@3 $OneHeap f@@0) (Requires0 t0@@3 heap@@1 f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@3 $OneHeap f@@0) ($IsGoodHeap heap@@1))
 :pattern ( (Requires0 t0@@3 heap@@1 f@@0))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v bx@@0) ($IsBox bx@@0 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@0))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType0Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |364|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@3 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@3) ($IsAlloc T@@1 v@@0 t h@@3))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@0 T@U) (bx@@1 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@4 k@@0) (=> ($IsAllocBox bx@@1 t@@0 h@@4) ($IsAllocBox bx@@1 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@4 k@@0) ($IsAllocBox bx@@1 t@@0 h@@4))
)))
(assert (forall ((h@@5 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@5 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@5) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@5 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@5))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |352|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |361|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert  (and (forall ((t0@@5 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@5 t1@@0 t2 (MapType1Store t0@@5 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@1| T@U) (|l#1@@0| T@U) (|l#2| T@U) (|l#3| T@U) ($o@@3 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#7| |l#0@@1| |l#1@@0| |l#2| |l#3|) $o@@3 $f))  (=> (and (or (not (= $o@@3 |l#0@@1|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@0| $o@@3) |l#2|)))) (= $o@@3 |l#3|)))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |520|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#7| |l#0@@1| |l#1@@0| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((s T@U) (bx@@2 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@2) (U_2_bool (MapType0Select refType boolType s ($Unbox refType bx@@2))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@2))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@3)) bx@@3) ($Is refType ($Unbox refType bx@@3) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@3 Tclass._System.object?))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@4 Tclass._System.object))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |357|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((|l#0@@2| Bool) (|$l#0#heap#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#3| |l#0@@2|) |$l#0#heap#0@@0|)) |l#0@@2|)
 :qid |unknown.0:0|
 :skolemid |516|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType (|lambda#3| |l#0@@2|) |$l#0#heap#0@@0|))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) ) (! (= (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#5| |l#0@@3|) |$l#0#heap#0@@1|) |l#0@@3|)
 :qid |Framedfy.19:12|
 :skolemid |518|
 :pattern ( (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) SetType (|lambda#5| |l#0@@3|) |$l#0#heap#0@@1|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType0Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#0#ly#0|) |l#0@@4|)
 :qid |Framedfy.19:12|
 :skolemid |519|
 :pattern ( (MapType0Select LayerTypeType HandleTypeType (|lambda#6| |l#0@@4|) |$l#0#ly#0|))
)))
(assert (forall ((|l#0@@5| Bool) (|$l#0#o#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select refType boolType (|lambda#18| |l#0@@5|) |$l#0#o#0@@0|)) |l#0@@5|)
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (MapType0Select refType boolType (|lambda#18| |l#0@@5|) |$l#0#o#0@@0|))
)))
(assert (forall ((t0@@6 T@U) (heap@@2 T@U) (f@@2 T@U) ) (!  (=> (and ($IsGoodHeap heap@@2) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@6))) (= (|Set#Equal| (Reads0 t0@@6 $OneHeap f@@2) |Set#Empty|) (|Set#Equal| (Reads0 t0@@6 heap@@2 f@@2) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@6 $OneHeap f@@2) ($IsGoodHeap heap@@2))
 :pattern ( (Reads0 t0@@6 heap@@2 f@@2))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((t0@@7 T@U) (h0 T@U) (h1 T@U) (f@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@7))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads0 t0@@7 h0 f@@3) ($Box refType o@@1))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0 o@@1) fld) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |421|
))) (= (Requires0 t0@@7 h0 f@@3) (Requires0 t0@@7 h1 f@@3)))
 :qid |unknown.0:0|
 :skolemid |422|
 :pattern ( ($HeapSucc h0 h1) (Requires0 t0@@7 h1 f@@3))
)))
(assert (forall ((t0@@8 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@8))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads0 t0@@8 h1@@0 f@@4) ($Box refType o@@2))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |423|
))) (= (Requires0 t0@@8 h0@@0 f@@4) (Requires0 t0@@8 h1@@0 f@@4)))
 :qid |unknown.0:0|
 :skolemid |424|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires0 t0@@8 h1@@0 f@@4))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 TInt) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@5 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@3 T@U) ) (! (<= 0 (_System.array.Length o@@3))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |112|
 :pattern ( (_System.array.Length o@@3))
)))
(assert (forall ((v@@3 T@U) (t0@@9 T@U) (h@@6 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6) (forall ((bx@@6 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@6) ($IsAllocBox bx@@6 t0@@9 h@@6))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@6))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@9) h@@6))
)))
(assert (forall (($o@@5 T@U) ) (! ($Is refType $o@@5 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@5 Tclass._System.object?))
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
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |353|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |362|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@4 T@U) ($o@@6 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@6)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |360|
 :pattern ( (_System.array.Length $o@@6) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@6) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@5 T@U) ($o@@7 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@7)))) ($IsBox (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |355|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@5 $o@@7) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((t0@@10 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc0 t0@@10))) (forall ((o@@4 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads0 t0@@10 h0@@1 f@@5) ($Box refType o@@4))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@1 o@@4) fld@@1) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@1 o@@4) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |417|
))) (= (Reads0 t0@@10 h0@@1 f@@5) (Reads0 t0@@10 h1@@1 f@@5)))
 :qid |unknown.0:0|
 :skolemid |418|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads0 t0@@10 h1@@1 f@@5))
)))
(assert (forall ((t0@@11 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc0 t0@@11))) (forall ((o@@5 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads0 t0@@11 h1@@2 f@@6) ($Box refType o@@5))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@2 o@@5) fld@@2) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@2 o@@5) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |419|
))) (= (Reads0 t0@@11 h0@@2 f@@6) (Reads0 t0@@11 h1@@2 f@@6)))
 :qid |unknown.0:0|
 :skolemid |420|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads0 t0@@11 h1@@2 f@@6))
)))
(assert (forall ((t0@@12 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc0 t0@@12))) (forall ((o@@6 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads0 t0@@12 h0@@3 f@@7) ($Box refType o@@6))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@3 o@@6) fld@@3) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@3 o@@6) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |425|
))) (= (Apply0 t0@@12 h0@@3 f@@7) (Apply0 t0@@12 h1@@3 f@@7)))
 :qid |unknown.0:0|
 :skolemid |426|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply0 t0@@12 h1@@3 f@@7))
)))
(assert (forall ((t0@@13 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) ($Is HandleTypeType f@@8 (Tclass._System.___hFunc0 t0@@13))) (forall ((o@@7 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads0 t0@@13 h1@@4 f@@8) ($Box refType o@@7))) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h0@@4 o@@7) fld@@4) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h1@@4 o@@7) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |427|
))) (= (Apply0 t0@@13 h0@@4 f@@8) (Apply0 t0@@13 h1@@4 f@@8)))
 :qid |unknown.0:0|
 :skolemid |428|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply0 t0@@13 h1@@4 f@@8))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert (forall ((|l#0@@6| T@U) (|l#1@@1| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@8 T@U) ($f@@0 T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@8 $f@@0))  (=> (and (or (not (= $o@@8 |l#0@@6|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1@@1| $o@@8) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |514|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0@@6| |l#1@@1| |l#2@@0| |l#3@@0|) $o@@8 $f@@0))
)))
(assert (forall ((f@@10 T@U) (t0@@14 T@U) ) (! (= ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)) (forall ((h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) (Requires0 t0@@14 h@@7 f@@10)) ($IsBox (Apply0 t0@@14 h@@7 f@@10) t0@@14))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@14 h@@7 f@@10))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@10 (Tclass._System.___hFunc0 t0@@14)))
)))
(assert (forall ((bx@@7 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@8)) bx@@8) ($Is refType ($Unbox refType bx@@8) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |354|
 :pattern ( ($IsBox bx@@8 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@9)) bx@@9) ($Is refType ($Unbox refType bx@@9) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |363|
 :pattern ( ($IsBox bx@@9 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((|#$R@@1| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hFunc0 |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hFunc0 |#$R@@1|)))
)))
(assert (forall ((h@@8 T@U) (r@@2 T@U) (f@@11 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6))) ($HeapSucc h@@8 (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@8 r@@2 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@8 r@@2) f@@11 x@@6)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((f@@12 T@U) (t0@@15 T@U) (h@@9 T@U) ) (!  (=> (and ($IsGoodHeap h@@9) ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@15) h@@9)) (=> (Requires0 t0@@15 h@@9 f@@12) ($IsAllocBox (Apply0 t0@@15 h@@9 f@@12) t0@@15 h@@9)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@12 (Tclass._System.___hFunc0 t0@@15) h@@9))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@1 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((f@@13 T@U) (t0@@16 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@16)) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 t0@@16) ($IsBox bx@@11 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@11 t0@@16))
 :pattern ( ($IsBox bx@@11 u0@@2))
))) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 t0@@16)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((t0@@17 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@3 T@U) (rd@@1 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType0Type refType (MapType0Type FieldType BoxType)) boolType r@@3 heap@@3)) (Requires0 t0@@17 heap@@3 (Handle0 h@@10 r@@3 rd@@1)))
 :qid |unknown.0:0|
 :skolemid |415|
 :pattern ( (Requires0 t0@@17 heap@@3 (Handle0 h@@10 r@@3 rd@@1)))
)))
(assert (forall ((h@@11 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@11))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is intType v@@5 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@5 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |$_Frame#l0_0@0| () T@U)
(declare-fun |$lambdaHeap#0_0@0| () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |get#0@3| () T@U)
(declare-fun $LZ () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |$rhs#0_0@0| () Int)
(declare-fun $Heap@2 () T@U)
(declare-fun $nw@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |$_Frame#l1_0_0@0| () T@U)
(declare-fun |$lambdaHeap#1_0_0@0| () T@U)
(declare-fun |$_Frame#l1_1_0@0| () T@U)
(declare-fun |$lambdaHeap#1_1_0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |get#0@0| () T@U)
(declare-fun |a#0| () T@U)
(declare-fun |get#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.Refs)
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
 (=> (= (ControlFlow 0 0) 47) (let ((anon21_Else_correct true))
(let ((anon21_Then_correct  (=> (= |$_Frame#l0_0@0| (|lambda#7| null |$lambdaHeap#0_0@0| alloc $nw@0)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= (ControlFlow 0 36) (- 0 35)) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l0_0@0| $nw@0 (IndexField (LitInt 0))))))))))))
(let ((anon20_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0_0@0|) (or (= $Heap@1 |$lambdaHeap#0_0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#0_0@0|))) (and (=> (= (ControlFlow 0 40) 36) anon21_Then_correct) (=> (= (ControlFlow 0 40) 39) anon21_Else_correct)))))
(let ((anon7_correct  (=> (= (ControlFlow 0 19) (- 0 18)) (or (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 0)) (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 2))))))
(let ((anon22_Else_correct  (=> (and (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 0)) (= (ControlFlow 0 22) 19)) anon7_correct)))
(let ((anon22_Then_correct  (=> (or (not (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 0))) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (Requires0 TInt $Heap@3 |get#0@3|)) (=> (Requires0 TInt $Heap@3 |get#0@3|) (=> (= (ControlFlow 0 20) 19) anon7_correct))))))
(let ((anon20_Else_correct  (=> (= |get#0@3| (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#6| (Handle0 (|lambda#2| $nw@0 (IndexField (LitInt 0))) (|lambda#3| true) (|lambda#5| (SetRef_to_SetBox (|lambda#4| $nw@0))))) ($LS $LZ)))) (and (=> (= (ControlFlow 0 23) (- 0 34)) (Requires0 TInt $Heap@1 |get#0@3|)) (=> (Requires0 TInt $Heap@1 |get#0@3|) (and (=> (= (ControlFlow 0 23) (- 0 33)) (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@1 |get#0@3|))) (LitInt 2))) (=> (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@1 |get#0@3|))) (LitInt 2)) (and (=> (= (ControlFlow 0 23) (- 0 32)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 23) (- 0 31)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 23) (- 0 30)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0)))) (=> (= |$rhs#0_0@0| (LitInt 3)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0_0@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 23) (- 0 29)) (Requires0 TInt $Heap@2 |get#0@3|)) (=> (Requires0 TInt $Heap@2 |get#0@3|) (and (=> (= (ControlFlow 0 23) (- 0 28)) (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@2 |get#0@3|))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@2 |get#0@3|))) (LitInt 3)) (and (=> (= (ControlFlow 0 23) (- 0 27)) (<= 0 (LitInt 0))) (=> (<= 0 (LitInt 0)) (=> (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc))))) (and (and (= (_System.array.Length $nw@1) (LitInt 0)) (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@1) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)))) (and (=> (= (ControlFlow 0 23) (- 0 26)) (Requires0 TInt $Heap@3 |get#0@3|)) (=> (Requires0 TInt $Heap@3 |get#0@3|) (and (=> (= (ControlFlow 0 23) (- 0 25)) (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 3))) (=> (= (U_2_int ($Unbox intType (Apply0 TInt $Heap@3 |get#0@3|))) (LitInt 3)) (and (=> (= (ControlFlow 0 23) (- 0 24)) (Requires0 TInt $Heap@3 |get#0@3|)) (=> (Requires0 TInt $Heap@3 |get#0@3|) (and (=> (= (ControlFlow 0 23) 20) anon22_Then_correct) (=> (= (ControlFlow 0 23) 22) anon22_Else_correct))))))))))))))))))))))))))))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 41) 40) anon20_Then_correct) (=> (= (ControlFlow 0 41) 23) anon20_Else_correct))))
(let ((anon25_Else_correct true))
(let ((anon25_Then_correct  (=> (= |$_Frame#l1_0_0@0| (|lambda#0| null |$lambdaHeap#1_0_0@0| alloc false)) (and (=> (= (ControlFlow 0 11) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= (ControlFlow 0 11) (- 0 10)) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1_0_0@0| $nw@0 (IndexField (LitInt 0))))))))))))
(let ((anon24_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_0_0@0|) (or (= $Heap@1 |$lambdaHeap#1_0_0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#1_0_0@0|))) (and (=> (= (ControlFlow 0 15) 11) anon25_Then_correct) (=> (= (ControlFlow 0 15) 14) anon25_Else_correct)))))
(let ((anon24_Else_correct true))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 16) 15) anon24_Then_correct) (=> (= (ControlFlow 0 16) 9) anon24_Else_correct))))
(let ((anon27_Else_correct true))
(let ((anon27_Then_correct  (=> (= |$_Frame#l1_1_0@0| (|lambda#0| null |$lambdaHeap#1_1_0@0| alloc false)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (=> (= (ControlFlow 0 3) (- 0 2)) (U_2_bool (MapType1Select refType FieldType boolType |$_Frame#l1_1_0@0| $nw@0 (IndexField (LitInt 0))))))))))))
(let ((anon26_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1_1_0@0|) (or (= $Heap@1 |$lambdaHeap#1_1_0@0|) ($HeapSucc $Heap@1 |$lambdaHeap#1_1_0@0|))) (and (=> (= (ControlFlow 0 7) 3) anon27_Then_correct) (=> (= (ControlFlow 0 7) 6) anon27_Else_correct)))))
(let ((anon26_Else_correct true))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 8) 7) anon26_Then_correct) (=> (= (ControlFlow 0 8) 1) anon26_Else_correct))))
(let ((anon19_Else_correct  (and (=> (= (ControlFlow 0 17) 16) anon23_Then_correct) (=> (= (ControlFlow 0 17) 8) anon23_Else_correct))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 42) (- 0 46)) (<= 0 (LitInt 1))) (=> (<= 0 (LitInt 1)) (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? TInt))) (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (and (= (_System.array.Length $nw@0) (LitInt 1)) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 42) (- 0 45)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0)))) (=> (and (<= 0 (LitInt 0)) (< (LitInt 0) (_System.array.Length $nw@0))) (and (=> (= (ControlFlow 0 42) (- 0 43)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0))))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 (IndexField (LitInt 0)))) (=> (= |$rhs#0@0| (LitInt 2)) (=> (and (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) (IndexField (LitInt 0)) ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and ($Is HandleTypeType |get#0@0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |get#0@0| (Tclass._System.___hFunc0 TInt) $Heap@1))) (and (=> (= (ControlFlow 0 42) 41) anon19_Then_correct) (=> (= (ControlFlow 0 42) 17) anon19_Else_correct))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |a#0| (Tclass._System.array TInt)) ($IsAlloc refType |a#0| (Tclass._System.array TInt) $Heap)) true) (=> (and (and (and ($Is HandleTypeType |get#0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |get#0| (Tclass._System.___hFunc0 TInt) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 47) 42))) anon0_correct)))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 19) (- 18))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 11) (- 10))))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
