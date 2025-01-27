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
(declare-fun TagSet () T@U)
(declare-fun alloc () T@U)
(declare-fun Tagclass._System.object? () T@U)
(declare-fun Tagclass._System.object () T@U)
(declare-fun Tagclass._System.___hFunc1 () T@U)
(declare-fun Tagclass._System.___hPartialFunc1 () T@U)
(declare-fun Tagclass._System.___hTotalFunc1 () T@U)
(declare-fun Tagclass._module.Nat () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun |##_module.Nat.Zero| () T@U)
(declare-fun |##_module.Nat.Suc| () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun tytagFamily$object () T@U)
(declare-fun |tytagFamily$_#Func1| () T@U)
(declare-fun |tytagFamily$_#PartialFunc1| () T@U)
(declare-fun |tytagFamily$_#TotalFunc1| () T@U)
(declare-fun tytagFamily$Nat () T@U)
(declare-fun tytagFamily$List () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun Tclass._module.List () T@U)
(declare-fun Tclass._module.Nat () T@U)
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
(declare-fun |lambda#28| (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun |Set#Empty| () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.Nat.Zero| () T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc1 (T@U T@U) T@U)
(declare-fun |_module.Nat#Equal| (T@U T@U) Bool)
(declare-fun |_module.List#Equal| (T@U T@U) Bool)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $OneHeap () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun _module.Nat.Zero_q (T@U) Bool)
(declare-fun _module.Nat.Suc_q (T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.takeWhileAlways (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun |_module.__default.takeWhileAlways#canCall| (T@U T@U) Bool)
(declare-fun Tclass._System.___hTotalFunc1 (T@U T@U) T@U)
(declare-fun _module.List._h2 (T@U) T@U)
(declare-fun _module.List._h1 (T@U) T@U)
(declare-fun |$IsA#_module.Nat| (T@U) Bool)
(declare-fun Apply1 (T@U T@U T@U T@U T@U) T@U)
(declare-fun TSet (T@U) T@U)
(declare-fun |_module.__default.AlwaysTrueFunction#canCall| () Bool)
(declare-fun _module.__default.AlwaysTrueFunction () T@U)
(declare-fun AtLayer (T@T T@U T@U) T@U)
(declare-fun |lambda#31| (T@U) T@U)
(declare-fun |lambda#27| (T@U) T@U)
(declare-fun |#_module.Nat.Suc| (T@U) T@U)
(declare-fun |lambda#30| (T@U) T@U)
(declare-fun SetRef_to_SetBox (T@U) T@U)
(declare-fun |lambda#29| (Bool) T@U)
(declare-fun $LZ () T@U)
(declare-fun LayerTypeType () T@T)
(declare-fun Tclass._System.object? () T@U)
(declare-fun Tclass._System.object () T@U)
(declare-fun null () T@U)
(declare-fun _module.Nat._h0 (T@U) T@U)
(declare-fun Requires1 (T@U T@U T@U T@U T@U) Bool)
(declare-fun Tclass._System.___hFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1 (T@U T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hPartialFunc1_1 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_0 (T@U) T@U)
(declare-fun Tclass._System.___hTotalFunc1_1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun DtRank (T@U) Int)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
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
(assert (distinct TagSet alloc Tagclass._System.object? Tagclass._System.object Tagclass._System.___hFunc1 Tagclass._System.___hPartialFunc1 Tagclass._System.___hTotalFunc1 Tagclass._module.Nat Tagclass._module.List |##_module.Nat.Zero| |##_module.Nat.Suc| |##_module.List.Nil| |##_module.List.Cons| tytagFamily$object |tytagFamily$_#Func1| |tytagFamily$_#PartialFunc1| |tytagFamily$_#TotalFunc1| tytagFamily$Nat tytagFamily$List)
)
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List)  (and ($Is DatatypeTypeType |a#24#0#0| Tclass._module.Nat) ($Is DatatypeTypeType |a#24#1#0| Tclass._module.List)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1245|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#24#0#0| |a#24#1#0|) Tclass._module.List))
)))
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
))) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType1Type arg0@@2 arg1)) 4)
 :qid |ctor:MapType1Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType1TypeInv0 (MapType1Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType1TypeInv0|
 :pattern ( (MapType1Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType1TypeInv1 (MapType1Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType1TypeInv1|
 :pattern ( (MapType1Type arg0@@4 arg1@@1))
))) (= (Ctor refType) 5)) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (= (Ctor SetType) 8)))
(assert (forall ((t0@@1 T@U) (t1@@1 T@U) (heap T@U) (h T@U) (r T@U) (rd T@U) (bx0 T@U) (bx T@U) ) (! (= (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx) (|Set#IsMember| (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType rd heap bx0) bx))
 :qid |unknown.0:0|
 :skolemid |372|
 :pattern ( (|Set#IsMember| (Reads1 t0@@1 t1@@1 heap (Handle1 h r rd) bx0) bx))
)))
(assert (forall ((|l#0| T@U) (|$l#0#heap#0| T@U) (|$l#0#n#0| T@U) ) (! (= (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#28| |l#0|) |$l#0#heap#0| |$l#0#n#0|)) ($IsBox |$l#0#n#0| |l#0|))
 :qid |Ripplinglegacydfy.8:10|
 :skolemid |1322|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType (|lambda#28| |l#0|) |$l#0#heap#0| |$l#0#n#0|))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (= (DatatypeCtorId |#_module.Nat.Zero|) |##_module.Nat.Zero|))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (= (Ctor HandleTypeType) 9))
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
(assert ($Is DatatypeTypeType |#_module.Nat.Zero| Tclass._module.Nat))
(assert ($Is DatatypeTypeType |#_module.List.Nil| Tclass._module.List))
(assert (forall ((a T@U) (b T@U) ) (! (= (|_module.Nat#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1238|
 :pattern ( (|_module.Nat#Equal| a b))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (! (= (|_module.List#Equal| a@@0 b@@0) (= a@@0 b@@0))
 :qid |unknown.0:0|
 :skolemid |1258|
 :pattern ( (|_module.List#Equal| a@@0 b@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((t0@@3 T@U) (t1@@3 T@U) (heap@@0 T@U) (f@@0 T@U) (bx0@@0 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) (and ($IsBox bx0@@0 t0@@3) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc1 t0@@3 t1@@3)))) (= (|Set#Equal| (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) |Set#Empty|) (|Set#Equal| (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |385|
 :pattern ( (Reads1 t0@@3 t1@@3 $OneHeap f@@0 bx0@@0) ($IsGoodHeap heap@@0))
 :pattern ( (Reads1 t0@@3 t1@@3 heap@@0 f@@0 bx0@@0))
)))
(assert (forall ((d T@U) ) (! (= (_module.Nat.Zero_q d) (= (DatatypeCtorId d) |##_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1222|
 :pattern ( (_module.Nat.Zero_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Nat.Suc_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Nat.Suc|))
 :qid |unknown.0:0|
 :skolemid |1225|
 :pattern ( (_module.Nat.Suc_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1239|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1242|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_module.List.Cons_q d@@3) (exists ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= d@@3 (|#_module.List.Cons| |a#23#0#0| |a#23#1#0|))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1243|
)))
 :qid |unknown.0:0|
 :skolemid |1244|
 :pattern ( (_module.List.Cons_q d@@3))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly T@U) ($Heap T@U) (|p#0| T@U) (|xs#0| T@U) ) (!  (=> (or (|_module.__default.takeWhileAlways#canCall| |p#0| (Lit DatatypeTypeType |xs#0|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap) ($Is HandleTypeType |p#0| (Tclass._System.___hTotalFunc1 Tclass._module.Nat Tclass._module.Nat))) ($Is DatatypeTypeType |xs#0| Tclass._module.List)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)))))) (let ((|ys#3| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0|)))))
(let ((|y#3| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0|)))))
 (and (|$IsA#_module.Nat| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap |p#0| ($Box DatatypeTypeType |y#3|)))) (=> (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap |p#0| ($Box DatatypeTypeType |y#3|))) |#_module.Nat.Zero|)) (|_module.__default.takeWhileAlways#canCall| |p#0| |ys#3|)))))) (= (_module.__default.takeWhileAlways ($LS $ly) |p#0| (Lit DatatypeTypeType |xs#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0|)) |#_module.List.Nil| (let ((|ys#2| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0|)))))
(let ((|y#2| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0|)))))
(ite  (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap |p#0| ($Box DatatypeTypeType |y#2|))) |#_module.Nat.Zero|)) (|#_module.List.Cons| |y#2| (_module.__default.takeWhileAlways ($LS $ly) |p#0| |ys#2|)) |#_module.List.Nil|)))))))
 :qid |Ripplinglegacydfy.173:16|
 :weight 3
 :skolemid |712|
 :pattern ( (_module.__default.takeWhileAlways ($LS $ly) |p#0| (Lit DatatypeTypeType |xs#0|)) ($IsGoodHeap $Heap))
))))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.Nat.Zero_q d@@4) (= d@@4 |#_module.Nat.Zero|))
 :qid |unknown.0:0|
 :skolemid |1223|
 :pattern ( (_module.Nat.Zero_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1240|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (forall ((v T@U) (t0@@4 T@U) ) (! (= ($Is SetType v (TSet t0@@4)) (forall ((bx@@2 T@U) ) (!  (=> (|Set#IsMember| v bx@@2) ($IsBox bx@@2 t0@@4))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx@@2))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@4)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.AlwaysTrueFunction#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.AlwaysTrueFunction (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#31| (Handle1 (|lambda#27| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Nat.Suc| (Lit DatatypeTypeType |#_module.Nat.Zero|))))) (|lambda#28| Tclass._module.Nat) (|lambda#30| (SetRef_to_SetBox (|lambda#29| false))))) ($LS $LZ)))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.AlwaysTrueFunction#canCall| (< 1 $FunctionContextHeight)) (= _module.__default.AlwaysTrueFunction (Lit HandleTypeType (AtLayer HandleTypeType (|lambda#31| (Handle1 (|lambda#27| ($Box DatatypeTypeType (Lit DatatypeTypeType (|#_module.Nat.Suc| (Lit DatatypeTypeType |#_module.Nat.Zero|))))) (|lambda#28| Tclass._module.Nat) (|lambda#30| (SetRef_to_SetBox (|lambda#29| false))))) ($LS $LZ)))))))
(assert  (=> (<= 1 $FunctionContextHeight) (=> (or |_module.__default.AlwaysTrueFunction#canCall| (< 1 $FunctionContextHeight)) ($Is HandleTypeType _module.__default.AlwaysTrueFunction (Tclass._System.___hTotalFunc1 Tclass._module.Nat Tclass._module.Nat)))))
(assert (= (Ctor LayerTypeType) 10))
(assert (forall ((f@@1 T@U) (ly T@U) (A T@T) ) (! (= (AtLayer A f@@1 ly) (MapType1Select LayerTypeType A f@@1 ly))
 :qid |DafnyPreludebpl.501:18|
 :skolemid |101|
 :pattern ( (AtLayer A f@@1 ly))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.Nat.Suc_q d@@6) (exists ((|a#13#0#0| T@U) ) (! (= d@@6 (|#_module.Nat.Suc| |a#13#0#0|))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1226|
)))
 :qid |unknown.0:0|
 :skolemid |1227|
 :pattern ( (_module.Nat.Suc_q d@@6))
)))
(assert ($IsGoodHeap $OneHeap))
(assert (forall ((s T@U) (bx@@3 T@U) ) (! (= (|Set#IsMember| (SetRef_to_SetBox s) bx@@3) (U_2_bool (MapType1Select refType boolType s ($Unbox refType bx@@3))))
 :qid |DafnyPreludebpl.370:15|
 :skolemid |82|
 :pattern ( (|Set#IsMember| (SetRef_to_SetBox s) bx@@3))
)))
(assert (forall ((t0@@5 T@U) (t1@@4 T@U) (heap@@1 T@U) (h@@0 T@U) (r@@0 T@U) (rd@@0 T@U) (bx0@@1 T@U) ) (! (= (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@0 r@@0 rd@@0) bx0@@1) (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType h@@0 heap@@1 bx0@@1))
 :qid |unknown.0:0|
 :skolemid |370|
 :pattern ( (Apply1 t0@@5 t1@@4 heap@@1 (Handle1 h@@0 r@@0 rd@@0) bx0@@1))
)))
(assert (forall ((bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 Tclass._System.object?) (and (= ($Box refType ($Unbox refType bx@@4)) bx@@4) ($Is refType ($Unbox refType bx@@4) Tclass._System.object?)))
 :qid |unknown.0:0|
 :skolemid |346|
 :pattern ( ($IsBox bx@@4 Tclass._System.object?))
)))
(assert (forall ((bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 Tclass._System.object) (and (= ($Box refType ($Unbox refType bx@@5)) bx@@5) ($Is refType ($Unbox refType bx@@5) Tclass._System.object)))
 :qid |unknown.0:0|
 :skolemid |349|
 :pattern ( ($IsBox bx@@5 Tclass._System.object))
)))
(assert (forall ((bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 Tclass._module.Nat) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) Tclass._module.Nat)))
 :qid |unknown.0:0|
 :skolemid |592|
 :pattern ( ($IsBox bx@@6 Tclass._module.Nat))
)))
(assert (forall ((bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 Tclass._module.List) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@7)) bx@@7) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@7) Tclass._module.List)))
 :qid |unknown.0:0|
 :skolemid |642|
 :pattern ( ($IsBox bx@@7 Tclass._module.List))
)))
(assert (forall ((|a#14#0#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat) ($Is DatatypeTypeType |a#14#0#0| Tclass._module.Nat))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1228|
 :pattern ( ($Is DatatypeTypeType (|#_module.Nat.Suc| |a#14#0#0|) Tclass._module.Nat))
)))
(assert (forall ((|c#0| T@U) ) (! (= ($Is refType |c#0| Tclass._System.object)  (and ($Is refType |c#0| Tclass._System.object?) (or (not (= |c#0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |350|
 :pattern ( ($Is refType |c#0| Tclass._System.object))
 :pattern ( ($Is refType |c#0| Tclass._System.object?))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) ) (!  (=> (and (_module.Nat.Suc_q a@@1) (_module.Nat.Suc_q b@@1)) (= (|_module.Nat#Equal| a@@1 b@@1) (|_module.Nat#Equal| (_module.Nat._h0 a@@1) (_module.Nat._h0 b@@1))))
 :qid |unknown.0:0|
 :skolemid |1237|
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Suc_q a@@1))
 :pattern ( (|_module.Nat#Equal| a@@1 b@@1) (_module.Nat.Suc_q b@@1))
)))
(assert (forall (($ly@@0 T@U) (|p#0@@0| T@U) (|xs#0@@0| T@U) ) (! (= (_module.__default.takeWhileAlways ($LS $ly@@0) |p#0@@0| |xs#0@@0|) (_module.__default.takeWhileAlways $ly@@0 |p#0@@0| |xs#0@@0|))
 :qid |Ripplinglegacydfy.173:16|
 :skolemid |707|
 :pattern ( (_module.__default.takeWhileAlways ($LS $ly@@0) |p#0@@0| |xs#0@@0|))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (|$IsA#_module.Nat| d@@7) (or (_module.Nat.Zero_q d@@7) (_module.Nat.Suc_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1234|
 :pattern ( (|$IsA#_module.Nat| d@@7))
)))
(assert (forall ((|l#0@@0| Bool) (|$l#0#o#0| T@U) ) (! (= (U_2_bool (MapType1Select refType boolType (|lambda#29| |l#0@@0|) |$l#0#o#0|)) |l#0@@0|)
 :qid |unknown.0:0|
 :skolemid |1323|
 :pattern ( (MapType1Select refType boolType (|lambda#29| |l#0@@0|) |$l#0#o#0|))
)))
(assert (forall ((|l#0@@1| T@U) (|$l#0#ly#0| T@U) ) (! (= (MapType1Select LayerTypeType HandleTypeType (|lambda#31| |l#0@@1|) |$l#0#ly#0|) |l#0@@1|)
 :qid |Ripplinglegacydfy.286:52|
 :skolemid |1325|
 :pattern ( (MapType1Select LayerTypeType HandleTypeType (|lambda#31| |l#0@@1|) |$l#0#ly#0|))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (|Set#Equal| a@@2 b@@2) (= a@@2 b@@2))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a@@2 b@@2))
)))
(assert (forall ((d@@8 T@U) ) (!  (=> ($Is DatatypeTypeType d@@8 Tclass._module.Nat) (or (_module.Nat.Zero_q d@@8) (_module.Nat.Suc_q d@@8)))
 :qid |unknown.0:0|
 :skolemid |1235|
 :pattern ( (_module.Nat.Suc_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Nat))
 :pattern ( (_module.Nat.Zero_q d@@8) ($Is DatatypeTypeType d@@8 Tclass._module.Nat))
)))
(assert (forall ((d@@9 T@U) ) (!  (=> ($Is DatatypeTypeType d@@9 Tclass._module.List) (or (_module.List.Nil_q d@@9) (_module.List.Cons_q d@@9)))
 :qid |unknown.0:0|
 :skolemid |1255|
 :pattern ( (_module.List.Cons_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.List))
 :pattern ( (_module.List.Nil_q d@@9) ($Is DatatypeTypeType d@@9 Tclass._module.List))
)))
(assert (forall ((f@@2 T@U) (t0@@6 T@U) (t1@@5 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5)) (forall ((h@@1 T@U) (bx0@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap h@@1) ($IsBox bx0@@2 t0@@6)) (Requires1 t0@@6 t1@@5 h@@1 f@@2 bx0@@2)) ($IsBox (Apply1 t0@@6 t1@@5 h@@1 f@@2 bx0@@2) t1@@5))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |387|
 :pattern ( (Apply1 t0@@6 t1@@5 h@@1 f@@2 bx0@@2))
)))
 :qid |unknown.0:0|
 :skolemid |388|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc1 t0@@6 t1@@5)))
)))
(assert (forall ((a@@3 T@U) (b@@3 T@U) ) (!  (=> (and (_module.List.Cons_q a@@3) (_module.List.Cons_q b@@3)) (= (|_module.List#Equal| a@@3 b@@3)  (and (|_module.Nat#Equal| (_module.List._h1 a@@3) (_module.List._h1 b@@3)) (|_module.List#Equal| (_module.List._h2 a@@3) (_module.List._h2 b@@3)))))
 :qid |unknown.0:0|
 :skolemid |1257|
 :pattern ( (|_module.List#Equal| a@@3 b@@3) (_module.List.Cons_q a@@3))
 :pattern ( (|_module.List#Equal| a@@3 b@@3) (_module.List.Cons_q b@@3))
)))
(assert (forall ((v@@0 T@U) (t T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t) ($Is T@@1 v@@0 t))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t))
)))
(assert (forall ((t0@@7 T@U) (t1@@6 T@U) (heap@@2 T@U) (h@@2 T@U) (r@@1 T@U) (rd@@1 T@U) (bx0@@3 T@U) ) (!  (=> (U_2_bool (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType boolType r@@1 heap@@2 bx0@@3)) (Requires1 t0@@7 t1@@6 heap@@2 (Handle1 h@@2 r@@1 rd@@1) bx0@@3))
 :qid |unknown.0:0|
 :skolemid |371|
 :pattern ( (Requires1 t0@@7 t1@@6 heap@@2 (Handle1 h@@2 r@@1 rd@@1) bx0@@3))
)))
(assert (forall ((a@@4 T@U) (b@@4 T@U) ) (!  (=> (and (_module.Nat.Zero_q a@@4) (_module.Nat.Zero_q b@@4)) (|_module.Nat#Equal| a@@4 b@@4))
 :qid |unknown.0:0|
 :skolemid |1236|
 :pattern ( (|_module.Nat#Equal| a@@4 b@@4) (_module.Nat.Zero_q a@@4))
 :pattern ( (|_module.Nat#Equal| a@@4 b@@4) (_module.Nat.Zero_q b@@4))
)))
(assert (forall ((a@@5 T@U) (b@@5 T@U) ) (!  (=> (and (_module.List.Nil_q a@@5) (_module.List.Nil_q b@@5)) (|_module.List#Equal| a@@5 b@@5))
 :qid |unknown.0:0|
 :skolemid |1256|
 :pattern ( (|_module.List#Equal| a@@5 b@@5) (_module.List.Nil_q a@@5))
 :pattern ( (|_module.List#Equal| a@@5 b@@5) (_module.List.Nil_q b@@5))
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
(assert (forall ((|#$T0@@1| T@U) (|#$R@@1| T@U) ) (! (= (Tclass._System.___hPartialFunc1_0 (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|)) |#$T0@@1|)
 :qid |unknown.0:0|
 :skolemid |398|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@1| |#$R@@1|))
)))
(assert (forall ((|#$T0@@2| T@U) (|#$R@@2| T@U) ) (! (= (Tclass._System.___hPartialFunc1_1 (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|)) |#$R@@2|)
 :qid |unknown.0:0|
 :skolemid |399|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@2| |#$R@@2|))
)))
(assert (forall ((|#$T0@@3| T@U) (|#$R@@3| T@U) ) (! (= (Tclass._System.___hTotalFunc1_0 (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|)) |#$T0@@3|)
 :qid |unknown.0:0|
 :skolemid |405|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@3| |#$R@@3|))
)))
(assert (forall ((|#$T0@@4| T@U) (|#$R@@4| T@U) ) (! (= (Tclass._System.___hTotalFunc1_1 (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|)) |#$R@@4|)
 :qid |unknown.0:0|
 :skolemid |406|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@4| |#$R@@4|))
)))
(assert (forall ((|a#22#0#0| T@U) (|a#22#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#22#0#0| |a#22#1#0|)) |##_module.List.Cons|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1241|
 :pattern ( (|#_module.List.Cons| |a#22#0#0| |a#22#1#0|))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= (_module.List._h1 (|#_module.List.Cons| |a#26#0#0| |a#26#1#0|)) |a#26#0#0|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1249|
 :pattern ( (|#_module.List.Cons| |a#26#0#0| |a#26#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (= (_module.List._h2 (|#_module.List.Cons| |a#28#0#0| |a#28#1#0|)) |a#28#1#0|)
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1251|
 :pattern ( (|#_module.List.Cons| |a#28#0#0| |a#28#1#0|))
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
(assert (forall ((|a#12#0#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Nat.Suc| |a#12#0#0|)) |##_module.Nat.Suc|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1224|
 :pattern ( (|#_module.Nat.Suc| |a#12#0#0|))
)))
(assert (forall ((|a#16#0#0| T@U) ) (! (= (_module.Nat._h0 (|#_module.Nat.Suc| |a#16#0#0|)) |a#16#0#0|)
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1231|
 :pattern ( (|#_module.Nat.Suc| |a#16#0#0|))
)))
(assert (forall ((x@@4 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@4))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (< (DtRank |a#27#0#0|) (DtRank (|#_module.List.Cons| |a#27#0#0| |a#27#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1250|
 :pattern ( (|#_module.List.Cons| |a#27#0#0| |a#27#1#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (< (DtRank |a#29#1#0|) (DtRank (|#_module.List.Cons| |a#29#0#0| |a#29#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1252|
 :pattern ( (|#_module.List.Cons| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((|#$T0@@5| T@U) (|#$R@@5| T@U) (|f#0| T@U) ) (! (= ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|))  (and ($Is HandleTypeType |f#0| (Tclass._System.___hPartialFunc1 |#$T0@@5| |#$R@@5|)) (forall ((|x0#0| T@U) ) (!  (=> ($IsBox |x0#0| |#$T0@@5|) (Requires1 |#$T0@@5| |#$R@@5| $OneHeap |f#0| |x0#0|))
 :qid |unknown.0:0|
 :skolemid |408|
))))
 :qid |unknown.0:0|
 :skolemid |409|
 :pattern ( ($Is HandleTypeType |f#0| (Tclass._System.___hTotalFunc1 |#$T0@@5| |#$R@@5|)))
)))
(assert (forall ((|#$T0@@6| T@U) (|#$R@@6| T@U) (|f#0@@0| T@U) ) (! (= ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|))  (and ($Is HandleTypeType |f#0@@0| (Tclass._System.___hFunc1 |#$T0@@6| |#$R@@6|)) (forall ((|x0#0@@0| T@U) ) (!  (=> ($IsBox |x0#0@@0| |#$T0@@6|) (|Set#Equal| (Reads1 |#$T0@@6| |#$R@@6| $OneHeap |f#0@@0| |x0#0@@0|) |Set#Empty|))
 :qid |unknown.0:0|
 :skolemid |401|
))))
 :qid |unknown.0:0|
 :skolemid |402|
 :pattern ( ($Is HandleTypeType |f#0@@0| (Tclass._System.___hPartialFunc1 |#$T0@@6| |#$R@@6|)))
)))
(assert (forall ((f@@3 T@U) (ly@@0 T@U) (A@@0 T@T) ) (! (= (AtLayer A@@0 f@@3 ($LS ly@@0)) (AtLayer A@@0 f@@3 ly@@0))
 :qid |DafnyPreludebpl.502:18|
 :skolemid |102|
 :pattern ( (AtLayer A@@0 f@@3 ($LS ly@@0)))
)))
(assert (forall ((|#$T0@@7| T@U) (|#$R@@7| T@U) (bx@@8 T@U) ) (!  (=> ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@8)) bx@@8) ($Is HandleTypeType ($Unbox HandleTypeType bx@@8) (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|))))
 :qid |unknown.0:0|
 :skolemid |369|
 :pattern ( ($IsBox bx@@8 (Tclass._System.___hFunc1 |#$T0@@7| |#$R@@7|)))
)))
(assert (forall ((|#$T0@@8| T@U) (|#$R@@8| T@U) (bx@@9 T@U) ) (!  (=> ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@9)) bx@@9) ($Is HandleTypeType ($Unbox HandleTypeType bx@@9) (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|))))
 :qid |unknown.0:0|
 :skolemid |400|
 :pattern ( ($IsBox bx@@9 (Tclass._System.___hPartialFunc1 |#$T0@@8| |#$R@@8|)))
)))
(assert (forall ((|#$T0@@9| T@U) (|#$R@@9| T@U) (bx@@10 T@U) ) (!  (=> ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@10)) bx@@10) ($Is HandleTypeType ($Unbox HandleTypeType bx@@10) (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|))))
 :qid |unknown.0:0|
 :skolemid |407|
 :pattern ( ($IsBox bx@@10 (Tclass._System.___hTotalFunc1 |#$T0@@9| |#$R@@9|)))
)))
(assert (forall ((|a#17#0#0| T@U) ) (! (< (DtRank |a#17#0#0|) (DtRank (|#_module.Nat.Suc| |a#17#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1232|
 :pattern ( (|#_module.Nat.Suc| |a#17#0#0|))
)))
(assert (forall ((|l#0@@2| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@0 T@U) ($f T@U) ) (! (= (U_2_bool (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))  (=> (and (or (not (= $o@@0 |l#0@@2|)) (not true)) (U_2_bool ($Unbox boolType (MapType1Select FieldType BoxType (MapType1Select refType (MapType1Type FieldType BoxType) |l#1| $o@@0) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1320|
 :pattern ( (MapType0Select refType FieldType boolType (|lambda#0| |l#0@@2| |l#1| |l#2| |l#3|) $o@@0 $f))
)))
(assert (forall ((|#$T0@@10| T@U) (|#$R@@10| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) Tagclass._System.___hFunc1) (= (TagFamily (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|)) |tytagFamily$_#Func1|))
 :qid |unknown.0:0|
 :skolemid |366|
 :pattern ( (Tclass._System.___hFunc1 |#$T0@@10| |#$R@@10|))
)))
(assert (forall ((|#$T0@@11| T@U) (|#$R@@11| T@U) ) (!  (and (= (Tag (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) Tagclass._System.___hPartialFunc1) (= (TagFamily (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|)) |tytagFamily$_#PartialFunc1|))
 :qid |unknown.0:0|
 :skolemid |397|
 :pattern ( (Tclass._System.___hPartialFunc1 |#$T0@@11| |#$R@@11|))
)))
(assert (forall ((|#$T0@@12| T@U) (|#$R@@12| T@U) ) (!  (and (= (Tag (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) Tagclass._System.___hTotalFunc1) (= (TagFamily (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|)) |tytagFamily$_#TotalFunc1|))
 :qid |unknown.0:0|
 :skolemid |404|
 :pattern ( (Tclass._System.___hTotalFunc1 |#$T0@@12| |#$R@@12|))
)))
(assert (forall ((t0@@8 T@U) (t1@@7 T@U) (heap@@3 T@U) (f@@4 T@U) (bx0@@4 T@U) ) (!  (=> (and (and ($IsGoodHeap heap@@3) (and ($IsBox bx0@@4 t0@@8) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc1 t0@@8 t1@@7)))) (|Set#Equal| (Reads1 t0@@8 t1@@7 $OneHeap f@@4 bx0@@4) |Set#Empty|)) (= (Requires1 t0@@8 t1@@7 $OneHeap f@@4 bx0@@4) (Requires1 t0@@8 t1@@7 heap@@3 f@@4 bx0@@4)))
 :qid |unknown.0:0|
 :skolemid |386|
 :pattern ( (Requires1 t0@@8 t1@@7 $OneHeap f@@4 bx0@@4) ($IsGoodHeap heap@@3))
 :pattern ( (Requires1 t0@@8 t1@@7 heap@@3 f@@4 bx0@@4))
)))
(assert (forall ((bx@@11 T@U) (t@@2 T@U) ) (!  (=> ($IsBox bx@@11 (TSet t@@2)) (and (= ($Box SetType ($Unbox SetType bx@@11)) bx@@11) ($Is SetType ($Unbox SetType bx@@11) (TSet t@@2))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@11 (TSet t@@2)))
)))
(assert (= (Tag Tclass._System.object?) Tagclass._System.object?))
(assert (= (TagFamily Tclass._System.object?) tytagFamily$object))
(assert (= (Tag Tclass._System.object) Tagclass._System.object))
(assert (= (TagFamily Tclass._System.object) tytagFamily$object))
(assert (= (Tag Tclass._module.Nat) Tagclass._module.Nat))
(assert (= (TagFamily Tclass._module.Nat) tytagFamily$Nat))
(assert (= (Tag Tclass._module.List) Tagclass._module.List))
(assert (= (TagFamily Tclass._module.List) tytagFamily$List))
(assert (= |#_module.Nat.Zero| (Lit DatatypeTypeType |#_module.Nat.Zero|)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((s@@0 T@U) ) (! ($Is SetType (SetRef_to_SetBox s@@0) (TSet Tclass._System.object?))
 :qid |DafnyPreludebpl.372:15|
 :skolemid |83|
 :pattern ( (SetRef_to_SetBox s@@0))
)))
(assert (forall ((a@@6 T@U) (b@@6 T@U) ) (! (= (|Set#Equal| a@@6 b@@6) (forall ((o@@0 T@U) ) (! (= (|Set#IsMember| a@@6 o@@0) (|Set#IsMember| b@@6 o@@0))
 :qid |DafnyPreludebpl.783:19|
 :skolemid |148|
 :pattern ( (|Set#IsMember| a@@6 o@@0))
 :pattern ( (|Set#IsMember| b@@6 o@@0))
)))
 :qid |DafnyPreludebpl.780:15|
 :skolemid |149|
 :pattern ( (|Set#Equal| a@@6 b@@6))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@1 T@U) ($Heap@@0 T@U) (|p#0@@1| T@U) (|xs#0@@1| T@U) ) (!  (=> (or (|_module.__default.takeWhileAlways#canCall| (Lit HandleTypeType |p#0@@1|) (Lit DatatypeTypeType |xs#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@0) ($Is HandleTypeType |p#0@@1| (Tclass._System.___hTotalFunc1 Tclass._module.Nat Tclass._module.Nat))) ($Is DatatypeTypeType |xs#0@@1| Tclass._module.List)))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)))))) (let ((|ys#5| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|y#5| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@1|)))))
 (and (|$IsA#_module.Nat| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@0 (Lit HandleTypeType |p#0@@1|) ($Box DatatypeTypeType |y#5|)))) (=> (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@0 (Lit HandleTypeType |p#0@@1|) ($Box DatatypeTypeType |y#5|))) |#_module.Nat.Zero|)) (|_module.__default.takeWhileAlways#canCall| (Lit HandleTypeType |p#0@@1|) |ys#5|)))))) (= (_module.__default.takeWhileAlways ($LS $ly@@1) (Lit HandleTypeType |p#0@@1|) (Lit DatatypeTypeType |xs#0@@1|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |xs#0@@1|)) |#_module.List.Nil| (let ((|ys#4| (Lit DatatypeTypeType (_module.List._h2 (Lit DatatypeTypeType |xs#0@@1|)))))
(let ((|y#4| (Lit DatatypeTypeType (_module.List._h1 (Lit DatatypeTypeType |xs#0@@1|)))))
(ite  (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@0 (Lit HandleTypeType |p#0@@1|) ($Box DatatypeTypeType |y#4|))) |#_module.Nat.Zero|)) (|#_module.List.Cons| |y#4| (Lit DatatypeTypeType (_module.__default.takeWhileAlways ($LS $ly@@1) (Lit HandleTypeType |p#0@@1|) |ys#4|))) |#_module.List.Nil|)))))))
 :qid |Ripplinglegacydfy.173:16|
 :weight 3
 :skolemid |713|
 :pattern ( (_module.__default.takeWhileAlways ($LS $ly@@1) (Lit HandleTypeType |p#0@@1|) (Lit DatatypeTypeType |xs#0@@1|)) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#25#0#0| |a#25#1#0|)))
 :qid |Ripplinglegacydfy.10:28|
 :skolemid |1248|
 :pattern ( (|#_module.List.Cons| (Lit DatatypeTypeType |a#25#0#0|) (Lit DatatypeTypeType |a#25#1#0|)))
)))
(assert (forall ((|a#15#0#0| T@U) ) (! (= (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)) (Lit DatatypeTypeType (|#_module.Nat.Suc| |a#15#0#0|)))
 :qid |Ripplinglegacydfy.8:27|
 :skolemid |1230|
 :pattern ( (|#_module.Nat.Suc| (Lit DatatypeTypeType |a#15#0#0|)))
)))
(assert (forall ((x@@5 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@5)) (Lit BoxType ($Box T@@3 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@5)))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@2 T@U) (|p#0@@2| T@U) (|xs#0@@2| T@U) ) (!  (=> (or (|_module.__default.takeWhileAlways#canCall| |p#0@@2| |xs#0@@2|) (and (< 2 $FunctionContextHeight) (and ($Is HandleTypeType |p#0@@2| (Tclass._System.___hTotalFunc1 Tclass._module.Nat Tclass._module.Nat)) ($Is DatatypeTypeType |xs#0@@2| Tclass._module.List)))) ($Is DatatypeTypeType (_module.__default.takeWhileAlways $ly@@2 |p#0@@2| |xs#0@@2|) Tclass._module.List))
 :qid |Ripplinglegacydfy.173:16|
 :skolemid |709|
 :pattern ( (_module.__default.takeWhileAlways $ly@@2 |p#0@@2| |xs#0@@2|))
))))
(assert  (=> (<= 2 $FunctionContextHeight) (forall (($ly@@3 T@U) ($Heap@@1 T@U) (|p#0@@3| T@U) (|xs#0@@3| T@U) ) (!  (=> (or (|_module.__default.takeWhileAlways#canCall| |p#0@@3| |xs#0@@3|) (and (< 2 $FunctionContextHeight) (and (and ($IsGoodHeap $Heap@@1) ($Is HandleTypeType |p#0@@3| (Tclass._System.___hTotalFunc1 Tclass._module.Nat Tclass._module.Nat))) ($Is DatatypeTypeType |xs#0@@3| Tclass._module.List)))) (and (=> (not (_module.List.Nil_q |xs#0@@3|)) (let ((|ys#1| (_module.List._h2 |xs#0@@3|)))
(let ((|y#1| (_module.List._h1 |xs#0@@3|)))
 (and (|$IsA#_module.Nat| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@1 |p#0@@3| ($Box DatatypeTypeType |y#1|)))) (=> (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@1 |p#0@@3| ($Box DatatypeTypeType |y#1|))) |#_module.Nat.Zero|)) (|_module.__default.takeWhileAlways#canCall| |p#0@@3| |ys#1|)))))) (= (_module.__default.takeWhileAlways ($LS $ly@@3) |p#0@@3| |xs#0@@3|) (ite (_module.List.Nil_q |xs#0@@3|) |#_module.List.Nil| (let ((|ys#0| (_module.List._h2 |xs#0@@3|)))
(let ((|y#0| (_module.List._h1 |xs#0@@3|)))
(ite  (not (|_module.Nat#Equal| ($Unbox DatatypeTypeType (Apply1 Tclass._module.Nat Tclass._module.Nat $Heap@@1 |p#0@@3| ($Box DatatypeTypeType |y#0|))) |#_module.Nat.Zero|)) (|#_module.List.Cons| |y#0| (_module.__default.takeWhileAlways $ly@@3 |p#0@@3| |ys#0|)) |#_module.List.Nil|)))))))
 :qid |Ripplinglegacydfy.173:16|
 :skolemid |711|
 :pattern ( (_module.__default.takeWhileAlways ($LS $ly@@3) |p#0@@3| |xs#0@@3|) ($IsGoodHeap $Heap@@1))
))))
(assert (forall ((|l#0@@3| T@U) (|$l#0#heap#0@@0| T@U) (|$l#0#n#0@@0| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#27| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#n#0@@0|) |l#0@@3|)
 :qid |Ripplinglegacydfy.286:57|
 :skolemid |1321|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType BoxType (|lambda#27| |l#0@@3|) |$l#0#heap#0@@0| |$l#0#n#0@@0|))
)))
(assert (forall ((|l#0@@4| T@U) (|$l#0#heap#0@@1| T@U) (|$l#0#n#0@@1| T@U) ) (! (= (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#30| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#n#0@@1|) |l#0@@4|)
 :qid |Ripplinglegacydfy.286:52|
 :skolemid |1324|
 :pattern ( (MapType0Select (MapType1Type refType (MapType1Type FieldType BoxType)) BoxType SetType (|lambda#30| |l#0@@4|) |$l#0#heap#0@@1| |$l#0#n#0@@1|))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@2 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.__default.P36)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@2 alloc false)) (= (ControlFlow 0 2) (- 0 1))) (forall ((|xs#1| T@U) ) (!  (=> ($Is DatatypeTypeType |xs#1| Tclass._module.List) (|_module.List#Equal| (_module.__default.takeWhileAlways ($LS ($LS $LZ)) (Lit HandleTypeType _module.__default.AlwaysTrueFunction) |xs#1|) |xs#1|))
 :qid |Ripplinglegacydfy.482:18|
 :skolemid |1066|
 :pattern ( (_module.__default.takeWhileAlways ($LS ($LS $LZ)) _module.__default.AlwaysTrueFunction |xs#1|))
)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and ($IsGoodHeap $Heap@@2) ($IsHeapAnchor $Heap@@2)) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
