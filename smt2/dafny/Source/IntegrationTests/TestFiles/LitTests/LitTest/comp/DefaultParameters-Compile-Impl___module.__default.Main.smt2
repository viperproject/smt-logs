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
(declare-fun Tagclass._module.C () T@U)
(declare-fun Tagclass._module.C? () T@U)
(declare-fun Tagclass._module.Color () T@U)
(declare-fun class._module.C? () T@U)
(declare-fun |##_module.Color.Blue| () T@U)
(declare-fun |##_module.Color.Red| () T@U)
(declare-fun tytagFamily$C () T@U)
(declare-fun tytagFamily$Color () T@U)
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
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun refType () T@T)
(declare-fun Tclass._module.C? () T@U)
(declare-fun null () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun Tclass._module.C () T@U)
(declare-fun _module.C.data () T@U)
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
(declare-fun DatatypeTypeType () T@T)
(declare-fun |#_module.Color.Blue| (Int Int) T@U)
(declare-fun Tclass._module.Color () T@U)
(declare-fun |#_module.Color.Red| (Int Int) T@U)
(declare-fun $HeapSucc (T@U T@U) Bool)
(declare-fun LitInt (Int) Int)
(declare-fun Lit (T@T T@U) T@U)
(declare-fun _module.Color.Blue_q (T@U) Bool)
(declare-fun DatatypeCtorId (T@U) T@U)
(declare-fun _module.Color.Red_q (T@U) Bool)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun _module.__default.F (Int) Int)
(declare-fun |_module.__default.F#canCall| (Int) Bool)
(declare-fun _module.__default.G (Int) Int)
(declare-fun |_module.__default.G#canCall| (Int) Bool)
(declare-fun _module.Color.x (T@U) Int)
(declare-fun _module.Color.y (T@U) Int)
(declare-fun MapType1Select (T@T T@T T@T T@U T@U T@U) T@U)
(declare-fun |lambda#0| (T@U T@U T@U Bool) T@U)
(declare-fun MapType1Store (T@T T@T T@T T@U T@U T@U T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._module.C Tagclass._module.C? Tagclass._module.Color class._module.C? |##_module.Color.Blue| |##_module.Color.Red| tytagFamily$C tytagFamily$Color field$data)
)
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (= (Ctor refType) 3))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.C?)  (or (= $o null) (= (dtype $o) Tclass._module.C?)))
 :qid |unknown.0:0|
 :skolemid |510|
 :pattern ( ($Is refType $o Tclass._module.C?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.C $h) ($IsAlloc refType |c#0| Tclass._module.C? $h))
 :qid |unknown.0:0|
 :skolemid |518|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.C? $h))
)))
(assert (= (FDim _module.C.data) 0))
(assert (= (FieldOfDecl class._module.C? field$data) _module.C.data))
(assert  (not ($IsGhostField _module.C.data)))
(assert  (and (and (and (and (and (and (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
)) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
 :qid |mapAx1:MapType0Select:0|
 :weight 0
))) (= (Ctor FieldType) 4)) (= (Ctor BoxType) 5)) (forall ((arg0@@2 T@T) (arg1 T@T) ) (! (= (Ctor (MapType0Type arg0@@2 arg1)) 6)
 :qid |ctor:MapType0Type|
))) (forall ((arg0@@3 T@T) (arg1@@0 T@T) ) (! (= (MapType0TypeInv0 (MapType0Type arg0@@3 arg1@@0)) arg0@@3)
 :qid |typeInv:MapType0TypeInv0|
 :pattern ( (MapType0Type arg0@@3 arg1@@0))
))) (forall ((arg0@@4 T@T) (arg1@@1 T@T) ) (! (= (MapType0TypeInv1 (MapType0Type arg0@@4 arg1@@1)) arg1@@1)
 :qid |typeInv:MapType0TypeInv1|
 :pattern ( (MapType0Type arg0@@4 arg1@@1))
))))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |511|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.C? $h@@0))
)))
(assert (= (Ctor DatatypeTypeType) 7))
(assert (forall ((|a#1#0#0| Int) (|a#1#1#0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Color.Blue| |a#1#0#0| |a#1#1#0|) Tclass._module.Color)  (and ($Is intType (int_2_U |a#1#0#0|) TInt) ($Is intType (int_2_U |a#1#1#0|) TInt)))
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |523|
 :pattern ( ($Is DatatypeTypeType (|#_module.Color.Blue| |a#1#0#0| |a#1#1#0|) Tclass._module.Color))
)))
(assert (forall ((|a#1#0#0@@0| Int) (|a#1#1#0@@0| Int) ) (! (= ($Is DatatypeTypeType (|#_module.Color.Red| |a#1#0#0@@0| |a#1#1#0@@0|) Tclass._module.Color)  (and ($Is intType (int_2_U |a#1#0#0@@0|) TInt) ($Is intType (int_2_U |a#1#1#0@@0|) TInt)))
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |533|
 :pattern ( ($Is DatatypeTypeType (|#_module.Color.Red| |a#1#0#0@@0| |a#1#1#0@@0|) Tclass._module.Color))
)))
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
(assert (forall ((d T@U) ) (! (= (_module.Color.Blue_q d) (= (DatatypeCtorId d) |##_module.Color.Blue|))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( (_module.Color.Blue_q d))
)))
(assert (forall ((d@@0 T@U) ) (! (= (_module.Color.Red_q d@@0) (= (DatatypeCtorId d@@0) |##_module.Color.Red|))
 :qid |unknown.0:0|
 :skolemid |530|
 :pattern ( (_module.Color.Red_q d@@0))
)))
(assert (forall ((x@@4 T@U) (T@@0 T@T) ) (! (= ($Box T@@0 ($Unbox T@@0 x@@4)) x@@4)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T@@0 x@@4))
)))
(assert (forall ((d@@1 T@U) ) (!  (=> (_module.Color.Blue_q d@@1) (exists ((|a#0#0#0| Int) (|a#0#1#0| Int) ) (! (= d@@1 (|#_module.Color.Blue| |a#0#0#0| |a#0#1#0|))
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |521|
)))
 :qid |unknown.0:0|
 :skolemid |522|
 :pattern ( (_module.Color.Blue_q d@@1))
)))
(assert (forall ((d@@2 T@U) ) (!  (=> (_module.Color.Red_q d@@2) (exists ((|a#0#0#0@@0| Int) (|a#0#1#0@@0| Int) ) (! (= d@@2 (|#_module.Color.Red| |a#0#0#0@@0| |a#0#1#0@@0|))
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |531|
)))
 :qid |unknown.0:0|
 :skolemid |532|
 :pattern ( (_module.Color.Red_q d@@2))
)))
(assert ($IsGhostField alloc))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.C?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |513|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.C.data)))
)))
(assert (forall ((h@@0 T@U) (k@@0 T@U) (v T@U) (t T@U) (T@@1 T@T) ) (!  (=> ($HeapSucc h@@0 k@@0) (=> ($IsAlloc T@@1 v t h@@0) ($IsAlloc T@@1 v t k@@0)))
 :qid |DafnyPreludebpl.554:18|
 :skolemid |110|
 :pattern ( ($HeapSucc h@@0 k@@0) ($IsAlloc T@@1 v t h@@0))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.C)  (and ($Is refType |c#0@@0| Tclass._module.C?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |517|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.C?))
)))
(assert (forall ((d@@3 T@U) ) (!  (=> ($Is DatatypeTypeType d@@3 Tclass._module.Color) (or (_module.Color.Blue_q d@@3) (_module.Color.Red_q d@@3)))
 :qid |unknown.0:0|
 :skolemid |541|
 :pattern ( (_module.Color.Red_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Color))
 :pattern ( (_module.Color.Blue_q d@@3) ($Is DatatypeTypeType d@@3 Tclass._module.Color))
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
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0| Int) ) (!  (=> (or (|_module.__default.F#canCall| |x#0|) (< 0 $FunctionContextHeight)) (= (_module.__default.F |x#0|) |x#0|))
 :qid |DefaultParametersCompiledfy.32:12|
 :skolemid |498|
 :pattern ( (_module.__default.F |x#0|))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@0| Int) ) (!  (=> (or (|_module.__default.G#canCall| |x#0@@0|) (< 0 $FunctionContextHeight)) (= (_module.__default.G |x#0@@0|) |x#0@@0|))
 :qid |DefaultParametersCompiledfy.42:12|
 :skolemid |508|
 :pattern ( (_module.__default.G |x#0@@0|))
))))
(assert (forall ((|a#0#0#0@@1| Int) (|a#0#1#0@@1| Int) ) (! (= (DatatypeCtorId (|#_module.Color.Blue| |a#0#0#0@@1| |a#0#1#0@@1|)) |##_module.Color.Blue|)
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |519|
 :pattern ( (|#_module.Color.Blue| |a#0#0#0@@1| |a#0#1#0@@1|))
)))
(assert (forall ((|a#3#0#0| Int) (|a#3#1#0| Int) ) (! (= (_module.Color.x (|#_module.Color.Blue| |a#3#0#0| |a#3#1#0|)) |a#3#0#0|)
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |527|
 :pattern ( (|#_module.Color.Blue| |a#3#0#0| |a#3#1#0|))
)))
(assert (forall ((|a#4#0#0| Int) (|a#4#1#0| Int) ) (! (= (_module.Color.y (|#_module.Color.Blue| |a#4#0#0| |a#4#1#0|)) |a#4#1#0|)
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |528|
 :pattern ( (|#_module.Color.Blue| |a#4#0#0| |a#4#1#0|))
)))
(assert (forall ((|a#5#0#0| Int) (|a#5#1#0| Int) ) (! (= (DatatypeCtorId (|#_module.Color.Red| |a#5#0#0| |a#5#1#0|)) |##_module.Color.Red|)
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |529|
 :pattern ( (|#_module.Color.Red| |a#5#0#0| |a#5#1#0|))
)))
(assert (forall ((|a#3#0#0@@0| Int) (|a#3#1#0@@0| Int) ) (! (= (_module.Color.x (|#_module.Color.Red| |a#3#0#0@@0| |a#3#1#0@@0|)) |a#3#0#0@@0|)
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |537|
 :pattern ( (|#_module.Color.Red| |a#3#0#0@@0| |a#3#1#0@@0|))
)))
(assert (forall ((|a#4#0#0@@0| Int) (|a#4#1#0@@0| Int) ) (! (= (_module.Color.y (|#_module.Color.Red| |a#4#0#0@@0| |a#4#1#0@@0|)) |a#4#1#0@@0|)
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |538|
 :pattern ( (|#_module.Color.Red| |a#4#0#0@@0| |a#4#1#0@@0|))
)))
(assert (forall ((x@@5 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@5)) x@@5)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@5))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.C?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.C.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |512|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.C.data)))
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
 :skolemid |545|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((d@@4 T@U) ($h@@3 T@U) ) (!  (=> (and ($IsGoodHeap $h@@3) (and (_module.Color.Blue_q d@@4) ($IsAlloc DatatypeTypeType d@@4 Tclass._module.Color $h@@3))) ($IsAlloc intType (int_2_U (_module.Color.x d@@4)) TInt $h@@3))
 :qid |unknown.0:0|
 :skolemid |524|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Color.x d@@4)) TInt $h@@3))
)))
(assert (forall ((d@@5 T@U) ($h@@4 T@U) ) (!  (=> (and ($IsGoodHeap $h@@4) (and (_module.Color.Blue_q d@@5) ($IsAlloc DatatypeTypeType d@@5 Tclass._module.Color $h@@4))) ($IsAlloc intType (int_2_U (_module.Color.y d@@5)) TInt $h@@4))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Color.y d@@5)) TInt $h@@4))
)))
(assert (forall ((d@@6 T@U) ($h@@5 T@U) ) (!  (=> (and ($IsGoodHeap $h@@5) (and (_module.Color.Red_q d@@6) ($IsAlloc DatatypeTypeType d@@6 Tclass._module.Color $h@@5))) ($IsAlloc intType (int_2_U (_module.Color.x d@@6)) TInt $h@@5))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Color.x d@@6)) TInt $h@@5))
)))
(assert (forall ((d@@7 T@U) ($h@@6 T@U) ) (!  (=> (and ($IsGoodHeap $h@@6) (and (_module.Color.Red_q d@@7) ($IsAlloc DatatypeTypeType d@@7 Tclass._module.Color $h@@6))) ($IsAlloc intType (int_2_U (_module.Color.y d@@7)) TInt $h@@6))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( ($IsAlloc intType (int_2_U (_module.Color.y d@@7)) TInt $h@@6))
)))
(assert (forall ((h@@1 T@U) (r T@U) (f T@U) (x@@6 T@U) ) (!  (=> ($IsGoodHeap (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))) ($HeapSucc h@@1 (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6))))
 :qid |DafnyPreludebpl.603:15|
 :skolemid |116|
 :pattern ( (MapType0Store refType (MapType0Type FieldType BoxType) h@@1 r (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h@@1 r) f x@@6)))
)))
(assert (forall ((d@@8 T@U) ($h@@7 T@U) ) (!  (=> (and ($IsGoodHeap $h@@7) ($Is DatatypeTypeType d@@8 Tclass._module.Color)) ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Color $h@@7))
 :qid |unknown.0:0|
 :skolemid |539|
 :pattern ( ($IsAlloc DatatypeTypeType d@@8 Tclass._module.Color $h@@7))
)))
(assert (= (Tag Tclass._module.C) Tagclass._module.C))
(assert (= (TagFamily Tclass._module.C) tytagFamily$C))
(assert (= (Tag Tclass._module.C?) Tagclass._module.C?))
(assert (= (TagFamily Tclass._module.C?) tytagFamily$C))
(assert (= (Tag Tclass._module.Color) Tagclass._module.Color))
(assert (= (TagFamily Tclass._module.Color) tytagFamily$Color))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@1| Int) ) (!  (=> (or (|_module.__default.F#canCall| (LitInt |x#0@@1|)) (< 0 $FunctionContextHeight)) (= (_module.__default.F (LitInt |x#0@@1|)) (LitInt |x#0@@1|)))
 :qid |DefaultParametersCompiledfy.32:12|
 :weight 3
 :skolemid |499|
 :pattern ( (_module.__default.F (LitInt |x#0@@1|)))
))))
(assert  (=> (<= 0 $FunctionContextHeight) (forall ((|x#0@@2| Int) ) (!  (=> (or (|_module.__default.G#canCall| (LitInt |x#0@@2|)) (< 0 $FunctionContextHeight)) (= (_module.__default.G (LitInt |x#0@@2|)) (LitInt |x#0@@2|)))
 :qid |DefaultParametersCompiledfy.42:12|
 :weight 3
 :skolemid |509|
 :pattern ( (_module.__default.G (LitInt |x#0@@2|)))
))))
(assert (forall ((|a#2#0#0| Int) (|a#2#1#0| Int) ) (! (= (|#_module.Color.Blue| (LitInt |a#2#0#0|) (LitInt |a#2#1#0|)) (Lit DatatypeTypeType (|#_module.Color.Blue| |a#2#0#0| |a#2#1#0|)))
 :qid |DefaultParametersCompiledfy.14:23|
 :skolemid |526|
 :pattern ( (|#_module.Color.Blue| (LitInt |a#2#0#0|) (LitInt |a#2#1#0|)))
)))
(assert (forall ((|a#2#0#0@@0| Int) (|a#2#1#0@@0| Int) ) (! (= (|#_module.Color.Red| (LitInt |a#2#0#0@@0|) (LitInt |a#2#1#0@@0|)) (Lit DatatypeTypeType (|#_module.Color.Red| |a#2#0#0@@0| |a#2#1#0@@0|)))
 :qid |DefaultParametersCompiledfy.14:54|
 :skolemid |536|
 :pattern ( (|#_module.Color.Red| (LitInt |a#2#0#0@@0|) (LitInt |a#2#1#0@@0|)))
)))
(assert (forall ((x@@7 Int) ) (! (= ($Box intType (int_2_U (LitInt x@@7))) (Lit BoxType ($Box intType (int_2_U x@@7))))
 :qid |DafnyPreludebpl.109:15|
 :skolemid |18|
 :pattern ( ($Box intType (int_2_U (LitInt x@@7))))
)))
(assert (forall ((x@@8 T@U) (T@@3 T@T) ) (! (= ($Box T@@3 (Lit T@@3 x@@8)) (Lit BoxType ($Box T@@3 x@@8)))
 :qid |DafnyPreludebpl.103:18|
 :skolemid |16|
 :pattern ( ($Box T@@3 (Lit T@@3 x@@8)))
)))
(assert (forall ((h@@2 T@U) (v@@0 T@U) ) (! ($IsAlloc intType v@@0 TInt h@@2)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@0 TInt h@@2))
)))
(assert (forall ((v@@1 T@U) ) (! ($Is intType v@@1 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@1 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap () T@U)
(declare-fun |x##0@0| () Int)
(declare-fun $Heap@0 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |x##1@0| () Int)
(declare-fun $Heap@1 () T@U)
(declare-fun $nw@0 () T@U)
(declare-fun $Heap@2 () T@U)
(declare-fun |$rhs#0@0| () Int)
(declare-fun $Heap@3 () T@U)
(declare-fun |x##2@0| () Int)
(declare-fun |y##0@0| () Int)
(declare-fun $Heap@4 () T@U)
(declare-fun |x##3@0| () Int)
(declare-fun |y##1@0| () Int)
(declare-fun $Heap@5 () T@U)
(declare-fun |x##4@0| () Int)
(declare-fun |y##2@0| () Int)
(declare-fun $Heap@6 () T@U)
(declare-fun |$rhs#1@0| () Int)
(declare-fun $Heap@7 () T@U)
(declare-fun |defass#c#0| () Bool)
(declare-fun |c#0@@1| () T@U)
(declare-fun |c0#0| () T@U)
(declare-fun |c1#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.__default.Main)
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
 (=> (= (ControlFlow 0 0) 16) (let ((anon0_correct  (=> (and (= $_ModifiesFrame@0 (|lambda#0| null $Heap alloc false)) (= |x##0@0| (LitInt 12))) (=> (and (and (and (and ($IsGoodHeap $Heap@0) ($IsHeapAnchor $Heap@0)) (forall (($o@@4 T@U) ) (!  (=> (and (or (not (= $o@@4 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap $o@@4)))
 :qid |DefaultParametersCompiledfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@4))
))) (and (and ($HeapSucc $Heap $Heap@0) (= |x##1@0| (LitInt 16))) (and ($IsGoodHeap $Heap@1) ($IsHeapAnchor $Heap@1)))) (and (and (and (forall (($o@@5 T@U) ) (!  (=> (and (or (not (= $o@@5 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@0 $o@@5)))
 :qid |DefaultParametersCompiledfy.3:8|
 :skolemid |480|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $o@@5))
)) ($HeapSucc $Heap@0 $Heap@1)) (and (or (not (= $nw@0 null)) (not true)) ($Is refType $nw@0 Tclass._module.C?))) (and (and (not (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) alloc)))) (= $Heap@2 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@1 $nw@0) alloc ($Box boolType (bool_2_U true)))))) (and ($IsGoodHeap $Heap@2) ($IsHeapAnchor $Heap@2))))) (and (=> (= (ControlFlow 0 2) (- 0 15)) true) (and (=> (= (ControlFlow 0 2) (- 0 14)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.data)) (=> (= |$rhs#0@0| (LitInt 10)) (=> (and (= $Heap@3 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@2 $nw@0) _module.C.data ($Box intType (int_2_U |$rhs#0@0|))))) ($IsGoodHeap $Heap@3)) (and (=> (= (ControlFlow 0 2) (- 0 12)) true) (and (=> (= (ControlFlow 0 2) (- 0 11)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (= |x##2@0| (LitInt 1)) (= |y##0@0| (LitInt 2))) (=> (and (and ($IsGoodHeap $Heap@4) ($IsHeapAnchor $Heap@4)) (and (forall (($o@@6 T@U) ) (!  (=> (and (or (not (= $o@@6 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@3 $o@@6)))
 :qid |DefaultParametersCompiledfy.9:10|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@6))
)) ($HeapSucc $Heap@3 $Heap@4))) (and (=> (= (ControlFlow 0 2) (- 0 10)) true) (and (=> (= (ControlFlow 0 2) (- 0 9)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (= |x##3@0| (LitInt 1)) (= |y##1@0| (LitInt (+ 1 2)))) (=> (and (and ($IsGoodHeap $Heap@5) ($IsHeapAnchor $Heap@5)) (and (forall (($o@@7 T@U) ) (!  (=> (and (or (not (= $o@@7 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@4 $o@@7)))
 :qid |DefaultParametersCompiledfy.9:10|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@7))
)) ($HeapSucc $Heap@4 $Heap@5))) (and (=> (= (ControlFlow 0 2) (- 0 8)) true) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (=> (and (= |x##4@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $nw@0) _module.C.data)))) (= |y##2@0| (LitInt 20))) (=> (and (and ($IsGoodHeap $Heap@6) ($IsHeapAnchor $Heap@6)) (and (forall (($o@@8 T@U) ) (!  (=> (and (or (not (= $o@@8 null)) (not true)) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8) alloc)))) (= (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@8) (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@5 $o@@8)))
 :qid |DefaultParametersCompiledfy.9:10|
 :skolemid |515|
 :pattern ( (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $o@@8))
)) ($HeapSucc $Heap@5 $Heap@6))) (and (=> (= (ControlFlow 0 2) (- 0 6)) true) (and (=> (= (ControlFlow 0 2) (- 0 5)) (or (not (= $nw@0 null)) (not true))) (=> (or (not (= $nw@0 null)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.data))) (=> (U_2_bool (MapType1Select refType FieldType boolType $_ModifiesFrame@0 $nw@0 _module.C.data)) (=> (= |$rhs#1@0| (LitInt 11)) (=> (and (= $Heap@7 (MapType0Store refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0 (MapType0Store FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@6 $nw@0) _module.C.data ($Box intType (int_2_U |$rhs#1@0|))))) ($IsGoodHeap $Heap@7)) (and (=> (= (ControlFlow 0 2) (- 0 3)) true) (=> (= (ControlFlow 0 2) (- 0 1)) (or (not (= $nw@0 null)) (not true)))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (and (and ($IsGoodHeap $Heap) ($IsHeapAnchor $Heap)) (and (=> |defass#c#0| (and ($Is refType |c#0@@1| Tclass._module.C) ($IsAlloc refType |c#0@@1| Tclass._module.C $Heap))) true)) (and (and ($Is DatatypeTypeType |c0#0| Tclass._module.Color) ($IsAlloc DatatypeTypeType |c0#0| Tclass._module.Color $Heap)) true)) (and (and (and ($Is DatatypeTypeType |c1#0| Tclass._module.Color) ($IsAlloc DatatypeTypeType |c1#0| Tclass._module.Color $Heap)) true) (and (= 2 $FunctionContextHeight) (= (ControlFlow 0 16) 2)))) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
