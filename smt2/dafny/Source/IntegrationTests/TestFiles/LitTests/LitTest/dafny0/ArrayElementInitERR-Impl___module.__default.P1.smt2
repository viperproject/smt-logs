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
(declare-fun TagChar () T@U)
(declare-fun TagInt () T@U)
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.array2? () T@U)
(declare-fun Tagclass._System.array2 () T@U)
(declare-fun Tagclass._System.___hFunc2 () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun tytagFamily$array2 () T@U)
(declare-fun |tytagFamily$_#Func2| () T@U)
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
(declare-fun _System.array2.Length0 (T@U) Int)
(declare-fun Tclass._System.array2? (T@U) T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun _System.array2.Length1 (T@U) Int)
(declare-fun MapType0Select (T@T T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun |lambda#39| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@T T@T T@U T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun Tclass._System.___hFunc2 (T@U T@U T@U) T@U)
(declare-fun Tclass._System.___hFunc2_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_1 (T@U) T@U)
(declare-fun Tclass._System.___hFunc2_2 (T@U) T@U)
(declare-fun Tclass._System.array2 (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |lambda#38| (T@U T@U) T@U)
(declare-fun charType () T@T)
(declare-fun Reads2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun Handle2 (T@U T@U T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun MultiIndexField (T@U Int) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun IndexField (Int) T@U)
(declare-fun Apply2 (T@U T@U T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Requires2 (T@U T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun |lambda#3| (Bool) T@U)
(declare-fun |lambda#5| (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun IndexField_Inverse (T@U) Int)
(declare-fun Tclass._System.array2?_0 (T@U) T@U)
(declare-fun Tclass._System.array2_0 (T@U) T@U)
(declare-fun |lambda#41| (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun MapType2Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType2Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MultiIndexField_Inverse0 (T@U) T@U)
(declare-fun MultiIndexField_Inverse1 (T@U) Int)
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
(assert (distinct TChar TInt TagChar TagInt TagSet alloc Tagclass._System.nat Tagclass._System.object? Tagclass._System.object Tagclass._System.array2? Tagclass._System.array2 Tagclass._System.___hFunc2 tytagFamily$nat tytagFamily$object tytagFamily$array2 |tytagFamily$_#Func2|)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TChar) TagChar))
(assert (= (Tag TInt) TagInt))
(assert (forall ((_System.array2$arg T@U) ($o T@U) ) (!  (=> (and (or (not (= $o null)) (not true)) (= (dtype $o) (Tclass._System.array2? _System.array2$arg))) ($Is intType (int_2_U (_System.array2.Length0 $o)) TInt))
 :qid |unknown.0:0|
 :skolemid |562|
 :pattern ( (_System.array2.Length0 $o) (Tclass._System.array2? _System.array2$arg))
)))
(assert (forall ((_System.array2$arg@@0 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._System.array2? _System.array2$arg@@0))) ($Is intType (int_2_U (_System.array2.Length1 $o@@0)) TInt))
 :qid |unknown.0:0|
 :skolemid |564|
 :pattern ( (_System.array2.Length1 $o@@0) (Tclass._System.array2? _System.array2$arg@@0))
)))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (t3 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) (x2 T@U) ) (! (= (MapType0Select t0 t1 t2 t3 (MapType0Store t0 t1 t2 t3 m x0 x1 x2 val) x0 x1 x2) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (u3 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (x2@@0 T@U) (y0 T@U) (y1 T@U) (y2 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 u3 (MapType0Store u0 u1 u2 u3 m@@0 x0@@0 x1@@0 x2@@0 val@@0) y0 y1 y2) (MapType0Select u0 u1 u2 u3 m@@0 y0 y1 y2)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (u3@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (x2@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) (y2@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 (MapType0Store u0@@0 u1@@0 u2@@0 u3@@0 m@@1 x0@@1 x1@@1 x2@@1 val@@1) y0@@0 y1@@0 y2@@0) (MapType0Select u0@@0 u1@@0 u2@@0 u3@@0 m@@1 y0@@0 y1@@0 y2@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@1 T@T) (u3@@1 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@2 T@U) (x2@@2 T@U) (y0@@1 T@U) (y1@@1 T@U) (y2@@1 T@U) ) (!  (or (= x2@@2 y2@@1) (= (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 (MapType0Store u0@@1 u1@@1 u2@@1 u3@@1 m@@2 x0@@2 x1@@2 x2@@2 val@@2) y0@@1 y1@@1 y2@@1) (MapType0Select u0@@1 u1@@1 u2@@1 u3@@1 m@@2 y0@@1 y1@@1 y2@@1)))
 :qid |mapAx1:MapType0Select:2|
 :weight 0
)))) (forall ((t0@@0 T@T) (t1@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 (MapType1Store t0@@0 t1@@0 m@@3 x0@@3 val@@3) x0@@3) val@@3)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@2 T@T) (u1@@2 T@T) (val@@4 T@U) (m@@4 T@U) (x0@@4 T@U) (y0@@2 T@U) ) (!  (or (= x0@@4 y0@@2) (= (MapType1Select u0@@2 u1@@2 (MapType1Store u0@@2 u1@@2 m@@4 x0@@4 val@@4) y0@@2) (MapType1Select u0@@2 u1@@2 m@@4 y0@@2)))
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
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|$l#0#heap#0| T@U) (|$l#0#x#0| T@U) (|$l#0#y#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#39| |l#0| |l#1|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))  (and ($IsBox |$l#0#x#0| |l#0|) ($IsBox |$l#0#y#0| |l#1|)))
 :qid |unknown.0:0|
 :skolemid |814|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType (|lambda#39| |l#0| |l#1|) |$l#0#heap#0| |$l#0#x#0| |$l#0#y#0|))
)))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |345|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (forall ((|#$T0| T@U) (|#$T1| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc2_0 (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |572|
 :pattern ( (Tclass._System.___hFunc2 |#$T0| |#$T1| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$T1@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc2_1 (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|)) |#$T1@@0|)
 :qid |unknown.0:0|
 :skolemid |573|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@0| |#$T1@@0| |#$R@@0|))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$T1@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hFunc2_2 (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|)) |#$R@@1|)
 :qid |unknown.0:0|
 :skolemid |574|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@1| |#$T1@@1| |#$R@@1|))
)))
(assert (forall ((_System.array2$arg@@1 T@U) (|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0) ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
 :qid |unknown.0:0|
 :skolemid |570|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2 _System.array2$arg@@1) $h@@0))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._System.array2? _System.array2$arg@@1) $h@@0))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$T1@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) Tagclass._System.___hFunc2) (= (TagFamily (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|)) |tytagFamily$_#Func2|))
 :qid |unknown.0:0|
 :skolemid |571|
 :pattern ( (Tclass._System.___hFunc2 |#$T0@@2| |#$T1@@2| |#$R@@2|))
)))
(assert (= (Ctor HandleTypeType) 7))
(assert (forall ((|#$T0@@3| T@U) (|#$T1@@3| T@U) (|#$R@@3| T@U) (bx T@U) ) (!  (=> ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx)) bx) ($Is HandleTypeType ($Unbox HandleTypeType bx) (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|))))
 :qid |unknown.0:0|
 :skolemid |575|
 :pattern ( ($IsBox bx (Tclass._System.___hFunc2 |#$T0@@3| |#$T1@@3| |#$R@@3|)))
)))
(assert (forall ((|c#0@@0| T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1) ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
 :qid |unknown.0:0|
 :skolemid |351|
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object $h@@1))
 :pattern ( ($IsAlloc refType |c#0@@0| Tclass._System.object? $h@@1))
)))
(assert (forall ((_System.array2$arg@@2 T@U) ($o@@1 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@2)  (or (= $o@@1 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@2 $o@@1) alloc)))))
 :qid |unknown.0:0|
 :skolemid |561|
 :pattern ( ($IsAlloc refType $o@@1 (Tclass._System.array2? _System.array2$arg@@2) $h@@2))
)))
(assert (forall (($o@@2 T@U) ($h@@3 T@U) ) (! (= ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3)  (or (= $o@@2 null) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@3 $o@@2) alloc)))))
 :qid |unknown.0:0|
 :skolemid |348|
 :pattern ( ($IsAlloc refType $o@@2 Tclass._System.object? $h@@3))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
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
(assert (= (Ctor charType) 8))
(assert (forall ((|l#0@@0| T@U) (|l#1@@0| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#x#0@@0| T@U) (|$l#0#y#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#38| |l#0@@0| |l#1@@0|) |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|) ($Box charType (ite (= (U_2_int ($Unbox intType |$l#0#x#0@@0|)) (U_2_int ($Unbox intType |$l#0#y#0@@0|))) |l#0@@0| |l#1@@0|)))
 :qid |ArrayElementInitERRdfy.55:51|
 :skolemid |813|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType (|lambda#38| |l#0@@0| |l#1@@0|) |$l#0#heap#0@@0| |$l#0#x#0@@0| |$l#0#y#0@@0|))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (t2@@0 T@U) (heap T@U) (h@@0 T@U) (r T@U) (rd T@U) (bx0 T@U) (bx1 T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@0) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType rd heap bx0 bx1) bx@@0))
 :qid |unknown.0:0|
 :skolemid |578|
 :pattern ( (|Set#IsMember| (Reads2 t0@@1 t1@@1 t2@@0 heap (Handle2 h@@0 r rd) bx0 bx1) bx@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((v T@U) (t0@@2 T@U) ) (! (= ($Is SetType v (TSet t0@@2)) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| v bx@@1) ($IsBox bx@@1 t0@@2))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@1))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@2)))
)))
(assert (forall ((f T@U) (i Int) ) (! (= (FDim (MultiIndexField f i)) (+ (FDim f) 1))
 :qid |DafnyPreludebpl.520:15|
 :skolemid |105|
 :pattern ( (MultiIndexField f i))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@0 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@0 ly) (MapType1Select LayerTypeType A f@@0 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@0 ly))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |344|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((_System.array2$arg@@3 T@U) (|c#0@@1| T@U) ) (! (= ($Is refType |c#0@@1| (Tclass._System.array2 _System.array2$arg@@3))  (and ($Is refType |c#0@@1| (Tclass._System.array2? _System.array2$arg@@3)) (or (not (= |c#0@@1| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |569|
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array2 _System.array2$arg@@3)))
 :pattern ( ($Is refType |c#0@@1| (Tclass._System.array2? _System.array2$arg@@3)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h@@1 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@1) ($IsAlloc T@@1 v@@0 t h@@1))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@1))
)))
(assert (forall ((_System.array2$arg@@4 T@U) ($h@@4 T@U) ($o@@3 T@U) ($i0 Int) ($i1 Int) ) (!  (=> (and (and (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@3 null)) (not true)) (= (dtype $o@@3) (Tclass._System.array2? _System.array2$arg@@4)))) (and (and (<= 0 $i0) (< $i0 (_System.array2.Length0 $o@@3))) (and (<= 0 $i1) (< $i1 (_System.array2.Length1 $o@@3))))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) alloc)))) ($IsAllocBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) (MultiIndexField (IndexField $i0) $i1)) _System.array2$arg@@4 $h@@4))
 :qid |unknown.0:0|
 :skolemid |559|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@4 $o@@3) (MultiIndexField (IndexField $i0) $i1)) (Tclass._System.array2? _System.array2$arg@@4))
)))
(assert (forall ((t0@@3 T@U) (t1@@2 T@U) (t2@@1 T@U) (heap@@0 T@U) (h@@2 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@0 T@U) (bx1@@0 T@U) ) (! (= (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType BoxType h@@2 heap@@0 bx0@@0 bx1@@0))
 :qid |unknown.0:0|
 :skolemid |576|
 :pattern ( (Apply2 t0@@3 t1@@2 t2@@1 heap@@0 (Handle2 h@@2 r@@0 rd@@0) bx0@@0 bx1@@0))
)))
(assert (forall ((h@@3 T@U) (k@@0 T@U) (bx@@2 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@3 k@@0) (=> ($IsAllocBox bx@@2 t@@0 h@@3) ($IsAllocBox bx@@2 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@3 k@@0) ($IsAllocBox bx@@2 t@@0 h@@3))
)))
(assert (forall ((h@@4 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@4 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@4) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@4 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@4))
)))
(assert (forall ((_System.array2$arg@@5 T@U) ) (!  (and (= (Tag (Tclass._System.array2? _System.array2$arg@@5)) Tagclass._System.array2?) (= (TagFamily (Tclass._System.array2? _System.array2$arg@@5)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |553|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@5))
)))
(assert (forall ((_System.array2$arg@@6 T@U) ) (!  (and (= (Tag (Tclass._System.array2 _System.array2$arg@@6)) Tagclass._System.array2) (= (TagFamily (Tclass._System.array2 _System.array2$arg@@6)) tytagFamily$array2))
 :qid |unknown.0:0|
 :skolemid |566|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@6))
)))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@4)) bx@@4) ($Is intType ($Unbox intType bx@@4) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |343|
 :pattern ( ($IsBox bx@@4 Tclass._System.nat))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@5 Tclass._System.object?))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@6 Tclass._System.object))
)))
(assert (forall ((_System.array2$arg@@7 T@U) ($o@@4 T@U) ) (! (= ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7))  (or (= $o@@4 null) (= (dtype $o@@4) (Tclass._System.array2? _System.array2$arg@@7))))
 :qid |unknown.0:0|
 :skolemid |560|
 :pattern ( ($Is refType $o@@4 (Tclass._System.array2? _System.array2$arg@@7)))
)))
(assert (forall ((|c#0@@2| T@U) ) (! (= ($Is refType |c#0@@2| Tclass._System.object)  (and ($Is refType |c#0@@2| Tclass._System.object?) (or (not (= |c#0@@2| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object))
 :pattern ( ($Is refType |c#0@@2| Tclass._System.object?))
)))
(assert (forall ((f@@1 T@U) (t0@@4 T@U) (t1@@3 T@U) (t2@@2 T@U) (h@@5 T@U) ) (!  (=> ($IsGoodHeap h@@5) (= ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5) (forall ((bx0@@1 T@U) (bx1@@1 T@U) ) (!  (=> (and (and (and ($IsBox bx0@@1 t0@@4) ($IsAllocBox bx0@@1 t0@@4 h@@5)) (and ($IsBox bx1@@1 t1@@3) ($IsAllocBox bx1@@1 t1@@3 h@@5))) (Requires2 t0@@4 t1@@3 t2@@2 h@@5 f@@1 bx0@@1 bx1@@1)) (forall ((r@@1 T@U) ) (!  (=> (and (or (not (= r@@1 null)) (not true)) (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@1 bx0@@1 bx1@@1) ($Box refType r@@1))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@5 r@@1) alloc))))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (|Set#IsMember| (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@1 bx0@@1 bx1@@1) ($Box refType r@@1)))
)))
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Apply2 t0@@4 t1@@3 t2@@2 h@@5 f@@1 bx0@@1 bx1@@1))
 :pattern ( (Reads2 t0@@4 t1@@3 t2@@2 h@@5 f@@1 bx0@@1 bx1@@1))
))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsAlloc HandleTypeType f@@1 (Tclass._System.___hFunc2 t0@@4 t1@@3 t2@@2) h@@5))
)))
(assert (forall ((|l#0@@1| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|)) |l#0@@1|)
 :qid |unknown.0:0|
 :skolemid |806|
 :pattern ( (MapType1Select refType boolType (|lambda#3| |l#0@@1|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@2|) |$l#0#ly#0|) |l#0@@2|)
 :qid |ArrayElementInitERRdfy.6:24|
 :skolemid |808|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#5| |l#0@@2|) |$l#0#ly#0|))
)))
(assert (forall ((f@@2 T@U) (t0@@5 T@U) (t1@@4 T@U) (t2@@3 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)) (forall ((h@@6 T@U) (bx0@@2 T@U) (bx1@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@6) (and ($IsBox bx0@@2 t0@@5) ($IsBox bx1@@2 t1@@4))) (Requires2 t0@@5 t1@@4 t2@@3 h@@6 f@@2 bx0@@2 bx1@@2)) ($IsBox (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@2 bx0@@2 bx1@@2) t2@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |593|
 :pattern ( (Apply2 t0@@5 t1@@4 t2@@3 h@@6 f@@2 bx0@@2 bx1@@2))
)))
 :qid |unknown.0:0|
 :skolemid |594|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc2 t0@@5 t1@@4 t2@@3)))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((t0@@6 T@U) (t1@@5 T@U) (t2@@4 T@U) (heap@@1 T@U) (f@@3 T@U) (bx0@@3 T@U) (bx1@@3 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (and (and ($IsBox bx0@@3 t0@@6) ($IsBox bx1@@3 t1@@5)) ($Is HandleTypeType f@@3 (Tclass._System.___hFunc2 t0@@6 t1@@5 t2@@4)))) (= (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@3 bx0@@3 bx1@@3) |Set#Empty|) (|Set#Equal| (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@3 bx0@@3 bx1@@3) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |591|
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 $OneHeap f@@3 bx0@@3 bx1@@3) ($IsGoodHeap heap@@1))
 :pattern ( (Reads2 t0@@6 t1@@5 t2@@4 heap@@1 f@@3 bx0@@3 bx1@@3))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) (c T@U) ) (!  (=> (or (not (= a@@0 c)) (not true)) (=> (and ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c)) ($HeapSucc a@@0 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a@@0 b@@0) ($HeapSucc b@@0 c))
)))
(assert (forall ((_System.array2$arg@@8 T@U) ($h@@5 T@U) ($o@@5 T@U) ($i0@@0 Int) ($i1@@0 Int) ) (!  (=> (and (and ($IsGoodHeap $h@@5) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._System.array2? _System.array2$arg@@8)))) (and (and (<= 0 $i0@@0) (< $i0@@0 (_System.array2.Length0 $o@@5))) (and (<= 0 $i1@@0) (< $i1@@0 (_System.array2.Length1 $o@@5))))) ($IsBox (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) _System.array2$arg@@8))
 :qid |unknown.0:0|
 :skolemid |558|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@5 $o@@5) (MultiIndexField (IndexField $i0@@0) $i1@@0)) (Tclass._System.array2? _System.array2$arg@@8))
)))
(assert (forall ((f@@4 T@U) (t0@@7 T@U) (t1@@6 T@U) (t2@@5 T@U) (h@@7 T@U) ) (!  (=> (and ($IsGoodHeap h@@7) ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7)) (forall ((bx0@@4 T@U) (bx1@@4 T@U) ) (!  (=> (and (and ($IsAllocBox bx0@@4 t0@@7 h@@7) ($IsAllocBox bx1@@4 t1@@6 h@@7)) (Requires2 t0@@7 t1@@6 t2@@5 h@@7 f@@4 bx0@@4 bx1@@4)) ($IsAllocBox (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@4 bx0@@4 bx1@@4) t2@@5 h@@7))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( (Apply2 t0@@7 t1@@6 t2@@5 h@@7 f@@4 bx0@@4 bx1@@4))
)))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc HandleTypeType f@@4 (Tclass._System.___hFunc2 t0@@7 t1@@6 t2@@5) h@@7))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 TInt) (and (= ($Box intType ($Unbox intType bx@@7)) bx@@7) ($Is intType ($Unbox intType bx@@7) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@7 TInt))
)))
(assert (forall ((bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 TChar) (and (= ($Box charType ($Unbox charType bx@@8)) bx@@8) ($Is charType ($Unbox charType bx@@8) TChar)))
 :qid |DafnyPreludebpl.185:15|
 :skolemid |30|
 :pattern ( ($IsBox bx@@8 TChar))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((o@@1 T@U) ) (! (<= 0 (_System.array2.Length0 o@@1))
 :qid |unknown.0:0|
 :skolemid |556|
 :pattern ( (_System.array2.Length0 o@@1))
)))
(assert (forall ((o@@2 T@U) ) (! (<= 0 (_System.array2.Length1 o@@2))
 :qid |unknown.0:0|
 :skolemid |557|
 :pattern ( (_System.array2.Length1 o@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@8 T@U) (h@@8 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@8) h@@8) (forall ((bx@@9 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@9) ($IsAllocBox bx@@9 t0@@8 h@@8))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@9))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@8) h@@8))
)))
(assert (forall (($o@@6 T@U) ) (! ($Is refType $o@@6 Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o@@6 Tclass._System.object?))
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
(assert (forall ((i@@0 Int) ) (! (= (FDim (IndexField i@@0)) 1)
 :qid |DafnyPreludebpl.515:15|
 :skolemid |103|
 :pattern ( (IndexField i@@0))
)))
(assert (forall ((i@@1 Int) ) (! (= (IndexField_Inverse (IndexField i@@1)) i@@1)
 :qid |DafnyPreludebpl.517:15|
 :skolemid |104|
 :pattern ( (IndexField i@@1))
)))
(assert (forall ((_System.array2$arg@@9 T@U) ) (! (= (Tclass._System.array2?_0 (Tclass._System.array2? _System.array2$arg@@9)) _System.array2$arg@@9)
 :qid |unknown.0:0|
 :skolemid |554|
 :pattern ( (Tclass._System.array2? _System.array2$arg@@9))
)))
(assert (forall ((_System.array2$arg@@10 T@U) ) (! (= (Tclass._System.array2_0 (Tclass._System.array2 _System.array2$arg@@10)) _System.array2$arg@@10)
 :qid |unknown.0:0|
 :skolemid |567|
 :pattern ( (Tclass._System.array2 _System.array2$arg@@10))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((t0@@9 T@U) (t1@@7 T@U) (t2@@6 T@U) (heap@@2 T@U) (f@@5 T@U) (bx0@@5 T@U) (bx1@@5 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@2) (and (and ($IsBox bx0@@5 t0@@9) ($IsBox bx1@@5 t1@@7)) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc2 t0@@9 t1@@7 t2@@6)))) (|Set#Equal| (Reads2 t0@@9 t1@@7 t2@@6 $OneHeap f@@5 bx0@@5 bx1@@5) |Set#Empty|)) (= (Requires2 t0@@9 t1@@7 t2@@6 $OneHeap f@@5 bx0@@5 bx1@@5) (Requires2 t0@@9 t1@@7 t2@@6 heap@@2 f@@5 bx0@@5 bx1@@5)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( (Requires2 t0@@9 t1@@7 t2@@6 $OneHeap f@@5 bx0@@5 bx1@@5) ($IsGoodHeap heap@@2))
 :pattern ( (Requires2 t0@@9 t1@@7 t2@@6 heap@@2 f@@5 bx0@@5 bx1@@5))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#x#0@@1| T@U) (|$l#0#y#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#41| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|) |l#0@@3|)
 :qid |ArrayElementInitERRdfy.55:28|
 :skolemid |815|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType SetType (|lambda#41| |l#0@@3|) |$l#0#heap#0@@1| |$l#0#x#0@@1| |$l#0#y#0@@1|))
)))
(assert (forall ((_System.array2$arg@@11 T@U) ($h@@6 T@U) ($o@@7 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@6) (and (or (not (= $o@@7 null)) (not true)) (= (dtype $o@@7) (Tclass._System.array2? _System.array2$arg@@11)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length0 $o@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |563|
 :pattern ( (_System.array2.Length0 $o@@7) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@6 $o@@7) alloc)) (Tclass._System.array2? _System.array2$arg@@11))
)))
(assert (forall ((_System.array2$arg@@12 T@U) ($h@@7 T@U) ($o@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@7) (and (or (not (= $o@@8 null)) (not true)) (= (dtype $o@@8) (Tclass._System.array2? _System.array2$arg@@12)))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)))) ($IsAlloc intType (int_2_U (_System.array2.Length1 $o@@8)) TInt $h@@7))
 :qid |unknown.0:0|
 :skolemid |565|
 :pattern ( (_System.array2.Length1 $o@@8) ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $h@@7 $o@@8) alloc)) (Tclass._System.array2? _System.array2$arg@@12))
)))
(assert (forall ((f@@6 T@U) (t0@@10 T@U) (t1@@8 T@U) (t2@@7 T@U) (u0@@3 T@U) (u1@@3 T@U) (u2@@2 T@U) ) (!  (=> (and (and (and ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@10 t1@@8 t2@@7)) (forall ((bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 u0@@3) ($IsBox bx@@10 t0@@10))
 :qid |unknown.0:0|
 :skolemid |595|
 :pattern ( ($IsBox bx@@10 u0@@3))
 :pattern ( ($IsBox bx@@10 t0@@10))
))) (forall ((bx@@11 T@U) ) (!  (=> ($IsBox bx@@11 u1@@3) ($IsBox bx@@11 t1@@8))
 :qid |unknown.0:0|
 :skolemid |596|
 :pattern ( ($IsBox bx@@11 u1@@3))
 :pattern ( ($IsBox bx@@11 t1@@8))
))) (forall ((bx@@12 T@U) ) (!  (=> ($IsBox bx@@12 t2@@7) ($IsBox bx@@12 u2@@2))
 :qid |unknown.0:0|
 :skolemid |597|
 :pattern ( ($IsBox bx@@12 t2@@7))
 :pattern ( ($IsBox bx@@12 u2@@2))
))) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
 :qid |unknown.0:0|
 :skolemid |598|
 :pattern ( ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 t0@@10 t1@@8 t2@@7)) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc2 u0@@3 u1@@3 u2@@2)))
)))
(assert (forall ((f@@7 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@7 ($LS ly@@0)) (AtLayer A@@0 f@@7 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@7 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert  (and (forall ((t0@@11 T@T) (t1@@9 T@T) (t2@@8 T@T) (val@@5 T@U) (m@@5 T@U) (x0@@5 T@U) (x1@@3 T@U) ) (! (= (MapType2Select t0@@11 t1@@9 t2@@8 (MapType2Store t0@@11 t1@@9 t2@@8 m@@5 x0@@5 x1@@3 val@@5) x0@@5 x1@@3) val@@5)
 :qid |mapAx0:MapType2Select|
 :weight 0
)) (and (forall ((u0@@4 T@T) (u1@@4 T@T) (u2@@3 T@T) (val@@6 T@U) (m@@6 T@U) (x0@@6 T@U) (x1@@4 T@U) (y0@@3 T@U) (y1@@2 T@U) ) (!  (or (= x0@@6 y0@@3) (= (MapType2Select u0@@4 u1@@4 u2@@3 (MapType2Store u0@@4 u1@@4 u2@@3 m@@6 x0@@6 x1@@4 val@@6) y0@@3 y1@@2) (MapType2Select u0@@4 u1@@4 u2@@3 m@@6 y0@@3 y1@@2)))
 :qid |mapAx1:MapType2Select:0|
 :weight 0
)) (forall ((u0@@5 T@T) (u1@@5 T@T) (u2@@4 T@T) (val@@7 T@U) (m@@7 T@U) (x0@@7 T@U) (x1@@5 T@U) (y0@@4 T@U) (y1@@3 T@U) ) (!  (or (= x1@@5 y1@@3) (= (MapType2Select u0@@5 u1@@5 u2@@4 (MapType2Store u0@@5 u1@@5 u2@@4 m@@7 x0@@7 x1@@5 val@@7) y0@@4 y1@@3) (MapType2Select u0@@5 u1@@5 u2@@4 m@@7 y0@@4 y1@@3)))
 :qid |mapAx1:MapType2Select:1|
 :weight 0
)))))
(assert (forall ((|l#0@@4| T@U) (|l#1@@1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@9 T@U) ($f T@U) ) (! (= (U_2_bool (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@1| |l#2| |l#3|) $o@@9 $f))  (=> (and (or (not (= $o@@9 |l#0@@4|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@1| $o@@9) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |803|
 :pattern ( (MapType2Select refType FieldType boolType (|lambda#0| |l#0@@4| |l#1@@1| |l#2| |l#3|) $o@@9 $f))
)))
(assert (forall ((f@@8 T@U) (i@@2 Int) ) (!  (and (= (MultiIndexField_Inverse0 (MultiIndexField f@@8 i@@2)) f@@8) (= (MultiIndexField_Inverse1 (MultiIndexField f@@8 i@@2)) i@@2))
 :qid |DafnyPreludebpl.523:15|
 :skolemid |106|
 :pattern ( (MultiIndexField f@@8 i@@2))
)))
(assert (forall ((t0@@12 T@U) (t1@@10 T@U) (t2@@9 T@U) (h0 T@U) (h1 T@U) (f@@9 T@U) (bx0@@6 T@U) (bx1@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and (and ($IsBox bx0@@6 t0@@12) ($IsBox bx1@@6 t1@@10)) ($Is HandleTypeType f@@9 (Tclass._System.___hFunc2 t0@@12 t1@@10 t2@@9)))) (forall ((o@@3 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads2 t0@@12 t1@@10 t2@@9 h0 f@@9 bx0@@6 bx1@@6) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@3) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@3) fld)))
 :qid |unknown.0:0|
 :skolemid |583|
))) (= (Requires2 t0@@12 t1@@10 t2@@9 h0 f@@9 bx0@@6 bx1@@6) (Requires2 t0@@12 t1@@10 t2@@9 h1 f@@9 bx0@@6 bx1@@6)))
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( ($HeapSucc h0 h1) (Requires2 t0@@12 t1@@10 t2@@9 h1 f@@9 bx0@@6 bx1@@6))
)))
(assert (forall ((t0@@13 T@U) (t1@@11 T@U) (t2@@10 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@10 T@U) (bx0@@7 T@U) (bx1@@7 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and (and ($IsBox bx0@@7 t0@@13) ($IsBox bx1@@7 t1@@11)) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc2 t0@@13 t1@@11 t2@@10)))) (forall ((o@@4 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads2 t0@@13 t1@@11 t2@@10 h1@@0 f@@10 bx0@@7 bx1@@7) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@4) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@4) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |585|
))) (= (Requires2 t0@@13 t1@@11 t2@@10 h0@@0 f@@10 bx0@@7 bx1@@7) (Requires2 t0@@13 t1@@11 t2@@10 h1@@0 f@@10 bx0@@7 bx1@@7)))
 :qid |unknown.0:0|
 :skolemid |586|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires2 t0@@13 t1@@11 t2@@10 h1@@0 f@@10 bx0@@7 bx1@@7))
)))
(assert (forall ((bx@@13 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@13 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@13)) bx@@13) ($Is SetType ($Unbox SetType bx@@13) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@13 (TSet t@@5)))
)))
(assert (forall ((_System.array2$arg@@13 T@U) (bx@@14 T@U) ) (!  (=> ($IsBox bx@@14 (Tclass._System.array2? _System.array2$arg@@13)) (and (= ($Box refType ($Unbox refType bx@@14)) bx@@14) ($Is refType ($Unbox refType bx@@14) (Tclass._System.array2? _System.array2$arg@@13))))
 :qid |unknown.0:0|
 :skolemid |555|
 :pattern ( ($IsBox bx@@14 (Tclass._System.array2? _System.array2$arg@@13)))
)))
(assert (forall ((_System.array2$arg@@14 T@U) (bx@@15 T@U) ) (!  (=> ($IsBox bx@@15 (Tclass._System.array2 _System.array2$arg@@14)) (and (= ($Box refType ($Unbox refType bx@@15)) bx@@15) ($Is refType ($Unbox refType bx@@15) (Tclass._System.array2 _System.array2$arg@@14))))
 :qid |unknown.0:0|
 :skolemid |568|
 :pattern ( ($IsBox bx@@15 (Tclass._System.array2 _System.array2$arg@@14)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (forall ((h@@9 T@U) (r@@2 T@U) (f@@11 T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType1Store refType (MapType1Type FieldType BoxType) h@@9 r@@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) f@@11 x@@6))) ($HeapSucc h@@9 (MapType1Store refType (MapType1Type FieldType BoxType) h@@9 r@@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) f@@11 x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType1Store refType (MapType1Type FieldType BoxType) h@@9 r@@2 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@9 r@@2) f@@11 x@@6)))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@5 T@U) ) (! (= (|Set#IsMember| a@@1 o@@5) (|Set#IsMember| b@@1 o@@5))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@5))
 :pattern ( (|Set#IsMember| b@@1 o@@5))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert (forall ((t0@@14 T@U) (t1@@12 T@U) (t2@@11 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@12 T@U) (bx0@@8 T@U) (bx1@@8 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and (and ($IsBox bx0@@8 t0@@14) ($IsBox bx1@@8 t1@@12)) ($Is HandleTypeType f@@12 (Tclass._System.___hFunc2 t0@@14 t1@@12 t2@@11)))) (forall ((o@@6 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads2 t0@@14 t1@@12 t2@@11 h0@@1 f@@12 bx0@@8 bx1@@8) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@6) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@6) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |579|
))) (= (Reads2 t0@@14 t1@@12 t2@@11 h0@@1 f@@12 bx0@@8 bx1@@8) (Reads2 t0@@14 t1@@12 t2@@11 h1@@1 f@@12 bx0@@8 bx1@@8)))
 :qid |unknown.0:0|
 :skolemid |580|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads2 t0@@14 t1@@12 t2@@11 h1@@1 f@@12 bx0@@8 bx1@@8))
)))
(assert (forall ((t0@@15 T@U) (t1@@13 T@U) (t2@@12 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@13 T@U) (bx0@@9 T@U) (bx1@@9 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and (and ($IsBox bx0@@9 t0@@15) ($IsBox bx1@@9 t1@@13)) ($Is HandleTypeType f@@13 (Tclass._System.___hFunc2 t0@@15 t1@@13 t2@@12)))) (forall ((o@@7 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@7 null)) (not true)) (|Set#IsMember| (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@13 bx0@@9 bx1@@9) ($Box refType o@@7))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@7) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@7) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |581|
))) (= (Reads2 t0@@15 t1@@13 t2@@12 h0@@2 f@@13 bx0@@9 bx1@@9) (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@13 bx0@@9 bx1@@9)))
 :qid |unknown.0:0|
 :skolemid |582|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads2 t0@@15 t1@@13 t2@@12 h1@@2 f@@13 bx0@@9 bx1@@9))
)))
(assert (forall ((t0@@16 T@U) (t1@@14 T@U) (t2@@13 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@14 T@U) (bx0@@10 T@U) (bx1@@10 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and (and ($IsBox bx0@@10 t0@@16) ($IsBox bx1@@10 t1@@14)) ($Is HandleTypeType f@@14 (Tclass._System.___hFunc2 t0@@16 t1@@14 t2@@13)))) (forall ((o@@8 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@8 null)) (not true)) (|Set#IsMember| (Reads2 t0@@16 t1@@14 t2@@13 h0@@3 f@@14 bx0@@10 bx1@@10) ($Box refType o@@8))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@8) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@8) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |587|
))) (= (Apply2 t0@@16 t1@@14 t2@@13 h0@@3 f@@14 bx0@@10 bx1@@10) (Apply2 t0@@16 t1@@14 t2@@13 h1@@3 f@@14 bx0@@10 bx1@@10)))
 :qid |unknown.0:0|
 :skolemid |588|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply2 t0@@16 t1@@14 t2@@13 h1@@3 f@@14 bx0@@10 bx1@@10))
)))
(assert (forall ((t0@@17 T@U) (t1@@15 T@U) (t2@@14 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@15 T@U) (bx0@@11 T@U) (bx1@@11 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and (and ($IsBox bx0@@11 t0@@17) ($IsBox bx1@@11 t1@@15)) ($Is HandleTypeType f@@15 (Tclass._System.___hFunc2 t0@@17 t1@@15 t2@@14)))) (forall ((o@@9 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@9 null)) (not true)) (|Set#IsMember| (Reads2 t0@@17 t1@@15 t2@@14 h1@@4 f@@15 bx0@@11 bx1@@11) ($Box refType o@@9))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@9) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@9) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |589|
))) (= (Apply2 t0@@17 t1@@15 t2@@14 h0@@4 f@@15 bx0@@11 bx1@@11) (Apply2 t0@@17 t1@@15 t2@@14 h1@@4 f@@15 bx0@@11 bx1@@11)))
 :qid |unknown.0:0|
 :skolemid |590|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply2 t0@@17 t1@@15 t2@@14 h1@@4 f@@15 bx0@@11 bx1@@11))
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
(assert (forall ((t0@@18 T@U) (t1@@16 T@U) (t2@@15 T@U) (heap@@3 T@U) (h@@10 T@U) (r@@3 T@U) (rd@@1 T@U) (bx0@@12 T@U) (bx1@@12 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType boolType r@@3 heap@@3 bx0@@12 bx1@@12)) (Requires2 t0@@18 t1@@16 t2@@15 heap@@3 (Handle2 h@@10 r@@3 rd@@1) bx0@@12 bx1@@12))
 :qid |unknown.0:0|
 :skolemid |577|
 :pattern ( (Requires2 t0@@18 t1@@16 t2@@15 heap@@3 (Handle2 h@@10 r@@3 rd@@1) bx0@@12 bx1@@12))
)))
(assert (forall ((h@@11 T@U) (v@@4 T@U) ) (! ($IsAlloc intType v@@4 TInt h@@11)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@4 TInt h@@11))
)))
(assert (forall ((h@@12 T@U) (v@@5 T@U) ) (! ($IsAlloc charType v@@5 TChar h@@12)
 :qid |DafnyPreludebpl.292:14|
 :skolemid |64|
 :pattern ( ($IsAlloc charType v@@5 TChar h@@12))
)))
(assert (forall ((v@@6 T@U) ) (! ($Is intType v@@6 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@6 TInt))
)))
(assert (forall ((v@@7 T@U) ) (! ($Is charType v@@7 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@7 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |x#0@0| () Int)
(declare-fun |y#0@0| () Int)
(declare-fun |lambdaResult#0| () T@U)
(declare-fun |d#0| () T@U)
(declare-fun |$_Frame#l0@0| () T@U)
(declare-fun |$lambdaHeap#0@0| () T@U)
(declare-fun $Heap () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $LZ () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |a#0| () T@U)
(declare-fun $FunctionContextHeight () Int)
(set-info :boogie-vc-id Impl$$_module.__default.P1)
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
 (=> (= (ControlFlow 0 0) 24) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (and (or (not (= |x#0@0| |y#0@0|)) (not true)) (= |lambdaResult#0| |d#0|)) (and ($Is charType |lambdaResult#0| TChar) (= (ControlFlow 0 18) 15))) anon5_correct)))
(let ((anon9_Then_correct  (=> (and (and (= |x#0@0| |y#0@0|) (= |lambdaResult#0| (Lit charType (|char#FromInt| 61)))) (and ($Is charType |lambdaResult#0| TChar) (= (ControlFlow 0 17) 15))) anon5_correct)))
(let ((anon8_Then_correct  (=> (and (<= (LitInt 0) |x#0@0|) (= |$_Frame#l0@0| (|lambda#0| null |$lambdaHeap#0@0| alloc false))) (and (=> (= (ControlFlow 0 19) 17) anon9_Then_correct) (=> (= (ControlFlow 0 19) 18) anon9_Else_correct)))))
(let ((anon8_Else_correct  (=> (and (< |x#0@0| (LitInt 0)) (= (ControlFlow 0 16) 15)) anon5_correct)))
(let ((anon7_Then_correct  (=> (and ($IsGoodHeap |$lambdaHeap#0@0|) (or (= $Heap |$lambdaHeap#0@0|) ($HeapSucc $Heap |$lambdaHeap#0@0|))) (and (=> (= (ControlFlow 0 20) 19) anon8_Then_correct) (=> (= (ControlFlow 0 20) 16) anon8_Else_correct)))))
(let ((anon7_Else_correct  (=> (and (and (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 (Tclass._System.array2? TChar))) (not (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc))))) (and (= (_System.array2.Length0 $nw@0) (LitInt 25)) (= (_System.array2.Length1 $nw@0) (LitInt 10)))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (forall ((|arrayinit#0#i0#0| Int) (|arrayinit#0#i1#0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#0#i0#0|) (< |arrayinit#0#i0#0| (LitInt 25))) (and (<= 0 |arrayinit#0#i1#0|) (< |arrayinit#0#i1#0| (LitInt 10)))) (Requires2 Tclass._System.nat TInt TChar $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle2 (|lambda#38| (|char#FromInt| 61) |d#0|) (|lambda#39| Tclass._System.nat TInt) (|lambda#41| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0|)) ($Box intType (int_2_U |arrayinit#0#i1#0|))))
 :qid |ArrayElementInitERRdfy.55:12|
 :skolemid |749|
))) (=> (and (and (forall ((|arrayinit#0#i0#0@@0| Int) (|arrayinit#0#i1#0@@0| Int) ) (!  (=> (and (and (<= 0 |arrayinit#0#i0#0@@0|) (< |arrayinit#0#i0#0@@0| (LitInt 25))) (and (<= 0 |arrayinit#0#i1#0@@0|) (< |arrayinit#0#i1#0@@0| (LitInt 10)))) (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|))) ($Unbox charType (Apply2 Tclass._System.nat TInt TChar $Heap (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#5| (Handle2 (|lambda#38| (|char#FromInt| 61) |d#0|) (|lambda#39| Tclass._System.nat TInt) (|lambda#41| (SetRef_to_SetBox (|lambda#3| false))))) ($LS $LZ))) ($Box intType (int_2_U |arrayinit#0#i0#0@@0|)) ($Box intType (int_2_U |arrayinit#0#i1#0@@0|))))))
 :qid |ArrayElementInitERRdfy.55:12|
 :skolemid |750|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) (MultiIndexField (IndexField |arrayinit#0#i0#0@@0|) |arrayinit#0#i1#0@@0|)))
)) (= $Heap@0 (MapType1Store refType (MapType1Type FieldType BoxType) $Heap $nw@0 (MapType1Store FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (= (_System.array2.Length0 $nw@0) (LitInt 25))) (=> (= (_System.array2.Length0 $nw@0) (LitInt 25)) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@0 null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (= (_System.array2.Length1 $nw@0) (LitInt 10))) (=> (= (_System.array2.Length1 $nw@0) (LitInt 10)) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (<= 0 (LitInt 18)) (< (LitInt 18) (_System.array2.Length0 $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (<= 0 (LitInt 3)) (< (LitInt 3) (_System.array2.Length1 $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (IndexField (LitInt 18)) (LitInt 3)))) |d#0|)) (=> (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (IndexField (LitInt 18)) (LitInt 3)))) |d#0|) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array2.Length0 $nw@0)))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (<= 0 (LitInt 7)) (< (LitInt 7) (_System.array2.Length1 $nw@0)))) (=> (= (ControlFlow 0 2) (- 0 1)) (= ($Unbox charType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $nw@0) (MultiIndexField (IndexField (LitInt 7)) (LitInt 7)))) (Lit charType (|char#FromInt| 61)))))))))))))))))))))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (and (=> (= (ControlFlow 0 21) (- 0 23)) (<= 0 (LitInt 25))) (=> (<= 0 (LitInt 25)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (<= 0 (LitInt 10))) (=> (<= 0 (LitInt 10)) (and (=> (= (ControlFlow 0 21) 20) anon7_Then_correct) (=> (= (ControlFlow 0 21) 2) anon7_Else_correct)))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) ($Is charType |d#0| TChar)) (=> (and (and (and ($Is refType |a#0| (Tclass._System.array2 TChar)) ($IsAlloc refType |a#0| (Tclass._System.array2 TChar) $Heap)) true) (and (= 0 $FunctionContextHeight) (= (ControlFlow 0 24) 21))) anon0_correct))))
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
