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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun tytagFamily$object () T@U)
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
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun |lambda#1| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun _module.__default.WITNESS () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun Handle1 (T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun null () T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun SeqType () T@T)
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
(assert (distinct TInt TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object tytagFamily$object)
)
(assert (= (Tag TInt) TagInt))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0 t1 t2 (MapType0Store t0 t1 t2 m x0 x1 val) x0 x1) val)
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
))) (= (Ctor refType) 4)) (= (Ctor FieldType) 5)) (= (Ctor BoxType) 6)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#i#0|)) ($IsBox |$l#0#i#0| |l#0|))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |516|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor SetType) 7))
(assert (forall ((v T@U) (t0@@1 T@U) ) (! (= ($Is SetType v (TSet t0@@1)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@1))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@1)))
)))
(assert (= (Ctor LayerTypeType) 8))
(assert (forall ((f T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f ly) (MapType1Select LayerTypeType A f ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((ty T@U) (heap T@U) (len Int) (init T@U) (i Int) ) (!  (=> (and (and ($IsGoodHeap heap) (<= 0 i)) (< i len)) (= (|Seq#Index| (|Seq#Create| ty heap len init) i) (Apply1 TInt ty heap init ($Box intType (int_2_U i)))))
 :qid |DafnyPreludebpl.1317:15|
 :skolemid |260|
 :pattern ( (|Seq#Index| (|Seq#Create| ty heap len init) i))
)))
(assert (= (Ctor HandleTypeType) 9))
(assert (= _module.__default.WITNESS (|Seq#Create| TInt $OneHeap (LitInt 10) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| ($Box intType (int_2_U (LitInt 0)))) (|lambda#1| TInt) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))))
(assert (forall ((s T@U) (bx@@0 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@0) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@0))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@0))
)))
(assert (forall ((t0@@2 T@U) (t1@@1 T@U) (heap@@0 T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) ) (! (= (Apply1 t0@@2 t1@@1 heap@@0 (Handle1 h r rd) bx0) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h heap@@0 bx0))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@2 t1@@1 heap@@0 (Handle1 h r rd) bx0))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@1 Tclass._System.object?))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@2 Tclass._System.object))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |gitissue405dfy.4:26|
 :skolemid |519|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall ((s@@0 T@U) ) (! (<= 0 (|Seq#Length| s@@0))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@0))
)))
(assert (forall (($o T@U) ) (! ($Is refType $o Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o Tclass._System.object?))
)))
(assert (forall ((t@@0 T@U) ) (! (= (Inv0_TSet (TSet t@@0)) t@@0)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@0))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Tag (TSet t@@1)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Inv0_TSeq (TSeq t@@2)) t@@2)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Tag (TSeq t@@3)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((f@@0 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@0 ($LS ly@@0)) (AtLayer A@@0 f@@0 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@0 ($LS ly@@0)))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#5| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |520|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#5| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (= (Ctor SeqType) 10))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.WITNESS (TSeq TInt))))
(assert (forall ((bx@@4 T@U) (t@@4 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@4)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@4))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@4)))
)))
(assert (forall ((bx@@5 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@5 (TSeq t@@5)) (and (= ($Box SeqType ($Unbox SeqType bx@@5)) bx@@5) ($Is SeqType ($Unbox SeqType bx@@5) (TSeq t@@5))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@5 (TSeq t@@5)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((ty@@0 T@U) (heap@@1 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@1) (<= 0 len@@0)) (= (|Seq#Length| (|Seq#Create| ty@@0 heap@@1 len@@0 init@@0)) len@@0))
 :qid |DafnyPreludebpl.1313:15|
 :skolemid |259|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@0 heap@@1 len@@0 init@@0)))
)))
(assert (forall ((s@@1 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@1) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@1))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((x@@7 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@7)) (Lit BoxType ($Box T@@3 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@7)))
)))
(assert (forall ((s@@2 T@U) ) (!  (=> (= (|Seq#Length| s@@2) 0) (= s@@2 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@2))
)))
(assert (forall ((v@@1 T@U) (t0@@3 T@U) ) (! (= ($Is SeqType v@@1 (TSeq t0@@3)) (forall ((i@@0 Int) ) (!  (=> (and (<= 0 i@@0) (< i@@0 (|Seq#Length| v@@1))) ($IsBox (|Seq#Index| v@@1 i@@0) t0@@3))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@1 i@@0))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@1 (TSeq t0@@3)))
)))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#i#0@@0|) |l#0@@3|)
 :qid |unknown.0:0|
 :skolemid |515|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@4|)
 :qid |gitissue405dfy.4:26|
 :skolemid |518|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.Seq10)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon6_Then_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (= (|Seq#Length| _module.__default.WITNESS) (LitInt 10)))))
(let ((anon5_Then_correct true))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#5| null $Heap alloc false)) (and (=> (= (ControlFlow 0 4) 1) anon5_Then_correct) (=> (= (ControlFlow 0 4) 3) anon6_Then_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 5) 4))) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
