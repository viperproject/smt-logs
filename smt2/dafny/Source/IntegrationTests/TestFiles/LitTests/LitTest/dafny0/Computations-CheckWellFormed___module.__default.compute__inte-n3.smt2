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
(declare-fun TagMap () T@U)
(declare-fun alloc () T@U)
(declare-fun |##_System._tuple#2._#Make2| () T@U)
(declare-fun Tagclass._System.Tuple2 () T@U)
(declare-fun Tagclass._module.exp () T@U)
(declare-fun |##_module.exp.Plus| () T@U)
(declare-fun |##_module.exp.Num| () T@U)
(declare-fun |##_module.exp.Var| () T@U)
(declare-fun |tytagFamily$_tuple#2| () T@U)
(declare-fun tytagFamily$exp () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.exp.Plus| (T@U T@U) T@U)
(declare-fun Tclass._module.exp () T@U)
(declare-fun _System.Tuple2.___hMake2_q (T@U) Bool)
(declare-fun Tclass._System.Tuple2 (T@U T@U) T@U)
(declare-fun |#_System._tuple#2._#Make2| (T@U T@U) T@U)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun refType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.interp (T@U T@U T@U) Int)
(declare-fun $LS (T@U) T@U)
(declare-fun MapType () T@T)
(declare-fun |_module.__default.interp#canCall| (T@U T@U) Bool)
(declare-fun TMap (T@U T@U) T@U)
(declare-fun _module.exp.Plus_q (T@U) Bool)
(declare-fun _module.exp.e1 (T@U) T@U)
(declare-fun _module.exp.e2 (T@U) T@U)
(declare-fun _module.exp.Num_q (T@U) Bool)
(declare-fun _module.exp.n (T@U) Int)
(declare-fun _module.exp.Var_q (T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun |Map#Domain| (T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun _module.exp.x (T@U) Int)
(declare-fun |Map#Elements| (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun SetType () T@T)
(declare-fun TSet (T@U) T@U)
(declare-fun |#_module.exp.Num| (Int) T@U)
(declare-fun |#_module.exp.Var| (Int) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun $HeapSuccGhost (T@U T@U) Bool)
(declare-fun Inv0_TMap (T@U) T@U)
(declare-fun Inv1_TMap (T@U) T@U)
(declare-fun Tclass._System.Tuple2_0 (T@U) T@U)
(declare-fun Tclass._System.Tuple2_1 (T@U) T@U)
(declare-fun _System.Tuple2._0 (T@U) T@U)
(declare-fun _System.Tuple2._1 (T@U) T@U)
(declare-fun Inv0_TSet (T@U) T@U)
(declare-fun BoxRank (T@U) Int)
(declare-fun DtRank (T@U) Int)
(declare-fun |Map#Empty| () T@U)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
(declare-fun TagFamily (T@U) T@U)
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
(assert (distinct TInt TagInt TagSet TagMap alloc |##_System._tuple#2._#Make2| Tagclass._System.Tuple2 Tagclass._module.exp |##_module.exp.Plus| |##_module.exp.Num| |##_module.exp.Var| |tytagFamily$_tuple#2| tytagFamily$exp)
)
(assert (= (Tag TInt) TagInt))
(assert (= (Ctor DatatypeTypeType) 3))
(assert (forall ((|a#25#0#0| T@U) (|a#25#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_module.exp.Plus| |a#25#0#0| |a#25#1#0|) Tclass._module.exp)  (and ($Is DatatypeTypeType |a#25#0#0| Tclass._module.exp) ($Is DatatypeTypeType |a#25#1#0| Tclass._module.exp)))
 :qid |Computationsdfy.81:21|
 :skolemid |746|
 :pattern ( ($Is DatatypeTypeType (|#_module.exp.Plus| |a#25#0#0| |a#25#1#0|) Tclass._module.exp))
)))
(assert (forall ((|_System._tuple#2$T0| T@U) (|_System._tuple#2$T1| T@U) (d T@U) ) (!  (=> ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)) (_System.Tuple2.___hMake2_q d))
 :qid |unknown.0:0|
 :skolemid |468|
 :pattern ( (_System.Tuple2.___hMake2_q d) ($Is DatatypeTypeType d (Tclass._System.Tuple2 |_System._tuple#2$T0| |_System._tuple#2$T1|)))
)))
(assert (forall ((|_System._tuple#2$T0@@0| T@U) (|_System._tuple#2$T1@@0| T@U) (|a#2#0#0| T@U) (|a#2#1#0| T@U) ) (! (= ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|))  (and ($IsBox |a#2#0#0| |_System._tuple#2$T0@@0|) ($IsBox |a#2#1#0| |_System._tuple#2$T1@@0|)))
 :qid |unknown.0:0|
 :skolemid |456|
 :pattern ( ($Is DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0| |a#2#1#0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@0| |_System._tuple#2$T1@@0|)))
)))
(assert  (and (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (= (Ctor refType) 6)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 7)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall ((h T@U) (k T@U) ) (!  (=> ($HeapSucc h k) (forall ((o T@U) ) (!  (=> (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h o) alloc))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))))
 :qid |DafnyPreludebpl.609:30|
 :skolemid |118|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k o) alloc))
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
(assert (= (Ctor MapType) 8))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly T@U) (|env#0| T@U) (|e#0| T@U) ) (!  (=> (or (|_module.__default.interp#canCall| (Lit MapType |env#0|) (Lit DatatypeTypeType |e#0|)) (and (< 1 $FunctionContextHeight) (and ($Is MapType |env#0| (TMap TInt TInt)) ($Is DatatypeTypeType |e#0| Tclass._module.exp)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.exp.Plus_q (Lit DatatypeTypeType |e#0|))))) (and (|_module.__default.interp#canCall| (Lit MapType |env#0|) (Lit DatatypeTypeType (_module.exp.e1 (Lit DatatypeTypeType |e#0|)))) (|_module.__default.interp#canCall| (Lit MapType |env#0|) (Lit DatatypeTypeType (_module.exp.e2 (Lit DatatypeTypeType |e#0|)))))) (= (_module.__default.interp ($LS $ly) (Lit MapType |env#0|) (Lit DatatypeTypeType |e#0|)) (ite (_module.exp.Plus_q (Lit DatatypeTypeType |e#0|)) (+ (_module.__default.interp ($LS $ly) (Lit MapType |env#0|) (Lit DatatypeTypeType (_module.exp.e1 (Lit DatatypeTypeType |e#0|)))) (_module.__default.interp ($LS $ly) (Lit MapType |env#0|) (Lit DatatypeTypeType (_module.exp.e2 (Lit DatatypeTypeType |e#0|))))) (ite (_module.exp.Num_q (Lit DatatypeTypeType |e#0|)) (_module.exp.n (Lit DatatypeTypeType |e#0|)) (ite  (and (_module.exp.Var_q (Lit DatatypeTypeType |e#0|)) (|Set#IsMember| (|Map#Domain| |env#0|) ($Box intType (int_2_U (_module.exp.x (Lit DatatypeTypeType |e#0|)))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| (Lit MapType |env#0|)) ($Box intType (int_2_U (LitInt (_module.exp.x (Lit DatatypeTypeType |e#0|)))))))) 0))))))
 :qid |Computationsdfy.82:16|
 :weight 3
 :skolemid |621|
 :pattern ( (_module.__default.interp ($LS $ly) (Lit MapType |env#0|) (Lit DatatypeTypeType |e#0|)))
))))
(assert (forall ((|_System._tuple#2$T0@@1| T@U) (|_System._tuple#2$T1@@1| T@U) (|a#2#0#0@@0| T@U) (|a#2#1#0@@0| T@U) ($h T@U) ) (!  (=> ($IsGoodHeap $h) (= ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h)  (and ($IsAllocBox |a#2#0#0@@0| |_System._tuple#2$T0@@1| $h) ($IsAllocBox |a#2#1#0@@0| |_System._tuple#2$T1@@1| $h))))
 :qid |unknown.0:0|
 :skolemid |457|
 :pattern ( ($IsAlloc DatatypeTypeType (|#_System._tuple#2._#Make2| |a#2#0#0@@0| |a#2#1#0@@0|) (Tclass._System.Tuple2 |_System._tuple#2$T0@@1| |_System._tuple#2$T1@@1|) $h))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_System.Tuple2.___hMake2_q d@@0) (= (DatatypeCtorId d@@0) |##_System._tuple#2._#Make2|))
 :qid |unknown.0:0|
 :skolemid |449|
 :pattern ( (_System.Tuple2.___hMake2_q d@@0))
)))
(assert (forall ((d@@1 T@U) ) (! (= (_module.exp.Plus_q d@@1) (= (DatatypeCtorId d@@1) |##_module.exp.Plus|))
 :qid |unknown.0:0|
 :skolemid |743|
 :pattern ( (_module.exp.Plus_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (! (= (_module.exp.Num_q d@@2) (= (DatatypeCtorId d@@2) |##_module.exp.Num|))
 :qid |unknown.0:0|
 :skolemid |755|
 :pattern ( (_module.exp.Num_q d@@2))
)))
(assert (forall ((d@@3 T@U) ) (! (= (_module.exp.Var_q d@@3) (= (DatatypeCtorId d@@3) |##_module.exp.Var|))
 :qid |unknown.0:0|
 :skolemid |763|
 :pattern ( (_module.exp.Var_q d@@3))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@4 T@U) ) (!  (=> (_System.Tuple2.___hMake2_q d@@4) (exists ((|a#1#0#0| T@U) (|a#1#1#0| T@U) ) (! (= d@@4 (|#_System._tuple#2._#Make2| |a#1#0#0| |a#1#1#0|))
 :qid |unknown.0:0|
 :skolemid |450|
)))
 :qid |unknown.0:0|
 :skolemid |451|
 :pattern ( (_System.Tuple2.___hMake2_q d@@4))
)))
(assert (forall ((d@@5 T@U) ) (!  (=> (_module.exp.Plus_q d@@5) (exists ((|a#24#0#0| T@U) (|a#24#1#0| T@U) ) (! (= d@@5 (|#_module.exp.Plus| |a#24#0#0| |a#24#1#0|))
 :qid |Computationsdfy.81:21|
 :skolemid |744|
)))
 :qid |unknown.0:0|
 :skolemid |745|
 :pattern ( (_module.exp.Plus_q d@@5))
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
(assert (forall ((d@@6 T@U) ) (!  (=> (_module.exp.Num_q d@@6) (exists ((|a#32#0#0| Int) ) (! (= d@@6 (|#_module.exp.Num| |a#32#0#0|))
 :qid |Computationsdfy.81:45|
 :skolemid |756|
)))
 :qid |unknown.0:0|
 :skolemid |757|
 :pattern ( (_module.exp.Num_q d@@6))
)))
(assert (forall ((d@@7 T@U) ) (!  (=> (_module.exp.Var_q d@@7) (exists ((|a#37#0#0| Int) ) (! (= d@@7 (|#_module.exp.Var| |a#37#0#0|))
 :qid |Computationsdfy.81:59|
 :skolemid |764|
)))
 :qid |unknown.0:0|
 :skolemid |765|
 :pattern ( (_module.exp.Var_q d@@7))
)))
(assert ($IsGhostField alloc))
(assert (forall ((v@@0 T@U) (t T@U) (h@@0 T@U) (T@@1 T@T) ) (! (= ($IsAllocBox ($Box T@@1 v@@0) t h@@0) ($IsAlloc T@@1 v@@0 t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@1 v@@0) t h@@0))
)))
(assert (forall ((h@@1 T@U) (k@@0 T@U) (bx@@0 T@U) (t@@0 T@U) ) (!  (=> ($HeapSucc h@@1 k@@0) (=> ($IsAllocBox bx@@0 t@@0 h@@1) ($IsAllocBox bx@@0 t@@0 k@@0)))
 :qid |DafnyPreludebpl.557:15|
 :skolemid |111|
 :pattern ( ($HeapSucc h@@1 k@@0) ($IsAllocBox bx@@0 t@@0 h@@1))
)))
(assert (forall ((h@@2 T@U) (k@@1 T@U) (v@@1 T@U) (t@@1 T@U) (T@@2 T@T) ) (!  (=> ($HeapSucc h@@2 k@@1) (=> ($IsAlloc T@@2 v@@1 t@@1 h@@2) ($IsAlloc T@@2 v@@1 t@@1 k@@1)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@2 k@@1) ($IsAlloc T@@2 v@@1 t@@1 h@@2))
)))
(assert (forall ((h@@3 T@U) (k@@2 T@U) ) (!  (=> ($HeapSuccGhost h@@3 k@@2) (and ($HeapSucc h@@3 k@@2) (forall ((o@@0 T@U) (f T@U) ) (!  (=> (not ($IsGhostField f)) (= (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@3 o@@0) f) (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f)))
 :qid |DafnyPreludebpl.544:13|
 :skolemid |108|
 :pattern ( (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) k@@2 o@@0) f))
))))
 :qid |DafnyPreludebpl.541:15|
 :skolemid |109|
 :pattern ( ($HeapSuccGhost h@@3 k@@2))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 Tclass._module.exp) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@1)) bx@@1) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@1) Tclass._module.exp)))
 :qid |unknown.0:0|
 :skolemid |616|
 :pattern ( ($IsBox bx@@1 Tclass._module.exp))
)))
(assert (forall (($ly@@0 T@U) (|env#0@@0| T@U) (|e#0@@0| T@U) ) (! (= (_module.__default.interp ($LS $ly@@0) |env#0@@0| |e#0@@0|) (_module.__default.interp $ly@@0 |env#0@@0| |e#0@@0|))
 :qid |Computationsdfy.82:16|
 :skolemid |614|
 :pattern ( (_module.__default.interp ($LS $ly@@0) |env#0@@0| |e#0@@0|))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@1 T@U) (|env#0@@1| T@U) (|e#0@@1| T@U) ) (!  (=> (or (|_module.__default.interp#canCall| |env#0@@1| |e#0@@1|) (and (< 1 $FunctionContextHeight) (and ($Is MapType |env#0@@1| (TMap TInt TInt)) ($Is DatatypeTypeType |e#0@@1| Tclass._module.exp)))) (and (=> (_module.exp.Plus_q |e#0@@1|) (and (|_module.__default.interp#canCall| |env#0@@1| (_module.exp.e1 |e#0@@1|)) (|_module.__default.interp#canCall| |env#0@@1| (_module.exp.e2 |e#0@@1|)))) (= (_module.__default.interp ($LS $ly@@1) |env#0@@1| |e#0@@1|) (ite (_module.exp.Plus_q |e#0@@1|) (+ (_module.__default.interp $ly@@1 |env#0@@1| (_module.exp.e1 |e#0@@1|)) (_module.__default.interp $ly@@1 |env#0@@1| (_module.exp.e2 |e#0@@1|))) (ite (_module.exp.Num_q |e#0@@1|) (_module.exp.n |e#0@@1|) (ite  (and (_module.exp.Var_q |e#0@@1|) (|Set#IsMember| (|Map#Domain| |env#0@@1|) ($Box intType (int_2_U (_module.exp.x |e#0@@1|))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |env#0@@1|) ($Box intType (int_2_U (_module.exp.x |e#0@@1|)))))) 0))))))
 :qid |Computationsdfy.82:16|
 :skolemid |619|
 :pattern ( (_module.__default.interp ($LS $ly@@1) |env#0@@1| |e#0@@1|))
))))
(assert (forall ((a T@U) (b T@U) (c T@U) ) (!  (=> (or (not (= a c)) (not true)) (=> (and ($HeapSucc a b) ($HeapSucc b c)) ($HeapSucc a c)))
 :qid |DafnyPreludebpl.606:15|
 :skolemid |117|
 :pattern ( ($HeapSucc a b) ($HeapSucc b c))
)))
(assert (forall ((bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 TInt) (and (= ($Box intType ($Unbox intType bx@@2)) bx@@2) ($Is intType ($Unbox intType bx@@2) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@2 TInt))
)))
(assert (forall ((v@@2 T@U) (t@@2 T@U) (T@@3 T@T) ) (! (= ($IsBox ($Box T@@3 v@@2) t@@2) ($Is T@@3 v@@2 t@@2))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@3 v@@2) t@@2))
)))
(assert (forall ((v@@3 T@U) (t0@@1 T@U) (h@@4 T@U) ) (! (= ($IsAlloc SetType v@@3 (TSet t0@@1) h@@4) (forall ((bx@@3 T@U) ) (!  (=> (|Set#IsMember| v@@3 bx@@3) ($IsAllocBox bx@@3 t0@@1 h@@4))
 :qid |DafnyPreludebpl.299:11|
 :skolemid |67|
 :pattern ( (|Set#IsMember| v@@3 bx@@3))
)))
 :qid |DafnyPreludebpl.297:15|
 :skolemid |68|
 :pattern ( ($IsAlloc SetType v@@3 (TSet t0@@1) h@@4))
)))
(assert (forall ((t@@3 T@U) (u T@U) ) (! (= (Inv0_TMap (TMap t@@3 u)) t@@3)
 :qid |DafnyPreludebpl.57:15|
 :skolemid |9|
 :pattern ( (TMap t@@3 u))
)))
(assert (forall ((t@@4 T@U) (u@@0 T@U) ) (! (= (Inv1_TMap (TMap t@@4 u@@0)) u@@0)
 :qid |DafnyPreludebpl.58:15|
 :skolemid |10|
 :pattern ( (TMap t@@4 u@@0))
)))
(assert (forall ((t@@5 T@U) (u@@1 T@U) ) (! (= (Tag (TMap t@@5 u@@1)) TagMap)
 :qid |DafnyPreludebpl.59:15|
 :skolemid |11|
 :pattern ( (TMap t@@5 u@@1))
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
(assert (forall ((|a#6#0#0| T@U) (|a#6#1#0| T@U) ) (! (= (_System.Tuple2._1 (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|)) |a#6#1#0|)
 :qid |unknown.0:0|
 :skolemid |465|
 :pattern ( (|#_System._tuple#2._#Make2| |a#6#0#0| |a#6#1#0|))
)))
(assert (forall ((|a#23#0#0| T@U) (|a#23#1#0| T@U) ) (! (= (DatatypeCtorId (|#_module.exp.Plus| |a#23#0#0| |a#23#1#0|)) |##_module.exp.Plus|)
 :qid |Computationsdfy.81:21|
 :skolemid |742|
 :pattern ( (|#_module.exp.Plus| |a#23#0#0| |a#23#1#0|))
)))
(assert (forall ((|a#27#0#0| T@U) (|a#27#1#0| T@U) ) (! (= (_module.exp.e1 (|#_module.exp.Plus| |a#27#0#0| |a#27#1#0|)) |a#27#0#0|)
 :qid |Computationsdfy.81:21|
 :skolemid |750|
 :pattern ( (|#_module.exp.Plus| |a#27#0#0| |a#27#1#0|))
)))
(assert (forall ((|a#29#0#0| T@U) (|a#29#1#0| T@U) ) (! (= (_module.exp.e2 (|#_module.exp.Plus| |a#29#0#0| |a#29#1#0|)) |a#29#1#0|)
 :qid |Computationsdfy.81:21|
 :skolemid |752|
 :pattern ( (|#_module.exp.Plus| |a#29#0#0| |a#29#1#0|))
)))
(assert (forall ((t@@6 T@U) ) (! (= (Inv0_TSet (TSet t@@6)) t@@6)
 :qid |DafnyPreludebpl.41:15|
 :skolemid |1|
 :pattern ( (TSet t@@6))
)))
(assert (forall ((t@@7 T@U) ) (! (= (Tag (TSet t@@7)) TagSet)
 :qid |DafnyPreludebpl.42:15|
 :skolemid |2|
 :pattern ( (TSet t@@7))
)))
(assert (forall ((|a#31#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.exp.Num| |a#31#0#0|)) |##_module.exp.Num|)
 :qid |Computationsdfy.81:45|
 :skolemid |754|
 :pattern ( (|#_module.exp.Num| |a#31#0#0|))
)))
(assert (forall ((|a#35#0#0| Int) ) (! (= (_module.exp.n (|#_module.exp.Num| |a#35#0#0|)) |a#35#0#0|)
 :qid |Computationsdfy.81:45|
 :skolemid |761|
 :pattern ( (|#_module.exp.Num| |a#35#0#0|))
)))
(assert (forall ((|a#36#0#0| Int) ) (! (= (DatatypeCtorId (|#_module.exp.Var| |a#36#0#0|)) |##_module.exp.Var|)
 :qid |Computationsdfy.81:59|
 :skolemid |762|
 :pattern ( (|#_module.exp.Var| |a#36#0#0|))
)))
(assert (forall ((|a#40#0#0| Int) ) (! (= (_module.exp.x (|#_module.exp.Var| |a#40#0#0|)) |a#40#0#0|)
 :qid |Computationsdfy.81:59|
 :skolemid |769|
 :pattern ( (|#_module.exp.Var| |a#40#0#0|))
)))
(assert (forall ((x@@5 T@U) (T@@4 T@T) ) (! (= ($Unbox T@@4 ($Box T@@4 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@4 x@@5))
)))
(assert (forall ((v@@4 T@U) (t0@@2 T@U) (t1@@0 T@U) (h@@5 T@U) ) (! (= ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@5) (forall ((bx@@4 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@4) bx@@4) (and ($IsAllocBox (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4) t1@@0 h@@5) ($IsAllocBox bx@@4 t0@@2 h@@5)))
 :qid |DafnyPreludebpl.318:19|
 :skolemid |75|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@4) bx@@4))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@4) bx@@4))
)))
 :qid |DafnyPreludebpl.315:15|
 :skolemid |76|
 :pattern ( ($IsAlloc MapType v@@4 (TMap t0@@2 t1@@0) h@@5))
)))
(assert (forall ((|a#5#0#0| T@U) (|a#5#1#0| T@U) ) (! (< (BoxRank |a#5#0#0|) (DtRank (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|)))
 :qid |unknown.0:0|
 :skolemid |464|
 :pattern ( (|#_System._tuple#2._#Make2| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#7#0#0| T@U) (|a#7#1#0| T@U) ) (! (< (BoxRank |a#7#1#0|) (DtRank (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|)))
 :qid |unknown.0:0|
 :skolemid |466|
 :pattern ( (|#_System._tuple#2._#Make2| |a#7#0#0| |a#7#1#0|))
)))
(assert (forall ((|a#28#0#0| T@U) (|a#28#1#0| T@U) ) (! (< (DtRank |a#28#0#0|) (DtRank (|#_module.exp.Plus| |a#28#0#0| |a#28#1#0|)))
 :qid |Computationsdfy.81:21|
 :skolemid |751|
 :pattern ( (|#_module.exp.Plus| |a#28#0#0| |a#28#1#0|))
)))
(assert (forall ((|a#30#0#0| T@U) (|a#30#1#0| T@U) ) (! (< (DtRank |a#30#1#0|) (DtRank (|#_module.exp.Plus| |a#30#0#0| |a#30#1#0|)))
 :qid |Computationsdfy.81:21|
 :skolemid |753|
 :pattern ( (|#_module.exp.Plus| |a#30#0#0| |a#30#1#0|))
)))
(assert (forall ((u@@2 T@U) ) (!  (not (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
 :qid |DafnyPreludebpl.1438:15|
 :skolemid |285|
 :pattern ( (|Set#IsMember| (|Map#Domain| |Map#Empty|) u@@2))
)))
(assert (forall ((|a#33#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.exp.Num| |a#33#0#0|) Tclass._module.exp) ($Is intType (int_2_U |a#33#0#0|) TInt))
 :qid |Computationsdfy.81:45|
 :skolemid |758|
 :pattern ( ($Is DatatypeTypeType (|#_module.exp.Num| |a#33#0#0|) Tclass._module.exp))
)))
(assert (forall ((|a#38#0#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.exp.Var| |a#38#0#0|) Tclass._module.exp) ($Is intType (int_2_U |a#38#0#0|) TInt))
 :qid |Computationsdfy.81:59|
 :skolemid |766|
 :pattern ( ($Is DatatypeTypeType (|#_module.exp.Var| |a#38#0#0|) Tclass._module.exp))
)))
(assert (forall ((bx@@5 T@U) (s T@U) (t@@8 T@U) ) (!  (=> ($IsBox bx@@5 (TMap s t@@8)) (and (= ($Box MapType ($Unbox MapType bx@@5)) bx@@5) ($Is MapType ($Unbox MapType bx@@5) (TMap s t@@8))))
 :qid |DafnyPreludebpl.207:15|
 :skolemid |36|
 :pattern ( ($IsBox bx@@5 (TMap s t@@8)))
)))
(assert (forall ((|_System._tuple#2$T0@@4| T@U) (|_System._tuple#2$T1@@4| T@U) (bx@@6 T@U) ) (!  (=> ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)) (and (= ($Box DatatypeTypeType ($Unbox DatatypeTypeType bx@@6)) bx@@6) ($Is DatatypeTypeType ($Unbox DatatypeTypeType bx@@6) (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|))))
 :qid |unknown.0:0|
 :skolemid |455|
 :pattern ( ($IsBox bx@@6 (Tclass._System.Tuple2 |_System._tuple#2$T0@@4| |_System._tuple#2$T1@@4|)))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@1 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@1 t2 (MapType1Store t0@@3 t1@@1 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
 :qid |mapAx0:MapType1Select|
 :weight 0
)) (and (forall ((u0@@0 T@T) (u1@@0 T@T) (u2 T@T) (val@@2 T@U) (m@@2 T@U) (x0@@2 T@U) (x1@@0 T@U) (y0@@0 T@U) (y1 T@U) ) (!  (or (= x0@@2 y0@@0) (= (MapType1Select u0@@0 u1@@0 u2 (MapType1Store u0@@0 u1@@0 u2 m@@2 x0@@2 x1@@0 val@@2) y0@@0 y1) (MapType1Select u0@@0 u1@@0 u2 m@@2 y0@@0 y1)))
 :qid |mapAx1:MapType1Select:0|
 :weight 0
)) (forall ((u0@@1 T@T) (u1@@1 T@T) (u2@@0 T@T) (val@@3 T@U) (m@@3 T@U) (x0@@3 T@U) (x1@@1 T@U) (y0@@1 T@U) (y1@@0 T@U) ) (!  (or (= x1@@1 y1@@0) (= (MapType1Select u0@@1 u1@@1 u2@@0 (MapType1Store u0@@1 u1@@1 u2@@0 m@@3 x0@@3 x1@@1 val@@3) y0@@1 y1@@0) (MapType1Select u0@@1 u1@@1 u2@@0 m@@3 y0@@1 y1@@0)))
 :qid |mapAx1:MapType1Select:1|
 :weight 0
)))))
(assert (forall ((|l#0| T@U) (|l#1| T@U) (|l#2| T@U) (|l#3| Bool) ($o T@U) ($f T@U) ) (! (= (U_2_bool (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))  (=> (and (or (not (= $o |l#0|)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) |l#1| $o) |l#2|)))) |l#3|))
 :qid |DafnyPreludebpl.156:1|
 :skolemid |777|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o $f))
)))
(assert  (=> (<= 1 $FunctionContextHeight) (forall (($ly@@2 T@U) (|env#0@@2| T@U) (|e#0@@2| T@U) ) (!  (=> (or (|_module.__default.interp#canCall| |env#0@@2| (Lit DatatypeTypeType |e#0@@2|)) (and (< 1 $FunctionContextHeight) (and ($Is MapType |env#0@@2| (TMap TInt TInt)) ($Is DatatypeTypeType |e#0@@2| Tclass._module.exp)))) (and (=> (U_2_bool (Lit boolType (bool_2_U (_module.exp.Plus_q (Lit DatatypeTypeType |e#0@@2|))))) (and (|_module.__default.interp#canCall| |env#0@@2| (Lit DatatypeTypeType (_module.exp.e1 (Lit DatatypeTypeType |e#0@@2|)))) (|_module.__default.interp#canCall| |env#0@@2| (Lit DatatypeTypeType (_module.exp.e2 (Lit DatatypeTypeType |e#0@@2|)))))) (= (_module.__default.interp ($LS $ly@@2) |env#0@@2| (Lit DatatypeTypeType |e#0@@2|)) (ite (_module.exp.Plus_q (Lit DatatypeTypeType |e#0@@2|)) (+ (_module.__default.interp ($LS $ly@@2) |env#0@@2| (Lit DatatypeTypeType (_module.exp.e1 (Lit DatatypeTypeType |e#0@@2|)))) (_module.__default.interp ($LS $ly@@2) |env#0@@2| (Lit DatatypeTypeType (_module.exp.e2 (Lit DatatypeTypeType |e#0@@2|))))) (ite (_module.exp.Num_q (Lit DatatypeTypeType |e#0@@2|)) (_module.exp.n (Lit DatatypeTypeType |e#0@@2|)) (ite  (and (_module.exp.Var_q (Lit DatatypeTypeType |e#0@@2|)) (|Set#IsMember| (|Map#Domain| |env#0@@2|) ($Box intType (int_2_U (_module.exp.x (Lit DatatypeTypeType |e#0@@2|)))))) (U_2_int ($Unbox intType (MapType0Select BoxType BoxType (|Map#Elements| |env#0@@2|) ($Box intType (int_2_U (LitInt (_module.exp.x (Lit DatatypeTypeType |e#0@@2|)))))))) 0))))))
 :qid |Computationsdfy.82:16|
 :weight 3
 :skolemid |620|
 :pattern ( (_module.__default.interp ($LS $ly@@2) |env#0@@2| (Lit DatatypeTypeType |e#0@@2|)))
))))
(assert (forall ((|_System._tuple#2$T0@@5| T@U) (|_System._tuple#2$T1@@5| T@U) ) (!  (and (= (Tag (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) Tagclass._System.Tuple2) (= (TagFamily (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|)) |tytagFamily$_tuple#2|))
 :qid |unknown.0:0|
 :skolemid |452|
 :pattern ( (Tclass._System.Tuple2 |_System._tuple#2$T0@@5| |_System._tuple#2$T1@@5|))
)))
(assert (forall ((d@@8 T@U) ($h@@0 T@U) ) (!  (=> (and ($IsGoodHeap $h@@0) (and (_module.exp.Num_q d@@8) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.exp $h@@0))) ($IsAlloc intType (int_2_U (_module.exp.n d@@8)) TInt $h@@0))
 :qid |unknown.0:0|
 :skolemid |759|
 :pattern ( ($IsAlloc intType (int_2_U (_module.exp.n d@@8)) TInt $h@@0))
)))
(assert (forall ((d@@9 T@U) ($h@@1 T@U) ) (!  (=> (and ($IsGoodHeap $h@@1) (and (_module.exp.Var_q d@@9) ($IsAlloc DatatypeTypeType d@@9 Tclass._module.exp $h@@1))) ($IsAlloc intType (int_2_U (_module.exp.x d@@9)) TInt $h@@1))
 :qid |unknown.0:0|
 :skolemid |767|
 :pattern ( ($IsAlloc intType (int_2_U (_module.exp.x d@@9)) TInt $h@@1))
)))
(assert (forall ((d@@10 T@U) ) (!  (=> ($Is DatatypeTypeType d@@10 Tclass._module.exp) (or (or (_module.exp.Plus_q d@@10) (_module.exp.Num_q d@@10)) (_module.exp.Var_q d@@10)))
 :qid |unknown.0:0|
 :skolemid |772|
 :pattern ( (_module.exp.Var_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.exp))
 :pattern ( (_module.exp.Num_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.exp))
 :pattern ( (_module.exp.Plus_q d@@10) ($Is DatatypeTypeType d@@10 Tclass._module.exp))
)))
(assert (forall ((m@@4 T@U) ) (!  (or (= m@@4 |Map#Empty|) (exists ((k@@3 T@U) ) (! (|Set#IsMember| (|Map#Domain| m@@4) k@@3)
 :qid |DafnyPreludebpl.1388:31|
 :skolemid |273|
)))
 :qid |DafnyPreludebpl.1386:15|
 :skolemid |274|
 :pattern ( (|Map#Domain| m@@4))
)))
(assert (forall ((m@@5 T@U) ) (!  (or (= m@@5 |Map#Empty|) (exists ((v@@5 T@U) ) (! (|Set#IsMember| (|Map#Values| m@@5) v@@5)
 :qid |DafnyPreludebpl.1391:31|
 :skolemid |275|
)))
 :qid |DafnyPreludebpl.1389:15|
 :skolemid |276|
 :pattern ( (|Map#Values| m@@5))
)))
(assert (forall ((m@@6 T@U) (item T@U) ) (! (= (|Set#IsMember| (|Map#Items| m@@6) item)  (and (|Set#IsMember| (|Map#Domain| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (= (MapType0Select BoxType BoxType (|Map#Elements| m@@6) (_System.Tuple2._0 ($Unbox DatatypeTypeType item))) (_System.Tuple2._1 ($Unbox DatatypeTypeType item)))))
 :qid |DafnyPreludebpl.1430:15|
 :skolemid |284|
 :pattern ( (|Set#IsMember| (|Map#Items| m@@6) item))
)))
(assert (forall ((m@@7 T@U) (v@@6 T@U) ) (! (= (|Set#IsMember| (|Map#Values| m@@7) v@@6) (exists ((u@@3 T@U) ) (!  (and (|Set#IsMember| (|Map#Domain| m@@7) u@@3) (= v@@6 (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3)))
 :qid |DafnyPreludebpl.1414:10|
 :skolemid |282|
 :pattern ( (|Set#IsMember| (|Map#Domain| m@@7) u@@3))
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| m@@7) u@@3))
)))
 :qid |DafnyPreludebpl.1412:15|
 :skolemid |283|
 :pattern ( (|Set#IsMember| (|Map#Values| m@@7) v@@6))
)))
(assert (forall ((d@@11 T@U) ) (! (= (BoxRank ($Box DatatypeTypeType d@@11)) (DtRank d@@11))
 :qid |DafnyPreludebpl.391:15|
 :skolemid |84|
 :pattern ( (BoxRank ($Box DatatypeTypeType d@@11)))
)))
(assert (forall ((bx@@7 T@U) (t@@9 T@U) ) (!  (=> ($IsBox bx@@7 (TSet t@@9)) (and (= ($Box SetType ($Unbox SetType bx@@7)) bx@@7) ($Is SetType ($Unbox SetType bx@@7) (TSet t@@9))))
 :qid |DafnyPreludebpl.195:15|
 :skolemid |32|
 :pattern ( ($IsBox bx@@7 (TSet t@@9)))
)))
(assert (forall ((v@@7 T@U) (t0@@4 T@U) (t1@@2 T@U) ) (! (= ($Is MapType v@@7 (TMap t0@@4 t1@@2)) (forall ((bx@@8 T@U) ) (!  (=> (|Set#IsMember| (|Map#Domain| v@@7) bx@@8) (and ($IsBox (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@8) t1@@2) ($IsBox bx@@8 t0@@4)))
 :qid |DafnyPreludebpl.261:19|
 :skolemid |55|
 :pattern ( (MapType0Select BoxType BoxType (|Map#Elements| v@@7) bx@@8))
 :pattern ( (|Set#IsMember| (|Map#Domain| v@@7) bx@@8))
)))
 :qid |DafnyPreludebpl.258:15|
 :skolemid |56|
 :pattern ( ($Is MapType v@@7 (TMap t0@@4 t1@@2)))
)))
(assert (forall ((d@@12 T@U) ($h@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) ($Is DatatypeTypeType d@@12 Tclass._module.exp)) ($IsAlloc DatatypeTypeType d@@12 Tclass._module.exp $h@@2))
 :qid |unknown.0:0|
 :skolemid |770|
 :pattern ( ($IsAlloc DatatypeTypeType d@@12 Tclass._module.exp $h@@2))
)))
(assert (= (Tag Tclass._module.exp) Tagclass._module.exp))
(assert (= (TagFamily Tclass._module.exp) tytagFamily$exp))
(assert (forall ((d@@13 T@U) (|_System._tuple#2$T0@@6| T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_System.Tuple2.___hMake2_q d@@13) (exists ((|_System._tuple#2$T1@@6| T@U) ) (! ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3)
 :qid |unknown.0:0|
 :skolemid |458|
 :pattern ( ($IsAlloc DatatypeTypeType d@@13 (Tclass._System.Tuple2 |_System._tuple#2$T0@@6| |_System._tuple#2$T1@@6|) $h@@3))
)))) ($IsAllocBox (_System.Tuple2._0 d@@13) |_System._tuple#2$T0@@6| $h@@3))
 :qid |unknown.0:0|
 :skolemid |459|
 :pattern ( ($IsAllocBox (_System.Tuple2._0 d@@13) |_System._tuple#2$T0@@6| $h@@3))
)))
(assert (forall ((d@@14 T@U) (|_System._tuple#2$T1@@7| T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_System.Tuple2.___hMake2_q d@@14) (exists ((|_System._tuple#2$T0@@7| T@U) ) (! ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4)
 :qid |unknown.0:0|
 :skolemid |460|
 :pattern ( ($IsAlloc DatatypeTypeType d@@14 (Tclass._System.Tuple2 |_System._tuple#2$T0@@7| |_System._tuple#2$T1@@7|) $h@@4))
)))) ($IsAllocBox (_System.Tuple2._1 d@@14) |_System._tuple#2$T1@@7| $h@@4))
 :qid |unknown.0:0|
 :skolemid |461|
 :pattern ( ($IsAllocBox (_System.Tuple2._1 d@@14) |_System._tuple#2$T1@@7| $h@@4))
)))
(assert (forall ((d@@15 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.exp.Plus_q d@@15) ($IsAlloc DatatypeTypeType d@@15 Tclass._module.exp $h@@5))) ($IsAlloc DatatypeTypeType (_module.exp.e1 d@@15) Tclass._module.exp $h@@5))
 :qid |unknown.0:0|
 :skolemid |747|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.exp.e1 d@@15) Tclass._module.exp $h@@5))
)))
(assert (forall ((d@@16 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.exp.Plus_q d@@16) ($IsAlloc DatatypeTypeType d@@16 Tclass._module.exp $h@@6))) ($IsAlloc DatatypeTypeType (_module.exp.e2 d@@16) Tclass._module.exp $h@@6))
 :qid |unknown.0:0|
 :skolemid |748|
 :pattern ( ($IsAlloc DatatypeTypeType (_module.exp.e2 d@@16) Tclass._module.exp $h@@6))
)))
(assert (forall ((|a#3#0#0| T@U) (|a#3#1#0| T@U) ) (! (= (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)) (Lit DatatypeTypeType (|#_System._tuple#2._#Make2| |a#3#0#0| |a#3#1#0|)))
 :qid |unknown.0:0|
 :skolemid |462|
 :pattern ( (|#_System._tuple#2._#Make2| (Lit BoxType |a#3#0#0|) (Lit BoxType |a#3#1#0|)))
)))
(assert (forall ((|a#26#0#0| T@U) (|a#26#1#0| T@U) ) (! (= (|#_module.exp.Plus| (Lit DatatypeTypeType |a#26#0#0|) (Lit DatatypeTypeType |a#26#1#0|)) (Lit DatatypeTypeType (|#_module.exp.Plus| |a#26#0#0| |a#26#1#0|)))
 :qid |Computationsdfy.81:21|
 :skolemid |749|
 :pattern ( (|#_module.exp.Plus| (Lit DatatypeTypeType |a#26#0#0|) (Lit DatatypeTypeType |a#26#1#0|)))
)))
(assert (forall ((x@@6 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@6))) (Lit BoxType ($Box intType (int_2_U x@@6))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@6))))
)))
(assert (forall ((|a#34#0#0| Int) ) (! (= (|#_module.exp.Num| (LitInt |a#34#0#0|)) (Lit DatatypeTypeType (|#_module.exp.Num| |a#34#0#0|)))
 :qid |Computationsdfy.81:45|
 :skolemid |760|
 :pattern ( (|#_module.exp.Num| (LitInt |a#34#0#0|)))
)))
(assert (forall ((|a#39#0#0| Int) ) (! (= (|#_module.exp.Var| (LitInt |a#39#0#0|)) (Lit DatatypeTypeType (|#_module.exp.Var| |a#39#0#0|)))
 :qid |Computationsdfy.81:59|
 :skolemid |768|
 :pattern ( (|#_module.exp.Var| (LitInt |a#39#0#0|)))
)))
(assert (forall ((x@@7 T@U) (T@@5 T@T) ) (! (= ($Box T@@5 (Lit T@@5 x@@7)) (Lit BoxType ($Box T@@5 x@@7)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@5 (Lit T@@5 x@@7)))
)))
(assert (forall ((h@@6 T@U) (v@@8 T@U) ) (! ($IsAlloc intType v@@8 TInt h@@6)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@8 TInt h@@6))
)))
(assert (forall ((m@@8 T@U) ) (!  (or (= m@@8 |Map#Empty|) (exists ((k@@4 T@U) (v@@9 T@U) ) (! (|Set#IsMember| (|Map#Items| m@@8) ($Box DatatypeTypeType (|#_System._tuple#2._#Make2| k@@4 v@@9)))
 :qid |DafnyPreludebpl.1394:31|
 :skolemid |277|
)))
 :qid |DafnyPreludebpl.1392:15|
 :skolemid |278|
 :pattern ( (|Map#Items| m@@8))
)))
(assert (forall ((v@@10 T@U) (t0@@5 T@U) (t1@@3 T@U) ) (!  (=> ($Is MapType v@@10 (TMap t0@@5 t1@@3)) (and (and ($Is SetType (|Map#Domain| v@@10) (TSet t0@@5)) ($Is SetType (|Map#Values| v@@10) (TSet t1@@3))) ($Is SetType (|Map#Items| v@@10) (TSet (Tclass._System.Tuple2 t0@@5 t1@@3)))))
 :qid |DafnyPreludebpl.267:15|
 :skolemid |57|
 :pattern ( ($Is MapType v@@10 (TMap t0@@5 t1@@3)))
)))
(assert (forall ((v@@11 T@U) ) (! ($Is intType v@@11 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@11 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun null () T@U)
(declare-fun $Heap () T@U)
(declare-fun |env#0@@3| () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(set-info :boogie-vc-id CheckWellFormed$$_module.__default.compute__interp3)
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
 (=> (= (ControlFlow 0 0) 3) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (=> (and (|Set#IsMember| (|Map#Domain| |env#0@@3|) ($Box intType (int_2_U 0))) (= (ControlFlow 0 2) (- 0 1))) (|Set#IsMember| (|Map#Domain| |env#0@@3|) ($Box intType (int_2_U (LitInt 0))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (=> (and (and ($Is MapType |env#0@@3| (TMap TInt TInt)) ($IsAlloc MapType |env#0@@3| (TMap TInt TInt) $Heap)) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 3) 2))) anon0_correct))))
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
