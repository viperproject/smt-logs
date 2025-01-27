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
(declare-fun Tagclass._System.___hFunc0 () T@U)
(declare-fun class._module.MyClass? () T@U)
(declare-fun Tagclass._module.MyClass? () T@U)
(declare-fun Tagclass._module.MyClass () T@U)
(declare-fun |tytagFamily$_#Func0| () T@U)
(declare-fun tytagFamily$MyClass () T@U)
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
(declare-fun $IsAlloc (T@T T@U T@U T@U) Bool)
(declare-fun HandleTypeType () T@T)
(declare-fun Tclass._System.___hFunc0 (T@U) T@U)
(declare-fun $IsGoodHeap (T@U) Bool)
(declare-fun Requires0 (T@U T@U T@U) Bool)
(declare-fun |Set#IsMember| (T@U T@U) Bool)
(declare-fun Reads0 (T@U T@U T@U) T@U)
(declare-fun $Box (T@T T@U) T@U)
(declare-fun refType () T@T)
(declare-fun null () T@U)
(declare-fun $Unbox (T@T T@U) T@U)
(declare-fun MapType0Select (T@T T@T T@U T@U) T@U)
(declare-fun FieldType () T@T)
(declare-fun BoxType () T@T)
(declare-fun MapType0Type (T@T T@T) T@T)
(declare-fun MapType0Store (T@T T@T T@U T@U T@U) T@U)
(declare-fun MapType0TypeInv0 (T@T) T@T)
(declare-fun MapType0TypeInv1 (T@T) T@T)
(declare-fun FDim (T@U) Int)
(declare-fun Tag (T@U) T@U)
(declare-fun DeclName (T@U) T@U)
(declare-fun |_module.MyClass.F#requires| (T@U T@U) Bool)
(declare-fun $Is (T@T T@U T@U) Bool)
(declare-fun Tclass._module.MyClass () T@U)
(declare-fun |_module.MyClass.F#Handle| (T@U) T@U)
(declare-fun |Set#Empty| () T@U)
(declare-fun Tclass._module.MyClass? () T@U)
(declare-fun dtype (T@U) T@U)
(declare-fun _module.MyClass.data () T@U)
(declare-fun FieldOfDecl (T@U T@U) T@U)
(declare-fun $IsGhostField (T@U) Bool)
(declare-fun Apply0 (T@U T@U T@U) T@U)
(declare-fun _module.MyClass.F (T@U T@U) Int)
(declare-fun $OneHeap () T@U)
(declare-fun |Set#Equal| (T@U T@U) Bool)
(declare-fun $IsAllocBox (T@U T@U T@U) Bool)
(declare-fun TagFamily (T@U) T@U)
(declare-fun $FunctionContextHeight () Int)
(declare-fun |_module.MyClass.F#canCall| (T@U T@U) Bool)
(declare-fun $IsBox (T@U T@U) Bool)
(declare-fun DeclType (T@U) T@U)
(declare-fun Tclass._System.___hFunc0_0 (T@U) T@U)
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
(assert (distinct TInt TagInt alloc allocName Tagclass._System.___hFunc0 class._module.MyClass? Tagclass._module.MyClass? Tagclass._module.MyClass |tytagFamily$_#Func0| tytagFamily$MyClass field$data)
)
(assert  (and (and (and (and (and (and (and (and (= (Ctor HandleTypeType) 3) (= (Ctor refType) 4)) (forall ((t0 T@T) (t1 T@T) (val T@U) (m T@U) (x0 T@U) ) (! (= (MapType0Select t0 t1 (MapType0Store t0 t1 m x0 val) x0) val)
 :qid |mapAx0:MapType0Select|
 :weight 0
))) (forall ((u0 T@T) (u1 T@T) (val@@0 T@U) (m@@0 T@U) (x0@@0 T@U) (y0 T@U) ) (!  (or (= x0@@0 y0) (= (MapType0Select u0 u1 (MapType0Store u0 u1 m@@0 x0@@0 val@@0) y0) (MapType0Select u0 u1 m@@0 y0)))
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
(assert (forall ((f T@U) (t0@@0 T@U) (h T@U) ) (!  (=> ($IsGoodHeap h) (= ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h)  (=> (Requires0 t0@@0 h f) (forall ((r T@U) ) (!  (=> (and (or (not (= r null)) (not true)) (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) h r) alloc))))
 :qid |unknown.0:0|
 :skolemid |435|
 :pattern ( (|Set#IsMember| (Reads0 t0@@0 h f) ($Box refType r)))
)))))
 :qid |unknown.0:0|
 :skolemid |436|
 :pattern ( ($IsAlloc HandleTypeType f (Tclass._System.___hFunc0 t0@@0) h))
)))
(assert (= (FDim alloc) 0))
(assert (= (Tag TInt) TagInt))
(assert (= (DeclName alloc) allocName))
(assert (forall (($Heap T@U) (this T@U) ) (!  (=> (and ($IsGoodHeap $Heap) (and (or (not (= this null)) (not true)) (and ($Is refType this Tclass._module.MyClass) ($IsAlloc refType this Tclass._module.MyClass $Heap)))) (= (|_module.MyClass.F#requires| $Heap this) true))
 :qid |Classesdfy.50:11|
 :skolemid |528|
 :pattern ( (|_module.MyClass.F#requires| $Heap this) ($IsGoodHeap $Heap))
)))
(assert (forall (($self T@U) ($heap T@U) ) (! (= (Requires0 TInt $heap (|_module.MyClass.F#Handle| $self)) (|_module.MyClass.F#requires| $heap $self))
 :qid |unknown.0:0|
 :skolemid |534|
 :pattern ( (Requires0 TInt $heap (|_module.MyClass.F#Handle| $self)))
)))
(assert (forall ((o T@U) ) (!  (not (|Set#IsMember| |Set#Empty| o))
 :qid |DafnyPreludebpl.670:15|
 :skolemid |125|
 :pattern ( (|Set#IsMember| |Set#Empty| o))
)))
(assert (forall (($o T@U) ) (! (= ($Is refType $o Tclass._module.MyClass?)  (or (= $o null) (= (dtype $o) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |520|
 :pattern ( ($Is refType $o Tclass._module.MyClass?))
)))
(assert (forall ((|c#0| T@U) ($h T@U) ) (! (= ($IsAlloc refType |c#0| Tclass._module.MyClass $h) ($IsAlloc refType |c#0| Tclass._module.MyClass? $h))
 :qid |unknown.0:0|
 :skolemid |538|
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass $h))
 :pattern ( ($IsAlloc refType |c#0| Tclass._module.MyClass? $h))
)))
(assert (= (FDim _module.MyClass.data) 0))
(assert (= (FieldOfDecl class._module.MyClass? field$data) _module.MyClass.data))
(assert  (not ($IsGhostField _module.MyClass.data)))
(assert (forall (($o@@0 T@U) ($h@@0 T@U) ) (! (= ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@0)  (or (= $o@@0 null) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@0 $o@@0) alloc)))))
 :qid |unknown.0:0|
 :skolemid |521|
 :pattern ( ($IsAlloc refType $o@@0 Tclass._module.MyClass? $h@@0))
)))
(assert (forall (($self@@0 T@U) ($heap@@0 T@U) ) (! (= (Apply0 TInt $heap@@0 (|_module.MyClass.F#Handle| $self@@0)) ($Box intType (int_2_U (_module.MyClass.F $heap@@0 $self@@0))))
 :qid |unknown.0:0|
 :skolemid |533|
 :pattern ( (Apply0 TInt $heap@@0 (|_module.MyClass.F#Handle| $self@@0)))
)))
(assert (forall (($bx T@U) ($self@@1 T@U) ($heap@@1 T@U) ) (! (= (|Set#IsMember| (Reads0 TInt $heap@@1 (|_module.MyClass.F#Handle| $self@@1)) $bx) (= ($Unbox refType $bx) $self@@1))
 :qid |unknown.0:0|
 :skolemid |535|
 :pattern ( (|Set#IsMember| (Reads0 TInt $heap@@1 (|_module.MyClass.F#Handle| $self@@1)) $bx))
)))
(assert (forall ((x@@2 T@U) (T T@T) ) (! (= ($Box T ($Unbox T x@@2)) x@@2)
 :qid |DafnyPreludebpl.168:18|
 :skolemid |26|
 :pattern ( ($Unbox T x@@2))
)))
(assert (forall ((t0@@1 T@U) (heap T@U) (f@@0 T@U) ) (!  (=> (and (and ($IsGoodHeap heap) ($Is HandleTypeType f@@0 (Tclass._System.___hFunc0 t0@@1))) (|Set#Equal| (Reads0 t0@@1 $OneHeap f@@0) |Set#Empty|)) (= (Requires0 t0@@1 $OneHeap f@@0) (Requires0 t0@@1 heap f@@0)))
 :qid |unknown.0:0|
 :skolemid |430|
 :pattern ( (Requires0 t0@@1 $OneHeap f@@0) ($IsGoodHeap heap))
 :pattern ( (Requires0 t0@@1 heap f@@0))
)))
(assert ($IsGhostField alloc))
(assert ($IsGoodHeap $OneHeap))
(assert (forall (($h@@1 T@U) ($o@@1 T@U) ) (!  (=> (and (and ($IsGoodHeap $h@@1) (and (or (not (= $o@@1 null)) (not true)) (= (dtype $o@@1) Tclass._module.MyClass?))) (U_2_bool ($Unbox boolType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) alloc)))) ($IsAlloc intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.MyClass.data)) TInt $h@@1))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |523|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@1 $o@@1) _module.MyClass.data)))
)))
(assert (forall ((v T@U) (t T@U) (h@@0 T@U) (T@@0 T@T) ) (! (= ($IsAllocBox ($Box T@@0 v) t h@@0) ($IsAlloc T@@0 v t h@@0))
 :qid |DafnyPreludebpl.217:18|
 :skolemid |39|
 :pattern ( ($IsAllocBox ($Box T@@0 v) t h@@0))
)))
(assert (forall ((|#$R| T@U) ) (!  (and (= (Tag (Tclass._System.___hFunc0 |#$R|)) Tagclass._System.___hFunc0) (= (TagFamily (Tclass._System.___hFunc0 |#$R|)) |tytagFamily$_#Func0|))
 :qid |unknown.0:0|
 :skolemid |411|
 :pattern ( (Tclass._System.___hFunc0 |#$R|))
)))
(assert  (=> (<= 0 $FunctionContextHeight) (forall (($Heap@@0 T@U) (this@@0 T@U) ) (!  (=> (or (|_module.MyClass.F#canCall| $Heap@@0 this@@0) (and (< 0 $FunctionContextHeight) (and ($IsGoodHeap $Heap@@0) (and (or (not (= this@@0 null)) (not true)) (and ($Is refType this@@0 Tclass._module.MyClass) ($IsAlloc refType this@@0 Tclass._module.MyClass $Heap@@0)))))) (= (_module.MyClass.F $Heap@@0 this@@0) (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@0 this@@0) _module.MyClass.data)))))
 :qid |Classesdfy.50:11|
 :skolemid |529|
 :pattern ( (_module.MyClass.F $Heap@@0 this@@0) ($IsGoodHeap $Heap@@0))
))))
(assert (forall ((bx T@U) ) (!  (=> ($IsBox bx Tclass._module.MyClass?) (and (= ($Box refType ($Unbox refType bx)) bx) ($Is refType ($Unbox refType bx) Tclass._module.MyClass?)))
 :qid |unknown.0:0|
 :skolemid |519|
 :pattern ( ($IsBox bx Tclass._module.MyClass?))
)))
(assert (forall ((bx@@0 T@U) ) (!  (=> ($IsBox bx@@0 Tclass._module.MyClass) (and (= ($Box refType ($Unbox refType bx@@0)) bx@@0) ($Is refType ($Unbox refType bx@@0) Tclass._module.MyClass)))
 :qid |unknown.0:0|
 :skolemid |525|
 :pattern ( ($IsBox bx@@0 Tclass._module.MyClass))
)))
(assert (forall ((|c#0@@0| T@U) ) (! (= ($Is refType |c#0@@0| Tclass._module.MyClass)  (and ($Is refType |c#0@@0| Tclass._module.MyClass?) (or (not (= |c#0@@0| null)) (not true))))
 :qid |unknown.0:0|
 :skolemid |537|
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass))
 :pattern ( ($Is refType |c#0@@0| Tclass._module.MyClass?))
)))
(assert (forall ((t0@@2 T@U) (heap@@0 T@U) (f@@1 T@U) ) (!  (=> (and ($IsGoodHeap heap@@0) ($Is HandleTypeType f@@1 (Tclass._System.___hFunc0 t0@@2))) (= (|Set#Equal| (Reads0 t0@@2 $OneHeap f@@1) |Set#Empty|) (|Set#Equal| (Reads0 t0@@2 heap@@0 f@@1) |Set#Empty|)))
 :qid |unknown.0:0|
 :skolemid |429|
 :pattern ( (Reads0 t0@@2 $OneHeap f@@1) ($IsGoodHeap heap@@0))
 :pattern ( (Reads0 t0@@2 heap@@0 f@@1))
)))
(assert (forall ((a T@U) (b T@U) ) (!  (=> (|Set#Equal| a b) (= a b))
 :qid |DafnyPreludebpl.787:15|
 :skolemid |150|
 :pattern ( (|Set#Equal| a b))
)))
(assert (forall ((cl T@U) (nm T@U) ) (!  (and (= (DeclType (FieldOfDecl cl nm)) cl) (= (DeclName (FieldOfDecl cl nm)) nm))
 :qid |DafnyPreludebpl.534:15|
 :skolemid |107|
 :pattern ( (FieldOfDecl cl nm))
)))
(assert (forall ((bx@@1 T@U) ) (!  (=> ($IsBox bx@@1 TInt) (and (= ($Box intType ($Unbox intType bx@@1)) bx@@1) ($Is intType ($Unbox intType bx@@1) TInt)))
 :qid |DafnyPreludebpl.176:15|
 :skolemid |27|
 :pattern ( ($IsBox bx@@1 TInt))
)))
(assert (forall ((v@@0 T@U) (t@@0 T@U) (T@@1 T@T) ) (! (= ($IsBox ($Box T@@1 v@@0) t@@0) ($Is T@@1 v@@0 t@@0))
 :qid |DafnyPreludebpl.214:18|
 :skolemid |38|
 :pattern ( ($IsBox ($Box T@@1 v@@0) t@@0))
)))
(assert (forall ((|#$R@@0| T@U) ) (! (= (Tclass._System.___hFunc0_0 (Tclass._System.___hFunc0 |#$R@@0|)) |#$R@@0|)
 :qid |unknown.0:0|
 :skolemid |412|
 :pattern ( (Tclass._System.___hFunc0 |#$R@@0|))
)))
(assert (forall ((x@@3 T@U) (T@@2 T@T) ) (! (= ($Unbox T@@2 ($Box T@@2 x@@3)) x@@3)
 :qid |DafnyPreludebpl.167:18|
 :skolemid |25|
 :pattern ( ($Box T@@2 x@@3))
)))
(assert (forall (($h@@2 T@U) ($o@@2 T@U) ) (!  (=> (and ($IsGoodHeap $h@@2) (and (or (not (= $o@@2 null)) (not true)) (= (dtype $o@@2) Tclass._module.MyClass?))) ($Is intType ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.MyClass.data)) TInt))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |522|
 :pattern ( ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $h@@2 $o@@2) _module.MyClass.data)))
)))
(assert  (and (forall ((t0@@3 T@T) (t1@@0 T@T) (t2 T@T) (val@@1 T@U) (m@@1 T@U) (x0@@1 T@U) (x1 T@U) ) (! (= (MapType1Select t0@@3 t1@@0 t2 (MapType1Store t0@@3 t1@@0 t2 m@@1 x0@@1 x1 val@@1) x0@@1 x1) val@@1)
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
 :skolemid |539|
 :pattern ( (MapType1Select refType FieldType boolType (|lambda#0| |l#0| |l#1| |l#2| |l#3|) $o@@3 $f))
)))
(assert (forall ((f@@2 T@U) (t0@@4 T@U) ) (! (= ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)) (forall ((h@@1 T@U) ) (!  (=> (and ($IsGoodHeap h@@1) (Requires0 t0@@4 h@@1 f@@2)) ($IsBox (Apply0 t0@@4 h@@1 f@@2) t0@@4))
 :qid |DafnyPreludebpl.593:12|
 :skolemid |431|
 :pattern ( (Apply0 t0@@4 h@@1 f@@2))
)))
 :qid |unknown.0:0|
 :skolemid |432|
 :pattern ( ($Is HandleTypeType f@@2 (Tclass._System.___hFunc0 t0@@4)))
)))
(assert (forall ((|#$R@@1| T@U) (bx@@2 T@U) ) (!  (=> ($IsBox bx@@2 (Tclass._System.___hFunc0 |#$R@@1|)) (and (= ($Box HandleTypeType ($Unbox HandleTypeType bx@@2)) bx@@2) ($Is HandleTypeType ($Unbox HandleTypeType bx@@2) (Tclass._System.___hFunc0 |#$R@@1|))))
 :qid |unknown.0:0|
 :skolemid |413|
 :pattern ( ($IsBox bx@@2 (Tclass._System.___hFunc0 |#$R@@1|)))
)))
(assert (= (Tag Tclass._module.MyClass?) Tagclass._module.MyClass?))
(assert (= (TagFamily Tclass._module.MyClass?) tytagFamily$MyClass))
(assert (= (Tag Tclass._module.MyClass) Tagclass._module.MyClass))
(assert (= (TagFamily Tclass._module.MyClass) tytagFamily$MyClass))
(assert (forall ((f@@3 T@U) (t0@@5 T@U) (h@@2 T@U) ) (!  (=> (and ($IsGoodHeap h@@2) ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@5) h@@2)) (=> (Requires0 t0@@5 h@@2 f@@3) ($IsAllocBox (Apply0 t0@@5 h@@2 f@@3) t0@@5 h@@2)))
 :qid |unknown.0:0|
 :skolemid |437|
 :pattern ( ($IsAlloc HandleTypeType f@@3 (Tclass._System.___hFunc0 t0@@5) h@@2))
)))
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
(assert (forall (($self@@2 T@U) ($heap@@2 T@U) ) (! (= (_module.MyClass.F $heap@@2 $self@@2) (U_2_int ($Unbox intType (Apply0 TInt $heap@@2 (|_module.MyClass.F#Handle| $self@@2)))))
 :qid |unknown.0:0|
 :skolemid |536|
 :pattern ( (_module.MyClass.F $heap@@2 $self@@2))
)))
(assert (forall ((f@@4 T@U) (t0@@6 T@U) (u0@@2 T@U) ) (!  (=> (and ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@6)) (forall ((bx@@3 T@U) ) (!  (=> ($IsBox bx@@3 t0@@6) ($IsBox bx@@3 u0@@2))
 :qid |unknown.0:0|
 :skolemid |433|
 :pattern ( ($IsBox bx@@3 t0@@6))
 :pattern ( ($IsBox bx@@3 u0@@2))
))) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 u0@@2)))
 :qid |unknown.0:0|
 :skolemid |434|
 :pattern ( ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 t0@@6)) ($Is HandleTypeType f@@4 (Tclass._System.___hFunc0 u0@@2)))
)))
(assert (forall ((h@@3 T@U) (v@@1 T@U) ) (! ($IsAlloc intType v@@1 TInt h@@3)
 :qid |DafnyPreludebpl.289:14|
 :skolemid |61|
 :pattern ( ($IsAlloc intType v@@1 TInt h@@3))
)))
(assert (forall ((v@@2 T@U) ) (! ($Is intType v@@2 TInt)
 :qid |DafnyPreludebpl.228:14|
 :skolemid |40|
 :pattern ( ($Is intType v@@2 TInt))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $_ModifiesFrame@0 () T@U)
(declare-fun $Heap@@1 () T@U)
(declare-fun |that#0| () T@U)
(declare-fun |fn#0@0| () T@U)
(declare-fun |d#0@0| () Int)
(declare-fun this@@1 () T@U)
(declare-fun $IsHeapAnchor (T@U) Bool)
(declare-fun |fn#0| () T@U)
(set-info :boogie-vc-id Impl$$_module.MyClass.M)
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
 (=> (= (ControlFlow 0 0) 8) (let ((anon0_correct  (=> (= $_ModifiesFrame@0 (|lambda#0| null $Heap@@1 alloc false)) (and (=> (= (ControlFlow 0 2) (- 0 7)) (or (not (= 0 $FunctionContextHeight)) (not true))) (=> (or (not (= 0 $FunctionContextHeight)) (not true)) (and (=> (= (ControlFlow 0 2) (- 0 6)) (or (not (= |that#0| null)) (not true))) (=> (or (not (= |that#0| null)) (not true)) (=> (= |fn#0@0| (|_module.MyClass.F#Handle| |that#0|)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (Requires0 TInt $Heap@@1 |fn#0@0|)) (=> (Requires0 TInt $Heap@@1 |fn#0@0|) (=> (= |d#0@0| (U_2_int ($Unbox intType (Apply0 TInt $Heap@@1 |fn#0@0|)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (or (not (= |that#0| null)) (not true))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= |d#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |that#0|) _module.MyClass.data))))) (=> (= |d#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 |that#0|) _module.MyClass.data)))) (=> (= (ControlFlow 0 2) (- 0 1)) (= |d#0@0| (U_2_int ($Unbox intType (MapType0Select FieldType BoxType (MapType0Select refType (MapType0Type FieldType BoxType) $Heap@@1 this@@1) _module.MyClass.data)))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and ($IsGoodHeap $Heap@@1) ($IsHeapAnchor $Heap@@1)) (=> (and (and (or (not (= this@@1 null)) (not true)) (and ($Is refType this@@1 Tclass._module.MyClass) ($IsAlloc refType this@@1 Tclass._module.MyClass $Heap@@1))) (and ($Is refType |that#0| Tclass._module.MyClass) ($IsAlloc refType |that#0| Tclass._module.MyClass $Heap@@1))) (=> (and (and (and ($Is HandleTypeType |fn#0| (Tclass._System.___hFunc0 TInt)) ($IsAlloc HandleTypeType |fn#0| (Tclass._System.___hFunc0 TInt) $Heap@@1)) true) (and (= 1 $FunctionContextHeight) (= (ControlFlow 0 8) 2))) anon0_correct)))))
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
