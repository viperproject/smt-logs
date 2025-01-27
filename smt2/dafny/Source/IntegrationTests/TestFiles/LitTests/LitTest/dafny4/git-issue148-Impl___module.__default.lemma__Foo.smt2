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
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun Tagclass._System.___hPartialFunc0 () T@U)
(declare-fun Tagclass._System.___hTotalFunc0 () T@U)
(declare-fun Tagclass._System.Tuple0 () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun |tytagFamily$_#PartialFunc0| () T@U)
(declare-fun |tytagFamily$_#TotalFunc0| () T@U)
(declare-fun |tytagFamily$_tuple#0| () T@U)
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
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0 (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun Tclass._System.Tuple0 () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun _module.__default.Foo (T@U T@U Int) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.__default.Foo#canCall| (T@U Int) Bool)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc0_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc0_0 (T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun refType () T@T)
(declare-fun FieldType () T@T)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Select (T@T T@T T@U T@U) T@U)
(declare-fun BoxType () T@T)
(declare-fun MapType1Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun MapType1Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType1TypeInv0 (T@T) T@T)
(declare-fun MapType1TypeInv1 (T@T) T@T)
(declare-fun Apply0 (T@U T@U T@U) T@U)
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
(assert (distinct alloc Tagclass._System.___hFunc0 Tagclass._System.___hPartialFunc0 Tagclass._System.___hTotalFunc0 Tagclass._System.Tuple0 |tytagFamily$_#Func0| |tytagFamily$_#PartialFunc0| |tytagFamily$_#TotalFunc0| |tytagFamily$_tuple#0|)
)
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
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
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (= (Ctor HandleTypeType) 3))
(assert (forall ((t0 T@U) (heap T@U) (f T@U) ) (!  (=> (and (and ($IsGoodHeap heap) ($Is HandleTypeType f (Tclass._System.___hFunc0 t0))) (|Set#Equal| (Reads0 t0 $OneHeap f) |Set#Empty|)) (= (Requires0 t0 $OneHeap f) (Requires0 t0 heap f)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0 $OneHeap f) ($IsGoodHeap heap))
 :pattern ( (Requires0 t0 heap f))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert (forall ((|#$R@@0| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc0 |#$R@@0|)) Tagclass._System.___hPartialFunc0) (= (TagFamily (Tclass._System.___hPartialFunc0 |#$R@@0|)) |tytagFamily$_#PartialFunc0|))
 :qid |unknown.0:0|
 :skolemid |438|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@0|))
)))
(assert (forall ((|#$R@@1| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc0 |#$R@@1|)) Tagclass._System.___hTotalFunc0) (= (TagFamily (Tclass._System.___hTotalFunc0 |#$R@@1|)) |tytagFamily$_#TotalFunc0|))
 :qid |unknown.0:0|
 :skolemid |443|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@1|))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._System.Tuple0) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx)) bx) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx) Tclass._System.Tuple0)))
 :qid |unknown.0:0|
 :skolemid |473|
 :pattern ( ($IsBox bx Tclass._System.Tuple0))
)))
(assert (forall (($ly T@U) (|f#0| T@U) (|n#0| Int) ) (! (= (_module.__default.Foo ($LS $ly) |f#0| |n#0|) (_module.__default.Foo $ly |f#0| |n#0|))
 :qid |gitissue148dfy.4:16|
 :skolemid |528|
 :pattern ( (_module.__default.Foo ($LS $ly) |f#0| |n#0|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@0 T@U) (|f#0@@0| T@U) (|n#0@@0| Int) ) (!  (=> (or (|_module.__default.Foo#canCall| (Lit HandleTypeType |f#0@@0|) (LitInt |n#0@@0|)) (and (< 0 $FunctionContextHeight) (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) (<= (LitInt 0) |n#0@@0|)))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (|_module.__default.Foo#canCall| (Lit HandleTypeType |f#0@@0|) (LitInt (- |n#0@@0| 1)))) (= (_module.__default.Foo ($LS $ly@@0) (Lit HandleTypeType |f#0@@0|) (LitInt |n#0@@0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |n#0@@0| (_module.__default.Foo ($LS $ly@@0) (Lit HandleTypeType |f#0@@0|) (LitInt (- |n#0@@0| 1)))))))
 :qid |gitissue148dfy.4:16|
 :weight 3
 :skolemid |534|
 :pattern ( (_module.__default.Foo ($LS $ly@@0) (Lit HandleTypeType |f#0@@0|) (LitInt |n#0@@0|)))
))))
(assert (forall ((t0@@0 T@U) (heap@@0 T@U) (f@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@0))) (= (|Set#Equal| (Reads0 t0@@0 $OneHeap f@@0) |Set#Empty|) (|Set#Equal| (Reads0 t0@@0 heap@@0 f@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@0 $OneHeap f@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads0 t0@@0 heap@@0 f@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@1 T@U) (|f#0@@1| T@U) (|n#0@@1| Int) ) (!  (=> (or (|_module.__default.Foo#canCall| |f#0@@1| |n#0@@1|) (and (< 0 $FunctionContextHeight) (and ($Is HandleTypeType |f#0@@1| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) (<= (LitInt 0) |n#0@@1|)))) (<= (LitInt 0) (_module.__default.Foo $ly@@1 |f#0@@1| |n#0@@1|)))
 :qid |gitissue148dfy.4:16|
 :skolemid |530|
 :pattern ( (_module.__default.Foo $ly@@1 |f#0@@1| |n#0@@1|))
))))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((v T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v) t) ($Is T@@1 v t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v) t))
)))
(assert (forall ((|#$R@@2| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@2|))
)))
(assert (forall ((|#$R@@3| T@U) ) (! (= (Tclass._System.___hPartialFunc0_0 (Tclass._System.___hPartialFunc0 |#$R@@3|)) |#$R@@3|)
 :qid |unknown.0:0|
 :skolemid |439|
 :pattern ( (Tclass._System.___hPartialFunc0 |#$R@@3|))
)))
(assert (forall ((|#$R@@4| T@U) ) (! (= (Tclass._System.___hTotalFunc0_0 (Tclass._System.___hTotalFunc0 |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |444|
 :pattern ( (Tclass._System.___hTotalFunc0 |#$R@@4|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@2 T@U) (|f#0@@2| T@U) (|n#0@@2| Int) ) (!  (=> (or (|_module.__default.Foo#canCall| |f#0@@2| |n#0@@2|) (and (< 0 $FunctionContextHeight) (and ($Is HandleTypeType |f#0@@2| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) (<= (LitInt 0) |n#0@@2|)))) (and (=> (or (not (= |n#0@@2| (LitInt 0))) (not true)) (|_module.__default.Foo#canCall| |f#0@@2| (- |n#0@@2| 1))) (= (_module.__default.Foo ($LS $ly@@2) |f#0@@2| |n#0@@2|) (ite (= |n#0@@2| (LitInt 0)) |n#0@@2| (_module.__default.Foo $ly@@2 |f#0@@2| (- |n#0@@2| 1))))))
 :qid |gitissue148dfy.4:16|
 :skolemid |532|
 :pattern ( (_module.__default.Foo ($LS $ly@@2) |f#0@@2| |n#0@@2|))
))))
(assert  (and (and (and (and (and (and (and (and (and (forall ((t0@@1 T@T) (t1 T@T) (t2 T@T) (val T@U) (m T@U) (x0 T@U) (x1 T@U) ) (! (= (MapType0Select t0@@1 t1 t2 (MapType0Store t0@@1 t1 t2 m x0 x1 val) x0 x1) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (and (forall ((u0 T@T) (u1 T@T) (u2 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (x1@@0 T@U) (y0 T@U) (y1 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 u2 (MapType0Store u0 u1 u2 m@@0 x0@@0 x1@@0 val@@0) y0 y1) (MapType0Select u0 u1 u2 m@@0 y0 y1)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
)) (forall ((u0@@0 T@T) (u1@@0 T@T) (u2@@0 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1@@1 T@U) (y0@@0 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType0Select u0@@0 u1@@0 u2@@0 (MapType0Store u0@@0 u1@@0 u2@@0 m@@1 x0@@1 x1@@1 val@@1) y0@@0 y1@@0) (MapType0Select u0@@0 u1@@0 u2@@0 m@@1 y0@@0 y1@@0)))
 :qid |mapAx1:MapType0Select:1|
 :weight 0
)))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (forall ((t0@@2 T@T) (t1@@0 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) ) (! (= (MapType1Select t0@@2 t1@@0 (MapType1Store t0@@2 t1@@0 m@@2 x0@@2 val@@2) x0@@2) val@@2)
 :qid |mapAx0:MapType1Select|
 :weight 0
))) (forall ((u0@@1 T@T) (u1@@1 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (y0@@1 T@U) ) (!  (or (= x0@@3 y0@@1) (= (MapType1Select u0@@1 u1@@1 (MapType1Store u0@@1 u1@@1 m@@3 x0@@3 val@@3) y0@@1) (MapType1Select u0@@1 u1@@1 m@@3 y0@@1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
))) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |543|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert (forall ((|#$R@@5| T@U) (|f#0@@3| T@U) ) (! (= ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 |#$R@@5|))  (and ($Is HandleTypeType |f#0@@3| (Tclass._System.___hPartialFunc0 |#$R@@5|)) (Requires0 |#$R@@5| $OneHeap |f#0@@3|)))
 :qid |unknown.0:0|
 :skolemid |446|
 :pattern ( ($Is HandleTypeType |f#0@@3| (Tclass._System.___hTotalFunc0 |#$R@@5|)))
)))
(assert (forall ((f@@1 T@U) (t0@@3 T@U) ) (! (= ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@3)) (forall ((h T@U) ) (!  (=> (and ($IsGoodHeap h) (Requires0 t0@@3 h f@@1)) ($IsBox (Apply0 t0@@3 h f@@1) t0@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@3 h f@@1))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@3)))
)))
(assert (forall ((|#$R@@6| T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._System.___hFunc0 |#$R@@6|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@0)) bx@@0) ($Is HandleTypeType ($Unbox HandleTypeType bx@@0) (Tclass._System.___hFunc0 |#$R@@6|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@0 (Tclass._System.___hFunc0 |#$R@@6|)))
)))
(assert (forall ((|#$R@@7| T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._System.___hPartialFunc0 |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@1)) bx@@1) ($Is HandleTypeType ($Unbox HandleTypeType bx@@1) (Tclass._System.___hPartialFunc0 |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |440|
 :pattern ( ($IsBox bx@@1 (Tclass._System.___hPartialFunc0 |#$R@@7|)))
)))
(assert (forall ((|#$R@@8| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hTotalFunc0 |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hTotalFunc0 |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |445|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hTotalFunc0 |#$R@@8|)))
)))
(assert (= (Tag Tclass._System.Tuple0) Tagclass._System.Tuple0))
(assert (= (TagFamily Tclass._System.Tuple0) |tytagFamily$_tuple#0|))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|Set#Equal| a@@0 b@@0) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@0 o@@0) (|Set#IsMember| b@@0 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@0 o@@0))
 :pattern ( (|Set#IsMember| b@@0 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@0 b@@0))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 t0@@4) ($IsBox bx@@3 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@3 t0@@4))
 :pattern ( ($IsBox bx@@3 u0@@2))
))) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)) ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 u0@@2)))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($ly@@3 T@U) (|f#0@@4| T@U) (|n#0@@3| Int) ) (!  (=> (or (|_module.__default.Foo#canCall| |f#0@@4| (LitInt |n#0@@3|)) (and (< 0 $FunctionContextHeight) (and ($Is HandleTypeType |f#0@@4| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) (<= (LitInt 0) |n#0@@3|)))) (and (=> (or (not (= (LitInt |n#0@@3|) (LitInt 0))) (not true)) (|_module.__default.Foo#canCall| |f#0@@4| (LitInt (- |n#0@@3| 1)))) (= (_module.__default.Foo ($LS $ly@@3) |f#0@@4| (LitInt |n#0@@3|)) (ite (= (LitInt |n#0@@3|) (LitInt 0)) |n#0@@3| (_module.__default.Foo ($LS $ly@@3) |f#0@@4| (LitInt (- |n#0@@3| 1)))))))
 :qid |gitissue148dfy.4:16|
 :weight 3
 :skolemid |533|
 :pattern ( (_module.__default.Foo ($LS $ly@@3) |f#0@@4| (LitInt |n#0@@3|)))
))))
(assert (forall ((|#$R@@9| T@U) (|f#0@@5| T@U) ) (! (= ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc0 |#$R@@9|))  (and ($Is HandleTypeType |f#0@@5| (Tclass._System.___hFunc0 |#$R@@9|)) (|Set#Equal| (Reads0 |#$R@@9| $OneHeap |f#0@@5|) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |441|
 :pattern ( ($Is HandleTypeType |f#0@@5| (Tclass._System.___hPartialFunc0 |#$R@@9|)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun $LZ () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.lemma__Foo)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= (ControlFlow 0 2) (- 0 1))) (forall ((|g#1| T@U) ) (!  (=> ($Is HandleTypeType |g#1| (Tclass._System.___hTotalFunc0 Tclass._System.Tuple0)) (= (_module.__default.Foo ($LS ($LS $LZ)) |g#1| (LitInt 0)) (LitInt 0)))
 :qid |gitissue148dfy.11:20|
 :skolemid |541|
 :pattern ( (_module.__default.Foo ($LS ($LS $LZ)) |g#1| 0))
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
