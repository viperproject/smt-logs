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
(declare-fun TagSeq () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
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
(declare-fun |Set#Empty| () T@U)
(declare-fun |Seq#Length| (T@U) Int)
(declare-fun |Seq#Empty| () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun _module.__default.AllCasesAsCodePoints () T@U)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun SeqType () T@T)
(declare-fun |Seq#Build| (T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun TSeq (T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun |Seq#Index| (T@U Int) T@U)
(declare-fun |Seq#Create| (T@U T@U Int T@U) T@U)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun |lambda#0| (T@U) T@U)
(declare-fun charType () T@T)
(declare-fun |char#FromInt| (Int) T@U)
(declare-fun |lambda#2| (Bool) T@U)
(declare-fun |lambda#4| (T@U) T@U)
(declare-fun _module.__default.AllCases () T@U)
(declare-fun |lambda#1| (T@U Int Int) T@U)
(declare-fun |lambda#3| (T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Inv0_TSeq (T@U) T@U)
(declare-fun |char#ToInt| (T@U) Int)
(declare-fun |lambda#5| (T@U T@U T@U Bool) T@U)
(declare-fun |Seq#Build_inv0| (T@U) T@U)
(declare-fun |Seq#Build_inv1| (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.AlternateForms () T@U)
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
(assert (distinct TChar TInt TagChar TagInt TagSet TagSeq alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 tytagFamily$object |tytagFamily$_#Func1|)
)
(assert (= (Tag TChar) TagChar))
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
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (|Seq#Length| |Seq#Empty|) 0))
(assert (= (Ctor HandleTypeType) 8))
(assert (forall ((f T@U) (t0@@2 T@U) (t1@@2 T@U) (u0@@2 T@U) (u1@@2 T@U) ) (!  (=> (and (and ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 u0@@2) ($IsBox bx@@0 t0@@2))
 :qid |unknown.0:0|
 :skolemid |389|
 :pattern ( ($IsBox bx@@0 u0@@2))
 :pattern ( ($IsBox bx@@0 t0@@2))
))) (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 t1@@2) ($IsBox bx@@1 u1@@2))
 :qid |unknown.0:0|
 :skolemid |390|
 :pattern ( ($IsBox bx@@1 t1@@2))
 :pattern ( ($IsBox bx@@1 u1@@2))
))) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
 :qid |unknown.0:0|
 :skolemid |391|
 :pattern ( ($Is HandleTypeType f (Tclass._System.___hFunc1 t0@@2 t1@@2)) ($Is HandleTypeType f (Tclass._System.___hFunc1 u0@@2 u1@@2)))
)))
(assert (= (Ctor SeqType) 9))
(assert (= _module.__default.AllCasesAsCodePoints (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box intType (int_2_U (LitInt 0)))) ($Box intType (int_2_U (LitInt 9)))) ($Box intType (int_2_U (LitInt 10)))) ($Box intType (int_2_U (LitInt 13)))) ($Box intType (int_2_U (LitInt 34)))) ($Box intType (int_2_U (LitInt 39)))) ($Box intType (int_2_U (LitInt 68)))) ($Box intType (int_2_U (LitInt 92)))) ($Box intType (int_2_U (LitInt 128)))) ($Box intType (int_2_U (LitInt 255)))) ($Box intType (int_2_U (LitInt 256)))) ($Box intType (int_2_U (LitInt 55295)))) ($Box intType (int_2_U (LitInt 57344)))) ($Box intType (int_2_U (LitInt 65518)))) ($Box intType (int_2_U (LitInt 65536)))) ($Box intType (int_2_U (LitInt 119070)))) ($Box intType (int_2_U (LitInt 128640)))) ($Box intType (int_2_U (LitInt 1114111)))))))
(assert (forall ((h@@0 T@U) (k T@U) ) (!  (=> ($HeapSucc h@@0 k) (forall ((o@@0 T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h@@0 o@@0) alloc))) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) k o@@0) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h@@0 k))
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
(assert (forall ((s T@U) (bx@@2 T@U) (t T@U) ) (!  (=> (and ($Is SeqType s (TSeq t)) ($IsBox bx@@2 t)) ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
 :qid |DafnyPreludebpl.1309:15|
 :skolemid |258|
 :pattern ( ($Is SeqType (|Seq#Build| s bx@@2) (TSeq t)))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((t0@@4 T@U) (t1@@4 T@U) (h0 T@U) (h1 T@U) (f@@1 T@U) (bx0@@1 T@U) ) (!  (=> (and (and (and ($HeapSucc h0 h1) (and ($IsGoodHeap h0) ($IsGoodHeap h1))) (and ($IsBox bx0@@1 t0@@4) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc1 t0@@4 t1@@4)))) (forall ((o@@1 T@U) (fld T@U) ) (!  (=> (and (or (not (= o@@1 null)) (not true)) (|Set#IsMember| (Reads1 t0@@4 t1@@4 h0 f@@1 bx0@@1) ($Box refType o@@1))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0 o@@1) fld) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1 o@@1) fld)))
 :qid |unknown.0:0|
 :skolemid |377|
))) (= (Requires1 t0@@4 t1@@4 h0 f@@1 bx0@@1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1)))
 :qid |unknown.0:0|
 :skolemid |378|
 :pattern ( ($HeapSucc h0 h1) (Requires1 t0@@4 t1@@4 h1 f@@1 bx0@@1))
)))
(assert (forall ((t0@@5 T@U) (t1@@5 T@U) (h0@@0 T@U) (h1@@0 T@U) (f@@2 T@U) (bx0@@2 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@0 h1@@0) (and ($IsGoodHeap h0@@0) ($IsGoodHeap h1@@0))) (and ($IsBox bx0@@2 t0@@5) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@5 t1@@5)))) (forall ((o@@2 T@U) (fld@@0 T@U) ) (!  (=> (and (or (not (= o@@2 null)) (not true)) (|Set#IsMember| (Reads1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2) ($Box refType o@@2))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@0 o@@2) fld@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@0 o@@2) fld@@0)))
 :qid |unknown.0:0|
 :skolemid |379|
))) (= (Requires1 t0@@5 t1@@5 h0@@0 f@@2 bx0@@2) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2)))
 :qid |unknown.0:0|
 :skolemid |380|
 :pattern ( ($HeapSucc h0@@0 h1@@0) (Requires1 t0@@5 t1@@5 h1@@0 f@@2 bx0@@2))
)))
(assert (forall ((v T@U) (t0@@6 T@U) ) (! (= ($Is SetType v (TSet t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v bx@@3) ($IsBox bx@@3 t0@@6))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@3))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@6)))
)))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@3 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@3 ly) (MapType1Select LayerTypeType A f@@3 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@3 ly))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s@@0 T@U) (v@@0 T@U) ) (! (= (|Seq#Length| (|Seq#Build| s@@0 v@@0)) (+ 1 (|Seq#Length| s@@0)))
 :qid |DafnyPreludebpl.1144:15|
 :skolemid |224|
 :pattern ( (|Seq#Build| s@@0 v@@0))
)))
(assert (forall ((ty T@U) (heap@@1 T@U) (len Int) (init T@U) (i Int) ) (!  (=> (and (and ($IsGoodHeap heap@@1) (<= 0 i)) (< i len)) (= (|Seq#Index| (|Seq#Create| ty heap@@1 len init) i) (Apply1 TInt ty heap@@1 init ($Box intType (int_2_U i)))))
 :qid |DafnyPreludebpl.1317:15|
 :skolemid |260|
 :pattern ( (|Seq#Index| (|Seq#Create| ty heap@@1 len init) i))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (h0@@1 T@U) (h1@@1 T@U) (f@@4 T@U) (bx0@@3 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@1 h1@@1) (and ($IsGoodHeap h0@@1) ($IsGoodHeap h1@@1))) (and ($IsBox bx0@@3 t0@@7) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@7 t1@@6)))) (forall ((o@@3 T@U) (fld@@1 T@U) ) (!  (=> (and (or (not (= o@@3 null)) (not true)) (|Set#IsMember| (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) ($Box refType o@@3))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@1 o@@3) fld@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@1 o@@3) fld@@1)))
 :qid |unknown.0:0|
 :skolemid |373|
))) (= (Reads1 t0@@7 t1@@6 h0@@1 f@@4 bx0@@3) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3)))
 :qid |unknown.0:0|
 :skolemid |374|
 :pattern ( ($HeapSucc h0@@1 h1@@1) (Reads1 t0@@7 t1@@6 h1@@1 f@@4 bx0@@3))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (h0@@2 T@U) (h1@@2 T@U) (f@@5 T@U) (bx0@@4 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@2 h1@@2) (and ($IsGoodHeap h0@@2) ($IsGoodHeap h1@@2))) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@5 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (forall ((o@@4 T@U) (fld@@2 T@U) ) (!  (=> (and (or (not (= o@@4 null)) (not true)) (|Set#IsMember| (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4) ($Box refType o@@4))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@2 o@@4) fld@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@2 o@@4) fld@@2)))
 :qid |unknown.0:0|
 :skolemid |375|
))) (= (Reads1 t0@@8 t1@@7 h0@@2 f@@5 bx0@@4) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |376|
 :pattern ( ($HeapSucc h0@@2 h1@@2) (Reads1 t0@@8 t1@@7 h1@@2 f@@5 bx0@@4))
)))
(assert (forall ((t0@@9 T@U) (t1@@8 T@U) (h0@@3 T@U) (h1@@3 T@U) (f@@6 T@U) (bx0@@5 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@3 h1@@3) (and ($IsGoodHeap h0@@3) ($IsGoodHeap h1@@3))) (and ($IsBox bx0@@5 t0@@9) ($Is HandleTypeType f@@6 (Tclass._System.___hFunc1 t0@@9 t1@@8)))) (forall ((o@@5 T@U) (fld@@3 T@U) ) (!  (=> (and (or (not (= o@@5 null)) (not true)) (|Set#IsMember| (Reads1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) ($Box refType o@@5))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@3 o@@5) fld@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@3 o@@5) fld@@3)))
 :qid |unknown.0:0|
 :skolemid |381|
))) (= (Apply1 t0@@9 t1@@8 h0@@3 f@@6 bx0@@5) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5)))
 :qid |unknown.0:0|
 :skolemid |382|
 :pattern ( ($HeapSucc h0@@3 h1@@3) (Apply1 t0@@9 t1@@8 h1@@3 f@@6 bx0@@5))
)))
(assert (forall ((t0@@10 T@U) (t1@@9 T@U) (h0@@4 T@U) (h1@@4 T@U) (f@@7 T@U) (bx0@@6 T@U) ) (!  (=> (and (and (and ($HeapSucc h0@@4 h1@@4) (and ($IsGoodHeap h0@@4) ($IsGoodHeap h1@@4))) (and ($IsBox bx0@@6 t0@@10) ($Is HandleTypeType f@@7 (Tclass._System.___hFunc1 t0@@10 t1@@9)))) (forall ((o@@6 T@U) (fld@@4 T@U) ) (!  (=> (and (or (not (= o@@6 null)) (not true)) (|Set#IsMember| (Reads1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6) ($Box refType o@@6))) (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h0@@4 o@@6) fld@@4) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) h1@@4 o@@6) fld@@4)))
 :qid |unknown.0:0|
 :skolemid |383|
))) (= (Apply1 t0@@10 t1@@9 h0@@4 f@@7 bx0@@6) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6)))
 :qid |unknown.0:0|
 :skolemid |384|
 :pattern ( ($HeapSucc h0@@4 h1@@4) (Apply1 t0@@10 t1@@9 h1@@4 f@@7 bx0@@6))
)))
(assert (forall ((s@@1 T@U) (bx@@4 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@4) (U_2_bool (MapType1Select refType boolType s@@1 ($Unbox refType bx@@4))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s@@1) bx@@4))
)))
(assert (forall ((t0@@11 T@U) (t1@@10 T@U) (heap@@2 T@U) (h@@1 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@7 T@U) ) (! (= (Apply1 t0@@11 t1@@10 heap@@2 (Handle1 h@@1 r@@0 rd@@0) bx0@@7) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@1 heap@@2 bx0@@7))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@11 t1@@10 heap@@2 (Handle1 h@@1 r@@0 rd@@0) bx0@@7))
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
(assert (= (Ctor charType) 11))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#i#0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0|) |$l#0#heap#0| |$l#0#i#0|) ($Box charType (|char#FromInt| (U_2_int ($Unbox intType (|Seq#Index| |l#0| (U_2_int ($Unbox intType |$l#0#i#0|))))))))
 :qid |UnicodeStringsdfy.48:77|
 :skolemid |649|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#0| |l#0|) |$l#0#heap#0| |$l#0#i#0|))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert (forall ((s@@2 T@U) (i@@0 Int) (v@@1 T@U) ) (!  (and (=> (= i@@0 (|Seq#Length| s@@2)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@1) i@@0) v@@1)) (=> (or (not (= i@@0 (|Seq#Length| s@@2))) (not true)) (= (|Seq#Index| (|Seq#Build| s@@2 v@@1) i@@0) (|Seq#Index| s@@2 i@@0))))
 :qid |DafnyPreludebpl.1148:15|
 :skolemid |225|
 :pattern ( (|Seq#Index| (|Seq#Build| s@@2 v@@1) i@@0))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |651|
 :pattern ( (MapType1Select refType boolType (|lambda#2| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |UnicodeStringsdfy.48:31|
 :skolemid |653|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#4| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (= _module.__default.AllCases (|Seq#Create| TChar $OneHeap (|Seq#Length| _module.__default.AllCasesAsCodePoints) (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#4| (Handle1 (|lambda#0| _module.__default.AllCasesAsCodePoints) (|lambda#1| TInt (LitInt 0) (|Seq#Length| _module.__default.AllCasesAsCodePoints)) (|lambda#3| (SetRef_to_SetBox (|lambda#2| false))))) ($LS $LZ))))))
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
(assert (forall ((f@@8 T@U) (t0@@12 T@U) (t1@@11 T@U) ) (! (= ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11)) (forall ((h@@2 T@U) (bx0@@8 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@2) ($IsBox bx0@@8 t0@@12)) (Requires1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8)) ($IsBox (Apply1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8) t1@@11))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@12 t1@@11 h@@2 f@@8 bx0@@8))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@8 (Tclass._System.___hFunc1 t0@@12 t1@@11)))
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
(assert (forall ((v@@2 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@2) t@@0) ($Is T@@1 v@@2 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@2) t@@0))
)))
(assert (forall ((t0@@13 T@U) (t1@@12 T@U) (heap@@3 T@U) (h@@3 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@9 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@3 bx0@@9)) (Requires1 t0@@13 t1@@12 heap@@3 (Handle1 h@@3 r@@1 rd@@1) bx0@@9))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@13 t1@@12 heap@@3 (Handle1 h@@3 r@@1 rd@@1) bx0@@9))
)))
(assert (forall ((s@@3 T@U) ) (! (<= 0 (|Seq#Length| s@@3))
 :qid |DafnyPreludebpl.1124:15|
 :skolemid |221|
 :pattern ( (|Seq#Length| s@@3))
)))
(assert (forall ((|#$T0| T@U) (|#$R| T@U) ) (! (= (Tclass._System.___hFunc1_0 (Tclass._System.___hFunc1 |#$T0| |#$R|)) |#$T0|)
 :qid |unknown.0:0|
 :skolemid |367|
 :pattern ( (Tclass._System.___hFunc1 |#$T0| |#$R|))
)))
(assert (forall ((|#$T0@@0| T@U) (|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc1_1 (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |368|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@0| |#$R@@0|))
)))
(assert (forall (($o T@U) ) (! ($Is refType $o Tclass._System.object?)
 :qid |unknown.0:0|
 :skolemid |347|
 :pattern ( ($Is refType $o Tclass._System.object?))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| Int) (|l#2| Int) (|$l#0#heap#0@@0| T@U) (|$l#0#i#0@@0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))  (and ($IsBox |$l#0#i#0@@0| |l#0@@2|) (and (<= |l#1| (U_2_int ($Unbox intType |$l#0#i#0@@0|))) (< (U_2_int ($Unbox intType |$l#0#i#0@@0|)) |l#2|))))
 :qid |DafnyPreludebpl.27:1|
 :skolemid |650|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#1| |l#0@@2| |l#1| |l#2|) |$l#0#heap#0@@0| |$l#0#i#0@@0|))
)))
(assert (forall ((t@@1 T@U) ) (! (= (Inv0_TSet (TSet t@@1)) t@@1)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@1))
)))
(assert (forall ((t@@2 T@U) ) (! (= (Tag (TSet t@@2)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@2))
)))
(assert (forall ((t@@3 T@U) ) (! (= (Inv0_TSeq (TSeq t@@3)) t@@3)
 :qid |DafnyPreludebpl.53:15|
 :skolemid |7|
 :pattern ( (TSeq t@@3))
)))
(assert (forall ((t@@4 T@U) ) (! (= (Tag (TSeq t@@4)) TagSeq)
 :qid |DafnyPreludebpl.54:15|
 :skolemid |8|
 :pattern ( (TSeq t@@4))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall ((f@@9 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@9 ($LS ly@@0)) (AtLayer A@@0 f@@9 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@9 ($LS ly@@0)))
)))
(assert (forall ((n Int) ) (!  (=> (or (and (<= 0 n) (< n 55296)) (and (<= 57344 n) (< n 1114112))) (= (|char#ToInt| (|char#FromInt| n)) n))
 :qid |DafnyPreludebpl.131:15|
 :skolemid |21|
 :pattern ( (|char#FromInt| n))
)))
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hFunc1 |#$T0@@1| |#$R@@1|)))
)))
(assert (forall ((|l#0@@3| T@U) (|l#1@@0| T@U) (|l#2@@0| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#5| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@3|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1@@0| $o@@0) |l#2@@0|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |654|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#5| |l#0@@3| |l#1@@0| |l#2@@0| |l#3|) $o@@0 $f))
)))
(assert (forall ((s@@4 T@U) (val@@4 T@U) ) (!  (and (= (|Seq#Build_inv0| (|Seq#Build| s@@4 val@@4)) s@@4) (= (|Seq#Build_inv1| (|Seq#Build| s@@4 val@@4)) val@@4))
 :qid |DafnyPreludebpl.1139:15|
 :skolemid |223|
 :pattern ( (|Seq#Build| s@@4 val@@4))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.AllCasesAsCodePoints (TSeq TInt))))
(assert  (=> (< 1 $FunctionContextHeight) ($Is SeqType _module.__default.AllCases (TSeq TChar))))
(assert (forall ((t0@@14 T@U) (t1@@13 T@U) (heap@@4 T@U) (f@@10 T@U) (bx0@@10 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@4) (and ($IsBox bx0@@10 t0@@14) ($Is HandleTypeType f@@10 (Tclass._System.___hFunc1 t0@@14 t1@@13)))) (|Set#Equal| (Reads1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) |Set#Empty|)) (= (Requires1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) (Requires1 t0@@14 t1@@13 heap@@4 f@@10 bx0@@10)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@14 t1@@13 $OneHeap f@@10 bx0@@10) ($IsGoodHeap heap@@4))
 :pattern ( (Requires1 t0@@14 t1@@13 heap@@4 f@@10 bx0@@10))
)))
(assert (forall ((bx@@10 T@U) (t@@5 T@U) ) (!  (=> ($IsBox bx@@10 (TSet t@@5)) (and (= ($Box SetType ($Unbox SetType bx@@10)) bx@@10) ($Is SetType ($Unbox SetType bx@@10) (TSet t@@5))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@10 (TSet t@@5)))
)))
(assert (forall ((bx@@11 T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@11 (TSeq t@@6)) (and (= ($Box SeqType ($Unbox SeqType bx@@11)) bx@@11) ($Is SeqType ($Unbox SeqType bx@@11) (TSeq t@@6))))
 :qid |DafnyPreludebpl.204:15|
 :skolemid |35|
 :pattern ( ($IsBox bx@@11 (TSeq t@@6)))
)))
(assert (forall ((ch T@U) ) (!  (and (= (|char#FromInt| (|char#ToInt| ch)) ch) (or (and (<= 0 (|char#ToInt| ch)) (< (|char#ToInt| ch) 55296)) (and (<= 57344 (|char#ToInt| ch)) (< (|char#ToInt| ch) 1114112))))
 :qid |DafnyPreludebpl.136:15|
 :skolemid |22|
 :pattern ( (|char#ToInt| ch))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (forall ((ty@@0 T@U) (heap@@5 T@U) (len@@0 Int) (init@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@5) (<= 0 len@@0)) (= (|Seq#Length| (|Seq#Create| ty@@0 heap@@5 len@@0 init@@0)) len@@0))
 :qid |DafnyPreludebpl.1313:15|
 :skolemid |259|
 :pattern ( (|Seq#Length| (|Seq#Create| ty@@0 heap@@5 len@@0 init@@0)))
)))
(assert (forall ((s@@5 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@5) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@5))
)))
(assert (= _module.__default.AlternateForms (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (Lit charType (|char#FromInt| 0)))) ($Box charType (Lit charType (|char#FromInt| 9)))) ($Box charType (Lit charType (|char#FromInt| 10)))) ($Box charType (Lit charType (|char#FromInt| 13)))) ($Box charType (Lit charType (|char#FromInt| 34)))) ($Box charType (Lit charType (|char#FromInt| 39)))) ($Box charType (Lit charType (|char#FromInt| 68)))) ($Box charType (Lit charType (|char#FromInt| 92)))) ($Box charType (Lit charType (|char#FromInt| 128)))) ($Box charType (Lit charType (|char#FromInt| 255)))) ($Box charType (Lit charType (|char#FromInt| 256)))) ($Box charType (Lit charType (|char#FromInt| 55295)))) ($Box charType (Lit charType (|char#FromInt| 57344)))) ($Box charType (Lit charType (|char#FromInt| 65518)))) ($Box charType (Lit charType (|char#FromInt| 65536)))) ($Box charType (Lit charType (|char#FromInt| 119070)))) ($Box charType (Lit charType (|char#FromInt| 128640)))) ($Box charType (Lit charType (|char#FromInt| 1114111))))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (Lit charType (|char#FromInt| 0)))) ($Box charType (Lit charType (|char#FromInt| 9)))) ($Box charType (Lit charType (|char#FromInt| 10)))) ($Box charType (Lit charType (|char#FromInt| 13)))) ($Box charType (Lit charType (|char#FromInt| 34)))) ($Box charType (Lit charType (|char#FromInt| 39)))) ($Box charType (Lit charType (|char#FromInt| 68)))) ($Box charType (Lit charType (|char#FromInt| 92)))) ($Box charType (Lit charType (|char#FromInt| 128)))) ($Box charType (Lit charType (|char#FromInt| 255)))) ($Box charType (Lit charType (|char#FromInt| 256)))) ($Box charType (Lit charType (|char#FromInt| 55295)))) ($Box charType (Lit charType (|char#FromInt| 57344)))) ($Box charType (Lit charType (|char#FromInt| 65518)))) ($Box charType (Lit charType (|char#FromInt| 65536)))) ($Box charType (Lit charType (|char#FromInt| 119070)))) ($Box charType (Lit charType (|char#FromInt| 128640)))) ($Box charType (Lit charType (|char#FromInt| 1114111))))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 0))) ($Box charType (|char#FromInt| 9))) ($Box charType (|char#FromInt| 10))) ($Box charType (|char#FromInt| 13))) ($Box charType (|char#FromInt| 34))) ($Box charType (|char#FromInt| 39))) ($Box charType (|char#FromInt| 68))) ($Box charType (|char#FromInt| 92))) ($Box charType (|char#FromInt| 128))) ($Box charType (|char#FromInt| 255))) ($Box charType (|char#FromInt| 256))) ($Box charType (|char#FromInt| 55295))) ($Box charType (|char#FromInt| 57344))) ($Box charType (|char#FromInt| 65518))) ($Box charType (|char#FromInt| 65536))) ($Box charType (|char#FromInt| 119070))) ($Box charType (|char#FromInt| 128640))) ($Box charType (|char#FromInt| 1114111)))))) ($Box SeqType (Lit SeqType (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| (|Seq#Build| |Seq#Empty| ($Box charType (|char#FromInt| 0))) ($Box charType (|char#FromInt| 9))) ($Box charType (|char#FromInt| 10))) ($Box charType (|char#FromInt| 13))) ($Box charType (|char#FromInt| 34))) ($Box charType (|char#FromInt| 39))) ($Box charType (|char#FromInt| 68))) ($Box charType (|char#FromInt| 92))) ($Box charType (|char#FromInt| 128))) ($Box charType (|char#FromInt| 255))) ($Box charType (|char#FromInt| 256))) ($Box charType (|char#FromInt| 55295))) ($Box charType (|char#FromInt| 57344))) ($Box charType (|char#FromInt| 65518))) ($Box charType (|char#FromInt| 65536))) ($Box charType (|char#FromInt| 119070))) ($Box charType (|char#FromInt| 128640))) ($Box charType (|char#FromInt| 1114111)))))))))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (! (= (|Set#Equal| a@@1 b@@1) (forall ((o@@7 T@U) ) (! (= (|Set#IsMember| a@@1 o@@7) (|Set#IsMember| b@@1 o@@7))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@1 o@@7))
 :pattern ( (|Set#IsMember| b@@1 o@@7))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@1 b@@1))
)))
(assert  (=> (< 0 $FunctionContextHeight) ($Is SeqType _module.__default.AlternateForms (TSeq (TSeq TChar)))))
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
(assert (forall ((s@@6 T@U) ) (!  (=> (= (|Seq#Length| s@@6) 0) (= s@@6 |Seq#Empty|))
 :qid |DafnyPreludebpl.1131:15|
 :skolemid |222|
 :pattern ( (|Seq#Length| s@@6))
)))
(assert (forall ((v@@3 T@U) (t0@@15 T@U) ) (! (= ($Is SeqType v@@3 (TSeq t0@@15)) (forall ((i@@1 Int) ) (!  (=> (and (<= 0 i@@1) (< i@@1 (|Seq#Length| v@@3))) ($IsBox (|Seq#Index| v@@3 i@@1) t0@@15))
 :qid |DafnyPreludebpl.254:11|
 :skolemid |53|
 :pattern ( (|Seq#Index| v@@3 i@@1))
)))
 :qid |DafnyPreludebpl.252:15|
 :skolemid |54|
 :pattern ( ($Is SeqType v@@3 (TSeq t0@@15)))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#i#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|) |l#0@@4|)
 :qid |UnicodeStringsdfy.48:31|
 :skolemid |652|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#3| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#i#0@@1|))
)))
(assert (forall ((v@@4 T@U) ) (! ($Is intType v@@4 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@4 TInt))
)))
(assert (forall ((v@@5 T@U) ) (! ($Is charType v@@5 TChar)
 :qid |DafnyPreludebpl.231:14|
 :skolemid |43|
 :pattern ( ($Is charType v@@5 TChar))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |right#1_0_0@2| () T@U)
(declare-fun |left#1_0@1| () T@U)
(declare-fun |i#0@0| () Int)
(declare-fun |j#1_0@1| () Int)
(declare-fun |j#1_0#hi@1| () Int)
(declare-fun |$w$loop#1_0@1| () Bool)
(declare-fun |right#1_0_0@1| () T@U)
(declare-fun |caseIndex#0@0| () Int)
(declare-fun |caseIndex#0#lo@0| () Int)
(declare-fun |caseIndex#0#hi@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |i#0#lo@0| () Int)
(declare-fun |i#0#hi@0| () Int)
(declare-fun |$w$loop#1@0| () Bool)
(declare-fun |j#1_0#lo@1| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |right#1_0_0@0| () T@U)
(declare-fun |left#1_0@0| () T@U)
(declare-fun |formIndex#0_0@1| () Int)
(declare-fun |thisCase#0_0@1| () T@U)
(declare-fun |formIndex#0_0#hi@1| () Int)
(declare-fun |$w$loop#0_0@1| () Bool)
(declare-fun $Heap@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |formIndex#0_0#lo@1| () Int)
(declare-fun |thisCase#0_0@0| () T@U)
(declare-fun |thisCase#0_0| () T@U)
(declare-fun |left#1_0| () T@U)
(declare-fun |right#1_0_0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.AllCharCasesTest)
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
 (=> (= (ControlFlow 0 0) 94) (let ((anon92_Then_correct true))
(let ((anon91_Then_correct true))
(let ((anon90_Then_correct true))
(let ((anon89_Then_correct true))
(let ((anon88_Then_correct true))
(let ((anon87_Then_correct true))
(let ((anon99_Then_correct true))
(let ((anon98_Then_correct true))
(let ((anon97_Then_correct true))
(let ((anon96_Then_correct true))
(let ((anon95_Then_correct true))
(let ((anon94_Then_correct true))
(let ((anon68_correct true))
(let ((anon92_Else_correct  (=> (and (> (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (= (ControlFlow 0 69) 41)) anon68_correct)))
(let ((anon91_Else_correct  (=> (>= (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (and (=> (= (ControlFlow 0 70) 68) anon92_Then_correct) (=> (= (ControlFlow 0 70) 69) anon92_Else_correct)))))
(let ((anon90_Else_correct  (=> (or (not (= |left#1_0@1| |right#1_0_0@2|)) (not true)) (and (=> (= (ControlFlow 0 71) 67) anon91_Then_correct) (=> (= (ControlFlow 0 71) 70) anon91_Else_correct)))))
(let ((anon89_Else_correct  (=> (or (not (= |left#1_0@1| |right#1_0_0@2|)) (not true)) (and (=> (= (ControlFlow 0 72) 66) anon90_Then_correct) (=> (= (ControlFlow 0 72) 71) anon90_Else_correct)))))
(let ((anon88_Else_correct  (=> (<= (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (and (=> (= (ControlFlow 0 73) 65) anon89_Then_correct) (=> (= (ControlFlow 0 73) 72) anon89_Else_correct)))))
(let ((anon87_Else_correct  (=> (< (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (and (=> (= (ControlFlow 0 74) 64) anon88_Then_correct) (=> (= (ControlFlow 0 74) 73) anon88_Else_correct)))))
(let ((anon86_Then_correct  (=> (< |i#0@0| |j#1_0@1|) (and (=> (= (ControlFlow 0 75) 63) anon87_Then_correct) (=> (= (ControlFlow 0 75) 74) anon87_Else_correct)))))
(let ((anon99_Else_correct  (=> (and (>= (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (= (ControlFlow 0 55) 41)) anon68_correct)))
(let ((anon98_Else_correct  (=> (>= (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (and (=> (= (ControlFlow 0 56) 54) anon99_Then_correct) (=> (= (ControlFlow 0 56) 55) anon99_Else_correct)))))
(let ((anon97_Else_correct  (=> (= |left#1_0@1| |right#1_0_0@2|) (and (=> (= (ControlFlow 0 57) 53) anon98_Then_correct) (=> (= (ControlFlow 0 57) 56) anon98_Else_correct)))))
(let ((anon96_Else_correct  (=> (= |left#1_0@1| |right#1_0_0@2|) (and (=> (= (ControlFlow 0 58) 52) anon97_Then_correct) (=> (= (ControlFlow 0 58) 57) anon97_Else_correct)))))
(let ((anon95_Else_correct  (=> (<= (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (and (=> (= (ControlFlow 0 59) 51) anon96_Then_correct) (=> (= (ControlFlow 0 59) 58) anon96_Else_correct)))))
(let ((anon94_Else_correct  (=> (<= (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (and (=> (= (ControlFlow 0 60) 50) anon95_Then_correct) (=> (= (ControlFlow 0 60) 59) anon95_Else_correct)))))
(let ((anon93_Then_correct  (=> (= |i#0@0| |j#1_0@1|) (and (=> (= (ControlFlow 0 61) 49) anon94_Then_correct) (=> (= (ControlFlow 0 61) 60) anon94_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (>= (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (= (ControlFlow 0 42) 41)) anon68_correct)))
(let ((anon105_Then_correct true))
(let ((anon104_Else_correct  (=> (> (|char#ToInt| |left#1_0@1|) (|char#ToInt| |right#1_0_0@2|)) (and (=> (= (ControlFlow 0 43) 40) anon105_Then_correct) (=> (= (ControlFlow 0 43) 42) anon105_Else_correct)))))
(let ((anon104_Then_correct true))
(let ((anon103_Else_correct  (=> (or (not (= |left#1_0@1| |right#1_0_0@2|)) (not true)) (and (=> (= (ControlFlow 0 44) 39) anon104_Then_correct) (=> (= (ControlFlow 0 44) 43) anon104_Else_correct)))))
(let ((anon103_Then_correct true))
(let ((anon102_Else_correct  (=> (or (not (= |left#1_0@1| |right#1_0_0@2|)) (not true)) (and (=> (= (ControlFlow 0 45) 38) anon103_Then_correct) (=> (= (ControlFlow 0 45) 44) anon103_Else_correct)))))
(let ((anon102_Then_correct true))
(let ((anon101_Else_correct  (=> (< (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (and (=> (= (ControlFlow 0 46) 37) anon102_Then_correct) (=> (= (ControlFlow 0 46) 45) anon102_Else_correct)))))
(let ((anon101_Then_correct true))
(let ((anon100_Else_correct  (=> (<= (|char#ToInt| |right#1_0_0@2|) (|char#ToInt| |left#1_0@1|)) (and (=> (= (ControlFlow 0 47) 36) anon101_Then_correct) (=> (= (ControlFlow 0 47) 46) anon101_Else_correct)))))
(let ((anon100_Then_correct true))
(let ((anon93_Else_correct  (=> (or (not (= |i#0@0| |j#1_0@1|)) (not true)) (and (=> (= (ControlFlow 0 48) 35) anon100_Then_correct) (=> (= (ControlFlow 0 48) 47) anon100_Else_correct)))))
(let ((anon86_Else_correct  (=> (<= |j#1_0@1| |i#0@0|) (and (=> (= (ControlFlow 0 62) 61) anon93_Then_correct) (=> (= (ControlFlow 0 62) 48) anon93_Else_correct)))))
(let ((anon85_Else_correct  (=> (or (not (= |j#1_0@1| |j#1_0#hi@1|)) (not true)) (and (=> (= (ControlFlow 0 76) (- 0 77)) (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (|Seq#Length| _module.__default.AllCases)))) (=> (and (<= 0 |j#1_0@1|) (< |j#1_0@1| (|Seq#Length| _module.__default.AllCases))) (=> (= |right#1_0_0@2| ($Unbox charType (|Seq#Index| _module.__default.AllCases |j#1_0@1|))) (and (=> (= (ControlFlow 0 76) 75) anon86_Then_correct) (=> (= (ControlFlow 0 76) 62) anon86_Else_correct))))))))
(let ((anon85_Then_correct true))
(let ((anon84_Else_correct  (=> |$w$loop#1_0@1| (and (=> (= (ControlFlow 0 78) 34) anon85_Then_correct) (=> (= (ControlFlow 0 78) 76) anon85_Else_correct)))))
(let ((anon84_Then_correct true))
(let ((anon83_LoopBody_correct  (and (=> (= (ControlFlow 0 79) 33) anon84_Then_correct) (=> (= (ControlFlow 0 79) 78) anon84_Else_correct))))
(let ((anon83_LoopDone_correct true))
(let ((anon83_LoopHead_correct  (=> ($Is charType |right#1_0_0@1| TChar) (=> (and (and (and (and (and (and (and (and (and (and (and (and (not false) (<= 0 |caseIndex#0@0|)) (= |caseIndex#0#lo@0| 0)) (<= 0 |caseIndex#0#hi@0|)) |$w$loop#0@0|) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |i#0#hi@0|)) |$w$loop#1@0|) (<= 0 |j#1_0@1|)) (= |j#1_0#lo@1| 0)) (<= 0 |j#1_0#hi@1|)) (and (and (and (<= |j#1_0#lo@1| |j#1_0@1|) (<= |j#1_0@1| |j#1_0#hi@1|)) (forall (($o@@1 T@U) ) (!  (=> (and (or (not (= $o@@1 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@1) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@1) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@1)))
 :qid |UnicodeStringsdfy.81:5|
 :skolemid |498|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@1))
))) (and ($HeapSucc $Heap@0 $Heap@0) (forall (($o@@2 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@2 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) $f@@0) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) $f@@0)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@2 $f@@0))))
 :qid |UnicodeStringsdfy.81:5|
 :skolemid |499|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@2) $f@@0))
))))) (and (=> (= (ControlFlow 0 80) 32) anon83_LoopDone_correct) (=> (= (ControlFlow 0 80) 79) anon83_LoopBody_correct))))))
(let ((anon82_Else_correct  (=> (or (not (= |i#0@0| |i#0#hi@0|)) (not true)) (and (=> (= (ControlFlow 0 81) (- 0 83)) (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| _module.__default.AllCases)))) (=> (and (<= 0 |i#0@0|) (< |i#0@0| (|Seq#Length| _module.__default.AllCases))) (=> (= |left#1_0@1| ($Unbox charType (|Seq#Index| _module.__default.AllCases |i#0@0|))) (=> (and (= |j#1_0#lo@1| (LitInt 0)) (= |j#1_0#hi@1| (|Seq#Length| _module.__default.AllCases))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (<= |j#1_0#lo@1| |j#1_0#hi@1|)) (=> (<= |j#1_0#lo@1| |j#1_0#hi@1|) (=> (= (ControlFlow 0 81) 80) anon83_LoopHead_correct))))))))))
(let ((anon82_Then_correct true))
(let ((anon81_Else_correct  (=> |$w$loop#1@0| (and (=> (= (ControlFlow 0 84) 31) anon82_Then_correct) (=> (= (ControlFlow 0 84) 81) anon82_Else_correct)))))
(let ((anon81_Then_correct true))
(let ((anon80_LoopBody_correct  (and (=> (= (ControlFlow 0 85) 30) anon81_Then_correct) (=> (= (ControlFlow 0 85) 84) anon81_Else_correct))))
(let ((anon80_LoopDone_correct true))
(let ((anon80_LoopHead_correct  (=> (and ($Is charType |right#1_0_0@0| TChar) ($Is charType |left#1_0@0| TChar)) (=> (and (and (and (and (and (and (and (and (not false) (<= 0 |caseIndex#0@0|)) (= |caseIndex#0#lo@0| 0)) (<= 0 |caseIndex#0#hi@0|)) |$w$loop#0@0|) (<= 0 |i#0@0|)) (= |i#0#lo@0| 0)) (<= 0 |i#0#hi@0|)) (and (and (and (<= |i#0#lo@0| |i#0@0|) (<= |i#0@0| |i#0#hi@0|)) (forall (($o@@3 T@U) ) (!  (=> (and (or (not (= $o@@3 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@3) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3)))
 :qid |UnicodeStringsdfy.79:3|
 :skolemid |496|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@3))
))) (and ($HeapSucc $Heap@0 $Heap@0) (forall (($o@@4 T@U) ($f@@1 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4) $f@@1) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4) $f@@1)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@4 $f@@1))))
 :qid |UnicodeStringsdfy.79:3|
 :skolemid |497|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@4) $f@@1))
))))) (and (=> (= (ControlFlow 0 86) 29) anon80_LoopDone_correct) (=> (= (ControlFlow 0 86) 85) anon80_LoopBody_correct))))))
(let ((anon72_Then_correct  (=> (= |caseIndex#0@0| |caseIndex#0#hi@0|) (=> (and (= |i#0#lo@0| (LitInt 0)) (= |i#0#hi@0| (|Seq#Length| _module.__default.AllCases))) (and (=> (= (ControlFlow 0 87) (- 0 88)) (<= |i#0#lo@0| |i#0#hi@0|)) (=> (<= |i#0#lo@0| |i#0#hi@0|) (=> (= (ControlFlow 0 87) 86) anon80_LoopHead_correct)))))))
(let ((anon79_Else_correct true))
(let ((anon79_Then_correct true))
(let ((anon78_Else_correct  (=> (= ($Unbox charType (|Seq#Index| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)) |caseIndex#0@0|)) |thisCase#0_0@1|) (and (=> (= (ControlFlow 0 11) (- 0 13)) (and (<= 0 |formIndex#0_0@1|) (< |formIndex#0_0@1| (|Seq#Length| _module.__default.AlternateForms)))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)))))) (and (=> (= (ControlFlow 0 11) 9) anon79_Then_correct) (=> (= (ControlFlow 0 11) 10) anon79_Else_correct)))))))
(let ((anon78_Then_correct true))
(let ((anon77_Else_correct  (=> (= |thisCase#0_0@1| ($Unbox charType (|Seq#Index| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)) |caseIndex#0@0|))) (and (=> (= (ControlFlow 0 14) (- 0 16)) (and (<= 0 |formIndex#0_0@1|) (< |formIndex#0_0@1| (|Seq#Length| _module.__default.AlternateForms)))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)))))) (and (=> (= (ControlFlow 0 14) 8) anon78_Then_correct) (=> (= (ControlFlow 0 14) 11) anon78_Else_correct)))))))
(let ((anon77_Then_correct true))
(let ((anon76_Else_correct  (=> (= |thisCase#0_0@1| ($Unbox charType (|Seq#Index| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)) |caseIndex#0@0|))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (and (<= 0 |formIndex#0_0@1|) (< |formIndex#0_0@1| (|Seq#Length| _module.__default.AlternateForms)))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)))))) (and (=> (= (ControlFlow 0 17) 7) anon77_Then_correct) (=> (= (ControlFlow 0 17) 14) anon77_Else_correct)))))))
(let ((anon76_Then_correct true))
(let ((anon75_Else_correct  (=> (or (not (= |formIndex#0_0@1| |formIndex#0_0#hi@1|)) (not true)) (and (=> (= (ControlFlow 0 20) (- 0 22)) (and (<= 0 |formIndex#0_0@1|) (< |formIndex#0_0@1| (|Seq#Length| _module.__default.AlternateForms)))) (and (=> (= (ControlFlow 0 20) (- 0 21)) (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| ($Unbox SeqType (|Seq#Index| _module.__default.AlternateForms |formIndex#0_0@1|)))))) (and (=> (= (ControlFlow 0 20) 6) anon76_Then_correct) (=> (= (ControlFlow 0 20) 17) anon76_Else_correct)))))))
(let ((anon75_Then_correct true))
(let ((anon74_Else_correct  (=> |$w$loop#0_0@1| (and (=> (= (ControlFlow 0 23) 5) anon75_Then_correct) (=> (= (ControlFlow 0 23) 20) anon75_Else_correct)))))
(let ((anon74_Then_correct true))
(let ((anon73_LoopBody_correct  (and (=> (= (ControlFlow 0 24) 4) anon74_Then_correct) (=> (= (ControlFlow 0 24) 23) anon74_Else_correct))))
(let ((anon73_LoopDone_correct true))
(let ((anon73_LoopHead_correct  (=> (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)) (=> (and (and (and (and (and (and (and (and (not false) (<= 0 |caseIndex#0@0|)) (= |caseIndex#0#lo@0| 0)) (<= 0 |caseIndex#0#hi@0|)) |$w$loop#0@0|) (<= 0 |formIndex#0_0@1|)) (= |formIndex#0_0#lo@1| 0)) (<= 0 |formIndex#0_0#hi@1|)) (and (and (and (<= |formIndex#0_0#lo@1| |formIndex#0_0@1|) (<= |formIndex#0_0@1| |formIndex#0_0#hi@1|)) (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@5) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@5) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |UnicodeStringsdfy.67:5|
 :skolemid |493|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@5))
))) (and ($HeapSucc $Heap@0 $Heap@1) (forall (($o@@6 T@U) ($f@@2 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@6) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@6) $f@@2) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@6) $f@@2)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@2))))
 :qid |UnicodeStringsdfy.67:5|
 :skolemid |494|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@1 $o@@6) $f@@2))
))))) (and (=> (= (ControlFlow 0 25) 3) anon73_LoopDone_correct) (=> (= (ControlFlow 0 25) 24) anon73_LoopBody_correct))))))
(let ((anon72_Else_correct  (=> (or (not (= |caseIndex#0@0| |caseIndex#0#hi@0|)) (not true)) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| _module.__default.AllCases)))) (=> (and (<= 0 |caseIndex#0@0|) (< |caseIndex#0@0| (|Seq#Length| _module.__default.AllCases))) (=> (= |thisCase#0_0@1| ($Unbox charType (|Seq#Index| _module.__default.AllCases |caseIndex#0@0|))) (=> (and (= |formIndex#0_0#lo@1| (LitInt 0)) (= |formIndex#0_0#hi@1| (|Seq#Length| _module.__default.AlternateForms))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (<= |formIndex#0_0#lo@1| |formIndex#0_0#hi@1|)) (=> (<= |formIndex#0_0#lo@1| |formIndex#0_0#hi@1|) (=> (= (ControlFlow 0 26) 25) anon73_LoopHead_correct))))))))))
(let ((anon71_Else_correct  (=> |$w$loop#0@0| (and (=> (= (ControlFlow 0 89) 87) anon72_Then_correct) (=> (= (ControlFlow 0 89) 26) anon72_Else_correct)))))
(let ((anon71_Then_correct true))
(let ((anon70_LoopBody_correct  (and (=> (= (ControlFlow 0 90) 2) anon71_Then_correct) (=> (= (ControlFlow 0 90) 89) anon71_Else_correct))))
(let ((anon70_LoopDone_correct true))
(let ((anon70_LoopHead_correct  (=> (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) ($Is charType |thisCase#0_0@0| TChar)) (=> (and (and (and (and (not false) (<= 0 |caseIndex#0@0|)) (= |caseIndex#0#lo@0| 0)) (<= 0 |caseIndex#0#hi@0|)) (and (and (and (<= |caseIndex#0#lo@0| |caseIndex#0@0|) (<= |caseIndex#0@0| |caseIndex#0#hi@0|)) (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@7) alloc)))) (= (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@7) (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@7)))
 :qid |UnicodeStringsdfy.65:3|
 :skolemid |491|
 :pattern ( (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@7))
))) (and ($HeapSucc $Heap $Heap@0) (forall (($o@@8 T@U) ($f@@3 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@8) alloc)))) (or (= (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8) $f@@3) (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap $o@@8) $f@@3)) (U_2_bool (MapType0Select refType FieldType boolType $_ModifiesFrame@0 $o@@8 $f@@3))))
 :qid |UnicodeStringsdfy.65:3|
 :skolemid |492|
 :pattern ( (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) $Heap@0 $o@@8) $f@@3))
))))) (and (=> (= (ControlFlow 0 91) 1) anon70_LoopDone_correct) (=> (= (ControlFlow 0 91) 90) anon70_LoopBody_correct))))))
(let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#5| null $Heap alloc false)) (=> (and (= |caseIndex#0#lo@0| (LitInt 0)) (= |caseIndex#0#hi@0| (|Seq#Length| _module.__default.AllCases))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (<= |caseIndex#0#lo@0| |caseIndex#0#hi@0|)) (=> (<= |caseIndex#0#lo@0| |caseIndex#0#hi@0|) (=> (= (ControlFlow 0 92) 91) anon70_LoopHead_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and (and ($Is charType |thisCase#0_0| TChar) true) (and ($Is charType |left#1_0| TChar) true)) (and (and ($Is charType |right#1_0_0| TChar) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 94) 92)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
