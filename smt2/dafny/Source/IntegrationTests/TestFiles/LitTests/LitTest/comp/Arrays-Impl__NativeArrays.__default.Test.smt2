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
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array? () T@U)
(declare-fun Tagclass._System.array () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass.NativeArrays.byte () T@U)
(declare-fun Tagclass.NativeArrays.onebyte () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun tytagFamily$byte () T@U)
(declare-fun tytagFamily$onebyte () T@U)
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
(declare-fun _System.array.Length (T@U) Int)
(declare-fun Tclass._System.array? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun |lambda#2| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass.NativeArrays.byte () T@U)
(declare-fun Tclass.NativeArrays.onebyte () T@U)
(declare-fun Tclass._System.array (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array?_0 (T@U) T@U)
(declare-fun Tclass._System.array_0 (T@U) T@U)
(declare-fun |lambda#1| (Int Int Int Int) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array? Tagclass._System.array Tagclass._System.___hFunc1 Tagclass.NativeArrays.byte Tagclass.NativeArrays.onebyte tytagFamily$nat tytagFamily$object tytagFamily$array |tytagFamily$_#Func1| tytagFamily$byte tytagFamily$onebyte)
)
(assert (= (FDim alloc) 0))
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
 :skolemid |1878|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((_System.array$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array? _System.array$arg))) ($Is intType (int_2_U (_System.array.Length $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |1865|
 :pattern ( (_System.array.Length $o) (Tclass._System.array? _System.array$arg))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|)) ($IsBox |$l#0#i#0| |l#0|))
 :qid |unknown.0:0|
 :skolemid |7798|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#2| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |1851|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|x#0@@0| T@U) ($h@@0 T@U) ) (! ($IsAlloc intType |x#0@@0| Tclass.NativeArrays.byte $h@@0)
 :qid |unknown.0:0|
 :skolemid |2227|
 :pattern ( ($IsAlloc intType |x#0@@0| Tclass.NativeArrays.byte $h@@0))
)))
(assert (forall ((|x#0@@1| T@U) ($h@@1 T@U) ) (! ($IsAlloc intType |x#0@@1| Tclass.NativeArrays.onebyte $h@@1)
 :qid |unknown.0:0|
 :skolemid |2229|
 :pattern ( ($IsAlloc intType |x#0@@1| Tclass.NativeArrays.onebyte $h@@1))
)))
(assert (forall ((_System.array$arg@@0 T@U) (|c#0| T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2) ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
 :qid |unknown.0:0|
 :skolemid |1871|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array _System.array$arg@@0) $h@@2))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array? _System.array$arg@@0) $h@@2))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |1615|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |1895|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |1896|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |1897|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@3) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@3))
 :qid |unknown.0:0|
 :skolemid |1857|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@3))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@3))
)))
(assert (forall ((_System.array$arg@@1 T@U) ($o@@0 T@U) ($h@@4 T@U) ) (! (= ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1864|
 :pattern ( ($IsAlloc refType $o@@0 (Tclass._System.array? _System.array$arg@@1) $h@@4))
)))
(assert (forall (($o@@1 T@U) ($h@@5 T@U) ) (! (= ($IsAlloc refType $o@@1 Tclass._System.object? $h@@5)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1854|
 :pattern ( ($IsAlloc refType $o@@1 Tclass._System.object? $h@@5))
)))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |1608|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |1609|
 :pattern ( ($HeapSucc h@@0 k))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |1507|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |1505|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |1891|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((_System.array$arg@@2 T@U) ($h@@6 T@U) ($o@@2 T@U) ($i0 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._System.array? _System.array$arg@@2)))) (and (<= 0 $i0) (< $i0 (_System.array.Length $o@@2)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@2) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@2) (IndexField $i0)) _System.array$arg@@2 $h@@6))
 :qid |unknown.0:0|
 :skolemid |1862|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@2) (IndexField $i0)) (Tclass._System.array? _System.array$arg@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |1516|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |1883|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |1884|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |1885|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |1886|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |1536|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |1537|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 9))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |1591|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert (forall ((|x#0@@2| T@U) ) (! (= ($Is intType |x#0@@2| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@2|)))
 :qid |unknown.0:0|
 :skolemid |1850|
 :pattern ( ($Is intType |x#0@@2| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s v@@0)) (+ 1 (|Seq#Length| s)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |1714|
 :pattern ( (|Seq#Build| s v@@0))
)))
(assert (forall ((_System.array$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1870|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array _System.array$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array? _System.array$arg@@3)))
)))
(assert (forall ((v@@1 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@1) t h@@1) ($IsAlloc T@@1 v@@1 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |1529|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@1) t h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@0 T@U) (bx@@3 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@2 k@@0) (=> ($IsAllocBox bx@@3 t@@0 h@@2) ($IsAllocBox bx@@3 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |1601|
 :pattern ( ($HeapSucc h@@2 k@@0) ($IsAllocBox bx@@3 t@@0 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@1 T@U) (v@@2 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@3 k@@1) (=> ($IsAlloc T@@2 v@@2 t@@1 h@@3) ($IsAlloc T@@2 v@@2 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |1600|
 :pattern ( ($HeapSucc h@@3 k@@1) ($IsAlloc T@@2 v@@2 t@@1 h@@3))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |1879|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |1880|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |1881|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |1882|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |1887|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |1888|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |1889|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |1890|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((_System.array$arg@@4 T@U) ) (!  (and (= (Tag (Tclass._System.array? _System.array$arg@@4)) Tagclass._System.array?) (= (TagFamily (Tclass._System.array? _System.array$arg@@4)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1858|
 :pattern ( (Tclass._System.array? _System.array$arg@@4))
)))
(assert (forall ((_System.array$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array _System.array$arg@@5)) Tagclass._System.array) (= (TagFamily (Tclass._System.array _System.array$arg@@5)) tytagFamily$array))
 :qid |unknown.0:0|
 :skolemid |1867|
 :pattern ( (Tclass._System.array _System.array$arg@@5))
)))
(assert (forall ((s@@0 T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@4) (U_2_bool (MapType1Select refType boolType s@@0 ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |1572|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@0) bx@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@1 T@U) (h@@4 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@4 heap@@1 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |1876|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@1 (Handle1 h@@4 r@@0 rd@@0) bx0@@7))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@5)) bx@@5) ($Is intType ($Unbox intType bx@@5) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |1849|
 :pattern ( ($IsBox bx@@5 Tclass._System.nat))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |1852|
 :pattern ( ($IsBox bx@@6 Tclass._System.object?))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |1855|
 :pattern ( ($IsBox bx@@7 Tclass._System.object))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 Tclass.NativeArrays.byte) (and (= ($Box intType ($Unbox intType bx@@8)) bx@@8) ($Is intType ($Unbox intType bx@@8) Tclass.NativeArrays.byte)))
 :qid |unknown.0:0|
 :skolemid |2205|
 :pattern ( ($IsBox bx@@8 Tclass.NativeArrays.byte))
)))
(assert (forall ((bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 Tclass.NativeArrays.onebyte) (and (= ($Box intType ($Unbox intType bx@@9)) bx@@9) ($Is intType ($Unbox intType bx@@9) Tclass.NativeArrays.onebyte)))
 :qid |unknown.0:0|
 :skolemid |2211|
 :pattern ( ($IsBox bx@@9 Tclass.NativeArrays.onebyte))
)))
(assert (forall ((_System.array$arg@@6 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._System.array? _System.array$arg@@6))))
 :qid |unknown.0:0|
 :skolemid |1863|
 :pattern ( ($Is refType $o@@3 (Tclass._System.array? _System.array$arg@@6)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1856|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) (h@@5 T@U) ) (!  (=> (and ($IsGoodHeap h@@5) ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5)) (forall ((bx0@@8 T@U) ) (!  (=> (and ($IsAllocBox bx0@@8 t0@@12 h@@5) (Requires1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8)) ($IsAllocBox (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8) t1@@11 h@@5))
 :qid |unknown.0:0|
 :skolemid |1901|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@5 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |1902|
 :pattern ( ($IsAlloc HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11) h@@5))
)))
(assert (forall ((|x#0@@3| T@U) ) (! (= ($Is intType |x#0@@3| Tclass.NativeArrays.onebyte)  (and (< 0 (U_2_int |x#0@@3|)) (< (U_2_int |x#0@@3|) 256)))
 :qid |unknown.0:0|
 :skolemid |2228|
 :pattern ( ($Is intType |x#0@@3| Tclass.NativeArrays.onebyte))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |7799|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Arraysdfy.465:23|
 :skolemid |7801|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |1640|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |1607|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((f@@9 T@U) (t0@@13 T@U) (t1@@12 T@U) ) (! (= ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)) (forall ((h@@6 T@U) (bx0@@9 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) ($IsBox bx0@@9 t0@@13)) (Requires1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9)) ($IsBox (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9) t1@@12))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1893|
 :pattern ( (Apply1 t0@@13 t1@@12 h@@6 f@@9 bx0@@9))
)))
 :qid |unknown.0:0|
 :skolemid |1894|
 :pattern ( ($Is HandleTypeType f@@9 (Tclass._System.___hFunc1 t0@@13 t1@@12)))
)))
(assert (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 TInt) (and (= ($Box intType ($Unbox intType bx@@10)) bx@@10) ($Is intType ($Unbox intType bx@@10) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |1517|
 :pattern ( ($IsBox bx@@10 TInt))
)))
(assert (forall ((v@@3 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@3) t@@2) ($Is T@@3 v@@3 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |1528|
 :pattern ( ($IsBox ($Box T@@3 v@@3) t@@2))
)))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@2 T@U) (h@@7 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@10 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@10)) (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
 :qid |unknown.0:0|
 :skolemid |1877|
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@2 (Handle1 h@@7 r@@1 rd@@1) bx0@@10))
)))
(assert (forall ((o@@7 T@U) ) (! (<= 0 (_System.array.Length o@@7))
 :qid |DafnyPreludebpl.571:15|
 :skolemid |1602|
 :pattern ( (_System.array.Length o@@7))
)))
(assert (forall ((s@@1 T@U) ) (! (<= 0 (|Seq#Length| s@@1))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |1711|
 :pattern ( (|Seq#Length| s@@1))
)))
(assert (forall ((v@@4 T@U) (t0@@15 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@4 (TSet t0@@15) h@@8) (forall ((bx@@11 T@U) ) (!  (=> (|Set#IsMember| v@@4 bx@@11) ($IsAllocBox bx@@11 t0@@15 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |1557|
 :pattern ( (|Set#IsMember| v@@4 bx@@11))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |1558|
 :pattern ( ($IsAlloc SetType v@@4 (TSet t0@@15) h@@8))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |1873|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |1874|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o@@4 T@U) ) (! ($Is refType $o@@4 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |1853|
 :pattern ( ($Is refType $o@@4 Tclass._System.object?))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSet (TSet t@@3)) t@@3)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1491|
 :pattern ( (TSet t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSet t@@4)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |1492|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((i Int) ) (! (= (FDim (IndexField i)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |1593|
 :pattern ( (IndexField i))
)))
(assert (forall ((i@@0 Int) ) (! (= (IndexField_Inverse (IndexField i@@0)) i@@0)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |1594|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((_System.array$arg@@7 T@U) ) (! (= (Tclass._System.array?_0 (Tclass._System.array? _System.array$arg@@7)) _System.array$arg@@7)
 :qid |unknown.0:0|
 :skolemid |1859|
 :pattern ( (Tclass._System.array? _System.array$arg@@7))
)))
(assert (forall ((_System.array$arg@@8 T@U) ) (! (= (Tclass._System.array_0 (Tclass._System.array _System.array$arg@@8)) _System.array$arg@@8)
 :qid |unknown.0:0|
 :skolemid |1868|
 :pattern ( (Tclass._System.array _System.array$arg@@8))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |1515|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((_System.array$arg@@9 T@U) ($h@@7 T@U) ($o@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array? _System.array$arg@@9)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@5) alloc)))) ($IsAlloc intType (int_2_U (_System.array.Length $o@@5)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |1866|
 :pattern ( (_System.array.Length $o@@5) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@5) alloc)) (Tclass._System.array? _System.array$arg@@9))
)))
(assert (forall ((_System.array$arg@@10 T@U) ($h@@8 T@U) ($o@@6 T@U) ($i0@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@8) (and (or (not (= $o@@6 null)) (not true)) (= (dtype $o@@6) (Tclass._System.array? _System.array$arg@@10)))) (and (<= 0 $i0@@0) (< $i0@@0 (_System.array.Length $o@@6)))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@6) (IndexField $i0@@0)) _System.array$arg@@10))
 :qid |unknown.0:0|
 :skolemid |1861|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@8 $o@@6) (IndexField $i0@@0)) (Tclass._System.array? _System.array$arg@@10))
)))
(assert (forall ((|l#0@@2| Int) (|l#1| Int) (|l#2| Int) (|l#3| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1| |l#0@@2| |l#1| |l#2| |l#3|) |$l#0#heap#0@@0| |$l#0#i#0@@0|) ($Box intType (int_2_U (ite  (and (<= |l#0@@2| (U_2_int ($Unbox intType |$l#0#i#0@@0|))) (< (U_2_int ($Unbox intType |$l#0#i#0@@0|)) |l#1|)) (+ |l#2| (U_2_int ($Unbox intType |$l#0#i#0@@0|))) |l#3|))))
 :qid |unknown.0:0|
 :skolemid |7797|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#1| |l#0@@2| |l#1| |l#2| |l#3|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((f@@10 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@10 ($LS ly@@0)) (AtLayer A@@0 f@@10 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |1592|
 :pattern ( (AtLayer A@@0 f@@10 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |1511|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((f@@11 T@U) (t0@@16 T@U) (t1@@14 T@U) (h@@9 T@U) ) (!  (=> ($IsGoodHeap h@@9) (= ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9) (forall ((bx0@@11 T@U) ) (!  (=> (and (and ($IsBox bx0@@11 t0@@16) ($IsAllocBox bx0@@11 t0@@16 h@@9)) (Requires1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11)) (forall ((r@@2 T@U) ) (!  (=> (and (or (not (= r@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) alloc))))
 :qid |unknown.0:0|
 :skolemid |1898|
 :pattern ( (|Set#IsMember| (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11) ($Box refType r@@2)))
)))
 :qid |unknown.0:0|
 :skolemid |1899|
 :pattern ( (Apply1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
 :pattern ( (Reads1 t0@@16 t1@@14 h@@9 f@@11 bx0@@11))
))))
 :qid |unknown.0:0|
 :skolemid |1900|
 :pattern ( ($IsAlloc HandleTypeType f@@11 (Tclass._System.___hFunc1 t0@@16 t1@@14) h@@9))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@12)) bx@@12) ($Is HandleTypeType ($Unbox HandleTypeType bx@@12) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |1875|
 :pattern ( ($IsBox bx@@12 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3@@0| Bool) ($o@@7 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@7 $f))  (=> (and (or (not (= $o@@7 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@7) |l#2@@0|)))) |l#3@@0|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |7796|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@3| |l#1@@0| |l#2@@0| |l#3@@0|) $o@@7 $f))
)))
(assert (forall ((s@@2 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@2 val@@4)) s@@2) (= (|Seq#Build_inv1| (|Seq#Build| s@@2 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |1713|
 :pattern ( (|Seq#Build| s@@2 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |1872|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (heap@@3 T@U) (f@@12 T@U) (bx0@@12 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@12 t0@@17) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc1 t0@@17 t1@@15)))) (|Set#Equal| (Reads1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) |Set#Empty|)) (= (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12)))
 :qid |unknown.0:0|
 :skolemid |1892|
 :pattern ( (Requires1 t0@@17 t1@@15 $OneHeap f@@12 bx0@@12) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@17 t1@@15 heap@@3 f@@12 bx0@@12))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |1522|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((_System.array$arg@@11 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array? _System.array$arg@@11))))
 :qid |unknown.0:0|
 :skolemid |1860|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array? _System.array$arg@@11)))
)))
(assert (forall ((_System.array$arg@@12 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array _System.array$arg@@12))))
 :qid |unknown.0:0|
 :skolemid |1869|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array _System.array$arg@@12)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |1512|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@10 T@U) (r@@3 T@U) (f@@13 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6))) ($HeapSucc h@@10 (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |1606|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@10 r@@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@10 r@@3) f@@13 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass.NativeArrays.byte) Tagclass.NativeArrays.byte))
(assert (= (TagFamily Tclass.NativeArrays.byte) tytagFamily$byte))
(assert (= (Tag Tclass.NativeArrays.onebyte) Tagclass.NativeArrays.onebyte))
(assert (= (TagFamily Tclass.NativeArrays.onebyte) tytagFamily$onebyte))
(assert (forall ((s@@3 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@3) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |1573|
 :pattern ( (SetRef_to_SetBox s@@3))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@8 T@U) ) (! (= (|Set#IsMember| a@@1 o@@8) (|Set#IsMember| b@@1 o@@8))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |1638|
 :pattern ( (|Set#IsMember| a@@1 o@@8))
 :pattern ( (|Set#IsMember| b@@1 o@@8))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |1639|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((|x#0@@4| T@U) ) (! (= ($Is intType |x#0@@4| Tclass.NativeArrays.byte)  (and (<= (LitInt 0) (U_2_int |x#0@@4|)) (< (U_2_int |x#0@@4|) 256)))
 :qid |unknown.0:0|
 :skolemid |2226|
 :pattern ( ($Is intType |x#0@@4| Tclass.NativeArrays.byte))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |1508|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |1506|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert (forall ((s@@4 T@U) ) (!  (=> (= (|Seq#Length| s@@4) 0) (= s@@4 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |1712|
 :pattern ( (|Seq#Length| s@@4))
)))
(assert (forall ((h@@11 T@U) (v@@5 T@U) ) (! ($IsAlloc intType v@@5 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |1551|
 :pattern ( ($IsAlloc intType v@@5 TInt h@@11))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@4|)
 :qid |Arraysdfy.465:23|
 :skolemid |7800|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#4| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |1530|
 :pattern ( ($Is intType v@@6 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |i#0@0| () Int)
(declare-fun |newtype$check#6@0| () Int)
(declare-fun |lambdaResult#0| () Int)
(declare-fun |newtype$check#3@0| () Int)
(declare-fun |newtype$check#4@0| () Int)
(declare-fun |newtype$check#5@0| () Int)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap@3 () T@U)
(declare-fun |i#1@0| () Int)
(declare-fun |newtype$check#13@0| () Int)
(declare-fun |lambdaResult#1| () Int)
(declare-fun |newtype$check#10@0| () Int)
(declare-fun |newtype$check#11@0| () Int)
(declare-fun |newtype$check#12@0| () Int)
(declare-fun |$_Frame#l1@0| () T@U)
(declare-fun |$lambdaHeap#1@0| () T@U)
(declare-fun $Heap@9 () T@U)
(declare-fun $nw@5 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $nw@2 () T@U)
(declare-fun $Heap@4 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |title##2@0| () T@U)
(declare-fun SeqType () T@T)
(declare-fun charType () T@T)
(declare-fun call0formal@NativeArrays._default.PrintArray$_T0@0 () T@U)
(declare-fun $Heap@5 () T@U)
(declare-fun $nw@3 () T@U)
(declare-fun $Heap@6 () T@U)
(declare-fun |title##3@0| () T@U)
(declare-fun call0formal@NativeArrays._default.PrintArray$_T0@0@@0 () T@U)
(declare-fun $Heap@7 () T@U)
(declare-fun |newtype$check#7@0| () Int)
(declare-fun |newtype$check#8@0| () Int)
(declare-fun |newtype$check#9@0| () Int)
(declare-fun $nw@4 () T@U)
(declare-fun $Heap@8 () T@U)
(declare-fun |title##4@0| () T@U)
(declare-fun call0formal@NativeArrays._default.PrintArray$_T0@0@@1 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun |title##0@0| () T@U)
(declare-fun call0formal@NativeArrays._default.PrintArray$_T0@0@@2 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |newtype$check#0@0| () Int)
(declare-fun |newtype$check#1@0| () Int)
(declare-fun |newtype$check#2@0| () Int)
(declare-fun $nw@1 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |title##1@0| () T@U)
(declare-fun call0formal@NativeArrays._default.PrintArray$_T0@0@@3 () T@U)
(declare-fun |aa#0| () T@U)
(declare-fun |bb#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(assert  (and (= (Ctor SeqType) 10) (= (Ctor charType) 11)))
(set-info :boogie-vc-id Impl$$NativeArrays.__default.Test)
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
 (=> (= (ControlFlow 0 0) 44) (let ((anon7_correct true))
(let ((anon20_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| 10))) (= |newtype$check#6@0| (LitInt 88))) (and (=> (= (ControlFlow 0 30) (- 0 31)) (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#6@0|) (< |newtype$check#6@0| 256)) (=> (= |lambdaResult#0| (LitInt 88)) (=> (and ($Is intType (int_2_U |lambdaResult#0|) Tclass.NativeArrays.byte) (= (ControlFlow 0 30) 24)) anon7_correct)))))))
(let ((anon20_Then_correct  (=> (and (and (<= (LitInt 0) |i#0@0|) (< |i#0@0| 10)) (= |newtype$check#3@0| (+ 20 |i#0@0|))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (<= (LitInt 0) |newtype$check#3@0|)) (=> (<= (LitInt 0) |newtype$check#3@0|) (=> (= |newtype$check#4@0| (+ 20 |i#0@0|)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#4@0|) (< |newtype$check#4@0| 256)) (=> (= |newtype$check#5@0| (+ 20 |i#0@0|)) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#5@0|) (< |newtype$check#5@0| 256)) (=> (= |lambdaResult#0| (+ 20 |i#0@0|)) (=> (and ($Is intType (int_2_U |lambdaResult#0|) Tclass.NativeArrays.byte) (= (ControlFlow 0 26) 24)) anon7_correct)))))))))))))
(let ((anon19_Else_correct  (=> (< |i#0@0| (LitInt 0)) (and (=> (= (ControlFlow 0 33) 26) anon20_Then_correct) (=> (= (ControlFlow 0 33) 30) anon20_Else_correct)))))
(let ((anon19_Then_correct  (=> (<= (LitInt 0) |i#0@0|) (and (=> (= (ControlFlow 0 32) 26) anon20_Then_correct) (=> (= (ControlFlow 0 32) 30) anon20_Else_correct)))))
(let ((anon18_Then_correct  (=> (and (<= (LitInt 0) |i#0@0|) (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false))) (and (=> (= (ControlFlow 0 34) 32) anon19_Then_correct) (=> (= (ControlFlow 0 34) 33) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (and (< |i#0@0| (LitInt 0)) (= (ControlFlow 0 25) 24)) anon7_correct)))
(let ((anon17_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap@3 |$lambdaHeap#0@0|) ($HeapSucc $Heap@3 |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 35) 34) anon18_Then_correct) (=> (= (ControlFlow 0 35) 25) anon18_Else_correct)))))
(let ((anon15_correct true))
(let ((anon24_Else_correct  (=> (and (not (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10))) (= |newtype$check#13@0| (LitInt 88))) (and (=> (= (ControlFlow 0 9) (- 0 10)) (and (< 0 |newtype$check#13@0|) (< |newtype$check#13@0| 256))) (=> (and (< 0 |newtype$check#13@0|) (< |newtype$check#13@0| 256)) (=> (= |lambdaResult#1| (LitInt 88)) (=> (and ($Is intType (int_2_U |lambdaResult#1|) Tclass.NativeArrays.onebyte) (= (ControlFlow 0 9) 3)) anon15_correct)))))))
(let ((anon24_Then_correct  (=> (and (and (<= (LitInt 0) |i#1@0|) (< |i#1@0| 10)) (= |newtype$check#10@0| (+ 20 |i#1@0|))) (and (=> (= (ControlFlow 0 5) (- 0 8)) (<= (LitInt 0) |newtype$check#10@0|)) (=> (<= (LitInt 0) |newtype$check#10@0|) (=> (= |newtype$check#11@0| (+ 20 |i#1@0|)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (and (< 0 |newtype$check#11@0|) (< |newtype$check#11@0| 256))) (=> (and (< 0 |newtype$check#11@0|) (< |newtype$check#11@0| 256)) (=> (= |newtype$check#12@0| (+ 20 |i#1@0|)) (and (=> (= (ControlFlow 0 5) (- 0 6)) (and (< 0 |newtype$check#12@0|) (< |newtype$check#12@0| 256))) (=> (and (< 0 |newtype$check#12@0|) (< |newtype$check#12@0| 256)) (=> (= |lambdaResult#1| (+ 20 |i#1@0|)) (=> (and ($Is intType (int_2_U |lambdaResult#1|) Tclass.NativeArrays.onebyte) (= (ControlFlow 0 5) 3)) anon15_correct)))))))))))))
(let ((anon23_Else_correct  (=> (< |i#1@0| (LitInt 0)) (and (=> (= (ControlFlow 0 12) 5) anon24_Then_correct) (=> (= (ControlFlow 0 12) 9) anon24_Else_correct)))))
(let ((anon23_Then_correct  (=> (<= (LitInt 0) |i#1@0|) (and (=> (= (ControlFlow 0 11) 5) anon24_Then_correct) (=> (= (ControlFlow 0 11) 9) anon24_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (<= (LitInt 0) |i#1@0|) (= |$_Frame#l1@0| (|lambda#0| null |$lambdaHeap#1@0| alloc false))) (and (=> (= (ControlFlow 0 13) 11) anon23_Then_correct) (=> (= (ControlFlow 0 13) 12) anon23_Else_correct)))))
(let ((anon22_Else_correct  (=> (and (< |i#1@0| (LitInt 0)) (= (ControlFlow 0 4) 3)) anon15_correct)))
(let ((anon21_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#1@0|) (or (= $Heap@9 |$lambdaHeap#1@0|) ($HeapSucc $Heap@9 |$lambdaHeap#1@0|))) (and (=> (= (ControlFlow 0 14) 13) anon22_Then_correct) (=> (= (ControlFlow 0 14) 4) anon22_Else_correct)))))
(let ((anon21_Else_correct  (=> (and (and (and (or (not (= $nw@5 null)) (not true)) ($Is refType $nw@5 (Tclass._System.array? Tclass.NativeArrays.onebyte))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $nw@5) alloc))))) (and (= (_System.array.Length $nw@5) (LitInt 3)) (= (ControlFlow 0 2) (- 0 1)))) (forall ((|arrayinit#1#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#1#i0#0|) (< |arrayinit#1#i0#0| (LitInt 3))) (Requires1 Tclass._System.nat Tclass.NativeArrays.onebyte $Heap@9 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 (|lambda#1| (LitInt 0) 10 20 88) (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#1#i0#0|))))
 :qid |Arraysdfy.472:11|
 :skolemid |2214|
)))))
(let ((anon17_Else_correct  (=> (and (and (or (not (= $nw@2 null)) (not true)) ($Is refType $nw@2 (Tclass._System.array? Tclass.NativeArrays.byte))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@2) alloc)))) (= (_System.array.Length $nw@2) (LitInt 3)))) (and (=> (= (ControlFlow 0 15) (- 0 23)) (forall ((|arrayinit#0#i0#0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 3))) (Requires1 Tclass._System.nat Tclass.NativeArrays.byte $Heap@3 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 (|lambda#1| (LitInt 0) 10 20 88) (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|))))
 :qid |Arraysdfy.465:11|
 :skolemid |2208|
))) (=> (and (forall ((|arrayinit#0#i0#0@@0| Int) ) (!  (=> (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 3))) (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@2) (IndexField |arrayinit#0#i0#0@@0|)))) (U_2_int ($Unbox intType (Apply1 Tclass._System.nat Tclass.NativeArrays.byte $Heap@3 (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle1 (|lambda#1| (LitInt 0) 10 20 88) (|lambda#2| Tclass._System.nat) (|lambda#4| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)))))))
 :qid |Arraysdfy.465:11|
 :skolemid |2209|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@2) (IndexField |arrayinit#0#i0#0@@0|)))
)) (= $Heap@4 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@3 $nw@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $nw@2) alloc ($Box boolType (bool_2_U true)))))) (=> (and (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (= |title##2@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 97))))) (= call0formal@NativeArrays._default.PrintArray$_T0@0 Tclass.NativeArrays.byte))) (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@8) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@8) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@4 $o@@8)))
 :qid |Arraysdfy.478:10|
 :skolemid |2219|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $o@@8))
)) ($HeapSucc $Heap@4 $Heap@5)))) (and (=> (= (ControlFlow 0 15) (- 0 22)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (and (or (not (= $nw@3 null)) (not true)) ($Is refType $nw@3 (Tclass._System.array? Tclass.NativeArrays.onebyte))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $nw@3) alloc))))) (and (= (_System.array.Length $nw@3) (LitInt 3)) (= $Heap@6 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@5 $nw@3 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@5 $nw@3) alloc ($Box boolType (bool_2_U true))))))) (and (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (= |title##3@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))))) (= call0formal@NativeArrays._default.PrintArray$_T0@0@@0 Tclass.NativeArrays.onebyte))) (and (and ($IsGoodHeap $Heap@7) ($IsHeapAnchor $Heap@7)) (and (forall (($o@@9 T@U) ) (!  (=> (and (or (not (= $o@@9 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@9) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@6 $o@@9)))
 :qid |Arraysdfy.478:10|
 :skolemid |2219|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $o@@9))
)) ($HeapSucc $Heap@6 $Heap@7))))) (and (=> (= (ControlFlow 0 15) (- 0 21)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 15) (- 0 20)) (= (LitInt 3) 3)) (=> (= (LitInt 3) 3) (=> (= |newtype$check#7@0| (LitInt 7)) (and (=> (= (ControlFlow 0 15) (- 0 19)) (and (< 0 |newtype$check#7@0|) (< |newtype$check#7@0| 256))) (=> (and (< 0 |newtype$check#7@0|) (< |newtype$check#7@0| 256)) (=> (= |newtype$check#8@0| (LitInt 8)) (and (=> (= (ControlFlow 0 15) (- 0 18)) (and (< 0 |newtype$check#8@0|) (< |newtype$check#8@0| 256))) (=> (and (< 0 |newtype$check#8@0|) (< |newtype$check#8@0| 256)) (=> (= |newtype$check#9@0| (LitInt 9)) (and (=> (= (ControlFlow 0 15) (- 0 17)) (and (< 0 |newtype$check#9@0|) (< |newtype$check#9@0| 256))) (=> (and (< 0 |newtype$check#9@0|) (< |newtype$check#9@0| 256)) (=> (and (and (and (and (or (not (= $nw@4 null)) (not true)) ($Is refType $nw@4 (Tclass._System.array? Tclass.NativeArrays.onebyte))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4) alloc)))) (= (_System.array.Length $nw@4) (LitInt 3)))) (and (and (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4) (IndexField 0)))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4) (IndexField 1)))) (LitInt 8))) (and (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4) (IndexField 2)))) (LitInt 9)) (= $Heap@8 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@7 $nw@4) alloc ($Box boolType (bool_2_U true)))))))) (and (and (and ($IsGoodHeap $Heap@8) ($IsHeapAnchor $Heap@8)) (and (= |title##4@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 49))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 121))))) (= call0formal@NativeArrays._default.PrintArray$_T0@0@@1 Tclass.NativeArrays.onebyte))) (and (and ($IsGoodHeap $Heap@9) ($IsHeapAnchor $Heap@9)) (and (forall (($o@@10 T@U) ) (!  (=> (and (or (not (= $o@@10 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@10) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@8 $o@@10)))
 :qid |Arraysdfy.478:10|
 :skolemid |2219|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@9 $o@@10))
)) ($HeapSucc $Heap@8 $Heap@9))))) (and (=> (= (ControlFlow 0 15) (- 0 16)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 15) 14) anon21_Then_correct) (=> (= (ControlFlow 0 15) 2) anon21_Else_correct)))))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 36) (- 0 43)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (=> (and (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array? Tclass.NativeArrays.byte))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (= (_System.array.Length $nw@0) (LitInt 3)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true))))))) (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (and (= |title##0@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 117))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 110))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 122))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))))) (= call0formal@NativeArrays._default.PrintArray$_T0@0@@2 Tclass.NativeArrays.byte))) (and (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (and (forall (($o@@11 T@U) ) (!  (=> (and (or (not (= $o@@11 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@11) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@11) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@11)))
 :qid |Arraysdfy.478:10|
 :skolemid |2219|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@11))
)) ($HeapSucc $Heap@0 $Heap@1))))) (and (=> (= (ControlFlow 0 36) (- 0 42)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 36) (- 0 41)) (= (LitInt 3) 3)) (=> (= (LitInt 3) 3) (=> (= |newtype$check#0@0| (LitInt 7)) (and (=> (= (ControlFlow 0 36) (- 0 40)) (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#0@0|) (< |newtype$check#0@0| 256)) (=> (= |newtype$check#1@0| (LitInt 8)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#1@0|) (< |newtype$check#1@0| 256)) (=> (= |newtype$check#2@0| (LitInt 9)) (and (=> (= (ControlFlow 0 36) (- 0 38)) (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256))) (=> (and (<= (LitInt 0) |newtype$check#2@0|) (< |newtype$check#2@0| 256)) (=> (and (and (and (and (or (not (= $nw@1 null)) (not true)) ($Is refType $nw@1 (Tclass._System.array? Tclass.NativeArrays.byte))) (and (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) alloc)))) (= (_System.array.Length $nw@1) (LitInt 3)))) (and (and (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 0)))) (LitInt 7)) (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 1)))) (LitInt 8))) (and (= (U_2_int ($Unbox intType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) (IndexField 2)))) (LitInt 9)) (= $Heap@2 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $nw@1) alloc ($Box boolType (bool_2_U true)))))))) (and (and (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2)) (and (= |title##1@0| (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 98))) ($Box charType (|char#FromInt| 121))) ($Box charType (|char#FromInt| 116))) ($Box charType (|char#FromInt| 101))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 102))) ($Box charType (|char#FromInt| 114))) ($Box charType (|char#FromInt| 111))) ($Box charType (|char#FromInt| 109))) ($Box charType (|char#FromInt| 32))) ($Box charType (|char#FromInt| 100))) ($Box charType (|char#FromInt| 105))) ($Box charType (|char#FromInt| 115))) ($Box charType (|char#FromInt| 112))) ($Box charType (|char#FromInt| 108))) ($Box charType (|char#FromInt| 97))) ($Box charType (|char#FromInt| 121))))) (= call0formal@NativeArrays._default.PrintArray$_T0@0@@3 Tclass.NativeArrays.byte))) (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (and (forall (($o@@12 T@U) ) (!  (=> (and (or (not (= $o@@12 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@12) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@12) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@2 $o@@12)))
 :qid |Arraysdfy.478:10|
 :skolemid |2219|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@3 $o@@12))
)) ($HeapSucc $Heap@2 $Heap@3))))) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= 0 (LitInt 3))) (=> (<= 0 (LitInt 3)) (and (=> (= (ControlFlow 0 36) 35) anon17_Then_correct) (=> (= (ControlFlow 0 36) 15) anon17_Else_correct))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is refType |aa#0| (Tclass._System.array Tclass.NativeArrays.byte)) ($IsAlloc refType |aa#0| (Tclass._System.array Tclass.NativeArrays.byte) $Heap)) true) (=> (and (and (and ($Is refType |bb#0| (Tclass._System.array Tclass.NativeArrays.onebyte)) ($IsAlloc refType |bb#0| (Tclass._System.array Tclass.NativeArrays.onebyte) $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 44) 36))) anon0_correct)))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
