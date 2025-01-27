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
(declare-fun alloc () T@U)
(declare-fun allocName () T@U)
(declare-fun Tagclass._System.nat () T@U)
(declare-fun Tagclass.CoRecursion.Stream () T@U)
(declare-fun Tagclass.CoRecursion.List () T@U)
(declare-fun Tagclass.CoRecursion.Cell () T@U)
(declare-fun Tagclass.CoRecursion.Cell? () T@U)
(declare-fun |##CoRecursion.Stream.More| () T@U)
(declare-fun |##CoRecursion.List.Nil| () T@U)
(declare-fun |##CoRecursion.List.Cons| () T@U)
(declare-fun class.CoRecursion.Cell? () T@U)
(declare-fun tytagFamily$nat () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun tytagFamily$List () T@U)
(declare-fun tytagFamily$Cell () T@U)
(declare-fun field$data () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._System.nat () T@U)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun |#CoRecursion.List.Nil| () T@U)
(declare-fun CoRecursion.Stream.More_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass.CoRecursion.Stream (T@U) T@U)
(declare-fun refType () T@T)
(declare-fun Tclass.CoRecursion.Cell? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun CoRecursion.__default.AscendingChain (T@U Int) T@U)
(declare-fun |CoRecursion.__default.AscendingChain#canCall| (Int) Bool)
(declare-fun Tclass.CoRecursion.Cell () T@U)
(declare-fun Tclass.CoRecursion.List (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun CoRecursion.Cell.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun CoRecursion.__default.Prefix (T@U T@U Int T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun |CoRecursion.__default.Prefix#canCall| (T@U Int T@U) Bool)
(declare-fun CoRecursion.Stream.rest (T@U) T@U)
(declare-fun |#CoRecursion.List.Cons| (T@U T@U) T@U)
(declare-fun CoRecursion.Stream.head (T@U) T@U)
(declare-fun |CoRecursion.List#Equal| (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun CoRecursion.List.Cons_q (T@U) Bool)
(declare-fun CoRecursion.List.car (T@U) T@U)
(declare-fun CoRecursion.List.cdr (T@U) T@U)
(declare-fun |#CoRecursion.Stream.More| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun CoRecursion.List.Nil_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun |$IsA#CoRecursion.List| (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass.CoRecursion.Stream_0 (T@U) T@U)
(declare-fun Tclass.CoRecursion.List_0 (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.nat Tagclass.CoRecursion.Stream Tagclass.CoRecursion.List Tagclass.CoRecursion.Cell Tagclass.CoRecursion.Cell? |##CoRecursion.Stream.More| |##CoRecursion.List.Nil| |##CoRecursion.List.Cons| class.CoRecursion.Cell? tytagFamily$nat tytagFamily$Stream tytagFamily$List tytagFamily$Cell field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall ((|x#0| T@U) ($h T@U) ) (! ($IsAlloc intType |x#0| Tclass._System.nat $h)
 :qid |unknown.0:0|
 :skolemid |901|
 :pattern ( ($IsAlloc intType |x#0| Tclass._System.nat $h))
)))
(assert (= (DatatypeCtorId |#CoRecursion.List.Nil|) |##CoRecursion.List.Nil|))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((CoRecursion.Stream$T T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass.CoRecursion.Stream CoRecursion.Stream$T)) (CoRecursion.Stream.More_q d))
 :qid |unknown.0:0|
 :skolemid |1136|
 :pattern ( (CoRecursion.Stream.More_q d) ($Is DatatypeTypeType d (Tclass.CoRecursion.Stream CoRecursion.Stream$T)))
)))
(assert (= (Ctor refType) 4))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass.CoRecursion.Cell?)  (or (= $o null) (= (dtype $o) Tclass.CoRecursion.Cell?)))
 :qid |unknown.0:0|
 :skolemid |1170|
 :pattern ( ($Is refType $o Tclass.CoRecursion.Cell?))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|n#0| Int) ) (!  (=> (or (|CoRecursion.__default.AscendingChain#canCall| |n#0|) (< 1 $FunctionContextHeight)) ($Is DatatypeTypeType (CoRecursion.__default.AscendingChain $ly |n#0|) (Tclass.CoRecursion.Stream TInt)))
 :qid |Compilationlegacydfy.26:12|
 :skolemid |1089|
 :pattern ( (CoRecursion.__default.AscendingChain $ly |n#0|))
))))
(assert (forall ((|c#0| T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType |c#0| Tclass.CoRecursion.Cell $h@@0) ($IsAlloc refType |c#0| Tclass.CoRecursion.Cell? $h@@0))
 :qid |unknown.0:0|
 :skolemid |1175|
 :pattern ( ($IsAlloc refType |c#0| Tclass.CoRecursion.Cell $h@@0))
 :pattern ( ($IsAlloc refType |c#0| Tclass.CoRecursion.Cell? $h@@0))
)))
(assert (forall ((CoRecursion.List$T T@U) ($h@@1 T@U) ) (!  (=> ($IsGoodHeap $h@@1) ($IsAlloc DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T) $h@@1))
 :qid |unknown.0:0|
 :skolemid |1151|
 :pattern ( ($IsAlloc DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T) $h@@1))
)))
(assert (= (FDim CoRecursion.Cell.data) 0))
(assert (= (FieldOfDecl class.CoRecursion.Cell? field$data) CoRecursion.Cell.data))
(assert  (not ($IsGhostField CoRecursion.Cell.data)))
(assert (forall ((CoRecursion.List$T@@0 T@U) ) (! ($Is DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T@@0))
 :qid |unknown.0:0|
 :skolemid |1150|
 :pattern ( ($Is DatatypeTypeType |#CoRecursion.List.Nil| (Tclass.CoRecursion.List CoRecursion.List$T@@0)))
)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall (($o@@0 T@U) ($h@@2 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass.CoRecursion.Cell? $h@@2)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |1171|
 :pattern ( ($IsAlloc refType $o@@0 Tclass.CoRecursion.Cell? $h@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0 T@U) ($ly@@0 T@U) (|n#0@@0| Int) (|s#0| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0 (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@0|) ($Is DatatypeTypeType |s#0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0))))) (and (=> (or (not (= (LitInt |n#0@@0|) (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q (Lit DatatypeTypeType |s#0|)) (and (CoRecursion.Stream.More_q (Lit DatatypeTypeType |s#0|)) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0 (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (CoRecursion.Stream.rest (Lit DatatypeTypeType |s#0|))))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly@@0) (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)) (ite (= (LitInt |n#0@@0|) (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (Lit BoxType (CoRecursion.Stream.head (Lit DatatypeTypeType |s#0|))) (Lit DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly@@0) (LitInt (- |n#0@@0| 1)) (Lit DatatypeTypeType (CoRecursion.Stream.rest (Lit DatatypeTypeType |s#0|))))))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1103|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0 ($LS $ly@@0) (LitInt |n#0@@0|) (Lit DatatypeTypeType |s#0|)))
))))
(assert (forall ((a T@U) (b T@U) ) (! (= (|CoRecursion.List#Equal| a b) (= a b))
 :qid |unknown.0:0|
 :skolemid |1169|
 :pattern ( (|CoRecursion.List#Equal| a b))
)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |674|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |675|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((a@@0 T@U) (b@@0 T@U) ) (!  (=> (and (CoRecursion.List.Cons_q a@@0) (CoRecursion.List.Cons_q b@@0)) (= (|CoRecursion.List#Equal| a@@0 b@@0)  (and (= (CoRecursion.List.car a@@0) (CoRecursion.List.car b@@0)) (|CoRecursion.List#Equal| (CoRecursion.List.cdr a@@0) (CoRecursion.List.cdr b@@0)))))
 :qid |unknown.0:0|
 :skolemid |1168|
 :pattern ( (|CoRecursion.List#Equal| a@@0 b@@0) (CoRecursion.List.Cons_q a@@0))
 :pattern ( (|CoRecursion.List#Equal| a@@0 b@@0) (CoRecursion.List.Cons_q b@@0))
)))
(assert (forall ((x@@2 Int) ) (! (= (LitInt x@@2) x@@2)
 :qid |DafnyPreludebpl.108:29|
 :skolemid |573|
 :pattern ( (LitInt x@@2))
)))
(assert (forall ((x@@3 T@U) (T T@T) ) (! (= (Lit T x@@3) x@@3)
 :qid |DafnyPreludebpl.102:29|
 :skolemid |571|
 :pattern ( (Lit T x@@3))
)))
(assert (forall ((CoRecursion.Stream$T@@0 T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0| |a#2#1#0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0))  (and ($IsBox |a#2#0#0| CoRecursion.Stream$T@@0) ($Is DatatypeTypeType |a#2#1#0| (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0))))
 :qid |unknown.0:0|
 :skolemid |1129|
 :pattern ( ($Is DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0| |a#2#1#0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@0)))
)))
(assert (forall ((CoRecursion.List$T@@1 T@U) (|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0| |a#11#1#0|) (Tclass.CoRecursion.List CoRecursion.List$T@@1))  (and ($IsBox |a#11#0#0| CoRecursion.List$T@@1) ($Is DatatypeTypeType |a#11#1#0| (Tclass.CoRecursion.List CoRecursion.List$T@@1))))
 :qid |unknown.0:0|
 :skolemid |1156|
 :pattern ( ($Is DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0| |a#11#1#0|) (Tclass.CoRecursion.List CoRecursion.List$T@@1)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (CoRecursion.Stream.More_q d@@0) (= (DatatypeCtorId d@@0) |##CoRecursion.Stream.More|))
 :qid |unknown.0:0|
 :skolemid |1126|
 :pattern ( (CoRecursion.Stream.More_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (CoRecursion.List.Nil_q d@@1) (= (DatatypeCtorId d@@1) |##CoRecursion.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1148|
 :pattern ( (CoRecursion.List.Nil_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (CoRecursion.List.Cons_q d@@2) (= (DatatypeCtorId d@@2) |##CoRecursion.List.Cons|))
 :qid |unknown.0:0|
 :skolemid |1153|
 :pattern ( (CoRecursion.List.Cons_q d@@2))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |582|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> (CoRecursion.Stream.More_q d@@3) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@3 (|#CoRecursion.Stream.More| |a#1#0#0| |a#1#1#0|))
 :qid |Compilationlegacydfy.24:31|
 :skolemid |1127|
)))
 :qid |unknown.0:0|
 :skolemid |1128|
 :pattern ( (CoRecursion.Stream.More_q d@@3))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (CoRecursion.List.Cons_q d@@4) (exists ((|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= d@@4 (|#CoRecursion.List.Cons| |a#10#0#0| |a#10#1#0|))
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1154|
)))
 :qid |unknown.0:0|
 :skolemid |1155|
 :pattern ( (CoRecursion.List.Cons_q d@@4))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (CoRecursion._default.Prefix$_T0@@0 T@U) ($ly@@1 T@U) (|n#0@@1| Int) (|s#0@@0| T@U) ) (!  (=> (and (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@0 |n#0@@1| |s#0@@0|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@1|) (and ($Is DatatypeTypeType |s#0@@0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@0)) ($IsAlloc DatatypeTypeType |s#0@@0| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@0) $Heap))))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@0 $ly@@1 |n#0@@1| |s#0@@0|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@0) $Heap))
 :qid |Compilationlegacydfy.33:12|
 :skolemid |1099|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@0 $ly@@1 |n#0@@1| |s#0@@0|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@0) $Heap))
))))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@1 T@U) ($ly@@2 T@U) (|n#0@@2| Int) (|s#0@@1| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@1 |n#0@@2| |s#0@@1|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@2|) ($Is DatatypeTypeType |s#0@@1| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@1))))) ($Is DatatypeTypeType (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@1 $ly@@2 |n#0@@2| |s#0@@1|) (Tclass.CoRecursion.List CoRecursion._default.Prefix$_T0@@1)))
 :qid |unknown.0:0|
 :skolemid |1098|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@1 $ly@@2 |n#0@@2| |s#0@@1|))
))))
(assert (forall ((d@@5 T@U) ) (!  (=> (CoRecursion.List.Nil_q d@@5) (= d@@5 |#CoRecursion.List.Nil|))
 :qid |unknown.0:0|
 :skolemid |1149|
 :pattern ( (CoRecursion.List.Nil_q d@@5))
)))
(assert (forall ((|x#0@@0| T@U) ) (! (= ($Is intType |x#0@@0| Tclass._System.nat) (<= (LitInt 0) (U_2_int |x#0@@0|)))
 :qid |unknown.0:0|
 :skolemid |900|
 :pattern ( ($Is intType |x#0@@0| Tclass._System.nat))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@3 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@3) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass.CoRecursion.Cell?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) CoRecursion.Cell.data)) TInt $h@@3))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1173|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@3 $o@@1) CoRecursion.Cell.data)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v) t h@@0) ($IsAlloc T@@1 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |595|
 :pattern ( ($IsAllocBox ($Box T@@1 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |667|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@0 t@@1 h@@2) ($IsAlloc T@@2 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |666|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@0 t@@1 h@@2))
)))
(assert (forall ((CoRecursion.Stream$T@@1 T@U) ) (!  (and (= (Tag (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1)) Tagclass.CoRecursion.Stream) (= (TagFamily (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |1086|
 :pattern ( (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@1))
)))
(assert (forall ((CoRecursion.List$T@@2 T@U) ) (!  (and (= (Tag (Tclass.CoRecursion.List CoRecursion.List$T@@2)) Tagclass.CoRecursion.List) (= (TagFamily (Tclass.CoRecursion.List CoRecursion.List$T@@2)) tytagFamily$List))
 :qid |unknown.0:0|
 :skolemid |1095|
 :pattern ( (Tclass.CoRecursion.List CoRecursion.List$T@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@2 T@U) ($ly@@3 T@U) (|n#0@@3| Int) (|s#0@@2| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@2 (LitInt |n#0@@3|) |s#0@@2|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@3|) ($Is DatatypeTypeType |s#0@@2| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@2))))) (and (=> (or (not (= (LitInt |n#0@@3|) (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q |s#0@@2|) (and (CoRecursion.Stream.More_q |s#0@@2|) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@2 (LitInt (- |n#0@@3| 1)) (CoRecursion.Stream.rest |s#0@@2|))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@3) (LitInt |n#0@@3|) |s#0@@2|) (ite (= (LitInt |n#0@@3|) (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (CoRecursion.Stream.head |s#0@@2|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@3) (LitInt (- |n#0@@3| 1)) (CoRecursion.Stream.rest |s#0@@2|)))))))
 :qid |unknown.0:0|
 :weight 3
 :skolemid |1102|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@2 ($LS $ly@@3) (LitInt |n#0@@3|) |s#0@@2|))
))))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._System.nat) (and (= ($Box intType ($Unbox intType bx@@0)) bx@@0) ($Is intType ($Unbox intType bx@@0) Tclass._System.nat)))
 :qid |unknown.0:0|
 :skolemid |899|
 :pattern ( ($IsBox bx@@0 Tclass._System.nat))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass.CoRecursion.Cell) (and (= ($Box refType ($Unbox refType bx@@1)) bx@@1) ($Is refType ($Unbox refType bx@@1) Tclass.CoRecursion.Cell)))
 :qid |unknown.0:0|
 :skolemid |1108|
 :pattern ( ($IsBox bx@@1 Tclass.CoRecursion.Cell))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 Tclass.CoRecursion.Cell?) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) Tclass.CoRecursion.Cell?)))
 :qid |unknown.0:0|
 :skolemid |1109|
 :pattern ( ($IsBox bx@@2 Tclass.CoRecursion.Cell?))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass.CoRecursion.Cell)  (and ($Is refType |c#0@@0| Tclass.CoRecursion.Cell?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |1174|
 :pattern ( ($Is refType |c#0@@0| Tclass.CoRecursion.Cell))
 :pattern ( ($Is refType |c#0@@0| Tclass.CoRecursion.Cell?))
)))
(assert (forall ((d@@6 T@U) ) (!  (=> (|$IsA#CoRecursion.List| d@@6) (or (CoRecursion.List.Nil_q d@@6) (CoRecursion.List.Cons_q d@@6)))
 :qid |unknown.0:0|
 :skolemid |1165|
 :pattern ( (|$IsA#CoRecursion.List| d@@6))
)))
(assert (forall ((CoRecursion.List$T@@3 T@U) (d@@7 T@U) ) (!  (=> ($Is DatatypeTypeType d@@7 (Tclass.CoRecursion.List CoRecursion.List$T@@3)) (or (CoRecursion.List.Nil_q d@@7) (CoRecursion.List.Cons_q d@@7)))
 :qid |unknown.0:0|
 :skolemid |1166|
 :pattern ( (CoRecursion.List.Cons_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.CoRecursion.List CoRecursion.List$T@@3)))
 :pattern ( (CoRecursion.List.Nil_q d@@7) ($Is DatatypeTypeType d@@7 (Tclass.CoRecursion.List CoRecursion.List$T@@3)))
)))
(assert (forall ((a@@1 T@U) (b@@1 T@U) (c T@U) ) (!  (=> (or (not (= a@@1 c)) (not true)) (=> (and ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c)) ($HeapSucc a@@1 c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |673|
 :pattern ( ($HeapSucc a@@1 b@@1) ($HeapSucc b@@1 c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |663|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 TInt) (and (= ($Box intType ($Unbox intType bx@@3)) bx@@3) ($Is intType ($Unbox intType bx@@3) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |583|
 :pattern ( ($IsBox bx@@3 TInt))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@1) t@@2) ($Is T@@3 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |594|
 :pattern ( ($IsBox ($Box T@@3 v@@1) t@@2))
)))
(assert (forall ((a@@2 T@U) (b@@2 T@U) ) (!  (=> (and (CoRecursion.List.Nil_q a@@2) (CoRecursion.List.Nil_q b@@2)) (|CoRecursion.List#Equal| a@@2 b@@2))
 :qid |unknown.0:0|
 :skolemid |1167|
 :pattern ( (|CoRecursion.List#Equal| a@@2 b@@2) (CoRecursion.List.Nil_q a@@2))
 :pattern ( (|CoRecursion.List#Equal| a@@2 b@@2) (CoRecursion.List.Nil_q b@@2))
)))
(assert (forall ((|a#0#0#0| T@U) (|a#0#1#0| T@U) ) (! (= (DatatypeCtorId (|#CoRecursion.Stream.More| |a#0#0#0| |a#0#1#0|)) |##CoRecursion.Stream.More|)
 :qid |Compilationlegacydfy.24:31|
 :skolemid |1125|
 :pattern ( (|#CoRecursion.Stream.More| |a#0#0#0| |a#0#1#0|))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (CoRecursion.Stream.head (|#CoRecursion.Stream.More| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |Compilationlegacydfy.24:31|
 :skolemid |1133|
 :pattern ( (|#CoRecursion.Stream.More| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| T@U) (|a#4#1#0| T@U) ) (! (= (CoRecursion.Stream.rest (|#CoRecursion.Stream.More| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |Compilationlegacydfy.24:31|
 :skolemid |1134|
 :pattern ( (|#CoRecursion.Stream.More| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= (DatatypeCtorId (|#CoRecursion.List.Cons| |a#9#0#0| |a#9#1#0|)) |##CoRecursion.List.Cons|)
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1152|
 :pattern ( (|#CoRecursion.List.Cons| |a#9#0#0| |a#9#1#0|))
)))
(assert (forall ((|a#13#0#0| T@U) (|a#13#1#0| T@U) ) (! (= (CoRecursion.List.car (|#CoRecursion.List.Cons| |a#13#0#0| |a#13#1#0|)) |a#13#0#0|)
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1161|
 :pattern ( (|#CoRecursion.List.Cons| |a#13#0#0| |a#13#1#0|))
)))
(assert (forall ((|a#15#0#0| T@U) (|a#15#1#0| T@U) ) (! (= (CoRecursion.List.cdr (|#CoRecursion.List.Cons| |a#15#0#0| |a#15#1#0|)) |a#15#1#0|)
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1163|
 :pattern ( (|#CoRecursion.List.Cons| |a#15#0#0| |a#15#1#0|))
)))
(assert (forall ((CoRecursion.Stream$T@@2 T@U) ) (! (= (Tclass.CoRecursion.Stream_0 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@2)) CoRecursion.Stream$T@@2)
 :qid |unknown.0:0|
 :skolemid |1087|
 :pattern ( (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@2))
)))
(assert (forall ((CoRecursion.List$T@@4 T@U) ) (! (= (Tclass.CoRecursion.List_0 (Tclass.CoRecursion.List CoRecursion.List$T@@4)) CoRecursion.List$T@@4)
 :qid |unknown.0:0|
 :skolemid |1096|
 :pattern ( (Tclass.CoRecursion.List CoRecursion.List$T@@4))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |581|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall (($h@@4 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass.CoRecursion.Cell?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) CoRecursion.Cell.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |1172|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@2) CoRecursion.Cell.data)))
)))
(assert (forall ((|a#14#0#0| T@U) (|a#14#1#0| T@U) ) (! (< (BoxRank |a#14#0#0|) (DtRank (|#CoRecursion.List.Cons| |a#14#0#0| |a#14#1#0|)))
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1162|
 :pattern ( (|#CoRecursion.List.Cons| |a#14#0#0| |a#14#1#0|))
)))
(assert (forall ((|a#16#0#0| T@U) (|a#16#1#0| T@U) ) (! (< (DtRank |a#16#1#0|) (DtRank (|#CoRecursion.List.Cons| |a#16#0#0| |a#16#1#0|)))
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1164|
 :pattern ( (|#CoRecursion.List.Cons| |a#16#0#0| |a#16#1#0|))
)))
(assert (forall (($ly@@4 T@U) (|n#0@@4| Int) ) (! (= (CoRecursion.__default.AscendingChain ($LS $ly@@4) |n#0@@4|) (CoRecursion.__default.AscendingChain $ly@@4 |n#0@@4|))
 :qid |Compilationlegacydfy.26:12|
 :skolemid |1084|
 :pattern ( (CoRecursion.__default.AscendingChain ($LS $ly@@4) |n#0@@4|))
)))
(assert (forall ((d@@8 T@U) (CoRecursion.Stream$T@@3 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (CoRecursion.Stream.More_q d@@8) ($IsAlloc DatatypeTypeType d@@8 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@3) $h@@5))) ($IsAllocBox (CoRecursion.Stream.head d@@8) CoRecursion.Stream$T@@3 $h@@5))
 :qid |unknown.0:0|
 :skolemid |1131|
 :pattern ( ($IsAllocBox (CoRecursion.Stream.head d@@8) CoRecursion.Stream$T@@3 $h@@5))
)))
(assert (forall ((d@@9 T@U) (CoRecursion.List$T@@5 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (CoRecursion.List.Cons_q d@@9) ($IsAlloc DatatypeTypeType d@@9 (Tclass.CoRecursion.List CoRecursion.List$T@@5) $h@@6))) ($IsAllocBox (CoRecursion.List.car d@@9) CoRecursion.List$T@@5 $h@@6))
 :qid |unknown.0:0|
 :skolemid |1158|
 :pattern ( ($IsAllocBox (CoRecursion.List.car d@@9) CoRecursion.List$T@@5 $h@@6))
)))
(assert  (and (forall ((t0@@0 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@0 t1@@0 t2 (MapType1Store t0@@0 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |11305|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@10 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@10)) (DtRank d@@10))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |640|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@10)))
)))
(assert (forall ((CoRecursion._default.Prefix$_T0@@3 T@U) ($ly@@5 T@U) (|n#0@@5| Int) (|s#0@@3| T@U) ) (! (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 ($LS $ly@@5) |n#0@@5| |s#0@@3|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 $ly@@5 |n#0@@5| |s#0@@3|))
 :qid |unknown.0:0|
 :skolemid |1093|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@3 ($LS $ly@@5) |n#0@@5| |s#0@@3|))
)))
(assert (forall ((CoRecursion.Stream$T@@4 T@U) (bx@@4 T@U) ) (!  (=> ($IsBox bx@@4 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@4)) bx@@4) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@4) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4))))
 :qid |unknown.0:0|
 :skolemid |1088|
 :pattern ( ($IsBox bx@@4 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@4)))
)))
(assert (forall ((CoRecursion.List$T@@6 T@U) (bx@@5 T@U) ) (!  (=> ($IsBox bx@@5 (Tclass.CoRecursion.List CoRecursion.List$T@@6)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@5)) bx@@5) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@5) (Tclass.CoRecursion.List CoRecursion.List$T@@6))))
 :qid |unknown.0:0|
 :skolemid |1097|
 :pattern ( ($IsBox bx@@5 (Tclass.CoRecursion.List CoRecursion.List$T@@6)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@6 T@U) (|n#0@@6| Int) ) (!  (=> (or (|CoRecursion.__default.AscendingChain#canCall| |n#0@@6|) (< 1 $FunctionContextHeight)) (and (|CoRecursion.__default.AscendingChain#canCall| (+ |n#0@@6| 1)) (= (CoRecursion.__default.AscendingChain ($LS $ly@@6) |n#0@@6|) (|#CoRecursion.Stream.More| ($Box intType (int_2_U |n#0@@6|)) (CoRecursion.__default.AscendingChain $ly@@6 (+ |n#0@@6| 1))))))
 :qid |Compilationlegacydfy.26:12|
 :skolemid |1091|
 :pattern ( (CoRecursion.__default.AscendingChain ($LS $ly@@6) |n#0@@6|))
))))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |672|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@6)))
)))
(assert (forall ((d@@11 T@U) (CoRecursion.Stream$T@@5 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) (and (CoRecursion.Stream.More_q d@@11) ($IsAlloc DatatypeTypeType d@@11 (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@7))) ($IsAlloc DatatypeTypeType (CoRecursion.Stream.rest d@@11) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@7))
 :qid |unknown.0:0|
 :skolemid |1132|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.Stream.rest d@@11) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@5) $h@@7))
)))
(assert (forall ((d@@12 T@U) (CoRecursion.List$T@@7 T@U) ($h@@8 T@U) ) (!  (=> (and ($IsGoodHeap $h@@8) (and (CoRecursion.List.Cons_q d@@12) ($IsAlloc DatatypeTypeType d@@12 (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@8))) ($IsAlloc DatatypeTypeType (CoRecursion.List.cdr d@@12) (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@8))
 :qid |unknown.0:0|
 :skolemid |1159|
 :pattern ( ($IsAlloc DatatypeTypeType (CoRecursion.List.cdr d@@12) (Tclass.CoRecursion.List CoRecursion.List$T@@7) $h@@8))
)))
(assert (= (Tag Tclass._System.nat) Tagclass._System.nat))
(assert (= (TagFamily Tclass._System.nat) tytagFamily$nat))
(assert (= (Tag Tclass.CoRecursion.Cell) Tagclass.CoRecursion.Cell))
(assert (= (TagFamily Tclass.CoRecursion.Cell) tytagFamily$Cell))
(assert (= (Tag Tclass.CoRecursion.Cell?) Tagclass.CoRecursion.Cell?))
(assert (= (TagFamily Tclass.CoRecursion.Cell?) tytagFamily$Cell))
(assert (= |#CoRecursion.List.Nil| (Lit DatatypeTypeType |#CoRecursion.List.Nil|)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (|#CoRecursion.List.Cons| (Lit BoxType |a#12#0#0|) (Lit DatatypeTypeType |a#12#1#0|)) (Lit DatatypeTypeType (|#CoRecursion.List.Cons| |a#12#0#0| |a#12#1#0|)))
 :qid |Compilationlegacydfy.31:33|
 :skolemid |1160|
 :pattern ( (|#CoRecursion.List.Cons| (Lit BoxType |a#12#0#0|) (Lit DatatypeTypeType |a#12#1#0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |574|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@8)) (Lit BoxType ($Box T@@5 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |572|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@8)))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((CoRecursion._default.Prefix$_T0@@4 T@U) ($ly@@7 T@U) (|n#0@@7| Int) (|s#0@@4| T@U) ) (!  (=> (or (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@4 |n#0@@7| |s#0@@4|) (and (< 1 $FunctionContextHeight) (and (<= (LitInt 0) |n#0@@7|) ($Is DatatypeTypeType |s#0@@4| (Tclass.CoRecursion.Stream CoRecursion._default.Prefix$_T0@@4))))) (and (=> (or (not (= |n#0@@7| (LitInt 0))) (not true)) (and (CoRecursion.Stream.More_q |s#0@@4|) (and (CoRecursion.Stream.More_q |s#0@@4|) (|CoRecursion.__default.Prefix#canCall| CoRecursion._default.Prefix$_T0@@4 (- |n#0@@7| 1) (CoRecursion.Stream.rest |s#0@@4|))))) (= (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 ($LS $ly@@7) |n#0@@7| |s#0@@4|) (ite (= |n#0@@7| (LitInt 0)) |#CoRecursion.List.Nil| (|#CoRecursion.List.Cons| (CoRecursion.Stream.head |s#0@@4|) (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 $ly@@7 (- |n#0@@7| 1) (CoRecursion.Stream.rest |s#0@@4|)))))))
 :qid |unknown.0:0|
 :skolemid |1101|
 :pattern ( (CoRecursion.__default.Prefix CoRecursion._default.Prefix$_T0@@4 ($LS $ly@@7) |n#0@@7| |s#0@@4|))
))))
(assert (forall ((h@@4 T@U) (v@@2 T@U) ) (! ($IsAlloc intType v@@2 TInt h@@4)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |617|
 :pattern ( ($IsAlloc intType v@@2 TInt h@@4))
)))
(assert (forall ((CoRecursion.Stream$T@@6 T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h@@9 T@U) ) (!  (=> ($IsGoodHeap $h@@9) (= ($IsAlloc DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@9)  (and ($IsAllocBox |a#2#0#0@@0| CoRecursion.Stream$T@@6 $h@@9) ($IsAlloc DatatypeTypeType |a#2#1#0@@0| (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@9))))
 :qid |unknown.0:0|
 :skolemid |1130|
 :pattern ( ($IsAlloc DatatypeTypeType (|#CoRecursion.Stream.More| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass.CoRecursion.Stream CoRecursion.Stream$T@@6) $h@@9))
)))
(assert (forall ((CoRecursion.List$T@@8 T@U) (|a#11#0#0@@0| T@U) (|a#11#1#0@@0| T@U) ($h@@10 T@U) ) (!  (=> ($IsGoodHeap $h@@10) (= ($IsAlloc DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@10)  (and ($IsAllocBox |a#11#0#0@@0| CoRecursion.List$T@@8 $h@@10) ($IsAlloc DatatypeTypeType |a#11#1#0@@0| (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@10))))
 :qid |unknown.0:0|
 :skolemid |1157|
 :pattern ( ($IsAlloc DatatypeTypeType (|#CoRecursion.List.Cons| |a#11#0#0@@0| |a#11#1#0@@0|) (Tclass.CoRecursion.List CoRecursion.List$T@@8) $h@@10))
)))
(assert (forall ((v@@3 T@U) ) (! ($Is intType v@@3 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |596|
 :pattern ( ($Is intType v@@3 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun |l#0@1| () T@U)
(declare-fun |_mcc#0#0_0_0@1| () Int)
(declare-fun |_mcc#1#0_0_0@1| () T@U)
(declare-fun |l#0@2| () T@U)
(declare-fun |lo##0@0| () Int)
(declare-fun |hi##0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun $Heap@2 () T@U)
(declare-fun |lo##1@0| () Int)
(declare-fun |hi##1@0| () Int)
(declare-fun |$w$loop#0@0| () Bool)
(declare-fun |m#0@1| () Int)
(declare-fun |$rhs#0@0| () Int)
(declare-fun |$rhs#1@0| () Int)
(declare-fun |##n#1@0| () Int)
(declare-fun $Heap@@0 () T@U)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun |l#0@0| () T@U)
(declare-fun |m#0@0| () Int)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@0 () T@U)
(declare-fun $Heap@1 () T@U)
(declare-fun |##n#0@0| () Int)
(declare-fun $LZ () T@U)
(declare-fun |mr#0@0| () T@U)
(declare-fun |defass#cell#0| () Bool)
(declare-fun |cell#0| () T@U)
(declare-fun |mr#0| () T@U)
(declare-fun |l#0@@0| () T@U)
(set-info :boogie-vc-id Impl$$CoRecursion.__default.TestMain)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon15_Else_correct true))
(let ((anon15_Then_correct  (=> (and (= |l#0@1| |#CoRecursion.List.Nil|) (= (ControlFlow 0 11) (- 0 10))) false)))
(let ((anon14_Else_correct  (=> (or (not (= |l#0@1| (|#CoRecursion.List.Cons| ($Box intType (int_2_U |_mcc#0#0_0_0@1|)) |_mcc#1#0_0_0@1|))) (not true)) (and (=> (= (ControlFlow 0 13) 11) anon15_Then_correct) (=> (= (ControlFlow 0 13) 12) anon15_Else_correct)))))
(let ((anon14_Then_correct  (=> (and (= |l#0@1| (|#CoRecursion.List.Cons| ($Box intType (int_2_U |_mcc#0#0_0_0@1|)) |_mcc#1#0_0_0@1|)) ($Is DatatypeTypeType |_mcc#1#0_0_0@1| (Tclass.CoRecursion.List TInt))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (CoRecursion.List.Cons_q |l#0@1|)) (=> (CoRecursion.List.Cons_q |l#0@1|) (and (=> (= (ControlFlow 0 7) (- 0 8)) (CoRecursion.List.Cons_q |l#0@1|)) (=> (CoRecursion.List.Cons_q |l#0@1|) (=> (and (= |l#0@2| (CoRecursion.List.cdr |l#0@1|)) (= (ControlFlow 0 7) (- 0 6))) (< (DtRank |l#0@2|) (DtRank |l#0@1|))))))))))
(let ((anon13_Else_correct  (=> (not (|CoRecursion.List#Equal| |l#0@1| |#CoRecursion.List.Nil|)) (and (=> (= (ControlFlow 0 14) 7) anon14_Then_correct) (=> (= (ControlFlow 0 14) 13) anon14_Else_correct)))))
(let ((anon13_Then_correct  (=> (|CoRecursion.List#Equal| |l#0@1| |#CoRecursion.List.Nil|) (=> (and (= |lo##0@0| (LitInt 0)) (= |hi##0@0| (LitInt 10))) (and (=> (= (ControlFlow 0 4) (- 0 5)) (< |lo##0@0| |hi##0@0|)) (=> (< |lo##0@0| |hi##0@0|) (=> (and (and (and ($IsGoodHeap $Heap@3) ($IsHeapAnchor $Heap@3)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@4)))
 :qid |Compilationlegacydfy.70:10|
 :skolemid |1115|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@4))
))) (and (and ($HeapSucc $Heap@2 $Heap@3) (= |lo##1@0| (LitInt 0))) (and (= |hi##1@0| (LitInt 10)) (= (ControlFlow 0 4) (- 0 3))))) (< |lo##1@0| |hi##1@0|))))))))
(let ((anon12_Else_correct  (=> (and |$w$loop#0@0| (|$IsA#CoRecursion.List| |l#0@1|)) (and (=> (= (ControlFlow 0 15) 4) anon13_Then_correct) (=> (= (ControlFlow 0 15) 14) anon13_Else_correct)))))
(let ((anon12_Then_correct true))
(let ((anon11_LoopBody_correct  (and (=> (= (ControlFlow 0 16) 2) anon12_Then_correct) (=> (= (ControlFlow 0 16) 15) anon12_Else_correct))))
(let ((anon11_LoopDone_correct true))
(let ((anon11_LoopHead_correct  (=> (and ($Is DatatypeTypeType |l#0@1| (Tclass.CoRecursion.List TInt)) ($IsAlloc DatatypeTypeType |l#0@1| (Tclass.CoRecursion.List TInt) $Heap@2)) (=> (and (and (and (and (and (and (not false) (= |m#0@1| 30)) true) (= |$rhs#0@0| 40)) (= |$rhs#1@0| 60)) (= |##n#1@0| 5)) (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5)))
 :qid |Compilationlegacydfy.57:5|
 :skolemid |1110|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@5))
)) ($HeapSucc $Heap@2 $Heap@2)) (and (forall (($o@@6 T@U) ($f@@0 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) alloc)))) (or (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) $f@@0) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) $f@@0)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $o@@6 $f@@0))))
 :qid |Compilationlegacydfy.57:5|
 :skolemid |1111|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $o@@6) $f@@0))
)) (<= (DtRank |l#0@1|) (DtRank |l#0@0|))))) (and (=> (= (ControlFlow 0 17) 1) anon11_LoopDone_correct) (=> (= (ControlFlow 0 17) 16) anon11_LoopBody_correct))))))
(let ((anon0_correct  (=> (and (and (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (= |m#0@0| (LitInt 17))) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass.CoRecursion.Cell?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc)))) (= $Heap@0 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)))) (and (=> (= (ControlFlow 0 18) (- 0 27)) true) (and (=> (= (ControlFlow 0 18) (- 0 26)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 25)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 CoRecursion.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 CoRecursion.Cell.data)) (=> (= |$rhs#0@0| (LitInt 40)) (=> (and (= $Heap@1 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $nw@0) CoRecursion.Cell.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@1)) (and (=> (= (ControlFlow 0 18) (- 0 24)) true) (and (=> (= (ControlFlow 0 18) (- 0 23)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (= |##n#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data)))) (=> (and ($IsAlloc intType (int_2_U |##n#0@0|) TInt $Heap@1) (|CoRecursion.__default.AscendingChain#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data))))) (=> (and (and (CoRecursion.Stream.More_q (CoRecursion.__default.AscendingChain ($LS $LZ) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data))))) (|CoRecursion.__default.AscendingChain#canCall| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data))))) (and (= |mr#0@0| (|#CoRecursion.Stream.More| ($Box intType (int_2_U (LitInt 400))) (|#CoRecursion.Stream.More| ($Box intType (int_2_U (LitInt 320))) (CoRecursion.__default.AscendingChain ($LS $LZ) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data))))))) (= |m#0@1| (LitInt 30)))) (and (=> (= (ControlFlow 0 18) (- 0 22)) true) (and (=> (= (ControlFlow 0 18) (- 0 21)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 18) (- 0 20)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 CoRecursion.Cell.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 CoRecursion.Cell.data)) (=> (= |$rhs#1@0| (LitInt 60)) (=> (and (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) CoRecursion.Cell.data ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@2)) (and (=> (= (ControlFlow 0 18) (- 0 19)) ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat)) (=> ($Is intType (int_2_U (LitInt 5)) Tclass._System.nat) (=> (= |##n#1@0| (LitInt 5)) (=> (and ($IsAlloc intType (int_2_U |##n#1@0|) Tclass._System.nat $Heap@2) ($IsAlloc DatatypeTypeType |mr#0@0| (Tclass.CoRecursion.Stream TInt) $Heap@2)) (=> (and (and (|CoRecursion.__default.Prefix#canCall| TInt (LitInt 5) |mr#0@0|) (|CoRecursion.__default.Prefix#canCall| TInt (LitInt 5) |mr#0@0|)) (and (= |l#0@0| (CoRecursion.__default.Prefix TInt ($LS $LZ) (LitInt 5) |mr#0@0|)) (= (ControlFlow 0 18) 17))) anon11_LoopHead_correct))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (and (=> |defass#cell#0| (and ($Is refType |cell#0| Tclass.CoRecursion.Cell) ($IsAlloc refType |cell#0| Tclass.CoRecursion.Cell $Heap@@0))) true)) (and (and ($Is DatatypeTypeType |mr#0| (Tclass.CoRecursion.Stream TInt)) ($IsAlloc DatatypeTypeType |mr#0| (Tclass.CoRecursion.Stream TInt) $Heap@@0)) true)) (and (and (and ($Is DatatypeTypeType |l#0@@0| (Tclass.CoRecursion.List TInt)) ($IsAlloc DatatypeTypeType |l#0@@0| (Tclass.CoRecursion.List TInt) $Heap@@0)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 28) 18)))) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
(set-option :rlimit 0)
; did a full reset
(reset)
