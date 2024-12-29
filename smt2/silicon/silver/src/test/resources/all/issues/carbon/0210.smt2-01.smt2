(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-29 20:05:39
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Snap> 0)
(declare-sort Foobar 0)
(declare-sort $FVF<next> 0)
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
(declare-fun $SortWrappers.Set<Int>To$Snap (Set<Int>) $Snap)
(declare-fun $SortWrappers.$SnapToSet<Int> ($Snap) Set<Int>)
(assert (forall ((x Set<Int>)) (!
    (= x ($SortWrappers.$SnapToSet<Int>($SortWrappers.Set<Int>To$Snap x)))
    :pattern (($SortWrappers.Set<Int>To$Snap x))
    :qid |$Snap.$SnapToSet<Int>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.Set<Int>To$Snap($SortWrappers.$SnapToSet<Int> x)))
    :pattern (($SortWrappers.$SnapToSet<Int> x))
    :qid |$Snap.Set<Int>To$SnapToSet<Int>|
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
(declare-fun $SortWrappers.FoobarTo$Snap (Foobar) $Snap)
(declare-fun $SortWrappers.$SnapToFoobar ($Snap) Foobar)
(assert (forall ((x Foobar)) (!
    (= x ($SortWrappers.$SnapToFoobar($SortWrappers.FoobarTo$Snap x)))
    :pattern (($SortWrappers.FoobarTo$Snap x))
    :qid |$Snap.$SnapToFoobarTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.FoobarTo$Snap($SortWrappers.$SnapToFoobar x)))
    :pattern (($SortWrappers.$SnapToFoobar x))
    :qid |$Snap.FoobarTo$SnapToFoobar|
    )))
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$FVF<next>To$Snap ($FVF<next>) $Snap)
(declare-fun $SortWrappers.$SnapTo$FVF<next> ($Snap) $FVF<next>)
(assert (forall ((x $FVF<next>)) (!
    (= x ($SortWrappers.$SnapTo$FVF<next>($SortWrappers.$FVF<next>To$Snap x)))
    :pattern (($SortWrappers.$FVF<next>To$Snap x))
    :qid |$Snap.$SnapTo$FVF<next>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$FVF<next>To$Snap($SortWrappers.$SnapTo$FVF<next> x)))
    :pattern (($SortWrappers.$SnapTo$FVF<next> x))
    :qid |$Snap.$FVF<next>To$SnapTo$FVF<next>|
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
(declare-fun Set_card (Set<Int>) Int)
(declare-const Set_empty Set<Int>)
(declare-fun Set_in (Int Set<Int>) Bool)
(declare-fun Set_singleton (Int) Set<Int>)
(declare-fun Set_unionone (Set<Int> Int) Set<Int>)
(declare-fun Set_union (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_intersection (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_difference (Set<Int> Set<Int>) Set<Int>)
(declare-fun Set_subset (Set<Int> Set<Int>) Bool)
(declare-fun Set_equal (Set<Int> Set<Int>) Bool)
(declare-fun Set_skolem_diff (Set<Int> Set<Int>) Int)
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
(declare-fun foo<Bool> (Set<Int> $Ref $Ref) Bool)
; /field_value_functions_declarations.smt2 [next: Ref]
(declare-fun $FVF.domain_next ($FVF<next>) Set<$Ref>)
(declare-fun $FVF.lookup_next ($FVF<next> $Ref) $Ref)
(declare-fun $FVF.after_next ($FVF<next> $FVF<next>) Bool)
(declare-fun $FVF.loc_next ($Ref $Ref) Bool)
(declare-fun $FVF.perm_next ($FPM $Ref) $Perm)
(declare-const $fvfTOP_next $FVF<next>)
; Declaring symbols related to program functions (from program analysis)
(declare-fun hfun ($Snap Set<$Ref>) Set<Int>)
(declare-fun hfun%limited ($Snap Set<$Ref>) Set<Int>)
(declare-fun hfun%stateless (Set<$Ref>) Bool)
(declare-fun hfun%precondition ($Snap Set<$Ref>) Bool)
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
(assert (forall ((s Set<Int>)) (!
  (<= 0 (Set_card s))
  :pattern ((Set_card s))
  )))
(assert (forall ((o Int)) (!
  (not (Set_in o (as Set_empty  Set<Int>)))
  :pattern ((Set_in o (as Set_empty  Set<Int>)))
  )))
(assert (forall ((s Set<Int>)) (!
  (and
    (=> (= (Set_card s) 0) (= s (as Set_empty  Set<Int>)))
    (=> (not (= (Set_card s) 0)) (exists ((x Int))  (Set_in x s))))
  :pattern ((Set_card s))
  )))
(assert (forall ((r Int)) (!
  (Set_in r (Set_singleton r))
  :pattern ((Set_singleton r))
  )))
(assert (forall ((r Int) (o Int)) (!
  (= (Set_in o (Set_singleton r)) (= r o))
  :pattern ((Set_in o (Set_singleton r)))
  )))
(assert (forall ((r Int)) (!
  (= (Set_card (Set_singleton r)) 1)
  :pattern ((Set_card (Set_singleton r)))
  )))
(assert (forall ((a Set<Int>) (x Int) (o Int)) (!
  (= (Set_in o (Set_unionone a x)) (or (= o x) (Set_in o a)))
  :pattern ((Set_in o (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (Set_in x (Set_unionone a x))
  :pattern ((Set_unionone a x))
  )))
(assert (forall ((a Set<Int>) (x Int) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_unionone a x)))
  :pattern ((Set_unionone a x) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (Set_in x a) (= (Set_card (Set_unionone a x)) (Set_card a)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (x Int)) (!
  (=> (not (Set_in x a)) (= (Set_card (Set_unionone a x)) (+ (Set_card a) 1)))
  :pattern ((Set_card (Set_unionone a x)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_union a b)) (or (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y a) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (Set_in y (Set_union a b)))
  :pattern ((Set_union a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_intersection a b)) (and (Set_in o a) (Set_in o b)))
  :pattern ((Set_in o (Set_intersection a b)))
  :pattern ((Set_intersection a b) (Set_in o a))
  :pattern ((Set_intersection a b) (Set_in o b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union (Set_union a b) b) (Set_union a b))
  :pattern ((Set_union (Set_union a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_union a (Set_union a b)) (Set_union a b))
  :pattern ((Set_union a (Set_union a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection (Set_intersection a b) b) (Set_intersection a b))
  :pattern ((Set_intersection (Set_intersection a b) b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (= (Set_intersection a (Set_intersection a b)) (Set_intersection a b))
  :pattern ((Set_intersection a (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (+ (Set_card (Set_union a b)) (Set_card (Set_intersection a b)))
    (+ (Set_card a) (Set_card b)))
  :pattern ((Set_card (Set_union a b)))
  :pattern ((Set_card (Set_intersection a b)))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (o Int)) (!
  (= (Set_in o (Set_difference a b)) (and (Set_in o a) (not (Set_in o b))))
  :pattern ((Set_in o (Set_difference a b)))
  :pattern ((Set_difference a b) (Set_in o a))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>) (y Int)) (!
  (=> (Set_in y b) (not (Set_in y (Set_difference a b))))
  :pattern ((Set_difference a b) (Set_in y b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
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
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
  (=
    (Set_subset a b)
    (forall ((o Int)) (!
      (=> (Set_in o a) (Set_in o b))
      :pattern ((Set_in o a))
      :pattern ((Set_in o b))
      )))
  :pattern ((Set_subset a b))
  )))
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
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
(assert (forall ((a Set<Int>) (b Set<Int>)) (!
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
; /field_value_functions_axioms.smt2 [next: Ref]
(assert (forall ((vs $FVF<next>) (ws $FVF<next>)) (!
    (=>
      (and
        (Set_equal ($FVF.domain_next vs) ($FVF.domain_next ws))
        (forall ((x $Ref)) (!
          (=>
            (Set_in x ($FVF.domain_next vs))
            (= ($FVF.lookup_next vs x) ($FVF.lookup_next ws x)))
          :pattern (($FVF.lookup_next vs x) ($FVF.lookup_next ws x))
          :qid |qp.$FVF<next>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$FVF<next>To$Snap vs)
              ($SortWrappers.$FVF<next>To$Snap ws)
              )
    :qid |qp.$FVF<next>-eq-outer|
    )))
(assert (forall ((r $Ref) (pm $FPM)) (!
    ($Perm.isValidVar ($FVF.perm_next pm r))
    :pattern (($FVF.perm_next pm r)))))
(assert (forall ((r $Ref) (f $Ref)) (!
    (= ($FVF.loc_next f r) true)
    :pattern (($FVF.loc_next f r)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(declare-fun inv@4@00 ($Snap Set<$Ref> $Ref) $Ref)
(declare-fun img@5@00 ($Snap Set<$Ref> $Ref) Bool)
(declare-fun sm@3@00 ($Snap Set<$Ref>) $FVF<next>)
(declare-fun sm@6@00 ($Snap Set<$Ref>) $FVF<next>)
(assert (forall ((s@$ $Snap) (g@0@00 Set<$Ref>)) (!
  (= (hfun%limited s@$ g@0@00) (hfun s@$ g@0@00))
  :pattern ((hfun s@$ g@0@00))
  :qid |quant-u-23451|)))
(assert (forall ((s@$ $Snap) (g@0@00 Set<$Ref>)) (!
  (hfun%stateless g@0@00)
  :pattern ((hfun%limited s@$ g@0@00))
  :qid |quant-u-23452|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- reverse_impl ----------
(declare-const g@0@01 Set<$Ref>)
(declare-const g@1@01 Set<$Ref>)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(assert (= ($Snap.first $t@2@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@1@01)))
(assert (=
  ($Snap.second $t@2@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@2@01))
    ($Snap.second ($Snap.second $t@2@01)))))
(declare-const n@3@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@3@01 g@1@01))
(declare-const sm@4@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@5@01 ($Ref) $Ref)
(declare-fun img@6@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@3@01 $Ref) (n2@3@01 $Ref)) (!
  (=>
    (and (Set_in n1@3@01 g@1@01) (Set_in n2@3@01 g@1@01) (= n1@3@01 n2@3@01))
    (= n1@3@01 n2@3@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@3@01 $Ref)) (!
  (=>
    (Set_in n@3@01 g@1@01)
    (and (= (inv@5@01 n@3@01) n@3@01) (img@6@01 n@3@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n@3@01) n@3@01))
  :qid |quant-u-23457|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)) (= (inv@5@01 r) r))
  :pattern ((inv@5@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@3@01 $Ref)) (!
  (=> (Set_in n@3@01 g@1@01) (not (= n@3@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n@3@01) n@3@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@7@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@5@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r))
  :pattern ((inv@5@01 r))
  :qid |quant-u-23458|)))
(assert (= ($Snap.second ($Snap.second $t@2@01)) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@8@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 0 | !(n$0@8@01 in g@1@01) | live]
; [else-branch: 0 | n$0@8@01 in g@1@01 | live]
(push) ; 4
; [then-branch: 0 | !(n$0@8@01 in g@1@01)]
(assert (not (Set_in n$0@8@01 g@1@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 0 | n$0@8@01 in g@1@01]
(assert (Set_in n$0@8@01 g@1@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
      (=
        ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef2|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))
(push) ; 5
(assert (not (and (img@6@01 n$0@8@01) (Set_in (inv@5@01 n$0@8@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (Set_in n$0@8@01 g@1@01)
  (and
    (Set_in n$0@8@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))))
(assert (or (Set_in n$0@8@01 g@1@01) (not (Set_in n$0@8@01 g@1@01))))
(push) ; 3
; [then-branch: 1 | n$0@8@01 in g@1@01 && Lookup(next, sm@7@01, n$0@8@01) != Null | live]
; [else-branch: 1 | !(n$0@8@01 in g@1@01 && Lookup(next, sm@7@01, n$0@8@01) != Null) | live]
(push) ; 4
; [then-branch: 1 | n$0@8@01 in g@1@01 && Lookup(next, sm@7@01, n$0@8@01) != Null]
(assert (and
  (Set_in n$0@8@01 g@1@01)
  (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
      (=
        ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
    :qid |qp.fvfValDef1|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef2|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))
(push) ; 5
(assert (not (and (img@6@01 n$0@8@01) (Set_in (inv@5@01 n$0@8@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 1 | !(n$0@8@01 in g@1@01 && Lookup(next, sm@7@01, n$0@8@01) != Null)]
(assert (not
  (and
    (Set_in n$0@8@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
(assert (=>
  (and
    (Set_in n$0@8@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))
  (and
    (Set_in n$0@8@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@8@01 g@1@01)
      (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))))
  (and
    (Set_in n$0@8@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@7@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef1|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@7@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef2|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@8@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@8@01 g@1@01)
      (and
        (Set_in n$0@8@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01)))
    (or (Set_in n$0@8@01 g@1@01) (not (Set_in n$0@8@01 g@1@01)))
    (=>
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01)))
    (or
      (not
        (and
          (Set_in n$0@8@01 g@1@01)
          (not
            (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))))
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) g@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22-aux|)))
(assert (forall ((n$0@8@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@8@01 g@1@01)
      (and
        (Set_in n$0@8@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01)))
    (or (Set_in n$0@8@01 g@1@01) (not (Set_in n$0@8@01 g@1@01)))
    (=>
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01)))
    (or
      (not
        (and
          (Set_in n$0@8@01 g@1@01)
          (not
            (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null))))
      (and
        (Set_in n$0@8@01 g@1@01)
        (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))))
  :pattern ((Set_in n$0@8@01 g@1@01) ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22-aux|)))
(assert (forall ((n$0@8@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@8@01 g@1@01)
      (not (= ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) g@1@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) g@1@01))
  :pattern ((Set_in n$0@8@01 g@1@01) ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n$0@8@01) n$0@8@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@9@01 $Snap)
(assert (= $t@9@01 ($Snap.combine ($Snap.first $t@9@01) ($Snap.second $t@9@01))))
(assert (= ($Snap.first $t@9@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@9@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@9@01))
    ($Snap.second ($Snap.second $t@9@01)))))
(declare-const n$1@10@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@10@01 g@1@01))
(declare-const sm@11@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@10@01 $Ref) (n$12@10@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@10@01 g@1@01)
      (Set_in n$12@10@01 g@1@01)
      (= n$11@10@01 n$12@10@01))
    (= n$11@10@01 n$12@10@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@10@01 $Ref)) (!
  (=>
    (Set_in n$1@10@01 g@1@01)
    (and (= (inv@12@01 n$1@10@01) n$1@10@01) (img@13@01 n$1@10@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$1@10@01) n$1@10@01))
  :qid |quant-u-23460|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)) (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@10@01 $Ref)) (!
  (=> (Set_in n$1@10@01 g@1@01) (not (= n$1@10@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$1@10@01) n$1@10@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@14@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@12@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) r) r))
  :pattern ((inv@12@01 r))
  :qid |quant-u-23461|)))
(assert (=
  ($Snap.second ($Snap.second $t@9@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@9@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@9@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@15@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 2 | !(n$2@15@01 in g@1@01) | live]
; [else-branch: 2 | n$2@15@01 in g@1@01 | live]
(push) ; 5
; [then-branch: 2 | !(n$2@15@01 in g@1@01)]
(assert (not (Set_in n$2@15@01 g@1@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 2 | n$2@15@01 in g@1@01]
(assert (Set_in n$2@15@01 g@1@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
      (=
        ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
    :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))
(push) ; 6
(assert (not (and (img@13@01 n$2@15@01) (Set_in (inv@12@01 n$2@15@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (Set_in n$2@15@01 g@1@01)
  (and
    (Set_in n$2@15@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))))
(assert (or (Set_in n$2@15@01 g@1@01) (not (Set_in n$2@15@01 g@1@01))))
(push) ; 4
; [then-branch: 3 | n$2@15@01 in g@1@01 && Lookup(next, sm@14@01, n$2@15@01) != Null | live]
; [else-branch: 3 | !(n$2@15@01 in g@1@01 && Lookup(next, sm@14@01, n$2@15@01) != Null) | live]
(push) ; 5
; [then-branch: 3 | n$2@15@01 in g@1@01 && Lookup(next, sm@14@01, n$2@15@01) != Null]
(assert (and
  (Set_in n$2@15@01 g@1@01)
  (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
      (=
        ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
    :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
    :qid |qp.fvfValDef4|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef5|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))
(push) ; 6
(assert (not (and (img@13@01 n$2@15@01) (Set_in (inv@12@01 n$2@15@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 3 | !(n$2@15@01 in g@1@01 && Lookup(next, sm@14@01, n$2@15@01) != Null)]
(assert (not
  (and
    (Set_in n$2@15@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
(assert (=>
  (and
    (Set_in n$2@15@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))
  (and
    (Set_in n$2@15@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@15@01 g@1@01)
      (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))))
  (and
    (Set_in n$2@15@01 g@1@01)
    (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@14@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef4|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@14@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef5|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@15@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@15@01 g@1@01)
      (and
        (Set_in n$2@15@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01)))
    (or (Set_in n$2@15@01 g@1@01) (not (Set_in n$2@15@01 g@1@01)))
    (=>
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01)))
    (or
      (not
        (and
          (Set_in n$2@15@01 g@1@01)
          (not
            (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))))
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) g@1@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21-aux|)))
(assert (forall ((n$2@15@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@15@01 g@1@01)
      (and
        (Set_in n$2@15@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01)))
    (or (Set_in n$2@15@01 g@1@01) (not (Set_in n$2@15@01 g@1@01)))
    (=>
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01)))
    (or
      (not
        (and
          (Set_in n$2@15@01 g@1@01)
          (not
            (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null))))
      (and
        (Set_in n$2@15@01 g@1@01)
        (not
          (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))))
  :pattern ((Set_in n$2@15@01 g@1@01) ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21-aux|)))
(assert (forall ((n$2@15@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@15@01 g@1@01)
      (not (= ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) g@1@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) g@1@01))
  :pattern ((Set_in n$2@15@01 g@1@01) ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n$2@15@01) n$2@15@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@9@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@9@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@9@01)))) $Snap.unit))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), y, x) } foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
(declare-const x@16@01 $Ref)
(declare-const y@17@01 $Ref)
(push) ; 3
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), y, x)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@18@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@18@01 g@1@01))
(pop) ; 5
(declare-fun inv@19@01 ($Ref) $Ref)
(declare-fun img@20@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@18@01 $Ref) (n2@18@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@18@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n1@18@01) n1@18@01))
      (and
        (Set_in n2@18@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) n2@18@01) n2@18@01))
      (= n1@18@01 n2@18@01))
    (= n1@18@01 n2@18@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@18@01 $Ref)) (!
  (=>
    (Set_in n@18@01 g@1@01)
    (and (= (inv@19@01 n@18@01) n@18@01) (img@20@01 n@18@01)))
  :pattern ((Set_in n@18@01 g@1@01))
  :pattern ((inv@19@01 n@18@01))
  :pattern ((img@20@01 n@18@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (Set_in (inv@19@01 r) g@1@01)) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@19@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) r) r))
  :pattern ((inv@19@01 r))
  :qid |quant-u-23463|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r) (= r (inv@19@01 r)))
    (>
      (ite
        (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23464|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@21@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r)))
    (=>
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@21@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@22@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 4 | !(n$0@22@01 in g@1@01) | live]
; [else-branch: 4 | n$0@22@01 in g@1@01 | live]
(push) ; 7
; [then-branch: 4 | !(n$0@22@01 in g@1@01)]
(assert (not (Set_in n$0@22@01 g@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 4 | n$0@22@01 in g@1@01]
(assert (Set_in n$0@22@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) n$0@22@01))
(push) ; 8
(assert (not (and (img@13@01 n$0@22@01) (Set_in (inv@12@01 n$0@22@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@22@01 g@1@01)
  (and
    (Set_in n$0@22@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) n$0@22@01))))
(assert (or (Set_in n$0@22@01 g@1@01) (not (Set_in n$0@22@01 g@1@01))))
(push) ; 6
; [then-branch: 5 | n$0@22@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@22@01) != Null | live]
; [else-branch: 5 | !(n$0@22@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@22@01) != Null) | live]
(push) ; 7
; [then-branch: 5 | n$0@22@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@22@01) != Null]
(assert (and
  (Set_in n$0@22@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) n$0@22@01))
(push) ; 8
(assert (not (and (img@13@01 n$0@22@01) (Set_in (inv@12@01 n$0@22@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 5 | !(n$0@22@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@22@01) != Null)]
(assert (not
  (and
    (Set_in n$0@22@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@22@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
        $Ref.null)))
  (and
    (Set_in n$0@22@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) n$0@22@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@22@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
          $Ref.null))))
  (and
    (Set_in n$0@22@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@22@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@22@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@22@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@22@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((n@18@01 $Ref)) (!
  (=>
    (Set_in n@18@01 g@1@01)
    (and (= (inv@19@01 n@18@01) n@18@01) (img@20@01 n@18@01)))
  :pattern ((Set_in n@18@01 g@1@01))
  :pattern ((inv@19@01 n@18@01))
  :pattern ((img@20@01 n@18@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (Set_in (inv@19@01 r) g@1@01)) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r)))
    (=>
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@21@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@19@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) r) r))
    :pattern ((inv@19@01 r))
    :qid |quant-u-23463|))
  (forall ((n$0@22@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@22@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
; [eval] foo(old(hfun(g)), y, x)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@23@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@23@01 g@1@01))
(pop) ; 5
(declare-fun inv@24@01 ($Ref) $Ref)
(declare-fun img@25@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@23@01 $Ref) (n2@23@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@23@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n1@23@01) n1@23@01))
      (and
        (Set_in n2@23@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) n2@23@01) n2@23@01))
      (= n1@23@01 n2@23@01))
    (= n1@23@01 n2@23@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@23@01 $Ref)) (!
  (=>
    (Set_in n@23@01 g@1@01)
    (and (= (inv@24@01 n@23@01) n@23@01) (img@25@01 n@23@01)))
  :pattern ((Set_in n@23@01 g@1@01))
  :pattern ((inv@24@01 n@23@01))
  :pattern ((img@25@01 n@23@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@25@01 r) (Set_in (inv@24@01 r) g@1@01)) (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@24@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r))
  :pattern ((inv@24@01 r))
  :qid |quant-u-23466|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r) (= r (inv@24@01 r)))
    (>
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23467|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@26@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r)))
    (=>
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@26@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@27@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 6 | !(n$0@27@01 in g@1@01) | live]
; [else-branch: 6 | n$0@27@01 in g@1@01 | live]
(push) ; 7
; [then-branch: 6 | !(n$0@27@01 in g@1@01)]
(assert (not (Set_in n$0@27@01 g@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 6 | n$0@27@01 in g@1@01]
(assert (Set_in n$0@27@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) n$0@27@01))
(push) ; 8
(assert (not (and (img@6@01 n$0@27@01) (Set_in (inv@5@01 n$0@27@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@27@01 g@1@01)
  (and
    (Set_in n$0@27@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) n$0@27@01))))
(assert (or (Set_in n$0@27@01 g@1@01) (not (Set_in n$0@27@01 g@1@01))))
(push) ; 6
; [then-branch: 7 | n$0@27@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@27@01) != Null | live]
; [else-branch: 7 | !(n$0@27@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@27@01) != Null) | live]
(push) ; 7
; [then-branch: 7 | n$0@27@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@27@01) != Null]
(assert (and
  (Set_in n$0@27@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) n$0@27@01))
(push) ; 8
(assert (not (and (img@6@01 n$0@27@01) (Set_in (inv@5@01 n$0@27@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 7 | !(n$0@27@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@27@01) != Null)]
(assert (not
  (and
    (Set_in n$0@27@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@27@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
        $Ref.null)))
  (and
    (Set_in n$0@27@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) n$0@27@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@27@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
          $Ref.null))))
  (and
    (Set_in n$0@27@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@27@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@27@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@27@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@27@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@26@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((n@23@01 $Ref)) (!
  (=>
    (Set_in n@23@01 g@1@01)
    (and (= (inv@24@01 n@23@01) n@23@01) (img@25@01 n@23@01)))
  :pattern ((Set_in n@23@01 g@1@01))
  :pattern ((inv@24@01 n@23@01))
  :pattern ((img@25@01 n@23@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@25@01 r) (Set_in (inv@24@01 r) g@1@01)) (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r)))
    (=>
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@26@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@24@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r))
    :pattern ((inv@24@01 r))
    :qid |quant-u-23466|))
  (forall ((n$0@27@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@27@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@26@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@18@01 $Ref)) (!
  (=>
    (Set_in n@18@01 g@1@01)
    (and (= (inv@19@01 n@18@01) n@18@01) (img@20@01 n@18@01)))
  :pattern ((Set_in n@18@01 g@1@01))
  :pattern ((inv@19@01 n@18@01))
  :pattern ((img@20@01 n@18@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@20@01 r) (Set_in (inv@19@01 r) g@1@01)) (= (inv@19@01 r) r))
  :pattern ((inv@19@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r)))
    (=>
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@21@01  $FVF<next>))))
  :qid |qp.fvfDomDef8|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@19@01 r) g@1@01) (img@20@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@21@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef6|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@21@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef7|)))
(assert (forall ((n@23@01 $Ref)) (!
  (=>
    (Set_in n@23@01 g@1@01)
    (and (= (inv@24@01 n@23@01) n@23@01) (img@25@01 n@23@01)))
  :pattern ((Set_in n@23@01 g@1@01))
  :pattern ((inv@24@01 n@23@01))
  :pattern ((img@25@01 n@23@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@25@01 r) (Set_in (inv@24@01 r) g@1@01)) (= (inv@24@01 r) r))
  :pattern ((inv@24@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r)))
    (=>
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@26@01  $FVF<next>))))
  :qid |qp.fvfDomDef11|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@24@01 r) g@1@01) (img@25@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@26@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef9|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@26@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef10|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@19@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@14@01  $FVF<next>) r) r))
  :pattern ((inv@19@01 r))
  :qid |quant-u-23463|)))
(assert (forall ((n$0@22@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@22@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@22@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@24@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@7@01  $FVF<next>) r) r))
  :pattern ((inv@24@01 r))
  :qid |quant-u-23466|)))
(assert (forall ((n$0@27@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@27@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@27@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@26@01  $FVF<next>))
    $Snap.unit)) g@1@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@16@01 $Ref) (y@17@01 $Ref)) (!
  (=
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>))
        $Snap.unit)) g@1@01) x@16@01 y@17@01)
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@26@01  $FVF<next>))
        $Snap.unit)) g@1@01) y@17@01 x@16@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@21@01  $FVF<next>))
      $Snap.unit)) g@1@01) x@16@01 y@17@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@26@01  $FVF<next>))
      $Snap.unit)) g@1@01) y@17@01 x@16@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@26@13@26@77|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
  $Snap.unit))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) != foo(old(hfun(g)), x, y))
(declare-const x@28@01 $Ref)
(declare-const y@29@01 $Ref)
(push) ; 3
; [eval] foo(hfun(g), x, y) != foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@30@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@30@01 g@1@01))
(pop) ; 5
(declare-fun inv@31@01 ($Ref) $Ref)
(declare-fun img@32@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@33@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@30@01 $Ref) (n2@30@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@30@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@33@01  $FVF<next>) n1@30@01) n1@30@01))
      (and
        (Set_in n2@30@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@33@01  $FVF<next>) n2@30@01) n2@30@01))
      (= n1@30@01 n2@30@01))
    (= n1@30@01 n2@30@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@1@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@1@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@1@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@31@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@33@01  $FVF<next>) r) r))
  :pattern ((inv@31@01 r))
  :qid |quant-u-23469|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r) (= r (inv@31@01 r)))
    (>
      (ite
        (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23470|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@34@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>))))
  :qid |qp.fvfDomDef16|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@34@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef15|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@35@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 8 | !(n$0@35@01 in g@1@01) | live]
; [else-branch: 8 | n$0@35@01 in g@1@01 | live]
(push) ; 7
; [then-branch: 8 | !(n$0@35@01 in g@1@01)]
(assert (not (Set_in n$0@35@01 g@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 8 | n$0@35@01 in g@1@01]
(assert (Set_in n$0@35@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) n$0@35@01))
(push) ; 8
(assert (not (and (img@13@01 n$0@35@01) (Set_in (inv@12@01 n$0@35@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@35@01 g@1@01)
  (and
    (Set_in n$0@35@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) n$0@35@01))))
(assert (or (Set_in n$0@35@01 g@1@01) (not (Set_in n$0@35@01 g@1@01))))
(push) ; 6
; [then-branch: 9 | n$0@35@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@35@01) != Null | live]
; [else-branch: 9 | !(n$0@35@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@35@01) != Null) | live]
(push) ; 7
; [then-branch: 9 | n$0@35@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@35@01) != Null]
(assert (and
  (Set_in n$0@35@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) n$0@35@01))
(push) ; 8
(assert (not (and (img@13@01 n$0@35@01) (Set_in (inv@12@01 n$0@35@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 9 | !(n$0@35@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@35@01) != Null)]
(assert (not
  (and
    (Set_in n$0@35@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@35@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
        $Ref.null)))
  (and
    (Set_in n$0@35@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) n$0@35@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@35@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
          $Ref.null))))
  (and
    (Set_in n$0@35@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@35@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@35@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@35@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@35@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@34@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@1@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@1@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@1@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>))))
  :qid |qp.fvfDomDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@34@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef15|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@31@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@33@01  $FVF<next>) r) r))
    :pattern ((inv@31@01 r))
    :qid |quant-u-23469|))
  (forall ((n$0@35@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@35@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@34@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@36@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@36@01 g@1@01))
(pop) ; 5
(declare-fun inv@37@01 ($Ref) $Ref)
(declare-fun img@38@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@39@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef18|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@36@01 $Ref) (n2@36@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@36@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@39@01  $FVF<next>) n1@36@01) n1@36@01))
      (and
        (Set_in n2@36@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@39@01  $FVF<next>) n2@36@01) n2@36@01))
      (= n1@36@01 n2@36@01))
    (= n1@36@01 n2@36@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@1@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@1@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@1@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@37@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@39@01  $FVF<next>) r) r))
  :pattern ((inv@37@01 r))
  :qid |quant-u-23472|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r) (= r (inv@37@01 r)))
    (>
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23473|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@40@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@40@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@41@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 10 | !(n$0@41@01 in g@1@01) | live]
; [else-branch: 10 | n$0@41@01 in g@1@01 | live]
(push) ; 7
; [then-branch: 10 | !(n$0@41@01 in g@1@01)]
(assert (not (Set_in n$0@41@01 g@1@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 10 | n$0@41@01 in g@1@01]
(assert (Set_in n$0@41@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) n$0@41@01))
(push) ; 8
(assert (not (and (img@6@01 n$0@41@01) (Set_in (inv@5@01 n$0@41@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@41@01 g@1@01)
  (and
    (Set_in n$0@41@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) n$0@41@01))))
(assert (or (Set_in n$0@41@01 g@1@01) (not (Set_in n$0@41@01 g@1@01))))
(push) ; 6
; [then-branch: 11 | n$0@41@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@41@01) != Null | live]
; [else-branch: 11 | !(n$0@41@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@41@01) != Null) | live]
(push) ; 7
; [then-branch: 11 | n$0@41@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@41@01) != Null]
(assert (and
  (Set_in n$0@41@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) n$0@41@01))
(push) ; 8
(assert (not (and (img@6@01 n$0@41@01) (Set_in (inv@5@01 n$0@41@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 11 | !(n$0@41@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@41@01) != Null)]
(assert (not
  (and
    (Set_in n$0@41@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@41@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
        $Ref.null)))
  (and
    (Set_in n$0@41@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) n$0@41@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@41@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
          $Ref.null))))
  (and
    (Set_in n$0@41@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@41@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@41@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@41@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@41@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@40@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@1@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@1@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@1@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@40@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@37@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@39@01  $FVF<next>) r) r))
    :pattern ((inv@37@01 r))
    :qid |quant-u-23472|))
  (forall ((n$0@41@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@41@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@40@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@33@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef12|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@33@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef13|)))
(assert (forall ((n@30@01 $Ref)) (!
  (=>
    (Set_in n@30@01 g@1@01)
    (and (= (inv@31@01 n@30@01) n@30@01) (img@32@01 n@30@01)))
  :pattern ((Set_in n@30@01 g@1@01))
  :pattern ((inv@31@01 n@30@01))
  :pattern ((img@32@01 n@30@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@32@01 r) (Set_in (inv@31@01 r) g@1@01)) (= (inv@31@01 r) r))
  :pattern ((inv@31@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r)))
    (=>
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@34@01  $FVF<next>))))
  :qid |qp.fvfDomDef16|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@31@01 r) g@1@01) (img@32@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@34@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef14|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@34@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef15|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@39@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef17|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@39@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef18|)))
(assert (forall ((n@36@01 $Ref)) (!
  (=>
    (Set_in n@36@01 g@1@01)
    (and (= (inv@37@01 n@36@01) n@36@01) (img@38@01 n@36@01)))
  :pattern ((Set_in n@36@01 g@1@01))
  :pattern ((inv@37@01 n@36@01))
  :pattern ((img@38@01 n@36@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@38@01 r) (Set_in (inv@37@01 r) g@1@01)) (= (inv@37@01 r) r))
  :pattern ((inv@37@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r)))
    (=>
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@40@01  $FVF<next>))))
  :qid |qp.fvfDomDef21|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@37@01 r) g@1@01) (img@38@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@40@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef19|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@40@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef20|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@31@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@33@01  $FVF<next>) r) r))
  :pattern ((inv@31@01 r))
  :qid |quant-u-23469|)))
(assert (forall ((n$0@35@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@35@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@35@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@34@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@37@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@39@01  $FVF<next>) r) r))
  :pattern ((inv@37@01 r))
  :qid |quant-u-23472|)))
(assert (forall ((n$0@41@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@41@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@41@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@40@01  $FVF<next>))
    $Snap.unit)) g@1@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@28@01 $Ref) (y@29@01 $Ref)) (!
  (not
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@34@01  $FVF<next>))
          $Snap.unit)) g@1@01) x@28@01 y@29@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@40@01  $FVF<next>))
          $Snap.unit)) g@1@01) x@28@01 y@29@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@34@01  $FVF<next>))
      $Snap.unit)) g@1@01) x@28@01 y@29@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@40@01  $FVF<next>))
      $Snap.unit)) g@1@01) x@28@01 y@29@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@27@13@27@77|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@9@01)))))
  $Snap.unit))
; [eval] hfun(g) != old(hfun(g))
; [eval] hfun(g)
(push) ; 3
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@42@01 $Ref)
(push) ; 4
; [eval] (n in g)
(assert (Set_in n@42@01 g@1@01))
(pop) ; 4
(declare-fun inv@43@01 ($Ref) $Ref)
(declare-fun img@44@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@45@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef23|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@42@01 $Ref) (n2@42@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@42@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@45@01  $FVF<next>) n1@42@01) n1@42@01))
      (and
        (Set_in n2@42@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@45@01  $FVF<next>) n2@42@01) n2@42@01))
      (= n1@42@01 n2@42@01))
    (= n1@42@01 n2@42@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@1@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@1@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@1@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@43@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@45@01  $FVF<next>) r) r))
  :pattern ((inv@43@01 r))
  :qid |quant-u-23475|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r) (= r (inv@43@01 r)))
    (>
      (ite
        (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23476|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@46@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>))))
  :qid |qp.fvfDomDef26|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@46@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@46@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@46@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@47@01 $Ref)
(push) ; 4
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 5
; [then-branch: 12 | !(n$0@47@01 in g@1@01) | live]
; [else-branch: 12 | n$0@47@01 in g@1@01 | live]
(push) ; 6
; [then-branch: 12 | !(n$0@47@01 in g@1@01)]
(assert (not (Set_in n$0@47@01 g@1@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 12 | n$0@47@01 in g@1@01]
(assert (Set_in n$0@47@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) n$0@47@01))
(push) ; 7
(assert (not (and (img@13@01 n$0@47@01) (Set_in (inv@12@01 n$0@47@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@47@01 g@1@01)
  (and
    (Set_in n$0@47@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) n$0@47@01))))
(assert (or (Set_in n$0@47@01 g@1@01) (not (Set_in n$0@47@01 g@1@01))))
(push) ; 5
; [then-branch: 13 | n$0@47@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@47@01) != Null | live]
; [else-branch: 13 | !(n$0@47@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@47@01) != Null) | live]
(push) ; 6
; [then-branch: 13 | n$0@47@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@47@01) != Null]
(assert (and
  (Set_in n$0@47@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) n$0@47@01))
(push) ; 7
(assert (not (and (img@13@01 n$0@47@01) (Set_in (inv@12@01 n$0@47@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 13 | !(n$0@47@01 in g@1@01 && Lookup(next, First:(Second:($t@9@01)), n$0@47@01) != Null)]
(assert (not
  (and
    (Set_in n$0@47@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
        $Ref.null)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@47@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
        $Ref.null)))
  (and
    (Set_in n$0@47@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) n$0@47@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@47@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
          $Ref.null))))
  (and
    (Set_in n$0@47@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
        $Ref.null)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((n$0@47@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@47@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@47@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@47@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@46@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@45@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef22|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@45@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef23|)))
(assert (forall ((n@42@01 $Ref)) (!
  (=>
    (Set_in n@42@01 g@1@01)
    (and (= (inv@43@01 n@42@01) n@42@01) (img@44@01 n@42@01)))
  :pattern ((Set_in n@42@01 g@1@01))
  :pattern ((inv@43@01 n@42@01))
  :pattern ((img@44@01 n@42@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@44@01 r) (Set_in (inv@43@01 r) g@1@01)) (= (inv@43@01 r) r))
  :pattern ((inv@43@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>)))
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r)))
    (=>
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r))
      (Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@46@01  $FVF<next>))))
  :qid |qp.fvfDomDef26|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@43@01 r) g@1@01) (img@44@01 r))
      (and (img@13@01 r) (Set_in (inv@12@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@46@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r)))
  :pattern (($FVF.lookup_next (as sm@46@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r))
  :qid |qp.fvfValDef24|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@46@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef25|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@43@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@45@01  $FVF<next>) r) r))
    :pattern ((inv@43@01 r))
    :qid |quant-u-23475|))
  (forall ((n$0@47@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@47@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@9@01))) n$0@47@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@46@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 3
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@48@01 $Ref)
(push) ; 4
; [eval] (n in g)
(assert (Set_in n@48@01 g@1@01))
(pop) ; 4
(declare-fun inv@49@01 ($Ref) $Ref)
(declare-fun img@50@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@51@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@48@01 $Ref) (n2@48@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@48@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) n1@48@01) n1@48@01))
      (and
        (Set_in n2@48@01 g@1@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) n2@48@01) n2@48@01))
      (= n1@48@01 n2@48@01))
    (= n1@48@01 n2@48@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@1@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@1@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@1@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@49@01 r) g@1@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
  :pattern ((inv@49@01 r))
  :qid |quant-u-23478|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r) (= r (inv@49@01 r)))
    (>
      (ite (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)) $Perm.Write $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23479|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@52@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef31|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@53@01 $Ref)
(push) ; 4
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 5
; [then-branch: 14 | !(n$0@53@01 in g@1@01) | live]
; [else-branch: 14 | n$0@53@01 in g@1@01 | live]
(push) ; 6
; [then-branch: 14 | !(n$0@53@01 in g@1@01)]
(assert (not (Set_in n$0@53@01 g@1@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 14 | n$0@53@01 in g@1@01]
(assert (Set_in n$0@53@01 g@1@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) n$0@53@01))
(push) ; 7
(assert (not (and (img@6@01 n$0@53@01) (Set_in (inv@5@01 n$0@53@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@53@01 g@1@01)
  (and
    (Set_in n$0@53@01 g@1@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) n$0@53@01))))
(assert (or (Set_in n$0@53@01 g@1@01) (not (Set_in n$0@53@01 g@1@01))))
(push) ; 5
; [then-branch: 15 | n$0@53@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@53@01) != Null | live]
; [else-branch: 15 | !(n$0@53@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@53@01) != Null) | live]
(push) ; 6
; [then-branch: 15 | n$0@53@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@53@01) != Null]
(assert (and
  (Set_in n$0@53@01 g@1@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) n$0@53@01))
(push) ; 7
(assert (not (and (img@6@01 n$0@53@01) (Set_in (inv@5@01 n$0@53@01) g@1@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 15 | !(n$0@53@01 in g@1@01 && Lookup(next, First:(Second:($t@2@01)), n$0@53@01) != Null)]
(assert (not
  (and
    (Set_in n$0@53@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
        $Ref.null)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@53@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
        $Ref.null)))
  (and
    (Set_in n$0@53@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) n$0@53@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@53@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
          $Ref.null))))
  (and
    (Set_in n$0@53@01 g@1@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
        $Ref.null)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((n$0@53@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@53@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@53@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@53@01 g@1@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) g@1@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>))
    $Snap.unit)) g@1@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01))
    (=
      ($FVF.lookup_next (as sm@51@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef27|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@51@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef28|)))
(assert (forall ((n@48@01 $Ref)) (!
  (=>
    (Set_in n@48@01 g@1@01)
    (and (= (inv@49@01 n@48@01) n@48@01) (img@50@01 n@48@01)))
  :pattern ((Set_in n@48@01 g@1@01))
  :pattern ((inv@49@01 n@48@01))
  :pattern ((img@50@01 n@48@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@50@01 r) (Set_in (inv@49@01 r) g@1@01)) (= (inv@49@01 r) r))
  :pattern ((inv@49@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r)))
    (=>
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r))
      (Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@52@01  $FVF<next>))))
  :qid |qp.fvfDomDef31|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@49@01 r) g@1@01) (img@50@01 r))
      (and (img@6@01 r) (Set_in (inv@5@01 r) g@1@01)))
    (=
      ($FVF.lookup_next (as sm@52@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r)))
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r))
  :qid |qp.fvfValDef29|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@52@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef30|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@49@01 r) g@1@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@51@01  $FVF<next>) r) r))
    :pattern ((inv@49@01 r))
    :qid |quant-u-23478|))
  (forall ((n$0@53@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@53@01 g@1@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@2@01))) n$0@53@01) g@1@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>))
      $Snap.unit)) g@1@01)))
(assert (not
  (Set_equal (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@46@01  $FVF<next>))
      $Snap.unit)) g@1@01) (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@52@01  $FVF<next>))
      $Snap.unit)) g@1@01))))
(pop) ; 2
(push) ; 2
; [exec]
; inhale false
(pop) ; 2
(pop) ; 1
; ---------- reverse ----------
(declare-const g@54@01 Set<$Ref>)
(declare-const g@55@01 Set<$Ref>)
(push) ; 1
(declare-const $t@56@01 $Snap)
(assert (= $t@56@01 ($Snap.combine ($Snap.first $t@56@01) ($Snap.second $t@56@01))))
(assert (= ($Snap.first $t@56@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (not (Set_in $Ref.null g@55@01)))
(assert (=
  ($Snap.second $t@56@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@56@01))
    ($Snap.second ($Snap.second $t@56@01)))))
(declare-const n@57@01 $Ref)
(push) ; 2
; [eval] (n in g)
(assert (Set_in n@57@01 g@55@01))
(declare-const sm@58@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 2
(declare-fun inv@59@01 ($Ref) $Ref)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((n1@57@01 $Ref) (n2@57@01 $Ref)) (!
  (=>
    (and
      (Set_in n1@57@01 g@55@01)
      (Set_in n2@57@01 g@55@01)
      (= n1@57@01 n2@57@01))
    (= n1@57@01 n2@57@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@57@01 $Ref)) (!
  (=>
    (Set_in n@57@01 g@55@01)
    (and (= (inv@59@01 n@57@01) n@57@01) (img@60@01 n@57@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n@57@01) n@57@01))
  :qid |quant-u-23481|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) (= (inv@59@01 r) r))
  :pattern ((inv@59@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n@57@01 $Ref)) (!
  (=> (Set_in n@57@01 g@55@01) (not (= n@57@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n@57@01) n@57@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@61@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@59@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) r) r))
  :pattern ((inv@59@01 r))
  :qid |quant-u-23482|)))
(assert (= ($Snap.second ($Snap.second $t@56@01)) $Snap.unit))
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@62@01 $Ref)
(push) ; 2
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 3
; [then-branch: 16 | !(n$0@62@01 in g@55@01) | live]
; [else-branch: 16 | n$0@62@01 in g@55@01 | live]
(push) ; 4
; [then-branch: 16 | !(n$0@62@01 in g@55@01)]
(assert (not (Set_in n$0@62@01 g@55@01)))
(pop) ; 4
(push) ; 4
; [else-branch: 16 | n$0@62@01 in g@55@01]
(assert (Set_in n$0@62@01 g@55@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef33|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef34|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))
(push) ; 5
(assert (not (and (img@60@01 n$0@62@01) (Set_in (inv@59@01 n$0@62@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
(assert (=>
  (Set_in n$0@62@01 g@55@01)
  (and
    (Set_in n$0@62@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))))
(assert (or (Set_in n$0@62@01 g@55@01) (not (Set_in n$0@62@01 g@55@01))))
(push) ; 3
; [then-branch: 17 | n$0@62@01 in g@55@01 && Lookup(next, sm@61@01, n$0@62@01) != Null | live]
; [else-branch: 17 | !(n$0@62@01 in g@55@01 && Lookup(next, sm@61@01, n$0@62@01) != Null) | live]
(push) ; 4
; [then-branch: 17 | n$0@62@01 in g@55@01 && Lookup(next, sm@61@01, n$0@62@01) != Null]
(assert (and
  (Set_in n$0@62@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef33|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef34|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))
(push) ; 5
(assert (not (and (img@60@01 n$0@62@01) (Set_in (inv@59@01 n$0@62@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(pop) ; 4
(push) ; 4
; [else-branch: 17 | !(n$0@62@01 in g@55@01 && Lookup(next, sm@61@01, n$0@62@01) != Null)]
(assert (not
  (and
    (Set_in n$0@62@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))))
(pop) ; 4
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
(assert (=>
  (and
    (Set_in n$0@62@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))
  (and
    (Set_in n$0@62@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@62@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))))
  (and
    (Set_in n$0@62@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 2
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@62@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@62@01 g@55@01)
      (and
        (Set_in n$0@62@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01)))
    (or (Set_in n$0@62@01 g@55@01) (not (Set_in n$0@62@01 g@55@01)))
    (=>
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01)))
    (or
      (not
        (and
          (Set_in n$0@62@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))))
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) g@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@31@14@31@22-aux|)))
(assert (forall ((n$0@62@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@62@01 g@55@01)
      (and
        (Set_in n$0@62@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01)))
    (or (Set_in n$0@62@01 g@55@01) (not (Set_in n$0@62@01 g@55@01)))
    (=>
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01)))
    (or
      (not
        (and
          (Set_in n$0@62@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null))))
      (and
        (Set_in n$0@62@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))))
  :pattern ((Set_in n$0@62@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@31@14@31@22-aux|)))
(assert (forall ((n$0@62@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@62@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) g@55@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) g@55@01))
  :pattern ((Set_in n$0@62@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@62@01) n$0@62@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@31@14@31@22|)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var b1: Bool
(declare-const b1@63@01 Bool)
; [exec]
; var b2: Bool
(declare-const b2@64@01 Bool)
; [exec]
; reverse_impl(g)
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@65@01 $Ref)
(push) ; 3
; [eval] (n in g)
(assert (Set_in n@65@01 g@55@01))
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@66@01 ($Ref) $Ref)
(declare-fun img@67@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n1@65@01 $Ref) (n2@65@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@65@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n1@65@01) n1@65@01))
      (and
        (Set_in n2@65@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n2@65@01) n2@65@01))
      (= n1@65@01 n2@65@01))
    (= n1@65@01 n2@65@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@65@01 $Ref)) (!
  (=>
    (Set_in n@65@01 g@55@01)
    (and (= (inv@66@01 n@65@01) n@65@01) (img@67@01 n@65@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n@65@01) n@65@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@67@01 r) (Set_in (inv@66@01 r) g@55@01)) (= (inv@66@01 r) r))
  :pattern ((inv@66@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@66@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) r) r))
  :pattern ((inv@66@01 r))
  :qid |quant-u-23484|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((r $Ref)) $Perm
  (ite
    (and (Set_in (inv@66@01 r) g@55@01) (img@67@01 r) (= r (inv@66@01 r)))
    ($Perm.min
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=
    (-
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      (pTaken@68@01 r))
    $Perm.No)
  
  :qid |quant-u-23486|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@66@01 r) g@55@01) (img@67@01 r) (= r (inv@66@01 r)))
    (= (- $Perm.Write (pTaken@68@01 r)) $Perm.No))
  
  :qid |quant-u-23487|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [eval] (forall n$0: Ref :: { (n$0.next in g) } { (n$0 in g), n$0.next } (n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@69@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 4
; [then-branch: 18 | !(n$0@69@01 in g@55@01) | live]
; [else-branch: 18 | n$0@69@01 in g@55@01 | live]
(push) ; 5
; [then-branch: 18 | !(n$0@69@01 in g@55@01)]
(assert (not (Set_in n$0@69@01 g@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 18 | n$0@69@01 in g@55@01]
(assert (Set_in n$0@69@01 g@55@01))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef33|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef34|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))
(push) ; 6
(assert (not (and (img@60@01 n$0@69@01) (Set_in (inv@59@01 n$0@69@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
(assert (=>
  (Set_in n$0@69@01 g@55@01)
  (and
    (Set_in n$0@69@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))))
(assert (or (Set_in n$0@69@01 g@55@01) (not (Set_in n$0@69@01 g@55@01))))
(push) ; 4
; [then-branch: 19 | n$0@69@01 in g@55@01 && Lookup(next, sm@61@01, n$0@69@01) != Null | live]
; [else-branch: 19 | !(n$0@69@01 in g@55@01 && Lookup(next, sm@61@01, n$0@69@01) != Null) | live]
(push) ; 5
; [then-branch: 19 | n$0@69@01 in g@55@01 && Lookup(next, sm@61@01, n$0@69@01) != Null]
(assert (and
  (Set_in n$0@69@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef33|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef34|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))
(push) ; 6
(assert (not (and (img@60@01 n$0@69@01) (Set_in (inv@59@01 n$0@69@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 19 | !(n$0@69@01 in g@55@01 && Lookup(next, sm@61@01, n$0@69@01) != Null)]
(assert (not
  (and
    (Set_in n$0@69@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
(assert (=>
  (and
    (Set_in n$0@69@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))
  (and
    (Set_in n$0@69@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@69@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))))
  (and
    (Set_in n$0@69@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@61@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef33|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@61@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef34|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$0@69@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@69@01 g@55@01)
      (and
        (Set_in n$0@69@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01)))
    (or (Set_in n$0@69@01 g@55@01) (not (Set_in n$0@69@01 g@55@01)))
    (=>
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01)))
    (or
      (not
        (and
          (Set_in n$0@69@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))))
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) g@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22-aux|)))
(assert (forall ((n$0@69@01 $Ref)) (!
  (and
    (=>
      (Set_in n$0@69@01 g@55@01)
      (and
        (Set_in n$0@69@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01)))
    (or (Set_in n$0@69@01 g@55@01) (not (Set_in n$0@69@01 g@55@01)))
    (=>
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01)))
    (or
      (not
        (and
          (Set_in n$0@69@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null))))
      (and
        (Set_in n$0@69@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))))
  :pattern ((Set_in n$0@69@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22-aux|)))
(push) ; 3
(assert (not (forall ((n$0@69@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@69@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) g@55@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) g@55@01))
  :pattern ((Set_in n$0@69@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@69@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@69@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) g@55@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) g@55@01))
  :pattern ((Set_in n$0@69@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n$0@69@01) n$0@69@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@24@14@24@22|)))
(declare-const $t@70@01 $Snap)
(assert (= $t@70@01 ($Snap.combine ($Snap.first $t@70@01) ($Snap.second $t@70@01))))
(assert (= ($Snap.first $t@70@01) $Snap.unit))
; [eval] !((null in g))
; [eval] (null in g)
(assert (=
  ($Snap.second $t@70@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@70@01))
    ($Snap.second ($Snap.second $t@70@01)))))
(declare-const n$1@71@01 $Ref)
(push) ; 3
; [eval] (n$1 in g)
(assert (Set_in n$1@71@01 g@55@01))
(declare-const sm@72@01 $FVF<next>)
; Definitional axioms for snapshot map values
(pop) ; 3
(declare-fun inv@73@01 ($Ref) $Ref)
(declare-fun img@74@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((n$11@71@01 $Ref) (n$12@71@01 $Ref)) (!
  (=>
    (and
      (Set_in n$11@71@01 g@55@01)
      (Set_in n$12@71@01 g@55@01)
      (= n$11@71@01 n$12@71@01))
    (= n$11@71@01 n$12@71@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n$1@71@01 $Ref)) (!
  (=>
    (Set_in n$1@71@01 g@55@01)
    (and (= (inv@73@01 n$1@71@01) n$1@71@01) (img@74@01 n$1@71@01)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$1@71@01) n$1@71@01))
  :qid |quant-u-23489|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)) (= (inv@73@01 r) r))
  :pattern ((inv@73@01 r))
  :qid |next-fctOfInv|)))
; Permissions are non-negative
; Field permissions are at most one
; Permission implies non-null receiver
(assert (forall ((n$1@71@01 $Ref)) (!
  (=> (Set_in n$1@71@01 g@55@01) (not (= n$1@71@01 $Ref.null)))
  :pattern (($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$1@71@01) n$1@71@01))
  :qid |next-permImpliesNonNull|)))
(declare-const sm@75@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef37|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@73@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) r) r))
  :pattern ((inv@73@01 r))
  :qid |quant-u-23490|)))
(assert (=
  ($Snap.second ($Snap.second $t@70@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@70@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))
(assert (= ($Snap.first ($Snap.second ($Snap.second $t@70@01))) $Snap.unit))
; [eval] (forall n$2: Ref :: { (n$2.next in g) } { (n$2 in g), n$2.next } (n$2 in g) && n$2.next != null ==> (n$2.next in g))
(declare-const n$2@76@01 $Ref)
(push) ; 3
; [eval] (n$2 in g) && n$2.next != null ==> (n$2.next in g)
; [eval] (n$2 in g) && n$2.next != null
; [eval] (n$2 in g)
(push) ; 4
; [then-branch: 20 | !(n$2@76@01 in g@55@01) | live]
; [else-branch: 20 | n$2@76@01 in g@55@01 | live]
(push) ; 5
; [then-branch: 20 | !(n$2@76@01 in g@55@01)]
(assert (not (Set_in n$2@76@01 g@55@01)))
(pop) ; 5
(push) ; 5
; [else-branch: 20 | n$2@76@01 in g@55@01]
(assert (Set_in n$2@76@01 g@55@01))
; [eval] n$2.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef37|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))
(push) ; 6
(assert (not (and (img@74@01 n$2@76@01) (Set_in (inv@73@01 n$2@76@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(pop) ; 4
; Joined path conditions
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef37|)))
(assert (=>
  (Set_in n$2@76@01 g@55@01)
  (and
    (Set_in n$2@76@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))))
(assert (or (Set_in n$2@76@01 g@55@01) (not (Set_in n$2@76@01 g@55@01))))
(push) ; 4
; [then-branch: 21 | n$2@76@01 in g@55@01 && Lookup(next, sm@75@01, n$2@76@01) != Null | live]
; [else-branch: 21 | !(n$2@76@01 in g@55@01 && Lookup(next, sm@75@01, n$2@76@01) != Null) | live]
(push) ; 5
; [then-branch: 21 | n$2@76@01 in g@55@01 && Lookup(next, sm@75@01, n$2@76@01) != Null]
(assert (and
  (Set_in n$2@76@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))))
; [eval] (n$2.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef36|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef37|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))
(push) ; 6
(assert (not (and (img@74@01 n$2@76@01) (Set_in (inv@73@01 n$2@76@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(pop) ; 5
(push) ; 5
; [else-branch: 21 | !(n$2@76@01 in g@55@01 && Lookup(next, sm@75@01, n$2@76@01) != Null)]
(assert (not
  (and
    (Set_in n$2@76@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))))
(pop) ; 5
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef37|)))
(assert (=>
  (and
    (Set_in n$2@76@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))
  (and
    (Set_in n$2@76@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$2@76@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))))
  (and
    (Set_in n$2@76@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))))
; Definitional axioms for snapshot map values
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@75@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef36|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@75@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef37|)))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((n$2@76@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@76@01 g@55@01)
      (and
        (Set_in n$2@76@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01)))
    (or (Set_in n$2@76@01 g@55@01) (not (Set_in n$2@76@01 g@55@01)))
    (=>
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01)))
    (or
      (not
        (and
          (Set_in n$2@76@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))))
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))))
  :pattern ((Set_in ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) g@55@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21-aux|)))
(assert (forall ((n$2@76@01 $Ref)) (!
  (and
    (=>
      (Set_in n$2@76@01 g@55@01)
      (and
        (Set_in n$2@76@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01)))
    (or (Set_in n$2@76@01 g@55@01) (not (Set_in n$2@76@01 g@55@01)))
    (=>
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01)))
    (or
      (not
        (and
          (Set_in n$2@76@01 g@55@01)
          (not
            (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null))))
      (and
        (Set_in n$2@76@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))))
  :pattern ((Set_in n$2@76@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21-aux|)))
(assert (forall ((n$2@76@01 $Ref)) (!
  (=>
    (and
      (Set_in n$2@76@01 g@55@01)
      (not (= ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) g@55@01))
  :pattern ((Set_in ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) g@55@01))
  :pattern ((Set_in n$2@76@01 g@55@01) ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n$2@76@01) n$2@76@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@25@13@25@21|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second $t@70@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  $Snap.unit))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), y, x) } foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
(declare-const x@77@01 $Ref)
(declare-const y@78@01 $Ref)
(push) ; 3
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), y, x)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@79@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@79@01 g@55@01))
(pop) ; 5
(declare-fun inv@80@01 ($Ref) $Ref)
(declare-fun img@81@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@79@01 $Ref) (n2@79@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@79@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n1@79@01) n1@79@01))
      (and
        (Set_in n2@79@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) n2@79@01) n2@79@01))
      (= n1@79@01 n2@79@01))
    (= n1@79@01 n2@79@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@79@01 $Ref)) (!
  (=>
    (Set_in n@79@01 g@55@01)
    (and (= (inv@80@01 n@79@01) n@79@01) (img@81@01 n@79@01)))
  :pattern ((Set_in n@79@01 g@55@01))
  :pattern ((inv@80@01 n@79@01))
  :pattern ((img@81@01 n@79@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@81@01 r) (Set_in (inv@80@01 r) g@55@01)) (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@80@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) r) r))
  :pattern ((inv@80@01 r))
  :qid |quant-u-23492|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r) (= r (inv@80@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23493|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@82@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r)))
    (=>
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@82@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@83@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 22 | !(n$0@83@01 in g@55@01) | live]
; [else-branch: 22 | n$0@83@01 in g@55@01 | live]
(push) ; 7
; [then-branch: 22 | !(n$0@83@01 in g@55@01)]
(assert (not (Set_in n$0@83@01 g@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 22 | n$0@83@01 in g@55@01]
(assert (Set_in n$0@83@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) n$0@83@01))
(push) ; 8
(assert (not (and (img@74@01 n$0@83@01) (Set_in (inv@73@01 n$0@83@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@83@01 g@55@01)
  (and
    (Set_in n$0@83@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) n$0@83@01))))
(assert (or (Set_in n$0@83@01 g@55@01) (not (Set_in n$0@83@01 g@55@01))))
(push) ; 6
; [then-branch: 23 | n$0@83@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@83@01) != Null | live]
; [else-branch: 23 | !(n$0@83@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@83@01) != Null) | live]
(push) ; 7
; [then-branch: 23 | n$0@83@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@83@01) != Null]
(assert (and
  (Set_in n$0@83@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) n$0@83@01))
(push) ; 8
(assert (not (and (img@74@01 n$0@83@01) (Set_in (inv@73@01 n$0@83@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 23 | !(n$0@83@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@83@01) != Null)]
(assert (not
  (and
    (Set_in n$0@83@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@83@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
        $Ref.null)))
  (and
    (Set_in n$0@83@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) n$0@83@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@83@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
          $Ref.null))))
  (and
    (Set_in n$0@83@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@83@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@83@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@83@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@83@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@82@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((n@79@01 $Ref)) (!
  (=>
    (Set_in n@79@01 g@55@01)
    (and (= (inv@80@01 n@79@01) n@79@01) (img@81@01 n@79@01)))
  :pattern ((Set_in n@79@01 g@55@01))
  :pattern ((inv@80@01 n@79@01))
  :pattern ((img@81@01 n@79@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@81@01 r) (Set_in (inv@80@01 r) g@55@01)) (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r)))
    (=>
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@82@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@80@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) r) r))
    :pattern ((inv@80@01 r))
    :qid |quant-u-23492|))
  (forall ((n$0@83@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@83@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@82@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), y, x)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@84@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@84@01 g@55@01))
(pop) ; 5
(declare-fun inv@85@01 ($Ref) $Ref)
(declare-fun img@86@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@84@01 $Ref) (n2@84@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@84@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n1@84@01) n1@84@01))
      (and
        (Set_in n2@84@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) n2@84@01) n2@84@01))
      (= n1@84@01 n2@84@01))
    (= n1@84@01 n2@84@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@55@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@55@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@55@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@85@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) r) r))
  :pattern ((inv@85@01 r))
  :qid |quant-u-23495|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r) (= r (inv@85@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23496|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@87@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef43|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@88@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 24 | !(n$0@88@01 in g@55@01) | live]
; [else-branch: 24 | n$0@88@01 in g@55@01 | live]
(push) ; 7
; [then-branch: 24 | !(n$0@88@01 in g@55@01)]
(assert (not (Set_in n$0@88@01 g@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 24 | n$0@88@01 in g@55@01]
(assert (Set_in n$0@88@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) n$0@88@01))
(push) ; 8
(assert (not (and (img@60@01 n$0@88@01) (Set_in (inv@59@01 n$0@88@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@88@01 g@55@01)
  (and
    (Set_in n$0@88@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) n$0@88@01))))
(assert (or (Set_in n$0@88@01 g@55@01) (not (Set_in n$0@88@01 g@55@01))))
(push) ; 6
; [then-branch: 25 | n$0@88@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@88@01) != Null | live]
; [else-branch: 25 | !(n$0@88@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@88@01) != Null) | live]
(push) ; 7
; [then-branch: 25 | n$0@88@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@88@01) != Null]
(assert (and
  (Set_in n$0@88@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) n$0@88@01))
(push) ; 8
(assert (not (and (img@60@01 n$0@88@01) (Set_in (inv@59@01 n$0@88@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 25 | !(n$0@88@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@88@01) != Null)]
(assert (not
  (and
    (Set_in n$0@88@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@88@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
        $Ref.null)))
  (and
    (Set_in n$0@88@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) n$0@88@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@88@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
          $Ref.null))))
  (and
    (Set_in n$0@88@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@88@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@88@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@88@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@88@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@55@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@55@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@55@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@85@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) r) r))
    :pattern ((inv@85@01 r))
    :qid |quant-u-23495|))
  (forall ((n$0@88@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@88@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@79@01 $Ref)) (!
  (=>
    (Set_in n@79@01 g@55@01)
    (and (= (inv@80@01 n@79@01) n@79@01) (img@81@01 n@79@01)))
  :pattern ((Set_in n@79@01 g@55@01))
  :pattern ((inv@80@01 n@79@01))
  :pattern ((img@81@01 n@79@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@81@01 r) (Set_in (inv@80@01 r) g@55@01)) (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r)))
    (=>
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@82@01  $FVF<next>))))
  :qid |qp.fvfDomDef40|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@80@01 r) g@55@01) (img@81@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@82@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef38|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@82@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef39|)))
(assert (forall ((n@84@01 $Ref)) (!
  (=>
    (Set_in n@84@01 g@55@01)
    (and (= (inv@85@01 n@84@01) n@84@01) (img@86@01 n@84@01)))
  :pattern ((Set_in n@84@01 g@55@01))
  :pattern ((inv@85@01 n@84@01))
  :pattern ((img@86@01 n@84@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@86@01 r) (Set_in (inv@85@01 r) g@55@01)) (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r)))
    (=>
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@87@01  $FVF<next>))))
  :qid |qp.fvfDomDef43|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@85@01 r) g@55@01) (img@86@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@87@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef41|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@87@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef42|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@80@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@75@01  $FVF<next>) r) r))
  :pattern ((inv@80@01 r))
  :qid |quant-u-23492|)))
(assert (forall ((n$0@83@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@83@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@83@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@82@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@85@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@61@01  $FVF<next>) r) r))
  :pattern ((inv@85@01 r))
  :qid |quant-u-23495|)))
(assert (forall ((n$0@88@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@88@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@88@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@77@01 $Ref) (y@78@01 $Ref)) (!
  (=
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@82@01  $FVF<next>))
        $Snap.unit)) g@55@01) x@77@01 y@78@01)
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>))
        $Snap.unit)) g@55@01) y@78@01 x@77@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@82@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@77@01 y@78@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@87@01  $FVF<next>))
      $Snap.unit)) g@55@01) y@78@01 x@77@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@26@13@26@77|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
    ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01))))))))
(assert (=
  ($Snap.first ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) != foo(old(hfun(g)), x, y))
(declare-const x@89@01 $Ref)
(declare-const y@90@01 $Ref)
(push) ; 3
; [eval] foo(hfun(g), x, y) != foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@91@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@91@01 g@55@01))
(pop) ; 5
(declare-fun inv@92@01 ($Ref) $Ref)
(declare-fun img@93@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@94@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@94@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef45|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@91@01 $Ref) (n2@91@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@91@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@94@01  $FVF<next>) n1@91@01) n1@91@01))
      (and
        (Set_in n2@91@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@94@01  $FVF<next>) n2@91@01) n2@91@01))
      (= n1@91@01 n2@91@01))
    (= n1@91@01 n2@91@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@91@01 $Ref)) (!
  (=>
    (Set_in n@91@01 g@55@01)
    (and (= (inv@92@01 n@91@01) n@91@01) (img@93@01 n@91@01)))
  :pattern ((Set_in n@91@01 g@55@01))
  :pattern ((inv@92@01 n@91@01))
  :pattern ((img@93@01 n@91@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@93@01 r) (Set_in (inv@92@01 r) g@55@01)) (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@92@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@94@01  $FVF<next>) r) r))
  :pattern ((inv@92@01 r))
  :qid |quant-u-23498|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r) (= r (inv@92@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23499|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@95@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r)))
    (=>
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>))))
  :qid |qp.fvfDomDef48|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@95@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef47|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@96@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 26 | !(n$0@96@01 in g@55@01) | live]
; [else-branch: 26 | n$0@96@01 in g@55@01 | live]
(push) ; 7
; [then-branch: 26 | !(n$0@96@01 in g@55@01)]
(assert (not (Set_in n$0@96@01 g@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 26 | n$0@96@01 in g@55@01]
(assert (Set_in n$0@96@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) n$0@96@01))
(push) ; 8
(assert (not (and (img@74@01 n$0@96@01) (Set_in (inv@73@01 n$0@96@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@96@01 g@55@01)
  (and
    (Set_in n$0@96@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) n$0@96@01))))
(assert (or (Set_in n$0@96@01 g@55@01) (not (Set_in n$0@96@01 g@55@01))))
(push) ; 6
; [then-branch: 27 | n$0@96@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@96@01) != Null | live]
; [else-branch: 27 | !(n$0@96@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@96@01) != Null) | live]
(push) ; 7
; [then-branch: 27 | n$0@96@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@96@01) != Null]
(assert (and
  (Set_in n$0@96@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) n$0@96@01))
(push) ; 8
(assert (not (and (img@74@01 n$0@96@01) (Set_in (inv@73@01 n$0@96@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 27 | !(n$0@96@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@96@01) != Null)]
(assert (not
  (and
    (Set_in n$0@96@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@96@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
        $Ref.null)))
  (and
    (Set_in n$0@96@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) n$0@96@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@96@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
          $Ref.null))))
  (and
    (Set_in n$0@96@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@96@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@96@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@96@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@96@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@95@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@94@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef45|)))
(assert (forall ((n@91@01 $Ref)) (!
  (=>
    (Set_in n@91@01 g@55@01)
    (and (= (inv@92@01 n@91@01) n@91@01) (img@93@01 n@91@01)))
  :pattern ((Set_in n@91@01 g@55@01))
  :pattern ((inv@92@01 n@91@01))
  :pattern ((img@93@01 n@91@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@93@01 r) (Set_in (inv@92@01 r) g@55@01)) (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r)))
    (=>
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>))))
  :qid |qp.fvfDomDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@95@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef47|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@92@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@94@01  $FVF<next>) r) r))
    :pattern ((inv@92@01 r))
    :qid |quant-u-23498|))
  (forall ((n$0@96@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@96@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@95@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 4
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@97@01 $Ref)
(push) ; 5
; [eval] (n in g)
(assert (Set_in n@97@01 g@55@01))
(pop) ; 5
(declare-fun inv@98@01 ($Ref) $Ref)
(declare-fun img@99@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@100@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@100@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef50|)))
; Check receiver injectivity
(push) ; 5
(assert (not (forall ((n1@97@01 $Ref) (n2@97@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@97@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@100@01  $FVF<next>) n1@97@01) n1@97@01))
      (and
        (Set_in n2@97@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@100@01  $FVF<next>) n2@97@01) n2@97@01))
      (= n1@97@01 n2@97@01))
    (= n1@97@01 n2@97@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@97@01 $Ref)) (!
  (=>
    (Set_in n@97@01 g@55@01)
    (and (= (inv@98@01 n@97@01) n@97@01) (img@99@01 n@97@01)))
  :pattern ((Set_in n@97@01 g@55@01))
  :pattern ((inv@98@01 n@97@01))
  :pattern ((img@99@01 n@97@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@99@01 r) (Set_in (inv@98@01 r) g@55@01)) (= (inv@98@01 r) r))
  :pattern ((inv@98@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@98@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@100@01  $FVF<next>) r) r))
  :pattern ((inv@98@01 r))
  :qid |quant-u-23501|)))
(push) ; 5
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r) (= r (inv@98@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23502|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@101@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r)))
    (=>
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>))))
  :qid |qp.fvfDomDef53|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@102@01 $Ref)
(push) ; 5
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 6
; [then-branch: 28 | !(n$0@102@01 in g@55@01) | live]
; [else-branch: 28 | n$0@102@01 in g@55@01 | live]
(push) ; 7
; [then-branch: 28 | !(n$0@102@01 in g@55@01)]
(assert (not (Set_in n$0@102@01 g@55@01)))
(pop) ; 7
(push) ; 7
; [else-branch: 28 | n$0@102@01 in g@55@01]
(assert (Set_in n$0@102@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) n$0@102@01))
(push) ; 8
(assert (not (and (img@60@01 n$0@102@01) (Set_in (inv@59@01 n$0@102@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(pop) ; 6
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@102@01 g@55@01)
  (and
    (Set_in n$0@102@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) n$0@102@01))))
(assert (or (Set_in n$0@102@01 g@55@01) (not (Set_in n$0@102@01 g@55@01))))
(push) ; 6
; [then-branch: 29 | n$0@102@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@102@01) != Null | live]
; [else-branch: 29 | !(n$0@102@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@102@01) != Null) | live]
(push) ; 7
; [then-branch: 29 | n$0@102@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@102@01) != Null]
(assert (and
  (Set_in n$0@102@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) n$0@102@01))
(push) ; 8
(assert (not (and (img@60@01 n$0@102@01) (Set_in (inv@59@01 n$0@102@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 8
; 0.00s
; (get-info :all-statistics)
(pop) ; 7
(push) ; 7
; [else-branch: 29 | !(n$0@102@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@102@01) != Null)]
(assert (not
  (and
    (Set_in n$0@102@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
        $Ref.null)))))
(pop) ; 7
(pop) ; 6
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@102@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
        $Ref.null)))
  (and
    (Set_in n$0@102@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) n$0@102@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@102@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
          $Ref.null))))
  (and
    (Set_in n$0@102@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
        $Ref.null)))))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 5
(assert (not (forall ((n$0@102@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@102@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@102@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@102@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@101@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 4
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@100@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@97@01 $Ref)) (!
  (=>
    (Set_in n@97@01 g@55@01)
    (and (= (inv@98@01 n@97@01) n@97@01) (img@99@01 n@97@01)))
  :pattern ((Set_in n@97@01 g@55@01))
  :pattern ((inv@98@01 n@97@01))
  :pattern ((img@99@01 n@97@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@99@01 r) (Set_in (inv@98@01 r) g@55@01)) (= (inv@98@01 r) r))
  :pattern ((inv@98@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r)))
    (=>
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>))))
  :qid |qp.fvfDomDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@98@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@100@01  $FVF<next>) r) r))
    :pattern ((inv@98@01 r))
    :qid |quant-u-23501|))
  (forall ((n$0@102@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@102@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@101@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 3
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@94@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef44|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@94@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef45|)))
(assert (forall ((n@91@01 $Ref)) (!
  (=>
    (Set_in n@91@01 g@55@01)
    (and (= (inv@92@01 n@91@01) n@91@01) (img@93@01 n@91@01)))
  :pattern ((Set_in n@91@01 g@55@01))
  :pattern ((inv@92@01 n@91@01))
  :pattern ((img@93@01 n@91@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@93@01 r) (Set_in (inv@92@01 r) g@55@01)) (= (inv@92@01 r) r))
  :pattern ((inv@92@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r)))
    (=>
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@95@01  $FVF<next>))))
  :qid |qp.fvfDomDef48|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@92@01 r) g@55@01) (img@93@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@95@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef46|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@95@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef47|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@100@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef49|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@100@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef50|)))
(assert (forall ((n@97@01 $Ref)) (!
  (=>
    (Set_in n@97@01 g@55@01)
    (and (= (inv@98@01 n@97@01) n@97@01) (img@99@01 n@97@01)))
  :pattern ((Set_in n@97@01 g@55@01))
  :pattern ((inv@98@01 n@97@01))
  :pattern ((img@99@01 n@97@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@99@01 r) (Set_in (inv@98@01 r) g@55@01)) (= (inv@98@01 r) r))
  :pattern ((inv@98@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r)))
    (=>
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@101@01  $FVF<next>))))
  :qid |qp.fvfDomDef53|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@98@01 r) g@55@01) (img@99@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@101@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef51|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@101@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef52|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@92@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@94@01  $FVF<next>) r) r))
  :pattern ((inv@92@01 r))
  :qid |quant-u-23498|)))
(assert (forall ((n$0@96@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@96@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@96@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@95@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@98@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@100@01  $FVF<next>) r) r))
  :pattern ((inv@98@01 r))
  :qid |quant-u-23501|)))
(assert (forall ((n$0@102@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@102@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@102@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@101@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@89@01 $Ref) (y@90@01 $Ref)) (!
  (not
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@95@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@89@01 y@90@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@101@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@89@01 y@90@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@95@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@89@01 y@90@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@101@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@89@01 y@90@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@27@13@27@77|)))
(assert (=
  ($Snap.second ($Snap.second ($Snap.second ($Snap.second ($Snap.second $t@70@01)))))
  $Snap.unit))
; [eval] hfun(g) != old(hfun(g))
; [eval] hfun(g)
(push) ; 3
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@103@01 $Ref)
(push) ; 4
; [eval] (n in g)
(assert (Set_in n@103@01 g@55@01))
(pop) ; 4
(declare-fun inv@104@01 ($Ref) $Ref)
(declare-fun img@105@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@106@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@106@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@106@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@106@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef55|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@103@01 $Ref) (n2@103@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@103@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@106@01  $FVF<next>) n1@103@01) n1@103@01))
      (and
        (Set_in n2@103@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@106@01  $FVF<next>) n2@103@01) n2@103@01))
      (= n1@103@01 n2@103@01))
    (= n1@103@01 n2@103@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@103@01 $Ref)) (!
  (=>
    (Set_in n@103@01 g@55@01)
    (and (= (inv@104@01 n@103@01) n@103@01) (img@105@01 n@103@01)))
  :pattern ((Set_in n@103@01 g@55@01))
  :pattern ((inv@104@01 n@103@01))
  :pattern ((img@105@01 n@103@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@105@01 r) (Set_in (inv@104@01 r) g@55@01)) (= (inv@104@01 r) r))
  :pattern ((inv@104@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@104@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@106@01  $FVF<next>) r) r))
  :pattern ((inv@104@01 r))
  :qid |quant-u-23504|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r) (= r (inv@104@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23505|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@107@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r)))
    (=>
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r))
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>))))
  :qid |qp.fvfDomDef58|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@107@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@108@01 $Ref)
(push) ; 4
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 5
; [then-branch: 30 | !(n$0@108@01 in g@55@01) | live]
; [else-branch: 30 | n$0@108@01 in g@55@01 | live]
(push) ; 6
; [then-branch: 30 | !(n$0@108@01 in g@55@01)]
(assert (not (Set_in n$0@108@01 g@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 30 | n$0@108@01 in g@55@01]
(assert (Set_in n$0@108@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) n$0@108@01))
(push) ; 7
(assert (not (and (img@74@01 n$0@108@01) (Set_in (inv@73@01 n$0@108@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@108@01 g@55@01)
  (and
    (Set_in n$0@108@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) n$0@108@01))))
(assert (or (Set_in n$0@108@01 g@55@01) (not (Set_in n$0@108@01 g@55@01))))
(push) ; 5
; [then-branch: 31 | n$0@108@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@108@01) != Null | live]
; [else-branch: 31 | !(n$0@108@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@108@01) != Null) | live]
(push) ; 6
; [then-branch: 31 | n$0@108@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@108@01) != Null]
(assert (and
  (Set_in n$0@108@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) n$0@108@01))
(push) ; 7
(assert (not (and (img@74@01 n$0@108@01) (Set_in (inv@73@01 n$0@108@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 31 | !(n$0@108@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@108@01) != Null)]
(assert (not
  (and
    (Set_in n$0@108@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
        $Ref.null)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@108@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
        $Ref.null)))
  (and
    (Set_in n$0@108@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) n$0@108@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@108@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
          $Ref.null))))
  (and
    (Set_in n$0@108@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
        $Ref.null)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((n$0@108@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@108@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@108@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@108@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@106@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@106@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef54|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@106@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef55|)))
(assert (forall ((n@103@01 $Ref)) (!
  (=>
    (Set_in n@103@01 g@55@01)
    (and (= (inv@104@01 n@103@01) n@103@01) (img@105@01 n@103@01)))
  :pattern ((Set_in n@103@01 g@55@01))
  :pattern ((inv@104@01 n@103@01))
  :pattern ((img@105@01 n@103@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@105@01 r) (Set_in (inv@104@01 r) g@55@01)) (= (inv@104@01 r) r))
  :pattern ((inv@104@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r)))
    (=>
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r))
      (Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@107@01  $FVF<next>))))
  :qid |qp.fvfDomDef58|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@104@01 r) g@55@01) (img@105@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@107@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef56|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@107@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef57|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@104@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@106@01  $FVF<next>) r) r))
    :pattern ((inv@104@01 r))
    :qid |quant-u-23504|))
  (forall ((n$0@108@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@108@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@108@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 3
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@109@01 $Ref)
(push) ; 4
; [eval] (n in g)
(assert (Set_in n@109@01 g@55@01))
(pop) ; 4
(declare-fun inv@110@01 ($Ref) $Ref)
(declare-fun img@111@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@112@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@112@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@112@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@112@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef60|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((n1@109@01 $Ref) (n2@109@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@109@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@112@01  $FVF<next>) n1@109@01) n1@109@01))
      (and
        (Set_in n2@109@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@112@01  $FVF<next>) n2@109@01) n2@109@01))
      (= n1@109@01 n2@109@01))
    (= n1@109@01 n2@109@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@109@01 $Ref)) (!
  (=>
    (Set_in n@109@01 g@55@01)
    (and (= (inv@110@01 n@109@01) n@109@01) (img@111@01 n@109@01)))
  :pattern ((Set_in n@109@01 g@55@01))
  :pattern ((inv@110@01 n@109@01))
  :pattern ((img@111@01 n@109@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@111@01 r) (Set_in (inv@110@01 r) g@55@01)) (= (inv@110@01 r) r))
  :pattern ((inv@110@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@110@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@112@01  $FVF<next>) r) r))
  :pattern ((inv@110@01 r))
  :qid |quant-u-23507|)))
(push) ; 4
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r) (= r (inv@110@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23508|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const sm@113@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>)))
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r)))
    (=>
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r))
      (Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>))))
  :qid |qp.fvfDomDef63|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef62|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@114@01 $Ref)
(push) ; 4
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 5
; [then-branch: 32 | !(n$0@114@01 in g@55@01) | live]
; [else-branch: 32 | n$0@114@01 in g@55@01 | live]
(push) ; 6
; [then-branch: 32 | !(n$0@114@01 in g@55@01)]
(assert (not (Set_in n$0@114@01 g@55@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 32 | n$0@114@01 in g@55@01]
(assert (Set_in n$0@114@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) n$0@114@01))
(push) ; 7
(assert (not (and (img@60@01 n$0@114@01) (Set_in (inv@59@01 n$0@114@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@114@01 g@55@01)
  (and
    (Set_in n$0@114@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) n$0@114@01))))
(assert (or (Set_in n$0@114@01 g@55@01) (not (Set_in n$0@114@01 g@55@01))))
(push) ; 5
; [then-branch: 33 | n$0@114@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@114@01) != Null | live]
; [else-branch: 33 | !(n$0@114@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@114@01) != Null) | live]
(push) ; 6
; [then-branch: 33 | n$0@114@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@114@01) != Null]
(assert (and
  (Set_in n$0@114@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) n$0@114@01))
(push) ; 7
(assert (not (and (img@60@01 n$0@114@01) (Set_in (inv@59@01 n$0@114@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(pop) ; 6
(push) ; 6
; [else-branch: 33 | !(n$0@114@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@114@01) != Null)]
(assert (not
  (and
    (Set_in n$0@114@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
        $Ref.null)))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@114@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
        $Ref.null)))
  (and
    (Set_in n$0@114@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) n$0@114@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@114@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
          $Ref.null))))
  (and
    (Set_in n$0@114@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
        $Ref.null)))))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 4
(assert (not (forall ((n$0@114@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@114@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@114@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@114@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@113@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 3
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@112@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@112@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef59|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@112@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef60|)))
(assert (forall ((n@109@01 $Ref)) (!
  (=>
    (Set_in n@109@01 g@55@01)
    (and (= (inv@110@01 n@109@01) n@109@01) (img@111@01 n@109@01)))
  :pattern ((Set_in n@109@01 g@55@01))
  :pattern ((inv@110@01 n@109@01))
  :pattern ((img@111@01 n@109@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@111@01 r) (Set_in (inv@110@01 r) g@55@01)) (= (inv@110@01 r) r))
  :pattern ((inv@110@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>)))
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r)))
    (=>
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r))
      (Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@113@01  $FVF<next>))))
  :qid |qp.fvfDomDef63|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@110@01 r) g@55@01) (img@111@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@113@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef61|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@113@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef62|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@110@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@112@01  $FVF<next>) r) r))
    :pattern ((inv@110@01 r))
    :qid |quant-u-23507|))
  (forall ((n$0@114@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@114@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@114@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@113@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(assert (not
  (Set_equal (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@107@01  $FVF<next>))
      $Snap.unit)) g@55@01) (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@113@01  $FVF<next>))
      $Snap.unit)) g@55@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@63@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not b1@63@01))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [then-branch: 34 | b1@63@01 | live]
; [else-branch: 34 | !(b1@63@01) | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 34 | b1@63@01]
(assert b1@63@01)
; [exec]
; assert (forall x: Ref, y: Ref ::
;     { foo(hfun(g), x, y) }
;     { foo(old(hfun(g)), y, x) }
;     foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), y, x) } foo(hfun(g), x, y) == foo(old(hfun(g)), y, x))
(declare-const x@115@01 $Ref)
(declare-const y@116@01 $Ref)
(push) ; 4
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), y, x)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 5
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@117@01 $Ref)
(push) ; 6
; [eval] (n in g)
(assert (Set_in n@117@01 g@55@01))
(pop) ; 6
(declare-fun inv@118@01 ($Ref) $Ref)
(declare-fun img@119@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@120@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@117@01 $Ref) (n2@117@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@117@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) n1@117@01) n1@117@01))
      (and
        (Set_in n2@117@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) n2@117@01) n2@117@01))
      (= n1@117@01 n2@117@01))
    (= n1@117@01 n2@117@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@117@01 $Ref)) (!
  (=>
    (Set_in n@117@01 g@55@01)
    (and (= (inv@118@01 n@117@01) n@117@01) (img@119@01 n@117@01)))
  :pattern ((Set_in n@117@01 g@55@01))
  :pattern ((inv@118@01 n@117@01))
  :pattern ((img@119@01 n@117@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@119@01 r) (Set_in (inv@118@01 r) g@55@01)) (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@118@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r))
  :pattern ((inv@118@01 r))
  :qid |quant-u-23510|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r) (= r (inv@118@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23511|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@121@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r)))
    (=>
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>))))
  :qid |qp.fvfDomDef68|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@121@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef67|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@122@01 $Ref)
(push) ; 6
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 7
; [then-branch: 35 | !(n$0@122@01 in g@55@01) | live]
; [else-branch: 35 | n$0@122@01 in g@55@01 | live]
(push) ; 8
; [then-branch: 35 | !(n$0@122@01 in g@55@01)]
(assert (not (Set_in n$0@122@01 g@55@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 35 | n$0@122@01 in g@55@01]
(assert (Set_in n$0@122@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) n$0@122@01))
(push) ; 9
(assert (not (and (img@74@01 n$0@122@01) (Set_in (inv@73@01 n$0@122@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@122@01 g@55@01)
  (and
    (Set_in n$0@122@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) n$0@122@01))))
(assert (or (Set_in n$0@122@01 g@55@01) (not (Set_in n$0@122@01 g@55@01))))
(push) ; 7
; [then-branch: 36 | n$0@122@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@122@01) != Null | live]
; [else-branch: 36 | !(n$0@122@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@122@01) != Null) | live]
(push) ; 8
; [then-branch: 36 | n$0@122@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@122@01) != Null]
(assert (and
  (Set_in n$0@122@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) n$0@122@01))
(push) ; 9
(assert (not (and (img@74@01 n$0@122@01) (Set_in (inv@73@01 n$0@122@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 36 | !(n$0@122@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@122@01) != Null)]
(assert (not
  (and
    (Set_in n$0@122@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
        $Ref.null)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@122@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
        $Ref.null)))
  (and
    (Set_in n$0@122@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) n$0@122@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@122@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
          $Ref.null))))
  (and
    (Set_in n$0@122@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
        $Ref.null)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 6
(assert (not (forall ((n$0@122@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@122@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@122@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@122@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
(assert (forall ((n@117@01 $Ref)) (!
  (=>
    (Set_in n@117@01 g@55@01)
    (and (= (inv@118@01 n@117@01) n@117@01) (img@119@01 n@117@01)))
  :pattern ((Set_in n@117@01 g@55@01))
  :pattern ((inv@118@01 n@117@01))
  :pattern ((img@119@01 n@117@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@119@01 r) (Set_in (inv@118@01 r) g@55@01)) (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r)))
    (=>
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@121@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@118@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r))
    :pattern ((inv@118@01 r))
    :qid |quant-u-23510|))
  (forall ((n$0@122@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@122@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), y, x)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 5
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@123@01 $Ref)
(push) ; 6
; [eval] (n in g)
(assert (Set_in n@123@01 g@55@01))
(pop) ; 6
(declare-fun inv@124@01 ($Ref) $Ref)
(declare-fun img@125@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@126@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@126@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef70|)))
; Check receiver injectivity
(push) ; 6
(assert (not (forall ((n1@123@01 $Ref) (n2@123@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@123@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@126@01  $FVF<next>) n1@123@01) n1@123@01))
      (and
        (Set_in n2@123@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@126@01  $FVF<next>) n2@123@01) n2@123@01))
      (= n1@123@01 n2@123@01))
    (= n1@123@01 n2@123@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@123@01 $Ref)) (!
  (=>
    (Set_in n@123@01 g@55@01)
    (and (= (inv@124@01 n@123@01) n@123@01) (img@125@01 n@123@01)))
  :pattern ((Set_in n@123@01 g@55@01))
  :pattern ((inv@124@01 n@123@01))
  :pattern ((img@125@01 n@123@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@125@01 r) (Set_in (inv@124@01 r) g@55@01)) (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@124@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@126@01  $FVF<next>) r) r))
  :pattern ((inv@124@01 r))
  :qid |quant-u-23513|)))
(push) ; 6
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r) (= r (inv@124@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23514|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(declare-const sm@127@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r)))
    (=>
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@127@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@128@01 $Ref)
(push) ; 6
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 7
; [then-branch: 37 | !(n$0@128@01 in g@55@01) | live]
; [else-branch: 37 | n$0@128@01 in g@55@01 | live]
(push) ; 8
; [then-branch: 37 | !(n$0@128@01 in g@55@01)]
(assert (not (Set_in n$0@128@01 g@55@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 37 | n$0@128@01 in g@55@01]
(assert (Set_in n$0@128@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) n$0@128@01))
(push) ; 9
(assert (not (and (img@60@01 n$0@128@01) (Set_in (inv@59@01 n$0@128@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@128@01 g@55@01)
  (and
    (Set_in n$0@128@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) n$0@128@01))))
(assert (or (Set_in n$0@128@01 g@55@01) (not (Set_in n$0@128@01 g@55@01))))
(push) ; 7
; [then-branch: 38 | n$0@128@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@128@01) != Null | live]
; [else-branch: 38 | !(n$0@128@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@128@01) != Null) | live]
(push) ; 8
; [then-branch: 38 | n$0@128@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@128@01) != Null]
(assert (and
  (Set_in n$0@128@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) n$0@128@01))
(push) ; 9
(assert (not (and (img@60@01 n$0@128@01) (Set_in (inv@59@01 n$0@128@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 9
; 0.00s
; (get-info :all-statistics)
(pop) ; 8
(push) ; 8
; [else-branch: 38 | !(n$0@128@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@128@01) != Null)]
(assert (not
  (and
    (Set_in n$0@128@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
        $Ref.null)))))
(pop) ; 8
(pop) ; 7
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@128@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
        $Ref.null)))
  (and
    (Set_in n$0@128@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) n$0@128@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@128@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
          $Ref.null))))
  (and
    (Set_in n$0@128@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
        $Ref.null)))))
(pop) ; 6
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 6
(assert (not (forall ((n$0@128@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@128@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 6
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@128@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@128@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 5
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@126@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef70|)))
(assert (forall ((n@123@01 $Ref)) (!
  (=>
    (Set_in n@123@01 g@55@01)
    (and (= (inv@124@01 n@123@01) n@123@01) (img@125@01 n@123@01)))
  :pattern ((Set_in n@123@01 g@55@01))
  :pattern ((inv@124@01 n@123@01))
  :pattern ((img@125@01 n@123@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@125@01 r) (Set_in (inv@124@01 r) g@55@01)) (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r)))
    (=>
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@127@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@124@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@126@01  $FVF<next>) r) r))
    :pattern ((inv@124@01 r))
    :qid |quant-u-23513|))
  (forall ((n$0@128@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@128@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 4
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@120@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef64|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@120@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef65|)))
(assert (forall ((n@117@01 $Ref)) (!
  (=>
    (Set_in n@117@01 g@55@01)
    (and (= (inv@118@01 n@117@01) n@117@01) (img@119@01 n@117@01)))
  :pattern ((Set_in n@117@01 g@55@01))
  :pattern ((inv@118@01 n@117@01))
  :pattern ((img@119@01 n@117@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@119@01 r) (Set_in (inv@118@01 r) g@55@01)) (= (inv@118@01 r) r))
  :pattern ((inv@118@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r)))
    (=>
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@121@01  $FVF<next>))))
  :qid |qp.fvfDomDef68|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@118@01 r) g@55@01) (img@119@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@121@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef66|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@121@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef67|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@126@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef69|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@126@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef70|)))
(assert (forall ((n@123@01 $Ref)) (!
  (=>
    (Set_in n@123@01 g@55@01)
    (and (= (inv@124@01 n@123@01) n@123@01) (img@125@01 n@123@01)))
  :pattern ((Set_in n@123@01 g@55@01))
  :pattern ((inv@124@01 n@123@01))
  :pattern ((img@125@01 n@123@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@125@01 r) (Set_in (inv@124@01 r) g@55@01)) (= (inv@124@01 r) r))
  :pattern ((inv@124@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r)))
    (=>
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@127@01  $FVF<next>))))
  :qid |qp.fvfDomDef73|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@124@01 r) g@55@01) (img@125@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@127@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef71|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@127@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef72|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@118@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@120@01  $FVF<next>) r) r))
  :pattern ((inv@118@01 r))
  :qid |quant-u-23510|)))
(assert (forall ((n$0@122@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@122@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@122@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@124@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@126@01  $FVF<next>) r) r))
  :pattern ((inv@124@01 r))
  :qid |quant-u-23513|)))
(assert (forall ((n$0@128@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@128@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@128@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@115@01 $Ref) (y@116@01 $Ref)) (!
  (and
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
        $Snap.unit)) g@55@01)
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
        $Snap.unit)) g@55@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@115@01 y@116@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
      $Snap.unit)) g@55@01) y@116@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@42@16@42@80_precondition|)))
(push) ; 4
(assert (not (forall ((x@115@01 $Ref) (y@116@01 $Ref)) (!
  (=>
    (and
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
          $Snap.unit)) g@55@01)
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
          $Snap.unit)) g@55@01))
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@115@01 y@116@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
          $Snap.unit)) g@55@01) y@116@01 x@115@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@115@01 y@116@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
      $Snap.unit)) g@55@01) y@116@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@42@16@42@80|))))
(check-sat)
; unsat
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(assert (forall ((x@115@01 $Ref) (y@116@01 $Ref)) (!
  (=
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
        $Snap.unit)) g@55@01) x@115@01 y@116@01)
    (foo<Bool> (hfun ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
        $Snap.unit)) g@55@01) y@116@01 x@115@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@121@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@115@01 y@116@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@127@01  $FVF<next>))
      $Snap.unit)) g@55@01) y@116@01 x@115@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@42@16@42@80|)))
; [exec]
; inhale false
(pop) ; 3
(push) ; 3
; [else-branch: 34 | !(b1@63@01)]
(assert (not b1@63@01))
(pop) ; 3
; [eval] !b1
(push) ; 3
(set-option :timeout 10)
(assert (not b1@63@01))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not b1@63@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.01s
; (get-info :all-statistics)
; [then-branch: 39 | !(b1@63@01) | live]
; [else-branch: 39 | b1@63@01 | live]
(set-option :timeout 0)
(push) ; 3
; [then-branch: 39 | !(b1@63@01)]
(assert (not b1@63@01))
(push) ; 4
(set-option :timeout 10)
(assert (not (not b2@64@01)))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not b2@64@01))
(check-sat)
; unknown
(pop) ; 4
; 0.01s
; (get-info :all-statistics)
; [then-branch: 40 | b2@64@01 | live]
; [else-branch: 40 | !(b2@64@01) | live]
(set-option :timeout 0)
(push) ; 4
; [then-branch: 40 | b2@64@01]
(assert b2@64@01)
; [exec]
; assert (forall x: Ref, y: Ref ::
;     { foo(hfun(g), x, y) }
;     { foo(old(hfun(g)), x, y) }
;     foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
(declare-const x@129@01 $Ref)
(declare-const y@130@01 $Ref)
(push) ; 5
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@131@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@131@01 g@55@01))
(pop) ; 7
(declare-fun inv@132@01 ($Ref) $Ref)
(declare-fun img@133@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@134@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@134@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef75|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@131@01 $Ref) (n2@131@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@131@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@134@01  $FVF<next>) n1@131@01) n1@131@01))
      (and
        (Set_in n2@131@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@134@01  $FVF<next>) n2@131@01) n2@131@01))
      (= n1@131@01 n2@131@01))
    (= n1@131@01 n2@131@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@131@01 $Ref)) (!
  (=>
    (Set_in n@131@01 g@55@01)
    (and (= (inv@132@01 n@131@01) n@131@01) (img@133@01 n@131@01)))
  :pattern ((Set_in n@131@01 g@55@01))
  :pattern ((inv@132@01 n@131@01))
  :pattern ((img@133@01 n@131@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@133@01 r) (Set_in (inv@132@01 r) g@55@01)) (= (inv@132@01 r) r))
  :pattern ((inv@132@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@132@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@134@01  $FVF<next>) r) r))
  :pattern ((inv@132@01 r))
  :qid |quant-u-23516|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r) (= r (inv@132@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23517|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@135@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r)))
    (=>
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>))))
  :qid |qp.fvfDomDef78|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@135@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef77|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@136@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 41 | !(n$0@136@01 in g@55@01) | live]
; [else-branch: 41 | n$0@136@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 41 | !(n$0@136@01 in g@55@01)]
(assert (not (Set_in n$0@136@01 g@55@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 41 | n$0@136@01 in g@55@01]
(assert (Set_in n$0@136@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) n$0@136@01))
(push) ; 10
(assert (not (and (img@74@01 n$0@136@01) (Set_in (inv@73@01 n$0@136@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@136@01 g@55@01)
  (and
    (Set_in n$0@136@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) n$0@136@01))))
(assert (or (Set_in n$0@136@01 g@55@01) (not (Set_in n$0@136@01 g@55@01))))
(push) ; 8
; [then-branch: 42 | n$0@136@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@136@01) != Null | live]
; [else-branch: 42 | !(n$0@136@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@136@01) != Null) | live]
(push) ; 9
; [then-branch: 42 | n$0@136@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@136@01) != Null]
(assert (and
  (Set_in n$0@136@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) n$0@136@01))
(push) ; 10
(assert (not (and (img@74@01 n$0@136@01) (Set_in (inv@73@01 n$0@136@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 42 | !(n$0@136@01 in g@55@01 && Lookup(next, First:(Second:($t@70@01)), n$0@136@01) != Null)]
(assert (not
  (and
    (Set_in n$0@136@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
        $Ref.null)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@136@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
        $Ref.null)))
  (and
    (Set_in n$0@136@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) n$0@136@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@136@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
          $Ref.null))))
  (and
    (Set_in n$0@136@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
        $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((n$0@136@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@136@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@136@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@136@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@134@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef75|)))
(assert (forall ((n@131@01 $Ref)) (!
  (=>
    (Set_in n@131@01 g@55@01)
    (and (= (inv@132@01 n@131@01) n@131@01) (img@133@01 n@131@01)))
  :pattern ((Set_in n@131@01 g@55@01))
  :pattern ((inv@132@01 n@131@01))
  :pattern ((img@133@01 n@131@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@133@01 r) (Set_in (inv@132@01 r) g@55@01)) (= (inv@132@01 r) r))
  :pattern ((inv@132@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r)))
    (=>
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>))))
  :qid |qp.fvfDomDef78|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@135@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef77|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@132@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@134@01  $FVF<next>) r) r))
    :pattern ((inv@132@01 r))
    :qid |quant-u-23516|))
  (forall ((n$0@136@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@136@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [eval] hfun(g)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@137@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@137@01 g@55@01))
(pop) ; 7
(declare-fun inv@138@01 ($Ref) $Ref)
(declare-fun img@139@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(declare-const sm@140@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@140@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef80|)))
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@137@01 $Ref) (n2@137@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@137@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) n1@137@01) n1@137@01))
      (and
        (Set_in n2@137@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) n2@137@01) n2@137@01))
      (= n1@137@01 n2@137@01))
    (= n1@137@01 n2@137@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@137@01 $Ref)) (!
  (=>
    (Set_in n@137@01 g@55@01)
    (and (= (inv@138@01 n@137@01) n@137@01) (img@139@01 n@137@01)))
  :pattern ((Set_in n@137@01 g@55@01))
  :pattern ((inv@138@01 n@137@01))
  :pattern ((img@139@01 n@137@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@139@01 r) (Set_in (inv@138@01 r) g@55@01)) (= (inv@138@01 r) r))
  :pattern ((inv@138@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@138@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) r) r))
  :pattern ((inv@138@01 r))
  :qid |quant-u-23519|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r) (= r (inv@138@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23520|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@141@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r)))
    (=>
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>))))
  :qid |qp.fvfDomDef83|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@141@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef82|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@142@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 43 | !(n$0@142@01 in g@55@01) | live]
; [else-branch: 43 | n$0@142@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 43 | !(n$0@142@01 in g@55@01)]
(assert (not (Set_in n$0@142@01 g@55@01)))
(pop) ; 9
(push) ; 9
; [else-branch: 43 | n$0@142@01 in g@55@01]
(assert (Set_in n$0@142@01 g@55@01))
; [eval] n$0.next != null
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) n$0@142@01))
(push) ; 10
(assert (not (and (img@60@01 n$0@142@01) (Set_in (inv@59@01 n$0@142@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
; Joined path conditions
(assert (=>
  (Set_in n$0@142@01 g@55@01)
  (and
    (Set_in n$0@142@01 g@55@01)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) n$0@142@01))))
(assert (or (Set_in n$0@142@01 g@55@01) (not (Set_in n$0@142@01 g@55@01))))
(push) ; 8
; [then-branch: 44 | n$0@142@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@142@01) != Null | live]
; [else-branch: 44 | !(n$0@142@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@142@01) != Null) | live]
(push) ; 9
; [then-branch: 44 | n$0@142@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@142@01) != Null]
(assert (and
  (Set_in n$0@142@01 g@55@01)
  (not
    (=
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
      $Ref.null))))
; [eval] (n$0.next in g)
(assert ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) n$0@142@01))
(push) ; 10
(assert (not (and (img@60@01 n$0@142@01) (Set_in (inv@59@01 n$0@142@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 44 | !(n$0@142@01 in g@55@01 && Lookup(next, First:(Second:($t@56@01)), n$0@142@01) != Null)]
(assert (not
  (and
    (Set_in n$0@142@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
        $Ref.null)))))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (=>
  (and
    (Set_in n$0@142@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
        $Ref.null)))
  (and
    (Set_in n$0@142@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
        $Ref.null))
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) n$0@142@01))))
; Joined path conditions
(assert (or
  (not
    (and
      (Set_in n$0@142@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
          $Ref.null))))
  (and
    (Set_in n$0@142@01 g@55@01)
    (not
      (=
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
        $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
; Nested auxiliary terms: non-globals (aux)
(push) ; 7
(assert (not (forall ((n$0@142@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@142@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@142@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@142@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@140@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef80|)))
(assert (forall ((n@137@01 $Ref)) (!
  (=>
    (Set_in n@137@01 g@55@01)
    (and (= (inv@138@01 n@137@01) n@137@01) (img@139@01 n@137@01)))
  :pattern ((Set_in n@137@01 g@55@01))
  :pattern ((inv@138@01 n@137@01))
  :pattern ((img@139@01 n@137@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@139@01 r) (Set_in (inv@138@01 r) g@55@01)) (= (inv@138@01 r) r))
  :pattern ((inv@138@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r)))
    (=>
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>))))
  :qid |qp.fvfDomDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@141@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef82|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@138@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) r) r))
    :pattern ((inv@138@01 r))
    :qid |quant-u-23519|))
  (forall ((n$0@142@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@142@01 g@55@01)
        (not
          (=
            ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
            $Ref.null)))
      (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@134@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef74|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@134@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef75|)))
(assert (forall ((n@131@01 $Ref)) (!
  (=>
    (Set_in n@131@01 g@55@01)
    (and (= (inv@132@01 n@131@01) n@131@01) (img@133@01 n@131@01)))
  :pattern ((Set_in n@131@01 g@55@01))
  :pattern ((inv@132@01 n@131@01))
  :pattern ((img@133@01 n@131@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@133@01 r) (Set_in (inv@132@01 r) g@55@01)) (= (inv@132@01 r) r))
  :pattern ((inv@132@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r)))
    (=>
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@135@01  $FVF<next>))))
  :qid |qp.fvfDomDef78|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@132@01 r) g@55@01) (img@133@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@135@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef76|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@135@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef77|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@140@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef79|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@140@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef80|)))
(assert (forall ((n@137@01 $Ref)) (!
  (=>
    (Set_in n@137@01 g@55@01)
    (and (= (inv@138@01 n@137@01) n@137@01) (img@139@01 n@137@01)))
  :pattern ((Set_in n@137@01 g@55@01))
  :pattern ((inv@138@01 n@137@01))
  :pattern ((img@139@01 n@137@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@139@01 r) (Set_in (inv@138@01 r) g@55@01)) (= (inv@138@01 r) r))
  :pattern ((inv@138@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r)))
    (=>
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@141@01  $FVF<next>))))
  :qid |qp.fvfDomDef83|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@138@01 r) g@55@01) (img@139@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@141@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef81|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@141@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef82|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@132@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@134@01  $FVF<next>) r) r))
  :pattern ((inv@132@01 r))
  :qid |quant-u-23516|)))
(assert (forall ((n$0@136@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@136@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) n$0@136@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@138@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@140@01  $FVF<next>) r) r))
  :pattern ((inv@138@01 r))
  :qid |quant-u-23519|)))
(assert (forall ((n$0@142@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@142@01 g@55@01)
      (not
        (=
          ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01)
          $Ref.null)))
    (Set_in ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) n$0@142@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@129@01 $Ref) (y@130@01 $Ref)) (!
  (and
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
        $Snap.unit)) g@55@01)
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
        $Snap.unit)) g@55@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@129@01 y@130@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@129@01 y@130@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80_precondition|)))
(push) ; 5
(assert (not (forall ((x@129@01 $Ref) (y@130@01 $Ref)) (!
  (=>
    (and
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
          $Snap.unit)) g@55@01)
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
          $Snap.unit)) g@55@01))
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@129@01 y@130@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@129@01 y@130@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@135@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@129@01 y@130@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@141@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@129@01 y@130@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80|))))
(check-sat)
; unknown
(pop) ; 5
; 0.30s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@143@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@143@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef84|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@143@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef85|)))
(declare-const pm@144@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@144@01  $FPM) r)
    (ite (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@144@01  $FPM) r))
  :qid |qp.resPrmSumDef86|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r))
  :pattern (($FVF.perm_next (as pm@144@01  $FPM) r))
  :qid |qp.resTrgDef87|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
(declare-const x@145@01 $Ref)
(declare-const y@146@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@147@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@147@01 g@55@01))
(pop) ; 7
(declare-fun inv@148@01 ($Ref) $Ref)
(declare-fun img@149@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@147@01 $Ref) (n2@147@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@147@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) n1@147@01) n1@147@01))
      (and
        (Set_in n2@147@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) n2@147@01) n2@147@01))
      (= n1@147@01 n2@147@01))
    (= n1@147@01 n2@147@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@147@01 $Ref)) (!
  (=>
    (Set_in n@147@01 g@55@01)
    (and (= (inv@148@01 n@147@01) n@147@01) (img@149@01 n@147@01)))
  :pattern ((Set_in n@147@01 g@55@01))
  :pattern ((inv@148@01 n@147@01))
  :pattern ((img@149@01 n@147@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@149@01 r) (Set_in (inv@148@01 r) g@55@01)) (= (inv@148@01 r) r))
  :pattern ((inv@148@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@148@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) r) r))
  :pattern ((inv@148@01 r))
  :qid |quant-u-23522|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r) (= r (inv@148@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23523|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@150@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r)))
    (=>
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>))))
  :qid |qp.fvfDomDef90|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@150@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@151@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 45 | !(n$0@151@01 in g@55@01) | live]
; [else-branch: 45 | n$0@151@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 45 | !(n$0@151@01 in g@55@01)]
(assert (not (Set_in n$0@151@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@152@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@152@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@152@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 45 | n$0@151@01 in g@55@01]
(assert (Set_in n$0@151@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@153@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef93|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef94|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) n$0@151@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@151@01) (Set_in (inv@73@01 n$0@151@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@152@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (=>
  (not (Set_in n$0@151@01 g@55@01))
  (and
    (not (Set_in n$0@151@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@152@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (=>
  (Set_in n$0@151@01 g@55@01)
  (and
    (Set_in n$0@151@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) n$0@151@01))))
(assert (or (Set_in n$0@151@01 g@55@01) (not (Set_in n$0@151@01 g@55@01))))
(push) ; 8
; [then-branch: 46 | n$0@151@01 in g@55@01 && Lookup(next, sm@153@01, n$0@151@01) != Null | live]
; [else-branch: 46 | !(n$0@151@01 in g@55@01 && Lookup(next, sm@153@01, n$0@151@01) != Null) | live]
(push) ; 9
; [then-branch: 46 | n$0@151@01 in g@55@01 && Lookup(next, sm@153@01, n$0@151@01) != Null]
(assert (and
  (Set_in n$0@151@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef93|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef94|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) n$0@151@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@151@01) (Set_in (inv@73@01 n$0@151@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 46 | !(n$0@151@01 in g@55@01 && Lookup(next, sm@153@01, n$0@151@01) != Null)]
(assert (not
  (and
    (Set_in n$0@151@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (=>
  (and
    (Set_in n$0@151@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))
  (and
    (Set_in n$0@151@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) n$0@151@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@151@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@151@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@144@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@153@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@151@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null))))
  (and
    (Set_in n$0@151@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@152@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@151@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@151@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@151@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@151@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@147@01 $Ref)) (!
  (=>
    (Set_in n@147@01 g@55@01)
    (and (= (inv@148@01 n@147@01) n@147@01) (img@149@01 n@147@01)))
  :pattern ((Set_in n@147@01 g@55@01))
  :pattern ((inv@148@01 n@147@01))
  :pattern ((img@149@01 n@147@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@149@01 r) (Set_in (inv@148@01 r) g@55@01)) (= (inv@148@01 r) r))
  :pattern ((inv@148@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r)))
    (=>
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>))))
  :qid |qp.fvfDomDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@150@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@152@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@148@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) r) r))
    :pattern ((inv@148@01 r))
    :qid |quant-u-23522|))
  (forall ((n$0@151@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@151@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@154@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(declare-const pm@155@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@155@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@155@01  $FPM) r))
  :qid |qp.resPrmSumDef97|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@155@01  $FPM) r))
  :qid |qp.resTrgDef98|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] hfun(g)
(set-option :timeout 0)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@156@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@156@01 g@55@01))
(pop) ; 7
(declare-fun inv@157@01 ($Ref) $Ref)
(declare-fun img@158@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@156@01 $Ref) (n2@156@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@156@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) n1@156@01) n1@156@01))
      (and
        (Set_in n2@156@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) n2@156@01) n2@156@01))
      (= n1@156@01 n2@156@01))
    (= n1@156@01 n2@156@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@156@01 $Ref)) (!
  (=>
    (Set_in n@156@01 g@55@01)
    (and (= (inv@157@01 n@156@01) n@156@01) (img@158@01 n@156@01)))
  :pattern ((Set_in n@156@01 g@55@01))
  :pattern ((inv@157@01 n@156@01))
  :pattern ((img@158@01 n@156@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@158@01 r) (Set_in (inv@157@01 r) g@55@01)) (= (inv@157@01 r) r))
  :pattern ((inv@157@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@157@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r))
  :pattern ((inv@157@01 r))
  :qid |quant-u-23525|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r) (= r (inv@157@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23526|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@159@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r)))
    (=>
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>))))
  :qid |qp.fvfDomDef101|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@159@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef99|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef100|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@160@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 47 | !(n$0@160@01 in g@55@01) | live]
; [else-branch: 47 | n$0@160@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 47 | !(n$0@160@01 in g@55@01)]
(assert (not (Set_in n$0@160@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@161@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@161@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@161@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 47 | n$0@160@01 in g@55@01]
(assert (Set_in n$0@160@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@162@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef104|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef105|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) n$0@160@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@160@01) (Set_in (inv@59@01 n$0@160@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@161@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (=>
  (not (Set_in n$0@160@01 g@55@01))
  (and
    (not (Set_in n$0@160@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@161@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (=>
  (Set_in n$0@160@01 g@55@01)
  (and
    (Set_in n$0@160@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) n$0@160@01))))
(assert (or (Set_in n$0@160@01 g@55@01) (not (Set_in n$0@160@01 g@55@01))))
(push) ; 8
; [then-branch: 48 | n$0@160@01 in g@55@01 && Lookup(next, sm@162@01, n$0@160@01) != Null | live]
; [else-branch: 48 | !(n$0@160@01 in g@55@01 && Lookup(next, sm@162@01, n$0@160@01) != Null) | live]
(push) ; 9
; [then-branch: 48 | n$0@160@01 in g@55@01 && Lookup(next, sm@162@01, n$0@160@01) != Null]
(assert (and
  (Set_in n$0@160@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef104|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef105|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) n$0@160@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@160@01) (Set_in (inv@59@01 n$0@160@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 48 | !(n$0@160@01 in g@55@01 && Lookup(next, sm@162@01, n$0@160@01) != Null)]
(assert (not
  (and
    (Set_in n$0@160@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (=>
  (and
    (Set_in n$0@160@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))
  (and
    (Set_in n$0@160@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) n$0@160@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@160@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@160@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@162@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@160@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null))))
  (and
    (Set_in n$0@160@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@161@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@160@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@160@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@160@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@160@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@156@01 $Ref)) (!
  (=>
    (Set_in n@156@01 g@55@01)
    (and (= (inv@157@01 n@156@01) n@156@01) (img@158@01 n@156@01)))
  :pattern ((Set_in n@156@01 g@55@01))
  :pattern ((inv@157@01 n@156@01))
  :pattern ((img@158@01 n@156@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@158@01 r) (Set_in (inv@157@01 r) g@55@01)) (= (inv@157@01 r) r))
  :pattern ((inv@157@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r)))
    (=>
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>))))
  :qid |qp.fvfDomDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@159@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef99|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@161@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@157@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r))
    :pattern ((inv@157@01 r))
    :qid |quant-u-23525|))
  (forall ((n$0@160@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@160@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@147@01 $Ref)) (!
  (=>
    (Set_in n@147@01 g@55@01)
    (and (= (inv@148@01 n@147@01) n@147@01) (img@149@01 n@147@01)))
  :pattern ((Set_in n@147@01 g@55@01))
  :pattern ((inv@148@01 n@147@01))
  :pattern ((img@149@01 n@147@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@149@01 r) (Set_in (inv@148@01 r) g@55@01)) (= (inv@148@01 r) r))
  :pattern ((inv@148@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r)))
    (=>
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@150@01  $FVF<next>))))
  :qid |qp.fvfDomDef90|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@148@01 r) g@55@01) (img@149@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@150@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef88|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@150@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef89|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@152@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef91|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@152@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef92|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@153@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef93|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@153@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef94|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@154@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef95|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@154@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef96|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@155@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@155@01  $FPM) r))
  :qid |qp.resPrmSumDef97|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@155@01  $FPM) r))
  :qid |qp.resTrgDef98|)))
(assert (forall ((n@156@01 $Ref)) (!
  (=>
    (Set_in n@156@01 g@55@01)
    (and (= (inv@157@01 n@156@01) n@156@01) (img@158@01 n@156@01)))
  :pattern ((Set_in n@156@01 g@55@01))
  :pattern ((inv@157@01 n@156@01))
  :pattern ((img@158@01 n@156@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@158@01 r) (Set_in (inv@157@01 r) g@55@01)) (= (inv@157@01 r) r))
  :pattern ((inv@157@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r)))
    (=>
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@159@01  $FVF<next>))))
  :qid |qp.fvfDomDef101|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@157@01 r) g@55@01) (img@158@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@159@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef99|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@159@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef100|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@161@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef102|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@161@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef103|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@162@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef104|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@162@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef105|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@148@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@143@01  $FVF<next>) r) r))
  :pattern ((inv@148@01 r))
  :qid |quant-u-23522|)))
(assert (forall ((n$0@151@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@151@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@153@01  $FVF<next>) n$0@151@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@155@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@157@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@154@01  $FVF<next>) r) r))
  :pattern ((inv@157@01 r))
  :qid |quant-u-23525|)))
(assert (forall ((n$0@160@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@160@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@162@01  $FVF<next>) n$0@160@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@145@01 $Ref) (y@146@01 $Ref)) (!
  (and
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
        $Snap.unit)) g@55@01)
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
        $Snap.unit)) g@55@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@145@01 y@146@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@145@01 y@146@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80_precondition|)))
(push) ; 5
(assert (not (forall ((x@145@01 $Ref) (y@146@01 $Ref)) (!
  (=>
    (and
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
          $Snap.unit)) g@55@01)
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
          $Snap.unit)) g@55@01))
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@145@01 y@146@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@145@01 y@146@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@150@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@145@01 y@146@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@159@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@145@01 y@146@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80|))))
(check-sat)
; unknown
(pop) ; 5
; 0.49s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@163@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@163@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@163@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef106|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@163@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef107|)))
(declare-const pm@164@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@164@01  $FPM) r)
    (ite (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@164@01  $FPM) r))
  :qid |qp.resPrmSumDef108|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r))
  :pattern (($FVF.perm_next (as pm@164@01  $FPM) r))
  :qid |qp.resTrgDef109|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
(declare-const x@165@01 $Ref)
(declare-const y@166@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@167@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@167@01 g@55@01))
(pop) ; 7
(declare-fun inv@168@01 ($Ref) $Ref)
(declare-fun img@169@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@167@01 $Ref) (n2@167@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@167@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) n1@167@01) n1@167@01))
      (and
        (Set_in n2@167@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) n2@167@01) n2@167@01))
      (= n1@167@01 n2@167@01))
    (= n1@167@01 n2@167@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@167@01 $Ref)) (!
  (=>
    (Set_in n@167@01 g@55@01)
    (and (= (inv@168@01 n@167@01) n@167@01) (img@169@01 n@167@01)))
  :pattern ((Set_in n@167@01 g@55@01))
  :pattern ((inv@168@01 n@167@01))
  :pattern ((img@169@01 n@167@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@169@01 r) (Set_in (inv@168@01 r) g@55@01)) (= (inv@168@01 r) r))
  :pattern ((inv@168@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@168@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
  :pattern ((inv@168@01 r))
  :qid |quant-u-23528|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r) (= r (inv@168@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23529|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@170@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r)))
    (=>
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>))))
  :qid |qp.fvfDomDef112|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@170@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef110|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef111|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@171@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 49 | !(n$0@171@01 in g@55@01) | live]
; [else-branch: 49 | n$0@171@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 49 | !(n$0@171@01 in g@55@01)]
(assert (not (Set_in n$0@171@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@172@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@172@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef113|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef114|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@172@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 49 | n$0@171@01 in g@55@01]
(assert (Set_in n$0@171@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@173@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef115|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef116|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) n$0@171@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@171@01) (Set_in (inv@73@01 n$0@171@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@172@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef113|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef114|)))
(assert (=>
  (not (Set_in n$0@171@01 g@55@01))
  (and
    (not (Set_in n$0@171@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@172@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (=>
  (Set_in n$0@171@01 g@55@01)
  (and
    (Set_in n$0@171@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) n$0@171@01))))
(assert (or (Set_in n$0@171@01 g@55@01) (not (Set_in n$0@171@01 g@55@01))))
(push) ; 8
; [then-branch: 50 | n$0@171@01 in g@55@01 && Lookup(next, sm@173@01, n$0@171@01) != Null | live]
; [else-branch: 50 | !(n$0@171@01 in g@55@01 && Lookup(next, sm@173@01, n$0@171@01) != Null) | live]
(push) ; 9
; [then-branch: 50 | n$0@171@01 in g@55@01 && Lookup(next, sm@173@01, n$0@171@01) != Null]
(assert (and
  (Set_in n$0@171@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef115|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef116|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) n$0@171@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@171@01) (Set_in (inv@73@01 n$0@171@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 50 | !(n$0@171@01 in g@55@01 && Lookup(next, sm@173@01, n$0@171@01) != Null)]
(assert (not
  (and
    (Set_in n$0@171@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (=>
  (and
    (Set_in n$0@171@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))
  (and
    (Set_in n$0@171@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) n$0@171@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@171@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@171@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@173@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@171@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null))))
  (and
    (Set_in n$0@171@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@172@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef113|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@171@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@171@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@171@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@171@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@167@01 $Ref)) (!
  (=>
    (Set_in n@167@01 g@55@01)
    (and (= (inv@168@01 n@167@01) n@167@01) (img@169@01 n@167@01)))
  :pattern ((Set_in n@167@01 g@55@01))
  :pattern ((inv@168@01 n@167@01))
  :pattern ((img@169@01 n@167@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@169@01 r) (Set_in (inv@168@01 r) g@55@01)) (= (inv@168@01 r) r))
  :pattern ((inv@168@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r)))
    (=>
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>))))
  :qid |qp.fvfDomDef112|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@170@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef110|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@172@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef113|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@168@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
    :pattern ((inv@168@01 r))
    :qid |quant-u-23528|))
  (forall ((n$0@171@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@171@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@174@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@174@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef117|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef118|)))
(declare-const pm@175@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@175@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@175@01  $FPM) r))
  :qid |qp.resPrmSumDef119|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@175@01  $FPM) r))
  :qid |qp.resTrgDef120|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] hfun(g)
(set-option :timeout 0)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@176@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@176@01 g@55@01))
(pop) ; 7
(declare-fun inv@177@01 ($Ref) $Ref)
(declare-fun img@178@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@176@01 $Ref) (n2@176@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@176@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) n1@176@01) n1@176@01))
      (and
        (Set_in n2@176@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) n2@176@01) n2@176@01))
      (= n1@176@01 n2@176@01))
    (= n1@176@01 n2@176@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@176@01 $Ref)) (!
  (=>
    (Set_in n@176@01 g@55@01)
    (and (= (inv@177@01 n@176@01) n@176@01) (img@178@01 n@176@01)))
  :pattern ((Set_in n@176@01 g@55@01))
  :pattern ((inv@177@01 n@176@01))
  :pattern ((img@178@01 n@176@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@178@01 r) (Set_in (inv@177@01 r) g@55@01)) (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@177@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r))
  :pattern ((inv@177@01 r))
  :qid |quant-u-23531|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r) (= r (inv@177@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23532|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@179@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r)))
    (=>
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@179@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@180@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 51 | !(n$0@180@01 in g@55@01) | live]
; [else-branch: 51 | n$0@180@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 51 | !(n$0@180@01 in g@55@01)]
(assert (not (Set_in n$0@180@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@181@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@181@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 51 | n$0@180@01 in g@55@01]
(assert (Set_in n$0@180@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@182@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef126|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef127|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) n$0@180@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@180@01) (Set_in (inv@59@01 n$0@180@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (=>
  (not (Set_in n$0@180@01 g@55@01))
  (and
    (not (Set_in n$0@180@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@181@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (=>
  (Set_in n$0@180@01 g@55@01)
  (and
    (Set_in n$0@180@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) n$0@180@01))))
(assert (or (Set_in n$0@180@01 g@55@01) (not (Set_in n$0@180@01 g@55@01))))
(push) ; 8
; [then-branch: 52 | n$0@180@01 in g@55@01 && Lookup(next, sm@182@01, n$0@180@01) != Null | live]
; [else-branch: 52 | !(n$0@180@01 in g@55@01 && Lookup(next, sm@182@01, n$0@180@01) != Null) | live]
(push) ; 9
; [then-branch: 52 | n$0@180@01 in g@55@01 && Lookup(next, sm@182@01, n$0@180@01) != Null]
(assert (and
  (Set_in n$0@180@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef126|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef127|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) n$0@180@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@180@01) (Set_in (inv@59@01 n$0@180@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 52 | !(n$0@180@01 in g@55@01 && Lookup(next, sm@182@01, n$0@180@01) != Null)]
(assert (not
  (and
    (Set_in n$0@180@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (=>
  (and
    (Set_in n$0@180@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))
  (and
    (Set_in n$0@180@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) n$0@180@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@180@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@180@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@182@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@180@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null))))
  (and
    (Set_in n$0@180@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@180@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@180@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@180@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@180@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@176@01 $Ref)) (!
  (=>
    (Set_in n@176@01 g@55@01)
    (and (= (inv@177@01 n@176@01) n@176@01) (img@178@01 n@176@01)))
  :pattern ((Set_in n@176@01 g@55@01))
  :pattern ((inv@177@01 n@176@01))
  :pattern ((img@178@01 n@176@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@178@01 r) (Set_in (inv@177@01 r) g@55@01)) (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r)))
    (=>
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@179@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@177@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r))
    :pattern ((inv@177@01 r))
    :qid |quant-u-23531|))
  (forall ((n$0@180@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@180@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@167@01 $Ref)) (!
  (=>
    (Set_in n@167@01 g@55@01)
    (and (= (inv@168@01 n@167@01) n@167@01) (img@169@01 n@167@01)))
  :pattern ((Set_in n@167@01 g@55@01))
  :pattern ((inv@168@01 n@167@01))
  :pattern ((img@169@01 n@167@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@169@01 r) (Set_in (inv@168@01 r) g@55@01)) (= (inv@168@01 r) r))
  :pattern ((inv@168@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r)))
    (=>
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@170@01  $FVF<next>))))
  :qid |qp.fvfDomDef112|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@168@01 r) g@55@01) (img@169@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@170@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef110|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@170@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef111|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@172@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef113|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@172@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef114|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@173@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef115|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@173@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef116|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@174@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef117|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@174@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef118|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@175@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@175@01  $FPM) r))
  :qid |qp.resPrmSumDef119|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@175@01  $FPM) r))
  :qid |qp.resTrgDef120|)))
(assert (forall ((n@176@01 $Ref)) (!
  (=>
    (Set_in n@176@01 g@55@01)
    (and (= (inv@177@01 n@176@01) n@176@01) (img@178@01 n@176@01)))
  :pattern ((Set_in n@176@01 g@55@01))
  :pattern ((inv@177@01 n@176@01))
  :pattern ((img@178@01 n@176@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@178@01 r) (Set_in (inv@177@01 r) g@55@01)) (= (inv@177@01 r) r))
  :pattern ((inv@177@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r)))
    (=>
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@179@01  $FVF<next>))))
  :qid |qp.fvfDomDef123|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@177@01 r) g@55@01) (img@178@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@179@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef121|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@179@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef122|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@181@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef124|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@181@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef125|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@182@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef126|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@182@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef127|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@168@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
  :pattern ((inv@168@01 r))
  :qid |quant-u-23528|)))
(assert (forall ((n$0@171@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@171@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@173@01  $FVF<next>) n$0@171@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@175@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@177@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@174@01  $FVF<next>) r) r))
  :pattern ((inv@177@01 r))
  :qid |quant-u-23531|)))
(assert (forall ((n$0@180@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@180@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@182@01  $FVF<next>) n$0@180@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@165@01 $Ref) (y@166@01 $Ref)) (!
  (and
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
        $Snap.unit)) g@55@01)
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
        $Snap.unit)) g@55@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@165@01 y@166@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@165@01 y@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80_precondition|)))
(push) ; 5
(assert (not (forall ((x@165@01 $Ref) (y@166@01 $Ref)) (!
  (=>
    (and
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
          $Snap.unit)) g@55@01)
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
          $Snap.unit)) g@55@01))
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@165@01 y@166@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@165@01 y@166@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@170@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@165@01 y@166@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@179@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@165@01 y@166@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80|))))
(check-sat)
; unknown
(pop) ; 5
; 0.78s
; (get-info :all-statistics)
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
; [eval] (forall x: Ref, y: Ref :: { foo(hfun(g), x, y) } { foo(old(hfun(g)), x, y) } foo(hfun(g), x, y) == foo(old(hfun(g)), x, y))
(declare-const x@183@01 $Ref)
(declare-const y@184@01 $Ref)
(set-option :timeout 0)
(push) ; 5
; [eval] foo(hfun(g), x, y) == foo(old(hfun(g)), x, y)
; [eval] foo(hfun(g), x, y)
; [eval] hfun(g)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@185@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@185@01 g@55@01))
(pop) ; 7
(declare-fun inv@186@01 ($Ref) $Ref)
(declare-fun img@187@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@185@01 $Ref) (n2@185@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@185@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) n1@185@01) n1@185@01))
      (and
        (Set_in n2@185@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) n2@185@01) n2@185@01))
      (= n1@185@01 n2@185@01))
    (= n1@185@01 n2@185@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@185@01 $Ref)) (!
  (=>
    (Set_in n@185@01 g@55@01)
    (and (= (inv@186@01 n@185@01) n@185@01) (img@187@01 n@185@01)))
  :pattern ((Set_in n@185@01 g@55@01))
  :pattern ((inv@186@01 n@185@01))
  :pattern ((img@187@01 n@185@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@187@01 r) (Set_in (inv@186@01 r) g@55@01)) (= (inv@186@01 r) r))
  :pattern ((inv@186@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@186@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
  :pattern ((inv@186@01 r))
  :qid |quant-u-23534|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r) (= r (inv@186@01 r)))
    (>
      (ite
        (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23535|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@188@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r)))
    (=>
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>))))
  :qid |qp.fvfDomDef130|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@188@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef128|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef129|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@189@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 53 | !(n$0@189@01 in g@55@01) | live]
; [else-branch: 53 | n$0@189@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 53 | !(n$0@189@01 in g@55@01)]
(assert (not (Set_in n$0@189@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@190@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@190@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@190@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 53 | n$0@189@01 in g@55@01]
(assert (Set_in n$0@189@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@191@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef133|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef134|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) n$0@189@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@189@01) (Set_in (inv@73@01 n$0@189@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@190@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (=>
  (not (Set_in n$0@189@01 g@55@01))
  (and
    (not (Set_in n$0@189@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@190@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert (=>
  (Set_in n$0@189@01 g@55@01)
  (and
    (Set_in n$0@189@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) n$0@189@01))))
(assert (or (Set_in n$0@189@01 g@55@01) (not (Set_in n$0@189@01 g@55@01))))
(push) ; 8
; [then-branch: 54 | n$0@189@01 in g@55@01 && Lookup(next, sm@191@01, n$0@189@01) != Null | live]
; [else-branch: 54 | !(n$0@189@01 in g@55@01 && Lookup(next, sm@191@01, n$0@189@01) != Null) | live]
(push) ; 9
; [then-branch: 54 | n$0@189@01 in g@55@01 && Lookup(next, sm@191@01, n$0@189@01) != Null]
(assert (and
  (Set_in n$0@189@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
    :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
    :qid |qp.fvfValDef133|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef134|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) n$0@189@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@74@01 n$0@189@01) (Set_in (inv@73@01 n$0@189@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 54 | !(n$0@189@01 in g@55@01 && Lookup(next, sm@191@01, n$0@189@01) != Null)]
(assert (not
  (and
    (Set_in n$0@189@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert (=>
  (and
    (Set_in n$0@189@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))
  (and
    (Set_in n$0@189@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) n$0@189@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@189@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@189@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@164@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@191@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@189@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null))))
  (and
    (Set_in n$0@189@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@190@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@189@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@189@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@189@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@189@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@185@01 $Ref)) (!
  (=>
    (Set_in n@185@01 g@55@01)
    (and (= (inv@186@01 n@185@01) n@185@01) (img@187@01 n@185@01)))
  :pattern ((Set_in n@185@01 g@55@01))
  :pattern ((inv@186@01 n@185@01))
  :pattern ((img@187@01 n@185@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@187@01 r) (Set_in (inv@186@01 r) g@55@01)) (= (inv@186@01 r) r))
  :pattern ((inv@186@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r)))
    (=>
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>))))
  :qid |qp.fvfDomDef130|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@188@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef128|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef129|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@190@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@186@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
    :pattern ((inv@186@01 r))
    :qid |quant-u-23534|))
  (forall ((n$0@189@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@189@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
; [eval] foo(old(hfun(g)), x, y)
; [eval] old(hfun(g))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@192@01 $FVF<next>)
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@192@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
(declare-const pm@193@01 $FPM)
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@193@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@193@01  $FPM) r))
  :qid |qp.resPrmSumDef137|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@193@01  $FPM) r))
  :qid |qp.resTrgDef138|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] hfun(g)
(set-option :timeout 0)
(push) ; 6
; [eval] !((null in g))
; [eval] (null in g)
(declare-const n@194@01 $Ref)
(push) ; 7
; [eval] (n in g)
(assert (Set_in n@194@01 g@55@01))
(pop) ; 7
(declare-fun inv@195@01 ($Ref) $Ref)
(declare-fun img@196@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Check receiver injectivity
(push) ; 7
(assert (not (forall ((n1@194@01 $Ref) (n2@194@01 $Ref)) (!
  (=>
    (and
      (and
        (Set_in n1@194@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) n1@194@01) n1@194@01))
      (and
        (Set_in n2@194@01 g@55@01)
        ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) n2@194@01) n2@194@01))
      (= n1@194@01 n2@194@01))
    (= n1@194@01 n2@194@01))
  
  :qid |next-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((n@194@01 $Ref)) (!
  (=>
    (Set_in n@194@01 g@55@01)
    (and (= (inv@195@01 n@194@01) n@194@01) (img@196@01 n@194@01)))
  :pattern ((Set_in n@194@01 g@55@01))
  :pattern ((inv@195@01 n@194@01))
  :pattern ((img@196@01 n@194@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@196@01 r) (Set_in (inv@195@01 r) g@55@01)) (= (inv@195@01 r) r))
  :pattern ((inv@195@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@195@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r))
  :pattern ((inv@195@01 r))
  :qid |quant-u-23537|)))
(push) ; 7
(assert (not (forall ((r $Ref)) (!
  (=>
    (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r) (= r (inv@195@01 r)))
    (>
      (ite
        (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-23538|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(declare-const sm@197@01 $FVF<next>)
; Definitional axioms for snapshot map domain
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r)))
    (=>
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
; [eval] (forall n$0: Ref ::(n$0 in g) && n$0.next != null ==> (n$0.next in g))
(declare-const n$0@198@01 $Ref)
(push) ; 7
; [eval] (n$0 in g) && n$0.next != null ==> (n$0.next in g)
; [eval] (n$0 in g) && n$0.next != null
; [eval] (n$0 in g)
(push) ; 8
; [then-branch: 55 | !(n$0@198@01 in g@55@01) | live]
; [else-branch: 55 | n$0@198@01 in g@55@01 | live]
(push) ; 9
; [then-branch: 55 | !(n$0@198@01 in g@55@01)]
(assert (not (Set_in n$0@198@01 g@55@01)))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@199@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@199@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@199@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(set-option :timeout 0)
(push) ; 9
; [else-branch: 55 | n$0@198@01 in g@55@01]
(assert (Set_in n$0@198@01 g@55@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const sm@200@01 $FVF<next>)
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] n$0.next != null
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef144|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef145|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) n$0@198@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@198@01) (Set_in (inv@59@01 n$0@198@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@199@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (=>
  (not (Set_in n$0@198@01 g@55@01))
  (and
    (not (Set_in n$0@198@01 g@55@01))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@199@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (=>
  (Set_in n$0@198@01 g@55@01)
  (and
    (Set_in n$0@198@01 g@55@01)
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) n$0@198@01))))
(assert (or (Set_in n$0@198@01 g@55@01) (not (Set_in n$0@198@01 g@55@01))))
(push) ; 8
; [then-branch: 56 | n$0@198@01 in g@55@01 && Lookup(next, sm@200@01, n$0@198@01) != Null | live]
; [else-branch: 56 | !(n$0@198@01 in g@55@01 && Lookup(next, sm@200@01, n$0@198@01) != Null) | live]
(push) ; 9
; [then-branch: 56 | n$0@198@01 in g@55@01 && Lookup(next, sm@200@01, n$0@198@01) != Null]
(assert (and
  (Set_in n$0@198@01 g@55@01)
  (not (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
; [eval] (n$0.next in g)
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
      (=
        ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
        ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
    :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
    :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
    :qid |qp.fvfValDef144|))
  (forall ((r $Ref)) (!
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
    :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
    :qid |qp.fvfResTrgDef145|))))
(assert ($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) n$0@198@01))
(set-option :timeout 0)
(push) ; 10
(assert (not (and (img@60@01 n$0@198@01) (Set_in (inv@59@01 n$0@198@01) g@55@01))))
(check-sat)
; unsat
(pop) ; 10
; 0.00s
; (get-info :all-statistics)
(pop) ; 9
(push) ; 9
; [else-branch: 56 | !(n$0@198@01 in g@55@01 && Lookup(next, sm@200@01, n$0@198@01) != Null)]
(assert (not
  (and
    (Set_in n$0@198@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Definitional axioms for snapshot map domain
; Definitional axioms for snapshot map values
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
; Assume upper permission bound for field next
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(pop) ; 9
(pop) ; 8
; Joined path conditions
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (=>
  (and
    (Set_in n$0@198@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))
  (and
    (Set_in n$0@198@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|))
    ($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) n$0@198@01))))
; Joined path conditions
(assert (=>
  (not
    (and
      (Set_in n$0@198@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null))))
  (and
    (not
      (and
        (Set_in n$0@198@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null))))
    (forall ((r $Ref)) (!
      (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
      :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@200@01  $FVF<next>) r) r))
      :qid |qp-fld-prm-bnd|)))))
(assert (or
  (not
    (and
      (Set_in n$0@198@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null))))
  (and
    (Set_in n$0@198@01 g@55@01)
    (not (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))))
(pop) ; 7
; Nested auxiliary terms: globals (aux)
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@199@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
; Nested auxiliary terms: non-globals (aux)
(set-option :timeout 0)
(push) ; 7
(assert (not (forall ((n$0@198@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@198@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))))
(check-sat)
; unsat
(pop) ; 7
; 0.00s
; (get-info :all-statistics)
(assert (forall ((n$0@198@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@198@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(pop) ; 6
; Joined path conditions
(assert (forall ((n@194@01 $Ref)) (!
  (=>
    (Set_in n@194@01 g@55@01)
    (and (= (inv@195@01 n@194@01) n@194@01) (img@196@01 n@194@01)))
  :pattern ((Set_in n@194@01 g@55@01))
  :pattern ((inv@195@01 n@194@01))
  :pattern ((img@196@01 n@194@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@196@01 r) (Set_in (inv@195@01 r) g@55@01)) (= (inv@195@01 r) r))
  :pattern ((inv@195@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r)))
    (=>
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@199@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (and
  (forall ((r $Ref)) (!
    (=>
      (Set_in (inv@195@01 r) g@55@01)
      ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r))
    :pattern ((inv@195@01 r))
    :qid |quant-u-23537|))
  (forall ((n$0@198@01 $Ref)) (!
    (=>
      (and
        (Set_in n$0@198@01 g@55@01)
        (not
          (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))
      (Set_in ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) g@55@01))
    
    :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|))
  (hfun%precondition ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
      $Snap.unit)) g@55@01)))
(pop) ; 5
; Nested auxiliary terms: globals (aux)
(assert (forall ((n@185@01 $Ref)) (!
  (=>
    (Set_in n@185@01 g@55@01)
    (and (= (inv@186@01 n@185@01) n@185@01) (img@187@01 n@185@01)))
  :pattern ((Set_in n@185@01 g@55@01))
  :pattern ((inv@186@01 n@185@01))
  :pattern ((img@187@01 n@185@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@187@01 r) (Set_in (inv@186@01 r) g@55@01)) (= (inv@186@01 r) r))
  :pattern ((inv@186@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r)))
    (=>
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@188@01  $FVF<next>))))
  :qid |qp.fvfDomDef130|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@186@01 r) g@55@01) (img@187@01 r))
      (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@188@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef128|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@188@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef129|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@190@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef131|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@190@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef132|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@74@01 r) (Set_in (inv@73@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@191@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r)))
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r))
  :qid |qp.fvfValDef133|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@70@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@191@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef134|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@192@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef135|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@192@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef136|)))
(assert (forall ((r $Ref)) (!
  (=
    ($FVF.perm_next (as pm@193@01  $FPM) r)
    (ite (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)) $Perm.Write $Perm.No))
  :pattern (($FVF.perm_next (as pm@193@01  $FPM) r))
  :qid |qp.resPrmSumDef137|)))
(assert (forall ((r $Ref)) (!
  (and
    ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r)
    ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r))
  :pattern (($FVF.perm_next (as pm@193@01  $FPM) r))
  :qid |qp.resTrgDef138|)))
(assert (forall ((n@194@01 $Ref)) (!
  (=>
    (Set_in n@194@01 g@55@01)
    (and (= (inv@195@01 n@194@01) n@194@01) (img@196@01 n@194@01)))
  :pattern ((Set_in n@194@01 g@55@01))
  :pattern ((inv@195@01 n@194@01))
  :pattern ((img@196@01 n@194@01))
  :qid |next-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=> (and (img@196@01 r) (Set_in (inv@195@01 r) g@55@01)) (= (inv@195@01 r) r))
  :pattern ((inv@195@01 r))
  :qid |next-fctOfInv|)))
(assert (forall ((r $Ref)) (!
  (and
    (=>
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r)))
    (=>
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>)))))
  :pattern ((Set_in r ($FVF.domain_next (as sm@197@01  $FVF<next>))))
  :qid |qp.fvfDomDef141|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (and (Set_in (inv@195@01 r) g@55@01) (img@196@01 r))
      (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01)))
    (=
      ($FVF.lookup_next (as sm@197@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef139|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@197@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef140|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@199@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef142|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@199@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef143|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and (img@60@01 r) (Set_in (inv@59@01 r) g@55@01))
    (=
      ($FVF.lookup_next (as sm@200@01  $FVF<next>) r)
      ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r)))
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :pattern (($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r))
  :qid |qp.fvfValDef144|)))
(assert (forall ((r $Ref)) (!
  ($FVF.loc_next ($FVF.lookup_next ($SortWrappers.$SnapTo$FVF<next> ($Snap.first ($Snap.second $t@56@01))) r) r)
  :pattern (($FVF.lookup_next (as sm@200@01  $FVF<next>) r))
  :qid |qp.fvfResTrgDef145|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@186@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@163@01  $FVF<next>) r) r))
  :pattern ((inv@186@01 r))
  :qid |quant-u-23534|)))
(assert (forall ((n$0@189@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@189@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@191@01  $FVF<next>) n$0@189@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
    $Snap.unit)) g@55@01))
(assert (forall ((r $Ref)) (!
  (<= ($FVF.perm_next (as pm@193@01  $FPM) r) $Perm.Write)
  :pattern (($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r))
  :qid |qp-fld-prm-bnd|)))
(assert (forall ((r $Ref)) (!
  (=>
    (Set_in (inv@195@01 r) g@55@01)
    ($FVF.loc_next ($FVF.lookup_next (as sm@192@01  $FVF<next>) r) r))
  :pattern ((inv@195@01 r))
  :qid |quant-u-23537|)))
(assert (forall ((n$0@198@01 $Ref)) (!
  (=>
    (and
      (Set_in n$0@198@01 g@55@01)
      (not
        (= ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) $Ref.null)))
    (Set_in ($FVF.lookup_next (as sm@200@01  $FVF<next>) n$0@198@01) g@55@01))
  
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@21@14@21@22|)))
(assert (hfun%precondition ($Snap.combine
  $Snap.unit
  ($Snap.combine
    ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
    $Snap.unit)) g@55@01))
; Nested auxiliary terms: non-globals (aux)
(assert (forall ((x@183@01 $Ref) (y@184@01 $Ref)) (!
  (and
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
        $Snap.unit)) g@55@01)
    (hfun%precondition ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
        $Snap.unit)) g@55@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@183@01 y@184@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@183@01 y@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80_precondition|)))
(push) ; 5
(assert (not (forall ((x@183@01 $Ref) (y@184@01 $Ref)) (!
  (=>
    (and
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
          $Snap.unit)) g@55@01)
      (hfun%precondition ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
          $Snap.unit)) g@55@01))
    (=
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@183@01 y@184@01)
      (foo<Bool> (hfun ($Snap.combine
        $Snap.unit
        ($Snap.combine
          ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
          $Snap.unit)) g@55@01) x@183@01 y@184@01)))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@188@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@183@01 y@184@01))
  :pattern ((foo<Bool> (hfun ($Snap.combine
    $Snap.unit
    ($Snap.combine
      ($SortWrappers.$FVF<next>To$Snap (as sm@197@01  $FVF<next>))
      $Snap.unit)) g@55@01) x@183@01 y@184@01))
  :qid |prog./home/runner/work/smt-logs/smt-logs/viper/viperserver/silicon/silver/src/test/resources/all/issues/carbon/0210.vpr@51@16@51@80|))))
(check-sat)
; unknown
(pop) ; 5
; 1.09s
; (get-info :all-statistics)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
