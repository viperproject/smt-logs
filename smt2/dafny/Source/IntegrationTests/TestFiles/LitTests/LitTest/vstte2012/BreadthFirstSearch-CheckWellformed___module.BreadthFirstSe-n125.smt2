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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.List () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch? () T@U)
(declare-fun Tagclass._module.BreadthFirstSearch () T@U)
(declare-fun |##_module.List.Nil| () T@U)
(declare-fun |##_module.List.Cons| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$BreadthFirstSearch () T@U)
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
(declare-fun _module.BreadthFirstSearch.Find (T@U T@U T@U T@U T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Find#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun null () T@U)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.BreadthFirstSearch (T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun MapType () T@T)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun Tclass._module.List (T@U) T@U)
(declare-fun _module.BreadthFirstSearch.ValidMap (T@U T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun _module.BreadthFirstSearch.IsPath (T@U T@U T@U T@U T@U T@U) Bool)
(declare-fun $LS (T@U) T@U)
(declare-fun $LZ () T@U)
(declare-fun DatatypeTypeType () T@T)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.BreadthFirstSearch? (T@U) T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#_module.List.Nil| () T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |#_module.List.Cons| (T@U T@U) T@U)
(declare-fun |Set#Subset| (T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.IsPath#canCall| (T@U T@U T@U T@U T@U) Bool)
(declare-fun _module.List.Nil_q (T@U) Bool)
(declare-fun _module.List.tail (T@U) T@U)
(declare-fun _module.List.head (T@U) T@U)
(declare-fun |_module.BreadthFirstSearch.Succ#canCall| (T@U T@U T@U) Bool)
(declare-fun _module.BreadthFirstSearch.Succ (T@U T@U T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun _module.List.Cons_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |Map#Equal| (T@U T@U) Bool)
(declare-fun |_module.BreadthFirstSearch.ValidMap#canCall| (T@U T@U T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun Tclass._module.List_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch?_0 (T@U) T@U)
(declare-fun Tclass._module.BreadthFirstSearch_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun |Map#Values| (T@U) T@U)
(declare-fun |Map#Items| (T@U) T@U)
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
(assert (distinct TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.List Tagclass._module.BreadthFirstSearch? Tagclass._module.BreadthFirstSearch |##_module.List.Nil| |##_module.List.Cons| |tytagFamily$_tuple#2| tytagFamily$List tytagFamily$BreadthFirstSearch)
)
(assert  (and (and (= (Ctor refType) 3) (= (Ctor MapType) 4)) (= (Ctor DatatypeTypeType) 5)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex T@U) (this T@U) (|source#0| T@U) (|x#0| T@U) (|m#0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this null)) (not true)) ($Is refType this (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex))) ($IsBox |source#0| _module.BreadthFirstSearch$Vertex)) ($IsBox |x#0| _module.BreadthFirstSearch$Vertex)) ($Is MapType |m#0| (TMap _module.BreadthFirstSearch$Vertex (Tclass._module.List _module.BreadthFirstSearch$Vertex)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex this |source#0| |m#0|) (|Set#IsMember| (|Map#Domain| |m#0|) |x#0|))))) (and (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex ($LS $LZ) this |source#0| |x#0| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|)) ($Is DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|) (Tclass._module.List _module.BreadthFirstSearch$Vertex))))
 :qid |unknown.0:0|
 :skolemid |782|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex this |source#0| |x#0| |m#0|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@0 T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $h) ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@0) $h))
 :qid |unknown.0:0|
 :skolemid |834|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@0) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@0) $h))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (= (DatatypeCtorId |#_module.List.Nil|) |##_module.List.Nil|))
(assert (forall ((_module.List$T T@U) ($h@@0 T@U) ) (!  (=> ($IsGoodHeap $h@@0) ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
 :qid |unknown.0:0|
 :skolemid |838|
 :pattern ( ($IsAlloc DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T) $h@@0))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 6)) (= (Ctor BoxType) 7)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 8)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@1 T@U) ($o T@U) ($h@@1 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |603|
 :pattern ( ($IsAlloc refType $o (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@1) $h@@1))
)))
(assert (forall ((_module.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |837|
 :pattern ( ($Is DatatypeTypeType |#_module.List.Nil| (Tclass._module.List _module.List$T@@0)))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= (Lit T x@@2) x@@2)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |15|
 :pattern ( (Lit T x@@2))
)))
(assert (forall ((_module.List$T@@1 T@U) (|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1))  (and ($IsBox |a#6#0#0| _module.List$T@@1) ($Is DatatypeTypeType |a#6#1#0| (Tclass._module.List _module.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |843|
 :pattern ( ($Is DatatypeTypeType (|#_module.List.Cons| |a#6#0#0| |a#6#1#0|) (Tclass._module.List _module.List$T@@1)))
)))
(assert (forall ((a T@U) (b T@U) ) (! (= (|Set#Subset| a b) (forall ((o T@U) ) (!  (=> (|Set#IsMember| a o) (|Set#IsMember| b o))
 :qid |DafnyPreludebpl.774:19|
 :skolemid |146|
 :pattern ( (|Set#IsMember| a o))
 :pattern ( (|Set#IsMember| b o))
)))
 :qid |DafnyPreludebpl.771:15|
 :skolemid |147|
 :pattern ( (|Set#Subset| a b))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@2 T@U) ($ly T@U) (this@@0 T@U) (|source#0@@0| T@U) (|dest#0| T@U) (|p#0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@0 null)) (not true)) ($Is refType this@@0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@2))) ($IsBox |source#0@@0| _module.BreadthFirstSearch$Vertex@@2)) ($IsBox |dest#0| _module.BreadthFirstSearch$Vertex@@2)) ($Is DatatypeTypeType |p#0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@2))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)))))) (let ((|tail#3| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#3| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |v#3|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@2 this@@0 |v#3|) |dest#0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@2 this@@0 |source#0@@0| |v#3| |tail#3|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) this@@0 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0|)) (= |source#0@@0| |dest#0|) (let ((|tail#2| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0|)))))
(let ((|v#2| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@2 this@@0 |v#2|) |dest#0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) this@@0 |source#0@@0| |v#2| |tail#2|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |615|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@2 ($LS $ly) this@@0 |source#0@@0| |dest#0| (Lit DatatypeTypeType |p#0|)))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@2 T@U) ) (!  (=> ($IsGoodHeap $h@@2) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h@@2) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h@@2))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h@@2))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |835|
 :pattern ( (_module.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##_module.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |840|
 :pattern ( (_module.List.Cons_q d@@2))
)))
(assert (forall ((x@@3 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@3)) x@@3)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@3))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_module.List.Cons_q d@@4) (exists ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (= d@@4 (|#_module.List.Cons| |a#5#0#0| |a#5#1#0|))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |841|
)))
 :qid |unknown.0:0|
 :skolemid |842|
 :pattern ( (_module.List.Cons_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.List.Nil_q d@@5) (= d@@5 |#_module.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |836|
 :pattern ( (_module.List.Nil_q d@@5))
)))
(assert (= (Ctor SetType) 9))
(assert (forall ((v T@U) (t0@@0 T@U) ) (! (= ($Is SetType v (TSet t0@@0)) (forall ((bx T@U) ) (!  (=> (|Set#IsMember| v bx) ($IsBox bx t0@@0))
 :qid |DafnyPreludebpl.240:11|
 :skolemid |46|
 :pattern ( (|Set#IsMember| v bx))
)))
 :qid |DafnyPreludebpl.238:15|
 :skolemid |47|
 :pattern ( ($Is SetType v (TSet t0@@0)))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@3 T@U) (this@@1 T@U) (|source#0@@1| T@U) (|x#0@@0| T@U) (|m#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@1| |x#0@@0| |m#0@@0|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@1 null)) (not true)) ($Is refType this@@1 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@3))) ($IsBox |source#0@@1| _module.BreadthFirstSearch$Vertex@@3)) ($IsBox |x#0@@0| _module.BreadthFirstSearch$Vertex@@3)) ($Is MapType |m#0@@0| (TMap _module.BreadthFirstSearch$Vertex@@3 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@3)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@1| |m#0@@0|) (|Set#IsMember| (|Map#Domain| |m#0@@0|) |x#0@@0|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@1| |x#0@@0| |m#0@@0|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@0|) |x#0@@0|))))
 :qid |unknown.0:0|
 :skolemid |785|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@3 this@@1 |source#0@@1| |x#0@@0| |m#0@@0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@4 T@U) (this@@2 T@U) (|x#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@1|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@2 null)) (not true)) ($Is refType this@@2 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@4))) ($IsBox |x#0@@1| _module.BreadthFirstSearch$Vertex@@4)))) ($Is SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@1|) (TSet _module.BreadthFirstSearch$Vertex@@4)))
 :qid |unknown.0:0|
 :skolemid |607|
 :pattern ( (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@4 this@@2 |x#0@@1|))
))))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@5 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5))  (and ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@5)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |833|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@5)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@5)))
)))
(assert (forall ((v@@0 T@U) (t T@U) (h T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h) ($IsAlloc T@@1 v@@0 t h))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@6 T@U) ($ly@@0 T@U) (this@@3 T@U) (|source#0@@2| T@U) (|dest#0@@0| T@U) (|p#0@@0| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@3) (Lit BoxType |source#0@@2|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@3 null)) (not true)) ($Is refType this@@3 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@6))) ($IsBox |source#0@@2| _module.BreadthFirstSearch$Vertex@@6)) ($IsBox |dest#0@@0| _module.BreadthFirstSearch$Vertex@@6)) ($Is DatatypeTypeType |p#0@@0| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@6))))) (and (=> (not (U_2_bool (Lit boolType (bool_2_U (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)))))) (let ((|tail#5| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#5| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@3) |v#5|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@3) |v#5|) (Lit BoxType |dest#0@@0|)) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@3) (Lit BoxType |source#0@@2|) |v#5| |tail#5|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@6 ($LS $ly@@0) (Lit refType this@@3) (Lit BoxType |source#0@@2|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)) (ite (_module.List.Nil_q (Lit DatatypeTypeType |p#0@@0|)) (= (Lit BoxType |source#0@@2|) (Lit BoxType |dest#0@@0|)) (let ((|tail#4| (Lit DatatypeTypeType (_module.List.tail (Lit DatatypeTypeType |p#0@@0|)))))
(let ((|v#4| (Lit BoxType (_module.List.head (Lit DatatypeTypeType |p#0@@0|)))))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@6 (Lit refType this@@3) |v#4|) (Lit BoxType |dest#0@@0|)) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@6 ($LS $ly@@0) (Lit refType this@@3) (Lit BoxType |source#0@@2|) |v#4| |tail#4|))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |616|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@6 ($LS $ly@@0) (Lit refType this@@3) (Lit BoxType |source#0@@2|) (Lit BoxType |dest#0@@0|) (Lit DatatypeTypeType |p#0@@0|)))
))))
(assert (forall ((_module.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass._module.List _module.List$T@@2)) Tagclass._module.List) (= (TagFamily (Tclass._module.List _module.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |583|
 :pattern ( (Tclass._module.List _module.List$T@@2))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@7 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)) Tagclass._module.BreadthFirstSearch?) (= (TagFamily (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |599|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@7))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@8 T@U) ) (!  (and (= (Tag (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8)) Tagclass._module.BreadthFirstSearch) (= (TagFamily (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8)) tytagFamily$BreadthFirstSearch))
 :qid |unknown.0:0|
 :skolemid |604|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@8))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@9 T@U) ($o@@0 T@U) ) (! (= ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9))  (or (= $o@@0 null) (= (dtype $o@@0) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9))))
 :qid |unknown.0:0|
 :skolemid |602|
 :pattern ( ($Is refType $o@@0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@9)))
)))
(assert (forall ((m@@1 T@U) (|m'| T@U) ) (! (= (|Map#Equal| m@@1 |m'|)  (and (forall ((u T@U) ) (! (= (|Set#IsMember| (|Map#Domain| m@@1) u) (|Set#IsMember| (|Map#Domain| |m'|) u))
 :qid |DafnyPreludebpl.1498:35|
 :skolemid |297|
)) (forall ((u@@0 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| m@@1) u@@0) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@1) u@@0) (MapType0Select BoxType BoxType (|Map#Elements| |m'|) u@@0)))
 :qid |DafnyPreludebpl.1499:35|
 :skolemid |298|
))))
 :qid |DafnyPreludebpl.1496:15|
 :skolemid |299|
 :pattern ( (|Map#Equal| m@@1 |m'|))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@10 T@U) ($ly@@1 T@U) (this@@4 T@U) (|source#0@@3| T@U) (|dest#0@@1| T@U) (|p#0@@1| T@U) ) (! (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@10 ($LS $ly@@1) this@@4 |source#0@@3| |dest#0@@1| |p#0@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@10 $ly@@1 this@@4 |source#0@@3| |dest#0@@1| |p#0@@1|))
 :qid |unknown.0:0|
 :skolemid |610|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@10 ($LS $ly@@1) this@@4 |source#0@@3| |dest#0@@1| |p#0@@1|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@11 T@U) (this@@5 T@U) (|source#0@@4| T@U) (|m#0@@1| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@5) (Lit BoxType |source#0@@4|) (Lit MapType |m#0@@1|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@5 null)) (not true)) ($Is refType this@@5 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@11))) ($IsBox |source#0@@4| _module.BreadthFirstSearch$Vertex@@11)) ($Is MapType |m#0@@1| (TMap _module.BreadthFirstSearch$Vertex@@11 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@11)))))) (and (forall ((|v#2@@0| T@U) ) (!  (=> ($IsBox |v#2@@0| _module.BreadthFirstSearch$Vertex@@11) (=> (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@5) (Lit BoxType |source#0@@4|) |v#2@@0| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@1|)) |v#2@@0|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |776|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@1|) |v#2@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@0|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@5) (Lit BoxType |source#0@@4|) (Lit MapType |m#0@@1|)) (forall ((|v#2@@1| T@U) ) (!  (=> ($IsBox |v#2@@1| _module.BreadthFirstSearch$Vertex@@11) (=> (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@11 ($LS $LZ) (Lit refType this@@5) (Lit BoxType |source#0@@4|) |v#2@@1| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@1|)) |v#2@@1|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |775|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@1|) |v#2@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@1|) |v#2@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |777|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@11 (Lit refType this@@5) (Lit BoxType |source#0@@4|) (Lit MapType |m#0@@1|)))
))))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@12 T@U) (this@@6 T@U) (|source#0@@5| T@U) (|x#0@@2| T@U) (|m#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@12 this@@6 |source#0@@5| |x#0@@2| (Lit MapType |m#0@@2|)) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@6 null)) (not true)) ($Is refType this@@6 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@12))) ($IsBox |source#0@@5| _module.BreadthFirstSearch$Vertex@@12)) ($IsBox |x#0@@2| _module.BreadthFirstSearch$Vertex@@12)) ($Is MapType |m#0@@2| (TMap _module.BreadthFirstSearch$Vertex@@12 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@12)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@12 this@@6 |source#0@@5| (Lit MapType |m#0@@2|)) (|Set#IsMember| (|Map#Domain| |m#0@@2|) |x#0@@2|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@12 this@@6 |source#0@@5| |x#0@@2| (Lit MapType |m#0@@2|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@2|)) |x#0@@2|))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |786|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@12 this@@6 |source#0@@5| |x#0@@2| (Lit MapType |m#0@@2|)))
))))
(assert (forall ((_module.List$T@@3 T@U) (d@@6 T@U) ) (!  (=> ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)) (or (_module.List.Nil_q d@@6) (_module.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |853|
 :pattern ( (_module.List.Cons_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
 :pattern ( (_module.List.Nil_q d@@6) ($Is DatatypeTypeType d@@6 (Tclass._module.List _module.List$T@@3)))
)))
(assert (forall ((m@@2 T@U) (|m'@@0| T@U) ) (!  (=> (|Map#Equal| m@@2 |m'@@0|) (= m@@2 |m'@@0|))
 :qid |DafnyPreludebpl.1501:15|
 :skolemid |300|
 :pattern ( (|Map#Equal| m@@2 |m'@@0|))
)))
(assert (forall ((v@@1 T@U) (t@@0 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@0) ($Is T@@2 v@@1 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@0))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap T@U) (_module.BreadthFirstSearch$Vertex@@13 T@U) (this@@7 T@U) (|x#0@@3| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (and (< 0 $FunctionContextHeight) (and (and (or (not (= this@@7 null)) (not true)) ($IsAlloc refType this@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@13) $Heap)) (and ($IsBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@13) ($IsAllocBox |x#0@@3| _module.BreadthFirstSearch$Vertex@@13 $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@13) $Heap))
 :qid |BreadthFirstSearchdfy.8:12|
 :skolemid |608|
 :pattern ( ($IsAlloc SetType (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@13 this@@7 |x#0@@3|) (TSet _module.BreadthFirstSearch$Vertex@@13) $Heap))
))))
(assert (forall ((v@@2 T@U) (t0@@1 T@U) (h@@0 T@U) ) (! (= ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0) (forall ((bx@@0 T@U) ) (!  (=> (|Set#IsMember| v@@2 bx@@0) ($IsAllocBox bx@@0 t0@@1 h@@0))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@2 bx@@0))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@2 (TSet t0@@1) h@@0))
)))
(assert (forall ((t@@1 T@U) (u@@1 T@U) ) (! (= (Inv0_TMap (TMap t@@1 u@@1)) t@@1)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@1 u@@1))
)))
(assert (forall ((t@@2 T@U) (u@@2 T@U) ) (! (= (Inv1_TMap (TMap t@@2 u@@2)) u@@2)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@2 u@@2))
)))
(assert (forall ((t@@3 T@U) (u@@3 T@U) ) (! (= (Tag (TMap t@@3 u@@3)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@3 u@@3))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|)) |##_System._tuple#2._#Make2|)
 :qid |unknown.0:0|
 :skolemid |448|
 :pattern ( (|#_System._tuple#2._#Make2| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|_System._tuple#2$T0@@2| T@U) (|_System._tuple#2$T1@@2| T@U) ) (! (= (Tclass._System.Tuple2_0 (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|)) |_System._tuple#2$T0@@2|)
 :qid |unknown.0:0|
 :skolemid |453|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@2| |_System._tuple#2$T1@@2|))
)))
(assert (forall ((|_System._tuple#2$T0@@3| T@U) (|_System._tuple#2$T1@@3| T@U) ) (! (= (Tclass._System.Tuple2_1 (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|)) |_System._tuple#2$T1@@3|)
 :qid |unknown.0:0|
 :skolemid |454|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@3| |_System._tuple#2$T1@@3|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (_System.Tuple2._0 (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|)) |a#4#0#0|)
 :qid |unknown.0:0|
 :skolemid |463|
 :pattern ( (|#_System._tuple#2._#Make2| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#6#0#0@@0| T@U) (|a#6#1#0@@0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|)) |a#6#1#0@@0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0@@0| |a#6#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| T@U) (|a#4#1#0@@0| T@U) ) (! (= (DatatypeCtorId (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|)) |##_module.List.Cons|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |839|
 :pattern ( (|#_module.List.Cons| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (_module.List.head (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|)) |a#8#0#0|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |848|
 :pattern ( (|#_module.List.Cons| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= (_module.List.tail (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|)) |a#10#1#0|)
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |850|
 :pattern ( (|#_module.List.Cons| |a#10#0#0| |a#10#1#0|))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall (($Heap@@0 T@U) (_module.BreadthFirstSearch$Vertex@@14 T@U) (this@@8 T@U) (|source#0@@6| T@U) (|x#0@@4| T@U) (|m#0@@3| T@U) ) (!  (=> (and (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@14 this@@8 |source#0@@6| |x#0@@4| |m#0@@3|) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@8 null)) (not true)) ($IsAlloc refType this@@8 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@14) $Heap@@0)) (and ($IsBox |source#0@@6| _module.BreadthFirstSearch$Vertex@@14) ($IsAllocBox |source#0@@6| _module.BreadthFirstSearch$Vertex@@14 $Heap@@0))) (and ($IsBox |x#0@@4| _module.BreadthFirstSearch$Vertex@@14) ($IsAllocBox |x#0@@4| _module.BreadthFirstSearch$Vertex@@14 $Heap@@0))) (and ($Is MapType |m#0@@3| (TMap _module.BreadthFirstSearch$Vertex@@14 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@14))) ($IsAlloc MapType |m#0@@3| (TMap _module.BreadthFirstSearch$Vertex@@14 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@14)) $Heap@@0))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@14 this@@8 |source#0@@6| |m#0@@3|) (|Set#IsMember| (|Map#Domain| |m#0@@3|) |x#0@@4|))))) ($IsGoodHeap $Heap@@0)) ($IsAlloc DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@14 this@@8 |source#0@@6| |x#0@@4| |m#0@@3|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@14) $Heap@@0))
 :qid |BreadthFirstSearchdfy.234:18|
 :skolemid |783|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@14 this@@8 |source#0@@6| |x#0@@4| |m#0@@3|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@14) $Heap@@0))
))))
(assert (forall ((t@@4 T@U) ) (! (= (Inv0_TSet (TSet t@@4)) t@@4)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@4))
)))
(assert (forall ((t@@5 T@U) ) (! (= (Tag (TSet t@@5)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@5))
)))
(assert (forall ((_module.List$T@@4 T@U) ) (! (= (Tclass._module.List_0 (Tclass._module.List _module.List$T@@4)) _module.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |584|
 :pattern ( (Tclass._module.List _module.List$T@@4))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@15 T@U) ) (! (= (Tclass._module.BreadthFirstSearch?_0 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@15)) _module.BreadthFirstSearch$Vertex@@15)
 :qid |unknown.0:0|
 :skolemid |600|
 :pattern ( (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@15))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@16 T@U) ) (! (= (Tclass._module.BreadthFirstSearch_0 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@16)) _module.BreadthFirstSearch$Vertex@@16)
 :qid |unknown.0:0|
 :skolemid |605|
 :pattern ( (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@16))
)))
(assert (forall ((x@@4 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@4)) x@@4)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@4))
)))
(assert (forall ((v@@3 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@1 T@U) ) (! (= ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1) (forall ((bx@@1 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@3) bx@@1) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@1) t1@@0 h@@1) ($IsAllocBox bx@@1 t0@@2 h@@1)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@3) bx@@1))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@3) bx@@1))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@3 (TMap t0@@2 t1@@0) h@@1))
)))
(assert  (=> (<= 3 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@17 T@U) (this@@9 T@U) (|source#0@@7| T@U) (|x#0@@5| T@U) (|m#0@@4| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.Find#canCall| _module.BreadthFirstSearch$Vertex@@17 (Lit refType this@@9) (Lit BoxType |source#0@@7|) (Lit BoxType |x#0@@5|) (Lit MapType |m#0@@4|)) (and (< 3 $FunctionContextHeight) (and (and (and (and (and (or (not (= this@@9 null)) (not true)) ($Is refType this@@9 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@17))) ($IsBox |source#0@@7| _module.BreadthFirstSearch$Vertex@@17)) ($IsBox |x#0@@5| _module.BreadthFirstSearch$Vertex@@17)) ($Is MapType |m#0@@4| (TMap _module.BreadthFirstSearch$Vertex@@17 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@17)))) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@17 (Lit refType this@@9) (Lit BoxType |source#0@@7|) (Lit MapType |m#0@@4|)) (|Set#IsMember| (|Map#Domain| |m#0@@4|) |x#0@@5|))))) (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@17 (Lit refType this@@9) (Lit BoxType |source#0@@7|) (Lit BoxType |x#0@@5|) (Lit MapType |m#0@@4|)) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@4|)) (Lit BoxType |x#0@@5|)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |787|
 :pattern ( (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@17 (Lit refType this@@9) (Lit BoxType |source#0@@7|) (Lit BoxType |x#0@@5|) (Lit MapType |m#0@@4|)))
))))
(assert (forall ((|a#5#0#0@@0| T@U) (|a#5#1#0@@0| T@U) ) (! (< (BoxRank |a#5#0#0@@0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0@@0| |a#5#1#0@@0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (< (BoxRank |a#9#0#0|) (DtRank (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |849|
 :pattern ( (|#_module.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (< (DtRank |a#11#1#0|) (DtRank (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |851|
 :pattern ( (|#_module.List.Cons| |a#11#0#0| |a#11#1#0|))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@18 T@U) (this@@10 T@U) (|source#0@@8| T@U) (|m#0@@5| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@18 this@@10 |source#0@@8| |m#0@@5|) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@10 null)) (not true)) ($Is refType this@@10 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@18))) ($IsBox |source#0@@8| _module.BreadthFirstSearch$Vertex@@18)) ($Is MapType |m#0@@5| (TMap _module.BreadthFirstSearch$Vertex@@18 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@18)))))) (and (forall ((|v#0| T@U) ) (!  (=> ($IsBox |v#0| _module.BreadthFirstSearch$Vertex@@18) (=> (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@18 this@@10 |source#0@@8| |v#0| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |770|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@18 this@@10 |source#0@@8| |m#0@@5|) (forall ((|v#0@@0| T@U) ) (!  (=> ($IsBox |v#0@@0| _module.BreadthFirstSearch$Vertex@@18) (=> (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@0|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@18 ($LS $LZ) this@@10 |source#0@@8| |v#0@@0| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@0|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |769|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@5|) |v#0@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@5|) |v#0@@0|))
)))))
 :qid |unknown.0:0|
 :skolemid |771|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@18 this@@10 |source#0@@8| |m#0@@5|))
))))
(assert (forall ((u@@4 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@4))
)))
(assert (forall ((bx@@2 T@U) (s T@U) (t@@6 T@U) ) (!  (=> ($IsBox bx@@2 (TMap s t@@6)) (and (= ($Box MapType ($Unbox MapType bx@@2)) bx@@2) ($Is MapType ($Unbox MapType bx@@2) (TMap s t@@6))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@2 (TMap s t@@6)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@3)) bx@@3) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@3) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@3 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert (forall ((d@@7 T@U) (_module.List$T@@5 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.List.Cons_q d@@7) ($IsAlloc DatatypeTypeType d@@7 (Tclass._module.List _module.List$T@@5) $h@@3))) ($IsAllocBox (_module.List.head d@@7) _module.List$T@@5 $h@@3))
 :qid |unknown.0:0|
 :skolemid |845|
 :pattern ( ($IsAllocBox (_module.List.head d@@7) _module.List$T@@5 $h@@3))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@3 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@3 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@4 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@4 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@4 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@5 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@5 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@5 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@1 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))  (=> (and (or (not (= $o@@1 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@1) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |857|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@1 $f))
)))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((m@@6 T@U) ) (!  (or (= m@@6 |Map#Empty|) (exists ((k T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@6) k)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@6))
)))
(assert (forall ((m@@7 T@U) ) (!  (or (= m@@7 |Map#Empty|) (exists ((v@@4 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@7) v@@4)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@7))
)))
(assert (forall ((m@@8 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@8) item)  (and (|Set#IsMember| (|Map#Domain| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@8) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@8) item))
)))
(assert (forall ((m@@9 T@U) (v@@5 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@9) v@@5) (exists ((u@@5 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@9) u@@5) (= v@@5 (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@9) u@@5))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@9) u@@5))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@9) v@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@19 T@U) ($ly@@2 T@U) (this@@11 T@U) (|source#0@@9| T@U) (|dest#0@@2| T@U) (|p#0@@2| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@19 this@@11 |source#0@@9| |dest#0@@2| |p#0@@2|) (and (< 1 $FunctionContextHeight) (and (and (and (and (or (not (= this@@11 null)) (not true)) ($Is refType this@@11 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@19))) ($IsBox |source#0@@9| _module.BreadthFirstSearch$Vertex@@19)) ($IsBox |dest#0@@2| _module.BreadthFirstSearch$Vertex@@19)) ($Is DatatypeTypeType |p#0@@2| (Tclass._module.List _module.BreadthFirstSearch$Vertex@@19))))) (and (=> (not (_module.List.Nil_q |p#0@@2|)) (let ((|tail#1| (_module.List.tail |p#0@@2|)))
(let ((|v#1| (_module.List.head |p#0@@2|)))
 (and (|_module.BreadthFirstSearch.Succ#canCall| _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1|) (=> (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#1|) |dest#0@@2|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@19 this@@11 |source#0@@9| |v#1| |tail#1|)))))) (= (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@19 ($LS $ly@@2) this@@11 |source#0@@9| |dest#0@@2| |p#0@@2|) (ite (_module.List.Nil_q |p#0@@2|) (= |source#0@@9| |dest#0@@2|) (let ((|tail#0| (_module.List.tail |p#0@@2|)))
(let ((|v#0@@1| (_module.List.head |p#0@@2|)))
 (and (|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@19 this@@11 |v#0@@1|) |dest#0@@2|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@19 $ly@@2 this@@11 |source#0@@9| |v#0@@1| |tail#0|))))))))
 :qid |unknown.0:0|
 :skolemid |614|
 :pattern ( (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@19 ($LS $ly@@2) this@@11 |source#0@@9| |dest#0@@2| |p#0@@2|))
))))
(assert (forall ((d@@8 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@8)) (DtRank d@@8))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@8)))
)))
(assert (forall ((bx@@4 T@U) (t@@7 T@U) ) (!  (=> ($IsBox bx@@4 (TSet t@@7)) (and (= ($Box SetType ($Unbox SetType bx@@4)) bx@@4) ($Is SetType ($Unbox SetType bx@@4) (TSet t@@7))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@4 (TSet t@@7)))
)))
(assert (forall ((_module.List$T@@6 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass._module.List _module.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass._module.List _module.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |585|
 :pattern ( ($IsBox bx@@5 (Tclass._module.List _module.List$T@@6)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@20 T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@20)) (and (= ($Box refType ($Unbox refType bx@@6)) bx@@6) ($Is refType ($Unbox refType bx@@6) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@20))))
 :qid |unknown.0:0|
 :skolemid |601|
 :pattern ( ($IsBox bx@@6 (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@20)))
)))
(assert (forall ((_module.BreadthFirstSearch$Vertex@@21 T@U) (bx@@7 T@U) ) (!  (=> ($IsBox bx@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21)) (and (= ($Box refType ($Unbox refType bx@@7)) bx@@7) ($Is refType ($Unbox refType bx@@7) (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21))))
 :qid |unknown.0:0|
 :skolemid |606|
 :pattern ( ($IsBox bx@@7 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@21)))
)))
(assert (forall ((v@@6 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@6 (TMap t0@@4 t1@@2)) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@6) bx@@8) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8) t1@@2) ($IsBox bx@@8 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@6) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@6) bx@@8))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@6 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((d@@9 T@U) (_module.List$T@@7 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass._module.List _module.List$T@@7) $h@@4))) ($IsAlloc DatatypeTypeType (_module.List.tail d@@9) (Tclass._module.List _module.List$T@@7) $h@@4))
 :qid |unknown.0:0|
 :skolemid |846|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.List.tail d@@9) (Tclass._module.List _module.List$T@@7) $h@@4))
)))
(assert (= |#_module.List.Nil| (Lit DatatypeTypeType |#_module.List.Nil|)))
(assert (forall ((d@@10 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_System.Tuple2.___hMake2_q d@@10) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@10 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@5))
)))) ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@5))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@10) |_System._tuple#2$T0@@6| $h@@5))
)))
(assert (forall ((d@@11 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_System.Tuple2.___hMake2_q d@@11) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@11 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@6))
)))) ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@6))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@11) |_System._tuple#2$T1@@7| $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#7#0#0@@0| T@U) (|a#7#1#0@@0| T@U) ) (! (= (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)) (Lit DatatypeTypeType (|#_module.List.Cons| |a#7#0#0@@0| |a#7#1#0@@0|)))
 :qid |BreadthFirstSearchdfy.263:31|
 :skolemid |847|
 :pattern ( (|#_module.List.Cons| (Lit BoxType |a#7#0#0@@0|) (Lit DatatypeTypeType |a#7#1#0@@0|)))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Box T@@4 (Lit T@@4 x@@5)) (Lit BoxType ($Box T@@4 x@@5)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@4 (Lit T@@4 x@@5)))
)))
(assert (forall ((_module.List$T@@8 T@U) (|a#6#0#0@@1| T@U) (|a#6#1#0@@1| T@U) ($h@@7 T@U) ) (!  (=> ($IsGoodHeap $h@@7) (= ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@7)  (and ($IsAllocBox |a#6#0#0@@1| _module.List$T@@8 $h@@7) ($IsAlloc DatatypeTypeType |a#6#1#0@@1| (Tclass._module.List _module.List$T@@8) $h@@7))))
 :qid |unknown.0:0|
 :skolemid |844|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.List.Cons| |a#6#0#0@@1| |a#6#1#0@@1|) (Tclass._module.List _module.List$T@@8) $h@@7))
)))
(assert (forall ((m@@10 T@U) ) (!  (or (= m@@10 |Map#Empty|) (exists ((k@@0 T@U) (v@@7 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@10) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@0 v@@7)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@10))
)))
(assert  (=> (<= 2 $FunctionContextHeight) (forall ((_module.BreadthFirstSearch$Vertex@@22 T@U) (this@@12 T@U) (|source#0@@10| T@U) (|m#0@@6| T@U) ) (!  (=> (or (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@22 this@@12 |source#0@@10| (Lit MapType |m#0@@6|)) (and (< 2 $FunctionContextHeight) (and (and (and (or (not (= this@@12 null)) (not true)) ($Is refType this@@12 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@22))) ($IsBox |source#0@@10| _module.BreadthFirstSearch$Vertex@@22)) ($Is MapType |m#0@@6| (TMap _module.BreadthFirstSearch$Vertex@@22 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@22)))))) (and (forall ((|v#1@@0| T@U) ) (!  (=> ($IsBox |v#1@@0| _module.BreadthFirstSearch$Vertex@@22) (=> (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@0|) (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@22 this@@12 |source#0@@10| |v#1@@0| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@6|)) |v#1@@0|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |773|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |v#1@@0|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@0|))
)) (= (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@22 this@@12 |source#0@@10| (Lit MapType |m#0@@6|)) (forall ((|v#1@@1| T@U) ) (!  (=> ($IsBox |v#1@@1| _module.BreadthFirstSearch$Vertex@@22) (=> (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@1|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@22 ($LS $LZ) this@@12 |source#0@@10| |v#1@@1| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |m#0@@6|)) |v#1@@1|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |772|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@6|) |v#1@@1|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@6|) |v#1@@1|))
)))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |774|
 :pattern ( (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@22 this@@12 |source#0@@10| (Lit MapType |m#0@@6|)))
))))
(assert (forall ((v@@8 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@8 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@8) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@8) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@8) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@8 (TMap t0@@5 t1@@3)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun _module.BreadthFirstSearch$Vertex@@23 () T@U)
(declare-fun this@@13 () T@U)
(declare-fun |source#0@@11| () T@U)
(declare-fun |x#0@@6| () T@U)
(declare-fun |m#0@@7| () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun $_ReadsFrame@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellformed$$_module.BreadthFirstSearch.Find)
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
 (=> (= (ControlFlow 0 0) 12) (let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 6) (- 0 8)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $LZ) this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (=> (_module.List.Nil_q (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (= |source#0@@11| |x#0@@6|))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $LZ) this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (=> (_module.List.Nil_q (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (= |source#0@@11| |x#0@@6|)))) (and (=> (= (ControlFlow 0 6) (- 0 7)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $LZ) this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (=> (not (_module.List.Nil_q (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))) (let ((|v#0@@2| (_module.List.head (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@23 this@@13 |v#0@@2|) |x#0@@6|)))))) (=> (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $LZ) this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (=> (not (_module.List.Nil_q (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))) (let ((|v#0@@3| (_module.List.head (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))))
(|Set#IsMember| (_module.BreadthFirstSearch.Succ _module.BreadthFirstSearch$Vertex@@23 this@@13 |v#0@@3|) |x#0@@6|))))) (=> (= (ControlFlow 0 6) (- 0 5)) (=> (|_module.BreadthFirstSearch.IsPath#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (or (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS $LZ) this@@13 |source#0@@11| |x#0@@6| (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|)) (=> (not (_module.List.Nil_q (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))) (let ((|tail#0@@0| (_module.List.tail (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))))
(let ((|v#0@@4| (_module.List.head (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|))))
(_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS ($LS $LZ)) this@@13 |source#0@@11| |v#0@@4| |tail#0@@0|)))))))))))))
(let ((anon5_Else_correct  (and (=> (= (ControlFlow 0 9) (- 0 10)) (|Set#IsMember| (|Map#Domain| |m#0@@7|) |x#0@@6|)) (=> (|Set#IsMember| (|Map#Domain| |m#0@@7|) |x#0@@6|) (=> (= (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|) ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@7|) |x#0@@6|))) (=> (and ($Is DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)) (= (ControlFlow 0 9) 6)) GeneratedUnifiedExit_correct))))))
(let ((anon5_Then_correct  (=> (and (and (and ($Is DatatypeTypeType (_module.BreadthFirstSearch.Find _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |x#0@@6| |m#0@@7|) (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)) ($IsAllocBox ($Box refType this@@13) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@23) $Heap@@1)) (and ($IsAllocBox |source#0@@11| _module.BreadthFirstSearch$Vertex@@23 $Heap@@1) ($IsAllocBox |x#0@@6| _module.BreadthFirstSearch$Vertex@@23 $Heap@@1))) (and (and ($IsAllocBox ($Box refType this@@13) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@23) $Heap@@1) ($IsAllocBox |source#0@@11| _module.BreadthFirstSearch$Vertex@@23 $Heap@@1)) (and ($IsAllocBox |x#0@@6| _module.BreadthFirstSearch$Vertex@@23 $Heap@@1) ($IsAlloc MapType |m#0@@7| (TMap _module.BreadthFirstSearch$Vertex@@23 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)) $Heap@@1)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |m#0@@7|) (or (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |m#0@@7|) (forall ((|v#2@@2| T@U) ) (!  (=> ($IsBox |v#2@@2| _module.BreadthFirstSearch$Vertex@@23) (=> (|Set#IsMember| (|Map#Domain| |m#0@@7|) |v#2@@2|) (_module.BreadthFirstSearch.IsPath _module.BreadthFirstSearch$Vertex@@23 ($LS ($LS $LZ)) this@@13 |source#0@@11| |v#2@@2| ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@7|) |v#2@@2|)))))
 :qid |BreadthFirstSearchdfy.231:12|
 :skolemid |789|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select BoxType BoxType (|Map#Elements| |m#0@@7|) |v#2@@2|)))
 :pattern ( (|Set#IsMember| (|Map#Domain| |m#0@@7|) |v#2@@2|))
))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (|Set#IsMember| (|Map#Domain| |m#0@@7|) |x#0@@6|)) (=> (and (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |m#0@@7|) (|Set#IsMember| (|Map#Domain| |m#0@@7|) |x#0@@6|)) (= (ControlFlow 0 2) (- 0 1))) (or (and (and (and (= this@@13 this@@13) (= |source#0@@11| |source#0@@11|)) (= |x#0@@6| |x#0@@6|)) (|Map#Equal| |m#0@@7| |m#0@@7|)) (and (|Set#Subset| (|Map#Domain| |m#0@@7|) (|Map#Domain| |m#0@@7|)) (not (|Set#Subset| (|Map#Domain| |m#0@@7|) (|Map#Domain| |m#0@@7|)))))))))))
(let ((anon0_correct  (=> (= $_ReadsFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (=> (and ($IsAllocBox ($Box refType this@@13) (Tclass._module.BreadthFirstSearch? _module.BreadthFirstSearch$Vertex@@23) $Heap@@1) ($IsAllocBox |source#0@@11| _module.BreadthFirstSearch$Vertex@@23 $Heap@@1)) (=> (and (and ($IsAlloc MapType |m#0@@7| (TMap _module.BreadthFirstSearch$Vertex@@23 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)) $Heap@@1) (|_module.BreadthFirstSearch.ValidMap#canCall| _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |m#0@@7|)) (and (_module.BreadthFirstSearch.ValidMap _module.BreadthFirstSearch$Vertex@@23 this@@13 |source#0@@11| |m#0@@7|) (|Set#IsMember| (|Map#Domain| |m#0@@7|) |x#0@@6|))) (and (=> (= (ControlFlow 0 11) 2) anon5_Then_correct) (=> (= (ControlFlow 0 11) 9) anon5_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (and (or (not (= this@@13 null)) (not true)) (and ($Is refType this@@13 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@23)) ($IsAlloc refType this@@13 (Tclass._module.BreadthFirstSearch _module.BreadthFirstSearch$Vertex@@23) $Heap@@1))) ($IsBox |source#0@@11| _module.BreadthFirstSearch$Vertex@@23)) (and (and ($IsBox |x#0@@6| _module.BreadthFirstSearch$Vertex@@23) ($Is MapType |m#0@@7| (TMap _module.BreadthFirstSearch$Vertex@@23 (Tclass._module.List _module.BreadthFirstSearch$Vertex@@23)))) (and (= 3 $FunctionContextHeight) (= (ControlFlow 0 12) 11)))) anon0_correct))))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
