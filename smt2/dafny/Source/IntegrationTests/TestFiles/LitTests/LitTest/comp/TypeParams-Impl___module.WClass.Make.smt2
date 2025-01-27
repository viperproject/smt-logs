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
(declare-fun allocName () T@U)
(declare-fun Tagclass._module.WClass () T@U)
(declare-fun Tagclass._module.Stream () T@U)
(declare-fun class._module.WClass? () T@U)
(declare-fun Tagclass._module.WClass? () T@U)
(declare-fun |##_module.Stream.Next| () T@U)
(declare-fun tytagFamily$WClass () T@U)
(declare-fun tytagFamily$Stream () T@U)
(declare-fun field$k1 () T@U)
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
(declare-fun DeclName (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.WClass (T@U) T@U)
(declare-fun Tclass._module.WClass? (T@U) T@U)
(declare-fun _module.WClass.Generate (T@U T@U T@U) T@U)
(declare-fun $LS (T@U) T@U)
(declare-fun _module.Stream.Next_q (T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun Tclass._module.Stream (T@U) T@U)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun _module.WClass.k1 () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun |#_module.Stream.Next| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.WClass.k0 (T@U T@U) T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun |_module.WClass.Generate#canCall| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun Tag (T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun _module.Stream._h7 (T@U) T@U)
(declare-fun _module.Stream._h8 (T@U) T@U)
(declare-fun Tclass._module.WClass_0 (T@U) T@U)
(declare-fun Tclass._module.Stream_0 (T@U) T@U)
(declare-fun Tclass._module.WClass?_0 (T@U) T@U)
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
(assert (distinct alloc allocName Tagclass._module.WClass Tagclass._module.Stream class._module.WClass? Tagclass._module.WClass? |##_module.Stream.Next| tytagFamily$WClass tytagFamily$Stream field$k1)
)
(assert (= (FDim alloc) 0))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall ((_module.WClass$W T@U) (|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h) ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h))
 :qid |unknown.0:0|
 :skolemid |877|
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass _module.WClass$W) $h))
 :pattern ( ($IsAlloc refType |c#0| (Tclass._module.WClass? _module.WClass$W) $h))
)))
(assert (forall ((_module.WClass$W@@0 T@U) ($ly T@U) (|w#0| T@U) ) (! (= (_module.WClass.Generate _module.WClass$W@@0 ($LS $ly) |w#0|) (_module.WClass.Generate _module.WClass$W@@0 $ly |w#0|))
 :qid |unknown.0:0|
 :skolemid |869|
 :pattern ( (_module.WClass.Generate _module.WClass$W@@0 ($LS $ly) |w#0|))
)))
(assert (= (Ctor DatatypeTypeType) 4))
(assert (forall ((_module.Stream$G T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$G)) (_module.Stream.Next_q d))
 :qid |unknown.0:0|
 :skolemid |916|
 :pattern ( (_module.Stream.Next_q d) ($Is DatatypeTypeType d (Tclass._module.Stream _module.Stream$G)))
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
(assert (forall ((_module.WClass$W@@1 T@U) ($o T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o (Tclass._module.WClass? _module.WClass$W@@1) $h@@0)  (or (= $o null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o) alloc)))))
 :qid |unknown.0:0|
 :skolemid |861|
 :pattern ( ($IsAlloc refType $o (Tclass._module.WClass? _module.WClass$W@@1) $h@@0))
)))
(assert (= (FDim _module.WClass.k1) 0))
(assert (= (FieldOfDecl class._module.WClass? field$k1) _module.WClass.k1))
(assert  (not ($IsGhostField _module.WClass.k1)))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
)))
 :qid |DafnyPreludebpl.608:15|
 :skolemid |119|
 :pattern ( ($HeapSucc h k))
)))
(assert (forall ((_module.Stream$G@@0 T@U) (|a#10#0#0| T@U) (|a#10#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.Stream.Next| |a#10#0#0| |a#10#1#0|) (Tclass._module.Stream _module.Stream$G@@0))  (and ($IsBox |a#10#0#0| _module.Stream$G@@0) ($Is DatatypeTypeType |a#10#1#0| (Tclass._module.Stream _module.Stream$G@@0))))
 :qid |unknown.0:0|
 :skolemid |909|
 :pattern ( ($Is DatatypeTypeType (|#_module.Stream.Next| |a#10#0#0| |a#10#1#0|) (Tclass._module.Stream _module.Stream$G@@0)))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Stream.Next_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Stream.Next|))
 :qid |unknown.0:0|
 :skolemid |906|
 :pattern ( (_module.Stream.Next_q d@@0))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Stream.Next_q d@@1) (exists ((|a#9#0#0| T@U) (|a#9#1#0| T@U) ) (! (= d@@1 (|#_module.Stream.Next| |a#9#0#0| |a#9#1#0|))
 :qid |TypeParamsdfy.146:29|
 :skolemid |907|
)))
 :qid |unknown.0:0|
 :skolemid |908|
 :pattern ( (_module.Stream.Next_q d@@1))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@2 T@U) ($o@@0 T@U) ) (!  (=> (and (or (not (= $o@@0 null)) (not true)) (= (dtype $o@@0) (Tclass._module.WClass? _module.WClass$W@@2))) ($Is DatatypeTypeType (_module.WClass.k0 _module.WClass$W@@2 $o@@0) (Tclass._module.Stream _module.WClass$W@@2)))
 :qid |unknown.0:0|
 :skolemid |862|
 :pattern ( (_module.WClass.k0 _module.WClass$W@@2 $o@@0))
))))
(assert ($IsGhostField alloc))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.WClass$W@@3 T@U) ($ly@@0 T@U) (|w#0@@0| T@U) ) (!  (=> (or (|_module.WClass.Generate#canCall| _module.WClass$W@@3 |w#0@@0|) (and (< 1 $FunctionContextHeight) ($IsBox |w#0@@0| _module.WClass$W@@3))) (and (|_module.WClass.Generate#canCall| _module.WClass$W@@3 |w#0@@0|) (= (_module.WClass.Generate _module.WClass$W@@3 ($LS $ly@@0) |w#0@@0|) (|#_module.Stream.Next| |w#0@@0| (_module.WClass.Generate _module.WClass$W@@3 $ly@@0 |w#0@@0|)))))
 :qid |unknown.0:0|
 :skolemid |874|
 :pattern ( (_module.WClass.Generate _module.WClass$W@@3 ($LS $ly@@0) |w#0@@0|))
))))
(assert (forall ((_module.WClass$W@@4 T@U) (|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| (Tclass._module.WClass _module.WClass$W@@4))  (and ($Is refType |c#0@@0| (Tclass._module.WClass? _module.WClass$W@@4)) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |876|
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.WClass _module.WClass$W@@4)))
 :pattern ( ($Is refType |c#0@@0| (Tclass._module.WClass? _module.WClass$W@@4)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx t@@0 h@@1) ($IsAllocBox bx t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@0 T@U) (t@@1 T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@1 v@@0 t@@1 h@@2) ($IsAlloc T@@1 v@@0 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@1 v@@0 t@@1 h@@2))
)))
(assert (forall ((_module.WClass$W@@5 T@U) ) (!  (and (= (Tag (Tclass._module.WClass _module.WClass$W@@5)) Tagclass._module.WClass) (= (TagFamily (Tclass._module.WClass _module.WClass$W@@5)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |686|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@5))
)))
(assert (forall ((_module.Stream$G@@1 T@U) ) (!  (and (= (Tag (Tclass._module.Stream _module.Stream$G@@1)) Tagclass._module.Stream) (= (TagFamily (Tclass._module.Stream _module.Stream$G@@1)) tytagFamily$Stream))
 :qid |unknown.0:0|
 :skolemid |704|
 :pattern ( (Tclass._module.Stream _module.Stream$G@@1))
)))
(assert (forall ((_module.WClass$W@@6 T@U) ) (!  (and (= (Tag (Tclass._module.WClass? _module.WClass$W@@6)) Tagclass._module.WClass?) (= (TagFamily (Tclass._module.WClass? _module.WClass$W@@6)) tytagFamily$WClass))
 :qid |unknown.0:0|
 :skolemid |857|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@6))
)))
(assert  (=> (< 1 $FunctionContextHeight) (forall ((_module.WClass$W@@7 T@U) ($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) (Tclass._module.WClass? _module.WClass$W@@7)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc DatatypeTypeType (_module.WClass.k0 _module.WClass$W@@7 $o@@1) (Tclass._module.Stream _module.WClass$W@@7) $h@@1))
 :qid |unknown.0:0|
 :skolemid |863|
 :pattern ( (_module.WClass.k0 _module.WClass$W@@7 $o@@1) ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))
))))
(assert (forall ((_module.WClass$W@@8 T@U) ($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) (Tclass._module.WClass? _module.WClass$W@@8)))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) alloc)))) ($IsAlloc DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.WClass.k1)) (Tclass._module.Stream _module.WClass$W@@8) $h@@2))
 :qid |unknown.0:0|
 :skolemid |865|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.WClass.k1)) (Tclass._module.WClass? _module.WClass$W@@8))
)))
(assert (forall ((_module.WClass$W@@9 T@U) ($o@@3 T@U) ) (! (= ($Is refType $o@@3 (Tclass._module.WClass? _module.WClass$W@@9))  (or (= $o@@3 null) (= (dtype $o@@3) (Tclass._module.WClass? _module.WClass$W@@9))))
 :qid |unknown.0:0|
 :skolemid |860|
 :pattern ( ($Is refType $o@@3 (Tclass._module.WClass? _module.WClass$W@@9)))
)))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((v@@1 T@U) (t@@2 T@U) (T@@2 T@T) ) (! (= ($IsBox ($Box T@@2 v@@1) t@@2) ($Is T@@2 v@@1 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@2 v@@1) t@@2))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall ((_module.WClass$W@@10 T@U) ($ly@@1 T@U) (|w#0@@1| T@U) ) (!  (=> (or (|_module.WClass.Generate#canCall| _module.WClass$W@@10 |w#0@@1|) (and (< 1 $FunctionContextHeight) ($IsBox |w#0@@1| _module.WClass$W@@10))) ($Is DatatypeTypeType (_module.WClass.Generate _module.WClass$W@@10 $ly@@1 |w#0@@1|) (Tclass._module.Stream _module.WClass$W@@10)))
 :qid |unknown.0:0|
 :skolemid |871|
 :pattern ( (_module.WClass.Generate _module.WClass$W@@10 $ly@@1 |w#0@@1|))
))))
(assert (forall ((|a#8#0#0| T@U) (|a#8#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.Stream.Next| |a#8#0#0| |a#8#1#0|)) |##_module.Stream.Next|)
 :qid |TypeParamsdfy.146:29|
 :skolemid |905|
 :pattern ( (|#_module.Stream.Next| |a#8#0#0| |a#8#1#0|))
)))
(assert (forall ((|a#11#0#0| T@U) (|a#11#1#0| T@U) ) (! (= (_module.Stream._h7 (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|)) |a#11#0#0|)
 :qid |TypeParamsdfy.146:29|
 :skolemid |913|
 :pattern ( (|#_module.Stream.Next| |a#11#0#0| |a#11#1#0|))
)))
(assert (forall ((|a#12#0#0| T@U) (|a#12#1#0| T@U) ) (! (= (_module.Stream._h8 (|#_module.Stream.Next| |a#12#0#0| |a#12#1#0|)) |a#12#1#0|)
 :qid |TypeParamsdfy.146:29|
 :skolemid |914|
 :pattern ( (|#_module.Stream.Next| |a#12#0#0| |a#12#1#0|))
)))
(assert (forall ((_module.WClass$W@@11 T@U) ) (! (= (Tclass._module.WClass_0 (Tclass._module.WClass _module.WClass$W@@11)) _module.WClass$W@@11)
 :qid |unknown.0:0|
 :skolemid |687|
 :pattern ( (Tclass._module.WClass _module.WClass$W@@11))
)))
(assert (forall ((_module.Stream$G@@2 T@U) ) (! (= (Tclass._module.Stream_0 (Tclass._module.Stream _module.Stream$G@@2)) _module.Stream$G@@2)
 :qid |unknown.0:0|
 :skolemid |705|
 :pattern ( (Tclass._module.Stream _module.Stream$G@@2))
)))
(assert (forall ((_module.WClass$W@@12 T@U) ) (! (= (Tclass._module.WClass?_0 (Tclass._module.WClass? _module.WClass$W@@12)) _module.WClass$W@@12)
 :qid |unknown.0:0|
 :skolemid |858|
 :pattern ( (Tclass._module.WClass? _module.WClass$W@@12))
)))
(assert (forall ((x@@3 T@U) (T@@3 T@T) ) (! (= ($Unbox T@@3 ($Box T@@3 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@3 x@@3))
)))
(assert (forall ((d@@2 T@U) (_module.Stream$G@@3 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Stream.Next_q d@@2) ($IsAlloc DatatypeTypeType d@@2 (Tclass._module.Stream _module.Stream$G@@3) $h@@3))) ($IsAllocBox (_module.Stream._h7 d@@2) _module.Stream$G@@3 $h@@3))
 :qid |unknown.0:0|
 :skolemid |911|
 :pattern ( ($IsAllocBox (_module.Stream._h7 d@@2) _module.Stream$G@@3 $h@@3))
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
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o@@4 T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))  (=> (and (or (not (= $o@@4 |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o@@4) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |1005|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@4 $f))
)))
(assert (forall ((_module.WClass$W@@13 T@U) ($h@@4 T@U) ($o@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (or (not (= $o@@5 null)) (not true)) (= (dtype $o@@5) (Tclass._module.WClass? _module.WClass$W@@13)))) ($Is DatatypeTypeType ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.WClass.k1)) (Tclass._module.Stream _module.WClass$W@@13)))
 :qid |unknown.0:0|
 :skolemid |864|
 :pattern ( ($Unbox DatatypeTypeType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@4 $o@@5) _module.WClass.k1)) (Tclass._module.WClass? _module.WClass$W@@13))
)))
(assert (forall ((_module.WClass$W@@14 T@U) (bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 (Tclass._module.WClass _module.WClass$W@@14)) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) (Tclass._module.WClass _module.WClass$W@@14))))
 :qid |unknown.0:0|
 :skolemid |688|
 :pattern ( ($IsBox bx@@0 (Tclass._module.WClass _module.WClass$W@@14)))
)))
(assert (forall ((_module.Stream$G@@4 T@U) (bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$G@@4)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) (Tclass._module.Stream _module.Stream$G@@4))))
 :qid |unknown.0:0|
 :skolemid |706|
 :pattern ( ($IsBox bx@@1 (Tclass._module.Stream _module.Stream$G@@4)))
)))
(assert (forall ((_module.WClass$W@@15 T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._module.WClass? _module.WClass$W@@15)) (and (= ($Box refType ($Unbox refType bx@@2)) bx@@2) ($Is refType ($Unbox refType bx@@2) (Tclass._module.WClass? _module.WClass$W@@15))))
 :qid |unknown.0:0|
 :skolemid |859|
 :pattern ( ($IsBox bx@@2 (Tclass._module.WClass? _module.WClass$W@@15)))
)))
(assert (forall ((h@@3 T@U) (r T@U) (f T@U) (x@@4 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4))) ($HeapSucc h@@3 (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@3 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 r) f x@@4)))
)))
(assert (forall ((d@@3 T@U) (_module.Stream$G@@5 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Stream.Next_q d@@3) ($IsAlloc DatatypeTypeType d@@3 (Tclass._module.Stream _module.Stream$G@@5) $h@@5))) ($IsAlloc DatatypeTypeType (_module.Stream._h8 d@@3) (Tclass._module.Stream _module.Stream$G@@5) $h@@5))
 :qid |unknown.0:0|
 :skolemid |912|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.Stream._h8 d@@3) (Tclass._module.Stream _module.Stream$G@@5) $h@@5))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($Heap T@U) (_module.WClass$W@@16 T@U) ($ly@@2 T@U) (|w#0@@2| T@U) ) (!  (=> (and (or (|_module.WClass.Generate#canCall| _module.WClass$W@@16 |w#0@@2|) (and (< 1 $FunctionContextHeight) (and ($IsBox |w#0@@2| _module.WClass$W@@16) ($IsAllocBox |w#0@@2| _module.WClass$W@@16 $Heap)))) ($IsGoodHeap $Heap)) ($IsAlloc DatatypeTypeType (_module.WClass.Generate _module.WClass$W@@16 $ly@@2 |w#0@@2|) (Tclass._module.Stream _module.WClass$W@@16) $Heap))
 :qid |TypeParamsdfy.124:19|
 :skolemid |872|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.WClass.Generate _module.WClass$W@@16 $ly@@2 |w#0@@2|) (Tclass._module.Stream _module.WClass$W@@16) $Heap))
))))
(assert (forall ((_module.Stream$G@@6 T@U) (|a#10#0#0@@0| T@U) (|a#10#1#0@@0| T@U) ($h@@6 T@U) ) (!  (=> ($IsGoodHeap $h@@6) (= ($IsAlloc DatatypeTypeType (|#_module.Stream.Next| |a#10#0#0@@0| |a#10#1#0@@0|) (Tclass._module.Stream _module.Stream$G@@6) $h@@6)  (and ($IsAllocBox |a#10#0#0@@0| _module.Stream$G@@6 $h@@6) ($IsAlloc DatatypeTypeType |a#10#1#0@@0| (Tclass._module.Stream _module.Stream$G@@6) $h@@6))))
 :qid |unknown.0:0|
 :skolemid |910|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_module.Stream.Next| |a#10#0#0@@0| |a#10#1#0@@0|) (Tclass._module.Stream _module.Stream$G@@6) $h@@6))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@0 () T@U)
(declare-fun |w#0@@3| () T@U)
(declare-fun _module.WClass$W@@17 () T@U)
(declare-fun $LZ () T@U)
(declare-fun this.k0@0 () T@U)
(declare-fun this.k1@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id Impl$$_module.WClass.Make)
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
 (=> (= (ControlFlow 0 0) 4) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@0 alloc false)) (=> (and ($IsAllocBox |w#0@@3| _module.WClass$W@@17 $Heap@@0) (|_module.WClass.Generate#canCall| _module.WClass$W@@17 |w#0@@3|)) (=> (and (and (and (_module.Stream.Next_q (_module.WClass.Generate _module.WClass$W@@17 ($LS $LZ) |w#0@@3|)) (|_module.WClass.Generate#canCall| _module.WClass$W@@17 |w#0@@3|)) (and (= this.k0@0 (_module.WClass.Generate _module.WClass$W@@17 ($LS $LZ) |w#0@@3|)) ($IsAllocBox |w#0@@3| _module.WClass$W@@17 $Heap@@0))) (and (and (|_module.WClass.Generate#canCall| _module.WClass$W@@17 |w#0@@3|) (_module.Stream.Next_q (_module.WClass.Generate _module.WClass$W@@17 ($LS $LZ) |w#0@@3|))) (and (|_module.WClass.Generate#canCall| _module.WClass$W@@17 |w#0@@3|) (= this.k1@0 (_module.WClass.Generate _module.WClass$W@@17 ($LS $LZ) |w#0@@3|))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) true)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@0) ($IsHeapAnchor $Heap@@0)) (=> (and (and ($IsBox |w#0@@3| _module.WClass$W@@17) ($IsAllocBox |w#0@@3| _module.WClass$W@@17 $Heap@@0)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 4) 2))) anon0_correct))))
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
