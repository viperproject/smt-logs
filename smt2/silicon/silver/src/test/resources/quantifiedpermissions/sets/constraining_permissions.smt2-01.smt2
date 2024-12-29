(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 19:56:42
; Silicon.version: 1.1-SNAPSHOT (457c6eca@(detached))
; Input file: <unknown>
; Verifier id: 00
; ------------------------------------------------------------
; Begin preamble
; ////////// Static preamble
; 
; ; /z3config.smt2
(set-option :print-success true) ; Boogie: false
(set-option :global-decls true) ; Necessary for push pop mode
(set-option :auto_config false)
(set-option :smt.case_split 3)
(set-option :smt.delay_units true)
(set-option :type_check true)
(set-option :smt.mbqi false)
(set-option :pp.bv_literals false)
(set-option :smt.qi.eager_threshold 100)
(set-option :smt.arith.solver 2)
(set-option :model.v2 true)
(set-option :smt.qi.max_multi_patterns 1000)
; 
; ; /preamble.smt2
(declare-datatypes (($Snap 0)) ((
    ($Snap.unit)
    ($Snap.combine ($Snap.first $Snap) ($Snap.second $Snap)))))
(declare-sort $Ref 0)
(declare-const $Ref.null $Ref)
(declare-sort $FPM 0)
(declare-sort $PPM 0)
(define-sort $Perm () Real)
(define-const $Perm.Write $Perm 1.0)
(define-const $Perm.No $Perm 0.0)
(define-fun $Perm.isValidVar ((p $Perm)) Bool
	(<= $Perm.No p))
(define-fun $Perm.isReadVar ((p $Perm)) Bool
    (and ($Perm.isValidVar p)
         (not (= p $Perm.No))))
(define-fun $Perm.min ((p1 $Perm) (p2 $Perm)) Real
    (ite (<= p1 p2) p1 p2))
(define-fun $Math.min ((a Int) (b Int)) Int
    (ite (<= a b) a b))
(define-fun $Math.clip ((a Int)) Int
    (ite (< a 0) 0 a))
; ////////// Sorts
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Foo 0)
(declare-sort $FVF<f> 0)
; ////////// Sort wrappers
; Declaring additional sort wrappers
(declare-fun $SortWrappers.IntTo$Snap (Int) $Snap)
(declare-fun $SortWrappers.$SnapToInt ($Snap) Int)
(assert (forall ((x Int)) (!
    (= x ($SortWrappers.$SnapToInt($SortWrappers.IntTo$Snap x)))
    :pattern (($SortWrappers.IntTo$Snap x))
    :qid |$Snap.$SnapToIntTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.IntTo$Snap($SortWrappers.$SnapToInt x)))
    :pattern (($SortWrappers.$SnapToInt x))
    :qid |$Snap.IntTo$SnapToInt|
    )))
(declare-fun $SortWrappers.BoolTo$Snap (Bool) $Snap)
(declare-fun $SortWrappers.$SnapToBool ($Snap) Bool)
(assert (forall ((x Bool)) (!
    (= x ($SortWrappers.$SnapToBool($SortWrappers.BoolTo$Snap x)))
    :pattern (($SortWrappers.BoolTo$Snap x))
    :qid |$Snap.$SnapToBoolTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.BoolTo$Snap($SortWrappers.$SnapToBool x)))
    :pattern (($SortWrappers.$SnapToBool x))
    :qid |$Snap.BoolTo$SnapToBool|
    )))
(declare-fun $SortWrappers.$RefTo$Snap ($Ref) $Snap)
(declare-fun $SortWrappers.$SnapTo$Ref ($Snap) $Ref)
(assert (forall ((x $Ref)) (!
    (= x ($SortWrappers.$SnapTo$Ref($SortWrappers.$RefTo$Snap x)))
    :pattern (($SortWrappers.$RefTo$Snap x))
    :qid |$Snap.$SnapTo$RefTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$RefTo$Snap($SortWrappers.$SnapTo$Ref x)))
    :pattern (($SortWrappers.$SnapTo$Ref x))
    :qid |$Snap.$RefTo$SnapTo$Ref|
    )))
(declare-fun $SortWrappers.$PermTo$Snap ($Perm) $Snap)
(declare-fun $SortWrappers.$SnapTo$Perm ($Snap) $Perm)
(assert (forall ((x $Perm)) (!
    (= x ($SortWrappers.$SnapTo$Perm($SortWrappers.$PermTo$Snap x)))
    :pattern (($SortWrappers.$PermTo$Snap x))
    :qid |$Snap.$SnapTo$PermTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PermTo$Snap($SortWrappers.$SnapTo$Perm x)))
    :pattern (($SortWrappers.$SnapTo$Perm x))
    :qid |$Snap.$PermTo$SnapTo$Perm|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.Set<$Ref>To$Snap (Set<$Ref>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Ref> ($Snap) Set<$Ref>)
(assert (forall ((x Set<$Ref>)) (!
    (= x ($SortWrappers.$SnapToSet<$Ref>($SortWrappers.Set<$Ref>To$Snap x)))
    :pattern (($SortWrappers.Set<$Ref>To$Snap x))
    :qid |$Snap.$SnapToSet<$Ref>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Ref>To$Snap($SortWrappers.$SnapToSet<$Ref> x)))
    :pattern (($SortWrappers.$SnapToSet<$Ref> x))
    :qid |$Snap.Set<$Ref>To$SnapToSet<$Ref>|
    )))
(declare-fun $SortWrappers.Set<$Snap>To$Snap (Set<$Snap>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<$Snap> ($Snap) Set<$Snap>)
(assert (forall ((x Set<$Snap>)) (!
    (= x ($SortWrappers.$SnapToSet<$Snap>($SortWrappers.Set<$Snap>To$Snap x)))
    :pattern (($SortWrappers.Set<$Snap>To$Snap x))
    :qid |$Snap.$SnapToSet<$Snap>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<$Snap>To$Snap($SortWrappers.$SnapToSet<$Snap> x)))
    :pattern (($SortWrappers.$SnapToSet<$Snap> x))
    :qid |$Snap.Set<$Snap>To$SnapToSet<$Snap>|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.FooTo$Snap (Foo) $Snap)
(declare-fun $SortWrappers.$SnapToFoo ($Snap) Foo)
(assert (forall ((x Foo)) (!
    (= x ($SortWrappers.$SnapToFoo($SortWrappers.FooTo$Snap x)))
    :pattern (($SortWrappers.FooTo$Snap x))
    :qid |$Snap.$SnapToFooTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.FooTo$Snap($SortWrappers.$SnapToFoo x)))
    :pattern (($SortWrappers.$SnapToFoo x))
    :qid |$Snap.FooTo$SnapToFoo|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<f>To$Snap ($FVF<f>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<f> ($Snap) $FVF<f>)
(assert (forall ((x $FVF<f>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<f>($SortWrappers.$FVF<f>To$Snap x)))
    :pattern (($SortWrappers.$FVF<f>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<f>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<f>To$Snap($SortWrappers.$SnapTo$FVF<f> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<f> x))
    :qid |$Snap.$FVF<f>To$SnapTo$FVF<f>|
    )))
; ////////// Symbols
(declare-fun Set_card (Set<$Ref>) Int)
(declare-const Set_empty Set<$Ref>)
(declare-fun Set_in ($Ref Set<$Ref>) Bool)
(declare-fun Set_singleton ($Ref) Set<$Ref>)
(declare-fun Set_unionone (Set<$Ref> $Ref) Set<$Ref>)
(declare-fun Set_union (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_intersection (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_difference (Set<$Ref> Set<$Ref>) Set<$Ref>)
(declare-fun Set_subset (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_equal (Set<$Ref> Set<$Ref>) Bool)
(declare-fun Set_skolem_diff (Set<$Ref> Set<$Ref>) $Ref)
(declare-fun Set_card (Set<$Snap>) Int)
(declare-const Set_empty Set<$Snap>)
(declare-fun Set_in ($Snap Set<$Snap>) Bool)
(declare-fun Set_singleton ($Snap) Set<$Snap>)
(declare-fun Set_unionone (Set<$Snap> $Snap) Set<$Snap>)
(declare-fun Set_union (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_intersection (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_difference (Set<$Snap> Set<$Snap>) Set<$Snap>)
(declare-fun Set_subset (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_equal (Set<$Snap> Set<$Snap>) Bool)
(declare-fun Set_skolem_diff (Set<$Snap> Set<$Snap>) $Snap)
(declare-fun foo<Perm> ($Ref) $Perm)
; /field_value_functions_declarations.smt2 [f: Ref]
(declare-fun $FVF.domain_f ($FVF<f>) Set<$Ref>)
(declare-fun $FVF.lookup_f ($FVF<f> $Ref) $Ref)
(declare-fun $FVF.after_f ($FVF<f> $FVF<f>) Bool)
(declare-fun $FVF.loc_f ($Ref $Ref) Bool)
(declare-fun $FVF.perm_f ($FPM $Ref) $Perm)
(declare-const $fvfTOP_f $FVF<f>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
(assert (forall ((s Set<$Ref>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Ref)) (!
  (not (Set_in o (as Set_empty  Set<$Ref>)))
  :pattern ((Set_in o (as Set_empty  Set<$Ref>)))
  )))
(assert (forall ((s Set<$Ref>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Ref>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Ref))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Ref)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Ref) (o $Ref)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Ref)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (o $Ref)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (x $Ref)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (o $Ref)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>) (y $Ref)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Ref)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Ref>) (b Set<$Ref>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o $Snap)) (!
  (not (Set_in o (as Set_empty  Set<$Snap>)))
  :pattern ((Set_in o (as Set_empty  Set<$Snap>)))
  )))
(assert (forall ((s Set<$Snap>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<$Snap>)))
    (=> (not (= (Set_card s) 0)) (exists ((x $Snap))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r $Snap)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r $Snap) (o $Snap)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r $Snap)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (o $Snap)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (x $Snap)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (o $Snap)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>) (y $Snap)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (and
    (=
      (+
        (+ (Set_card (Set_difference a b)) (Set_card (Set_difference b a)))
        (Set_card (Set_intersection a b)))
      (Set_card (Set_union a b)))
    (=
      (Set_card (Set_difference a b))
      (- (Set_card a) (Set_card (Set_intersection a b)))))
  :pattern ((Set_card (Set_difference a b)))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=
    (Set_subset a b)
    (forall ((o $Snap)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (or
    (and (Set_equal a b) (= a b))
    (and
      (not (Set_equal a b))
      (and
        (not (= a b))
        (and
          (= (Set_skolem_diff a b) (Set_skolem_diff b a))
          (not
            (= (Set_in (Set_skolem_diff a b) a) (Set_in (Set_skolem_diff a b) b)))))))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((a Set<$Snap>) (b Set<$Snap>)) (!
  (=> (Set_equal a b) (= a b))
  :pattern ((Set_equal a b))
  )))
(assert (forall ((x $Ref)) (!
  (> (foo<Perm> x) $Perm.No)
  :pattern ((foo<Perm> x))
  :qid |prog.foo_not_none|)))
; /field_value_functions_axioms.smt2 [f: Ref]
(assert (forall ((vs $FVF<f>) (ws $FVF<f>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_f vs) ($FVF.domain_f ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_f vs))
            (= ($FVF.lookup_f vs x) ($FVF.lookup_f ws x)))
          :pattern (($FVF.lookup_f vs x) ($FVF.lookup_f ws x))
          :qid |qp.$FVF<f>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<f>To$Snap vs)
              ($SortWrappers.$FVF<f>To$Snap ws)
              )
    :qid |qp.$FVF<f>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_f pm r))
    :pattern (($FVF.perm_f pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_f f r) true)
    :pattern (($FVF.loc_f f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test00 ----------
(declare-const xs@0@01 Set<$Ref>)
(declare-const xs@1@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const x@2@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@2@01 xs@1@01))
(declare-const $k@3@01 $Perm)
(assert ($Perm.isReadVar $k@3@01))
(pop) ; 2
(declare-const $t@4@01 $FVF<f>)
(declare-fun inv@5@01 ($Ref) $Ref)
(declare-fun img@6@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@3@01))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@2@01 $Ref)) (!
  (=> (Set_in x@2@01 xs@1@01) (or (= $k@3@01 $Perm.No) (< $Perm.No $k@3@01)))
  
  :qid |quant-u-5618|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@2@01 $Ref) (x2@2@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@2@01 xs@1@01) (< $Perm.No $k@3@01))
      (and (Set_in x2@2@01 xs@1@01) (< $Perm.No $k@3@01))
      (= x1@2@01 x2@2@01))
    (= x1@2@01 x2@2@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@2@01 $Ref)) (!
  (=>
    (and (Set_in x@2@01 xs@1@01) (< $Perm.No $k@3@01))
    (and (= (inv@5@01 x@2@01) x@2@01) (img@6@01 x@2@01)))
  :pattern ((Set_in x@2@01 xs@1@01))
  :pattern ((inv@5@01 x@2@01))
  :pattern ((img@6@01 x@2@01))
  :qid |quant-u-5619|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (and (Set_in (inv@5@01 r) xs@1@01) (< $Perm.No $k@3@01)))
    (= (inv@5@01 r) r))
  :pattern ((inv@5@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@2@01 $Ref)) (!
  (<= $Perm.No $k@3@01)
  :pattern ((Set_in x@2@01 xs@1@01))
  :pattern ((inv@5@01 x@2@01))
  :pattern ((img@6@01 x@2@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@2@01 $Ref)) (!
  (<= $k@3@01 $Perm.Write)
  :pattern ((Set_in x@2@01 xs@1@01))
  :pattern ((inv@5@01 x@2@01))
  :pattern ((img@6@01 x@2@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@2@01 $Ref)) (!
  (=>
    (and (Set_in x@2@01 xs@1@01) (< $Perm.No $k@3@01))
    (not (= x@2@01 $Ref.null)))
  :pattern ((Set_in x@2@01 xs@1@01))
  :pattern ((inv@5@01 x@2@01))
  :pattern ((img@6@01 x@2@01))
  :qid |f-permImpliesNonNull|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@7@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@7@01 xs@1@01))
(declare-const $k@8@01 $Perm)
(assert ($Perm.isReadVar $k@8@01))
(pop) ; 3
(declare-const $t@9@01 $FVF<f>)
(declare-fun inv@10@01 ($Ref) $Ref)
(declare-fun img@11@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@8@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@7@01 $Ref)) (!
  (=> (Set_in x@7@01 xs@1@01) (or (= $k@8@01 $Perm.No) (< $Perm.No $k@8@01)))
  
  :qid |quant-u-5620|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@7@01 $Ref) (x2@7@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@7@01 xs@1@01) (< $Perm.No $k@8@01))
      (and (Set_in x2@7@01 xs@1@01) (< $Perm.No $k@8@01))
      (= x1@7@01 x2@7@01))
    (= x1@7@01 x2@7@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@7@01 $Ref)) (!
  (=>
    (and (Set_in x@7@01 xs@1@01) (< $Perm.No $k@8@01))
    (and (= (inv@10@01 x@7@01) x@7@01) (img@11@01 x@7@01)))
  :pattern ((Set_in x@7@01 xs@1@01))
  :pattern ((inv@10@01 x@7@01))
  :pattern ((img@11@01 x@7@01))
  :qid |quant-u-5621|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@11@01 r) (and (Set_in (inv@10@01 r) xs@1@01) (< $Perm.No $k@8@01)))
    (= (inv@10@01 r) r))
  :pattern ((inv@10@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@7@01 $Ref)) (!
  (<= $Perm.No $k@8@01)
  :pattern ((Set_in x@7@01 xs@1@01))
  :pattern ((inv@10@01 x@7@01))
  :pattern ((img@11@01 x@7@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@7@01 $Ref)) (!
  (<= $k@8@01 $Perm.Write)
  :pattern ((Set_in x@7@01 xs@1@01))
  :pattern ((inv@10@01 x@7@01))
  :pattern ((img@11@01 x@7@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@7@01 $Ref)) (!
  (=>
    (and (Set_in x@7@01 xs@1@01) (< $Perm.No $k@8@01))
    (not (= x@7@01 $Ref.null)))
  :pattern ((Set_in x@7@01 xs@1@01))
  :pattern ((inv@10@01 x@7@01))
  :pattern ((img@11@01 x@7@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@12@01 $Ref)
(push) ; 3
; [eval] (x in xs)
(assert (Set_in x@12@01 xs@1@01))
(declare-const $k@13@01 $Perm)
(assert ($Perm.isReadVar $k@13@01))
(pop) ; 3
(declare-fun inv@14@01 ($Ref) $Ref)
(declare-fun img@15@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@13@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@12@01 $Ref)) (!
  (=> (Set_in x@12@01 xs@1@01) (or (= $k@13@01 $Perm.No) (< $Perm.No $k@13@01)))
  
  :qid |quant-u-5622|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@12@01 $Ref) (x2@12@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@12@01 xs@1@01) (< $Perm.No $k@13@01))
      (and (Set_in x2@12@01 xs@1@01) (< $Perm.No $k@13@01))
      (= x1@12@01 x2@12@01))
    (= x1@12@01 x2@12@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@12@01 $Ref)) (!
  (=>
    (and (Set_in x@12@01 xs@1@01) (< $Perm.No $k@13@01))
    (and (= (inv@14@01 x@12@01) x@12@01) (img@15@01 x@12@01)))
  :pattern ((Set_in x@12@01 xs@1@01))
  :pattern ((inv@14@01 x@12@01))
  :pattern ((img@15@01 x@12@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@15@01 r)
      (and (Set_in (inv@14@01 r) xs@1@01) (< $Perm.No $k@13@01)))
    (= (inv@14@01 r) r))
  :pattern ((inv@14@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@16@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@14@01 r) xs@1@01) (img@15@01 r) (= r (inv@14@01 r)))
    ($Perm.min
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) xs@1@01)) $k@3@01 $Perm.No)
      $k@13@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@13@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite (and (img@6@01 r) (Set_in (inv@5@01 r) xs@1@01)) $k@3@01 $Perm.No)
        $Perm.No))
    (ite
      (and (img@6@01 r) (Set_in (inv@5@01 r) xs@1@01))
      (<
        (ite
          (and (Set_in (inv@14@01 r) xs@1@01) (img@15@01 r) (= r (inv@14@01 r)))
          $k@13@01
          $Perm.No)
        $k@3@01)
      (<
        (ite
          (and (Set_in (inv@14@01 r) xs@1@01) (img@15@01 r) (= r (inv@14@01 r)))
          $k@13@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@6@01 r))
  :pattern ((Set_in (inv@5@01 r) xs@1@01))
  :pattern ((Set_in (inv@14@01 r) xs@1@01))
  :pattern ((img@15@01 r))
  :qid |qp.srp0|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@14@01 r) xs@1@01) (img@15@01 r) (= r (inv@14@01 r)))
    (= (- $k@13@01 (pTaken@16@01 r)) $Perm.No))
  
  :qid |quant-u-5625|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test01 ----------
(declare-const xs@17@01 Set<$Ref>)
(declare-const ys@18@01 Set<$Ref>)
(declare-const xs@19@01 Set<$Ref>)
(declare-const ys@20@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@21@01 $Snap)
(assert (= $t@21@01 ($Snap.combine ($Snap.first $t@21@01) ($Snap.second $t@21@01))))
(declare-const x@22@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@22@01 xs@19@01))
(declare-const $k@23@01 $Perm)
(assert ($Perm.isReadVar $k@23@01))
(pop) ; 2
(declare-fun inv@24@01 ($Ref) $Ref)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@23@01))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@22@01 $Ref)) (!
  (=> (Set_in x@22@01 xs@19@01) (or (= $k@23@01 $Perm.No) (< $Perm.No $k@23@01)))
  
  :qid |quant-u-5626|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@22@01 $Ref) (x2@22@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@22@01 xs@19@01) (< $Perm.No $k@23@01))
      (and (Set_in x2@22@01 xs@19@01) (< $Perm.No $k@23@01))
      (= x1@22@01 x2@22@01))
    (= x1@22@01 x2@22@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@22@01 $Ref)) (!
  (=>
    (and (Set_in x@22@01 xs@19@01) (< $Perm.No $k@23@01))
    (and (= (inv@24@01 x@22@01) x@22@01) (img@25@01 x@22@01)))
  :pattern ((Set_in x@22@01 xs@19@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |quant-u-5627|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@25@01 r)
      (and (Set_in (inv@24@01 r) xs@19@01) (< $Perm.No $k@23@01)))
    (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@22@01 $Ref)) (!
  (<= $Perm.No $k@23@01)
  :pattern ((Set_in x@22@01 xs@19@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@22@01 $Ref)) (!
  (<= $k@23@01 $Perm.Write)
  :pattern ((Set_in x@22@01 xs@19@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@22@01 $Ref)) (!
  (=>
    (and (Set_in x@22@01 xs@19@01) (< $Perm.No $k@23@01))
    (not (= x@22@01 $Ref.null)))
  :pattern ((Set_in x@22@01 xs@19@01))
  :pattern ((inv@24@01 x@22@01))
  :pattern ((img@25@01 x@22@01))
  :qid |f-permImpliesNonNull|)))
(declare-const x@26@01 $Ref)
(push) ; 2
; [eval] (x in ys)
(assert (Set_in x@26@01 ys@20@01))
(declare-const $k@27@01 $Perm)
(assert ($Perm.isReadVar $k@27@01))
(pop) ; 2
(declare-fun inv@28@01 ($Ref) $Ref)
(declare-fun img@29@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@27@01))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@26@01 $Ref)) (!
  (=> (Set_in x@26@01 ys@20@01) (or (= $k@27@01 $Perm.No) (< $Perm.No $k@27@01)))
  
  :qid |quant-u-5628|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@26@01 $Ref) (x2@26@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@26@01 ys@20@01) (< $Perm.No $k@27@01))
      (and (Set_in x2@26@01 ys@20@01) (< $Perm.No $k@27@01))
      (= x1@26@01 x2@26@01))
    (= x1@26@01 x2@26@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@26@01 $Ref)) (!
  (=>
    (and (Set_in x@26@01 ys@20@01) (< $Perm.No $k@27@01))
    (and (= (inv@28@01 x@26@01) x@26@01) (img@29@01 x@26@01)))
  :pattern ((Set_in x@26@01 ys@20@01))
  :pattern ((inv@28@01 x@26@01))
  :pattern ((img@29@01 x@26@01))
  :qid |quant-u-5629|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@29@01 r)
      (and (Set_in (inv@28@01 r) ys@20@01) (< $Perm.No $k@27@01)))
    (= (inv@28@01 r) r))
  :pattern ((inv@28@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@26@01 $Ref)) (!
  (<= $Perm.No $k@27@01)
  :pattern ((Set_in x@26@01 ys@20@01))
  :pattern ((inv@28@01 x@26@01))
  :pattern ((img@29@01 x@26@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@26@01 $Ref)) (!
  (<= $k@27@01 $Perm.Write)
  :pattern ((Set_in x@26@01 ys@20@01))
  :pattern ((inv@28@01 x@26@01))
  :pattern ((img@29@01 x@26@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@26@01 $Ref)) (!
  (=>
    (and (Set_in x@26@01 ys@20@01) (< $Perm.No $k@27@01))
    (not (= x@26@01 $Ref.null)))
  :pattern ((Set_in x@26@01 ys@20@01))
  :pattern ((inv@28@01 x@26@01))
  :pattern ((img@29@01 x@26@01))
  :qid |f-permImpliesNonNull|)))
(push) ; 2
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (and
    (= x@26@01 x@22@01)
    (=
      (and (img@29@01 r) (Set_in (inv@28@01 r) ys@20@01))
      (and (img@25@01 r) (Set_in (inv@24@01 r) xs@19@01))))
  
  :qid |quant-u-5630|))))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const x@30@01 $Ref)
(push) ; 3
; [eval] (x in (xs union ys))
; [eval] (xs union ys)
(assert (Set_in x@30@01 (Set_union xs@19@01 ys@20@01)))
(declare-const $k@31@01 $Perm)
(assert ($Perm.isReadVar $k@31@01))
(pop) ; 3
(declare-const $t@32@01 $FVF<f>)
(declare-fun inv@33@01 ($Ref) $Ref)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@31@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@30@01 $Ref)) (!
  (=>
    (Set_in x@30@01 (Set_union xs@19@01 ys@20@01))
    (or (= $k@31@01 $Perm.No) (< $Perm.No $k@31@01)))
  
  :qid |quant-u-5631|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@30@01 $Ref) (x2@30@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@30@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@31@01))
      (and (Set_in x2@30@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@31@01))
      (= x1@30@01 x2@30@01))
    (= x1@30@01 x2@30@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@30@01 $Ref)) (!
  (=>
    (and (Set_in x@30@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@31@01))
    (and (= (inv@33@01 x@30@01) x@30@01) (img@34@01 x@30@01)))
  :pattern ((Set_in x@30@01 (Set_union xs@19@01 ys@20@01)))
  :pattern ((inv@33@01 x@30@01))
  :pattern ((img@34@01 x@30@01))
  :qid |quant-u-5632|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@01 r)
      (and
        (Set_in (inv@33@01 r) (Set_union xs@19@01 ys@20@01))
        (< $Perm.No $k@31@01)))
    (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@30@01 $Ref)) (!
  (<= $Perm.No $k@31@01)
  :pattern ((Set_in x@30@01 (Set_union xs@19@01 ys@20@01)))
  :pattern ((inv@33@01 x@30@01))
  :pattern ((img@34@01 x@30@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@30@01 $Ref)) (!
  (<= $k@31@01 $Perm.Write)
  :pattern ((Set_in x@30@01 (Set_union xs@19@01 ys@20@01)))
  :pattern ((inv@33@01 x@30@01))
  :pattern ((img@34@01 x@30@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@30@01 $Ref)) (!
  (=>
    (and (Set_in x@30@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@31@01))
    (not (= x@30@01 $Ref.null)))
  :pattern ((Set_in x@30@01 (Set_union xs@19@01 ys@20@01)))
  :pattern ((inv@33@01 x@30@01))
  :pattern ((img@34@01 x@30@01))
  :qid |f-permImpliesNonNull|)))
(pop) ; 2
(push) ; 2
(declare-const x@35@01 $Ref)
(push) ; 3
; [eval] (x in (xs union ys))
; [eval] (xs union ys)
(assert (Set_in x@35@01 (Set_union xs@19@01 ys@20@01)))
(declare-const $k@36@01 $Perm)
(assert ($Perm.isReadVar $k@36@01))
(pop) ; 3
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@36@01))
; Nested auxiliary terms: non-globals
(push) ; 3
(assert (not (forall ((x@35@01 $Ref)) (!
  (=>
    (Set_in x@35@01 (Set_union xs@19@01 ys@20@01))
    (or (= $k@36@01 $Perm.No) (< $Perm.No $k@36@01)))
  
  :qid |quant-u-5633|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@35@01 $Ref) (x2@35@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@35@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@36@01))
      (and (Set_in x2@35@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@36@01))
      (= x1@35@01 x2@35@01))
    (= x1@35@01 x2@35@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@35@01 $Ref)) (!
  (=>
    (and (Set_in x@35@01 (Set_union xs@19@01 ys@20@01)) (< $Perm.No $k@36@01))
    (and (= (inv@37@01 x@35@01) x@35@01) (img@38@01 x@35@01)))
  :pattern ((Set_in x@35@01 (Set_union xs@19@01 ys@20@01)))
  :pattern ((inv@37@01 x@35@01))
  :pattern ((img@38@01 x@35@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@38@01 r)
      (and
        (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
        (< $Perm.No $k@36@01)))
    (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    ($Perm.min
      (ite (and (img@25@01 r) (Set_in (inv@24@01 r) xs@19@01)) $k@23@01 $Perm.No)
      $k@36@01)
    $Perm.No))
(define-fun pTaken@40@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    ($Perm.min
      (ite (and (img@29@01 r) (Set_in (inv@28@01 r) ys@20@01)) $k@27@01 $Perm.No)
      (- $k@36@01 (pTaken@39@01 r)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@36@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@25@01 r) (Set_in (inv@24@01 r) xs@19@01))
          $k@23@01
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@25@01 r) (Set_in (inv@24@01 r) xs@19@01))
      (<
        (ite
          (and
            (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
            (img@38@01 r)
            (= r (inv@37@01 r)))
          $k@36@01
          $Perm.No)
        $k@23@01)
      (<
        (ite
          (and
            (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
            (img@38@01 r)
            (= r (inv@37@01 r)))
          $k@36@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@25@01 r))
  :pattern ((Set_in (inv@24@01 r) xs@19@01))
  :pattern ((Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01)))
  :pattern ((img@38@01 r))
  :qid |qp.srp1|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    (= (- $k@36@01 (pTaken@39@01 r)) $Perm.No))
  
  :qid |quant-u-5636|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Constrain original permissions $k@36@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@29@01 r) (Set_in (inv@28@01 r) ys@20@01))
          $k@27@01
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@29@01 r) (Set_in (inv@28@01 r) ys@20@01))
      (<
        (ite
          (and
            (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
            (img@38@01 r)
            (= r (inv@37@01 r)))
          $k@36@01
          $Perm.No)
        $k@27@01)
      (<
        (ite
          (and
            (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
            (img@38@01 r)
            (= r (inv@37@01 r)))
          $k@36@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@29@01 r))
  :pattern ((Set_in (inv@28@01 r) ys@20@01))
  :pattern ((Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01)))
  :pattern ((img@38@01 r))
  :qid |qp.srp2|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@37@01 r) (Set_union xs@19@01 ys@20@01))
      (img@38@01 r)
      (= r (inv@37@01 r)))
    (= (- (- $k@36@01 (pTaken@39@01 r)) (pTaken@40@01 r)) $Perm.No))
  
  :qid |quant-u-5638|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- test02 ----------
(declare-const xs@41@01 Set<$Ref>)
(declare-const y@42@01 $Ref)
(declare-const z@43@01 $Ref)
(declare-const xs@44@01 Set<$Ref>)
(declare-const y@45@01 $Ref)
(declare-const z@46@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@47@01 $Snap)
(assert (= $t@47@01 ($Snap.combine ($Snap.first $t@47@01) ($Snap.second $t@47@01))))
(declare-const x@48@01 $Ref)
(push) ; 2
; [eval] (x in xs)
(assert (Set_in x@48@01 xs@44@01))
(declare-const $k@49@01 $Perm)
(assert ($Perm.isReadVar $k@49@01))
(pop) ; 2
(declare-fun inv@50@01 ($Ref) $Ref)
(declare-fun img@51@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@49@01))
; Nested auxiliary terms: non-globals
(push) ; 2
(assert (not (forall ((x@48@01 $Ref)) (!
  (=> (Set_in x@48@01 xs@44@01) (or (= $k@49@01 $Perm.No) (< $Perm.No $k@49@01)))
  
  :qid |quant-u-5639|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((x1@48@01 $Ref) (x2@48@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@48@01 xs@44@01) (< $Perm.No $k@49@01))
      (and (Set_in x2@48@01 xs@44@01) (< $Perm.No $k@49@01))
      (= x1@48@01 x2@48@01))
    (= x1@48@01 x2@48@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (and (Set_in x@48@01 xs@44@01) (< $Perm.No $k@49@01))
    (and (= (inv@50@01 x@48@01) x@48@01) (img@51@01 x@48@01)))
  :pattern ((Set_in x@48@01 xs@44@01))
  :pattern ((inv@50@01 x@48@01))
  :pattern ((img@51@01 x@48@01))
  :qid |quant-u-5640|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@51@01 r)
      (and (Set_in (inv@50@01 r) xs@44@01) (< $Perm.No $k@49@01)))
    (= (inv@50@01 r) r))
  :pattern ((inv@50@01 r))
  :qid |f-fctOfInv|)))
; Permissions are non-negative
(assert (forall ((x@48@01 $Ref)) (!
  (<= $Perm.No $k@49@01)
  :pattern ((Set_in x@48@01 xs@44@01))
  :pattern ((inv@50@01 x@48@01))
  :pattern ((img@51@01 x@48@01))
  :qid |f-permAtLeastZero|)))
; Field permissions are at most one
(assert (forall ((x@48@01 $Ref)) (!
  (<= $k@49@01 $Perm.Write)
  :pattern ((Set_in x@48@01 xs@44@01))
  :pattern ((inv@50@01 x@48@01))
  :pattern ((img@51@01 x@48@01))
  :qid |f-permAtMostOne|)))
; Permission implies non-null receiver
(assert (forall ((x@48@01 $Ref)) (!
  (=>
    (and (Set_in x@48@01 xs@44@01) (< $Perm.No $k@49@01))
    (not (= x@48@01 $Ref.null)))
  :pattern ((Set_in x@48@01 xs@44@01))
  :pattern ((inv@50@01 x@48@01))
  :pattern ((img@51@01 x@48@01))
  :qid |f-permImpliesNonNull|)))
(assert (= ($Snap.second $t@47@01) $Snap.unit))
; [eval] (z in xs)
(assert (Set_in z@46@01 xs@44@01))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var k0: Perm
(declare-const k0@52@01 $Perm)
; [eval] (y in xs)
(push) ; 3
(set-option :timeout 10)
(assert (not (not (Set_in y@45@01 xs@44@01))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (Set_in y@45@01 xs@44@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; [then-branch: 0 | y@45@01 in xs@44@01 | live]
; [else-branch: 0 | !(y@45@01 in xs@44@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 0 | y@45@01 in xs@44@01]
(assert (Set_in y@45@01 xs@44@01))
; [exec]
; exhale acc(y.f, wildcard)
(declare-const $k@53@01 $Perm)
(assert ($Perm.isReadVar $k@53@01))
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((r $Ref)) $Perm
  (ite
    (= r y@45@01)
    ($Perm.min
      (ite (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01)) $k@49@01 $Perm.No)
      $k@53@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@53@01
(assert (=>
  (not
    (=
      (ite
        (and (img@51@01 y@45@01) (Set_in (inv@50@01 y@45@01) xs@44@01))
        $k@49@01
        $Perm.No)
      $Perm.No))
  (ite
    (and (img@51@01 y@45@01) (Set_in (inv@50@01 y@45@01) xs@44@01))
    (< $k@53@01 $k@49@01)
    (< $k@53@01 $Perm.No))))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=> (= r y@45@01) (= (- $k@53@01 (pTaken@54@01 r)) $Perm.No))
  
  :qid |quant-u-5643|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall x: Ref ::(x in (xs setminus Set(y))) ==> acc(x.f, wildcard))
(declare-const x@55@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in (xs setminus Set(y)))
; [eval] (xs setminus Set(y))
; [eval] Set(y)
(assert (Set_in x@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01))))
(declare-const $k@56@01 $Perm)
(assert ($Perm.isReadVar $k@56@01))
(pop) ; 4
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@56@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@55@01 $Ref)) (!
  (=>
    (Set_in x@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01)))
    (or (= $k@56@01 $Perm.No) (< $Perm.No $k@56@01)))
  
  :qid |quant-u-5644|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@55@01 $Ref) (x2@55@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in x1@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01)))
        (< $Perm.No $k@56@01))
      (and
        (Set_in x2@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01)))
        (< $Perm.No $k@56@01))
      (= x1@55@01 x2@55@01))
    (= x1@55@01 x2@55@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@55@01 $Ref)) (!
  (=>
    (and
      (Set_in x@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01)))
      (< $Perm.No $k@56@01))
    (and (= (inv@57@01 x@55@01) x@55@01) (img@58@01 x@55@01)))
  :pattern ((Set_in x@55@01 (Set_difference xs@44@01 (Set_singleton y@45@01))))
  :pattern ((inv@57@01 x@55@01))
  :pattern ((img@58@01 x@55@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@58@01 r)
      (and
        (Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01)))
        (< $Perm.No $k@56@01)))
    (= (inv@57@01 r) r))
  :pattern ((inv@57@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@59@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01)))
      (img@58@01 r)
      (= r (inv@57@01 r)))
    ($Perm.min
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- $k@49@01 (pTaken@54@01 r))
        $Perm.No)
      $k@56@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@56@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
          (- $k@49@01 (pTaken@54@01 r))
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
      (<
        (ite
          (and
            (Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01)))
            (img@58@01 r)
            (= r (inv@57@01 r)))
          $k@56@01
          $Perm.No)
        (- $k@49@01 (pTaken@54@01 r)))
      (<
        (ite
          (and
            (Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01)))
            (img@58@01 r)
            (= r (inv@57@01 r)))
          $k@56@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@51@01 r))
  :pattern ((Set_in (inv@50@01 r) xs@44@01))
  :pattern ((Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01))))
  :pattern ((img@58@01 r))
  :qid |qp.srp4|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@57@01 r) (Set_difference xs@44@01 (Set_singleton y@45@01)))
      (img@58@01 r)
      (= r (inv@57@01 r)))
    (= (- $k@56@01 (pTaken@59@01 r)) $Perm.No))
  
  :qid |quant-u-5647|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(x.f, wildcard))
(declare-const x@60@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@60@01 xs@44@01))
(declare-const $k@61@01 $Perm)
(assert ($Perm.isReadVar $k@61@01))
(pop) ; 4
(declare-fun inv@62@01 ($Ref) $Ref)
(declare-fun img@63@01 ($Ref) Bool)
; Nested auxiliary terms: globals
(assert ($Perm.isReadVar $k@61@01))
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@60@01 $Ref)) (!
  (=> (Set_in x@60@01 xs@44@01) (or (= $k@61@01 $Perm.No) (< $Perm.No $k@61@01)))
  
  :qid |quant-u-5648|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@60@01 $Ref) (x2@60@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@60@01 xs@44@01) (< $Perm.No $k@61@01))
      (and (Set_in x2@60@01 xs@44@01) (< $Perm.No $k@61@01))
      (= x1@60@01 x2@60@01))
    (= x1@60@01 x2@60@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@60@01 $Ref)) (!
  (=>
    (and (Set_in x@60@01 xs@44@01) (< $Perm.No $k@61@01))
    (and (= (inv@62@01 x@60@01) x@60@01) (img@63@01 x@60@01)))
  :pattern ((Set_in x@60@01 xs@44@01))
  :pattern ((inv@62@01 x@60@01))
  :pattern ((img@63@01 x@60@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@63@01 r)
      (and (Set_in (inv@62@01 r) xs@44@01) (< $Perm.No $k@61@01)))
    (= (inv@62@01 r) r))
  :pattern ((inv@62@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@62@01 r) xs@44@01) (img@63@01 r) (= r (inv@62@01 r)))
    ($Perm.min
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r))
        $Perm.No)
      $k@61@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Constrain original permissions $k@61@01
(assert (forall ((r $Ref)) (!
  (=>
    (not
      (=
        (ite
          (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
          (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r))
          $Perm.No)
        $Perm.No))
    (ite
      (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
      (<
        (ite
          (and (Set_in (inv@62@01 r) xs@44@01) (img@63@01 r) (= r (inv@62@01 r)))
          $k@61@01
          $Perm.No)
        (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)))
      (<
        (ite
          (and (Set_in (inv@62@01 r) xs@44@01) (img@63@01 r) (= r (inv@62@01 r)))
          $k@61@01
          $Perm.No)
        $Perm.No)))
  :pattern ((img@51@01 r))
  :pattern ((Set_in (inv@50@01 r) xs@44@01))
  :pattern ((Set_in (inv@62@01 r) xs@44@01))
  :pattern ((img@63@01 r))
  :qid |qp.srp5|)))
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@62@01 r) xs@44@01) (img@63@01 r) (= r (inv@62@01 r)))
    (= (- $k@61@01 (pTaken@64@01 r)) $Perm.No))
  
  :qid |quant-u-5651|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; inhale k0 >= none
(declare-const $t@65@01 $Snap)
(assert (= $t@65@01 $Snap.unit))
; [eval] k0 >= none
(assert (>= k0@52@01 $Perm.No))
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; exhale (forall x: Ref ::(x in xs) ==> acc(x.f, k0))
(declare-const x@66@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@66@01 xs@44@01))
(pop) ; 4
(declare-fun inv@67@01 ($Ref) $Ref)
(declare-fun img@68@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@66@01 $Ref)) (!
  (=> (Set_in x@66@01 xs@44@01) (or (= k0@52@01 $Perm.No) (< $Perm.No k0@52@01)))
  
  :qid |quant-u-5652|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@66@01 $Ref) (x2@66@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@66@01 xs@44@01) (< $Perm.No k0@52@01))
      (and (Set_in x2@66@01 xs@44@01) (< $Perm.No k0@52@01))
      (= x1@66@01 x2@66@01))
    (= x1@66@01 x2@66@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@66@01 $Ref)) (!
  (=>
    (and (Set_in x@66@01 xs@44@01) (< $Perm.No k0@52@01))
    (and (= (inv@67@01 x@66@01) x@66@01) (img@68@01 x@66@01)))
  :pattern ((Set_in x@66@01 xs@44@01))
  :pattern ((inv@67@01 x@66@01))
  :pattern ((img@68@01 x@66@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@68@01 r)
      (and (Set_in (inv@67@01 r) xs@44@01) (< $Perm.No k0@52@01)))
    (= (inv@67@01 r) r))
  :pattern ((inv@67@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@69@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@67@01 r) xs@44@01) (img@68@01 r) (= r (inv@67@01 r)))
    ($Perm.min
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r))
        $Perm.No)
      k0@52@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r))
        $Perm.No)
      (pTaken@69@01 r))
    $Perm.No)
  
  :qid |quant-u-5654|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@69@01 r) $Perm.No)
  
  :qid |quant-u-5655|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@67@01 r) xs@44@01) (img@68@01 r) (= r (inv@67@01 r)))
    (= (- k0@52@01 (pTaken@69@01 r)) $Perm.No))
  
  :qid |quant-u-5656|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@67@01 r) xs@44@01) (img@68@01 r) (= r (inv@67@01 r)))
    (= (- k0@52@01 (pTaken@69@01 r)) $Perm.No))
  
  :qid |quant-u-5656|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@70@01 $FVF<f>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (ite
      (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
      (<
        $Perm.No
        (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r)))
      false)
    (=
      ($FVF.lookup_f (as sm@70@01  $FVF<f>) r)
      ($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@47@01)) r)))
  :pattern (($FVF.lookup_f (as sm@70@01  $FVF<f>) r))
  :pattern (($FVF.lookup_f ($SortWrappers.$SnapTo$FVF<f> ($Snap.first $t@47@01)) r))
  :qid |qp.fvfValDef6|)))
(declare-const pm@71@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_f (as pm@71@01  $FPM) r)
    (ite
      (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
      (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r))
      $Perm.No))
  :pattern (($FVF.perm_f (as pm@71@01  $FPM) r))
  :qid |qp.resPrmSumDef7|)))
; Assume upper permission bound for field f
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_f (as pm@71@01  $FPM) r) $Perm.Write)
  :pattern ((inv@50@01 r))
  :qid |qp-fld-prm-bnd|)))
(declare-const x@72@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] (x in xs)
(assert (Set_in x@72@01 xs@44@01))
(pop) ; 4
(declare-fun inv@73@01 ($Ref) $Ref)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(push) ; 4
(assert (not (forall ((x@72@01 $Ref)) (!
  (=> (Set_in x@72@01 xs@44@01) (or (= k0@52@01 $Perm.No) (< $Perm.No k0@52@01)))
  
  :qid |quant-u-5657|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@72@01 $Ref) (x2@72@01 $Ref)) (!
  (=>
    (and
      (and (Set_in x1@72@01 xs@44@01) (< $Perm.No k0@52@01))
      (and (Set_in x2@72@01 xs@44@01) (< $Perm.No k0@52@01))
      (= x1@72@01 x2@72@01))
    (= x1@72@01 x2@72@01))
  
  :qid |f-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@72@01 $Ref)) (!
  (=>
    (and (Set_in x@72@01 xs@44@01) (< $Perm.No k0@52@01))
    (and (= (inv@73@01 x@72@01) x@72@01) (img@74@01 x@72@01)))
  :pattern ((Set_in x@72@01 xs@44@01))
  :pattern ((inv@73@01 x@72@01))
  :pattern ((img@74@01 x@72@01))
  :qid |f-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@74@01 r)
      (and (Set_in (inv@73@01 r) xs@44@01) (< $Perm.No k0@52@01)))
    (= (inv@73@01 r) r))
  :pattern ((inv@73@01 r))
  :qid |f-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@75@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@73@01 r) xs@44@01) (img@74@01 r) (= r (inv@73@01 r)))
    ($Perm.min
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r))
        $Perm.No)
      k0@52@01)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@51@01 r) (Set_in (inv@50@01 r) xs@44@01))
        (- (- (- $k@49@01 (pTaken@54@01 r)) (pTaken@59@01 r)) (pTaken@64@01 r))
        $Perm.No)
      (pTaken@75@01 r))
    $Perm.No)
  
  :qid |quant-u-5659|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@75@01 r) $Perm.No)
  
  :qid |quant-u-5660|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@73@01 r) xs@44@01) (img@74@01 r) (= r (inv@73@01 r)))
    (= (- k0@52@01 (pTaken@75@01 r)) $Perm.No))
  
  :qid |quant-u-5661|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@73@01 r) xs@44@01) (img@74@01 r) (= r (inv@73@01 r)))
    (= (- k0@52@01 (pTaken@75@01 r)) $Perm.No))
  
  :qid |quant-u-5661|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
