(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-27 10:04:39
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
(declare-sort $PSF<p2> 0)
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
(declare-fun $SortWrappers.$PSF<p2>To$Snap ($PSF<p2>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<p2> ($Snap) $PSF<p2>)
(assert (forall ((x $PSF<p2>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<p2>($SortWrappers.$PSF<p2>To$Snap x)))
    :pattern (($SortWrappers.$PSF<p2>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<p2>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<p2>To$Snap($SortWrappers.$SnapTo$PSF<p2> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<p2> x))
    :qid |$Snap.$PSF<p2>To$SnapTo$PSF<p2>|
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
; /predicate_snap_functions_declarations.smt2 [p2: Int]
(declare-fun $PSF.domain_p2 ($PSF<p2>) Set<$Snap>)
(declare-fun $PSF.lookup_p2 ($PSF<p2> $Snap) Int)
(declare-fun $PSF.after_p2 ($PSF<p2> $PSF<p2>) Bool)
(declare-fun $PSF.loc_p2 (Int $Snap) Bool)
(declare-fun $PSF.perm_p2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p2 $PSF<p2>)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p1%trigger ($Snap) Bool)
(declare-fun p2%trigger ($Snap $Ref) Bool)
(declare-fun p3%trigger ($Snap $Ref) Bool)
(declare-fun p4%trigger ($Snap $Ref Int) Bool)
(declare-fun p5%trigger ($Snap $Ref Int) Bool)
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
; /predicate_snap_functions_axioms.smt2 [p2: Int]
(assert (forall ((vs $PSF<p2>) (ws $PSF<p2>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_p2 vs) ($PSF.domain_p2 ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_p2 vs))
            (= ($PSF.lookup_p2 vs x) ($PSF.lookup_p2 ws x)))
          :pattern (($PSF.lookup_p2 vs x) ($PSF.lookup_p2 ws x))
          :qid |qp.$PSF<p2>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<p2>To$Snap vs)
              ($SortWrappers.$PSF<p2>To$Snap ws)
              )
    :qid |qp.$PSF<p2>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_p2 pm s))
    :pattern (($PSF.perm_p2 pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_p2 f s) true)
    :pattern (($PSF.loc_p2 f s)))))
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
; ---------- m1 ----------
(declare-const x@0@01 $Ref)
(declare-const y@1@01 $Ref)
(declare-const z@2@01 $Ref)
(declare-const x@3@01 $Ref)
(declare-const y@4@01 $Ref)
(declare-const z@5@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@6@01 $Snap)
(assert (= $t@6@01 ($Snap.combine ($Snap.first $t@6@01) ($Snap.second $t@6@01))))
(declare-const sm@7@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@7@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@3@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@6@01))))
(assert (=
  ($Snap.second $t@6@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@6@01))
    ($Snap.second ($Snap.second $t@6@01)))))
(declare-const sm@8@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@8@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@4@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@6@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@4@01 x@3@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@9@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@9@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@5@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@6@01)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@5@01 y@4@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@5@01 x@3@01)))
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
(declare-const r@10@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@10@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
(pop) ; 3
(declare-const $t@11@01 $PSF<p2>)
(declare-fun inv@12@01 ($Ref) $Ref)
(declare-fun img@13@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@10@01 $Ref) (r2@10@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@10@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (Set_in r2@10@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (= r1@10@01 r2@10@01))
    (= r1@10@01 r2@10@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@10@01 $Ref)) (!
  (=>
    (Set_in r@10@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
    (and (= (inv@12@01 r@10@01) r@10@01) (img@13@01 r@10@01)))
  :pattern ((Set_in r@10@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
  :pattern ((inv@12@01 r@10@01))
  :pattern ((img@13@01 r@10@01))
  :qid |quant-u-17699|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@13@01 r)
      (Set_in (inv@12@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
    (= (inv@12@01 r) r))
  :pattern ((inv@12@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const r@14@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@14@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
(pop) ; 3
(declare-fun inv@15@01 ($Ref) $Ref)
(declare-fun img@16@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@14@01 $Ref) (r2@14@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@14@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (Set_in r2@14@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (= r1@14@01 r2@14@01))
    (= r1@14@01 r2@14@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@14@01 $Ref)) (!
  (=>
    (Set_in r@14@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
    (and (= (inv@15@01 r@14@01) r@14@01) (img@16@01 r@14@01)))
  :pattern ((Set_in r@14@01 (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
  :pattern ((inv@15@01 r@14@01))
  :pattern ((img@16@01 r@14@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@16@01 r)
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01)))
    (= (inv@15@01 r) r))
  :pattern ((inv@15@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@17@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    ($Perm.min (ite (= r x@3@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@18@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    ($Perm.min
      (ite (= r y@4@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@17@01 r)))
    $Perm.No))
(define-fun pTaken@19@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    ($Perm.min
      (ite (= r z@5@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@17@01 r)) (pTaken@18@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@17@01 x@3@01)) $Perm.No)))
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
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    (= (- $Perm.Write (pTaken@17@01 r)) $Perm.No))
  
  :qid |quant-u-17703|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@18@01 y@4@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@18@01 r) $Perm.No)
  
  :qid |quant-u-17705|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    (= (- (- $Perm.Write (pTaken@17@01 r)) (pTaken@18@01 r)) $Perm.No))
  
  :qid |quant-u-17706|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@19@01 z@5@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@19@01 r) $Perm.No)
  
  :qid |quant-u-17708|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@15@01 r) (Set_unionone (Set_unionone (Set_singleton x@3@01) y@4@01) z@5@01))
      (img@16@01 r)
      (= r (inv@15@01 r)))
    (=
      (- (- (- $Perm.Write (pTaken@17@01 r)) (pTaken@18@01 r)) (pTaken@19@01 r))
      $Perm.No))
  
  :qid |quant-u-17709|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const x@20@01 $Ref)
(declare-const y@21@01 $Ref)
(declare-const z@22@01 $Ref)
(declare-const x@23@01 $Ref)
(declare-const y@24@01 $Ref)
(declare-const z@25@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@26@01 $Snap)
(assert (= $t@26@01 ($Snap.combine ($Snap.first $t@26@01) ($Snap.second $t@26@01))))
(declare-const sm@27@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@27@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@23@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@26@01))))
(assert (=
  ($Snap.second $t@26@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@26@01))
    ($Snap.second ($Snap.second $t@26@01)))))
(declare-const sm@28@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@28@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@24@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@26@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@24@01 x@23@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@29@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@29@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@25@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@26@01)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@25@01 y@24@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@25@01 x@23@01)))
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
(declare-const $t@30@01 $Snap)
(assert (= $t@30@01 ($Snap.combine ($Snap.first $t@30@01) ($Snap.second $t@30@01))))
(declare-const sm@31@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@31@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@25@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@30@01))))
(declare-const r@32@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y))
; [eval] Set(x, y)
(assert (Set_in r@32@01 (Set_unionone (Set_singleton x@23@01) y@24@01)))
(pop) ; 3
(declare-fun inv@33@01 ($Ref) $Ref)
(declare-fun img@34@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@32@01 $Ref) (r2@32@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@32@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
      (Set_in r2@32@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
      (= r1@32@01 r2@32@01))
    (= r1@32@01 r2@32@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@32@01 $Ref)) (!
  (=>
    (Set_in r@32@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
    (and (= (inv@33@01 r@32@01) r@32@01) (img@34@01 r@32@01)))
  :pattern ((Set_in r@32@01 (Set_unionone (Set_singleton x@23@01) y@24@01)))
  :pattern ((inv@33@01 r@32@01))
  :pattern ((img@34@01 r@32@01))
  :qid |quant-u-17711|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@34@01 r)
      (Set_in (inv@33@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01)))
    (= (inv@33@01 r) r))
  :pattern ((inv@33@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((r $Ref)) $Perm
  (ite
    (= r z@25@01)
    ($Perm.min (ite (= r z@25@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@36@01 ((r $Ref)) $Perm
  (ite
    (= r z@25@01)
    ($Perm.min
      (ite (= r x@23@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@35@01 r)))
    $Perm.No))
(define-fun pTaken@37@01 ((r $Ref)) $Perm
  (ite
    (= r z@25@01)
    ($Perm.min
      (ite (= r y@24@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@35@01 r)) (pTaken@36@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@35@01 z@25@01)) $Perm.No)))
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
  (=> (= r z@25@01) (= (- $Perm.Write (pTaken@35@01 r)) $Perm.No))
  
  :qid |quant-u-17714|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const r@38@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in Set(x, y))
; [eval] Set(x, y)
(assert (Set_in r@38@01 (Set_unionone (Set_singleton x@23@01) y@24@01)))
(pop) ; 3
(declare-fun inv@39@01 ($Ref) $Ref)
(declare-fun img@40@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@38@01 $Ref) (r2@38@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@38@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
      (Set_in r2@38@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
      (= r1@38@01 r2@38@01))
    (= r1@38@01 r2@38@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@38@01 $Ref)) (!
  (=>
    (Set_in r@38@01 (Set_unionone (Set_singleton x@23@01) y@24@01))
    (and (= (inv@39@01 r@38@01) r@38@01) (img@40@01 r@38@01)))
  :pattern ((Set_in r@38@01 (Set_unionone (Set_singleton x@23@01) y@24@01)))
  :pattern ((inv@39@01 r@38@01))
  :pattern ((img@40@01 r@38@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@40@01 r)
      (Set_in (inv@39@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01)))
    (= (inv@39@01 r) r))
  :pattern ((inv@39@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@41@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@39@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01))
      (img@40@01 r)
      (= r (inv@39@01 r)))
    ($Perm.min (ite (= r y@24@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@42@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@39@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01))
      (img@40@01 r)
      (= r (inv@39@01 r)))
    ($Perm.min
      (ite (= r x@23@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@41@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@41@01 y@24@01)) $Perm.No)))
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
    (and
      (Set_in (inv@39@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01))
      (img@40@01 r)
      (= r (inv@39@01 r)))
    (= (- $Perm.Write (pTaken@41@01 r)) $Perm.No))
  
  :qid |quant-u-17718|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@42@01 x@23@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@42@01 r) $Perm.No)
  
  :qid |quant-u-17720|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@39@01 r) (Set_unionone (Set_singleton x@23@01) y@24@01))
      (img@40@01 r)
      (= r (inv@39@01 r)))
    (= (- (- $Perm.Write (pTaken@41@01 r)) (pTaken@42@01 r)) $Perm.No))
  
  :qid |quant-u-17721|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m3 ----------
(declare-const x@43@01 $Ref)
(declare-const y@44@01 $Ref)
(declare-const z@45@01 $Ref)
(declare-const x@46@01 $Ref)
(declare-const y@47@01 $Ref)
(declare-const z@48@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@49@01 $Snap)
(assert (= $t@49@01 ($Snap.combine ($Snap.first $t@49@01) ($Snap.second $t@49@01))))
(declare-const sm@50@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@50@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@46@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@49@01))))
(assert (=
  ($Snap.second $t@49@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@49@01))
    ($Snap.second ($Snap.second $t@49@01)))))
(declare-const sm@51@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@51@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@47@01))
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second $t@49@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@47@01 x@46@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(declare-const sm@52@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@52@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@48@01))
  ($SortWrappers.$SnapToInt ($Snap.second ($Snap.second $t@49@01)))))
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@48@01 y@47@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@48@01 x@46@01)))
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
(declare-const $t@53@01 $Snap)
(assert (= $t@53@01 ($Snap.combine ($Snap.first $t@53@01) ($Snap.second $t@53@01))))
(declare-const r@54@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y))
; [eval] Set(x, y)
(assert (Set_in r@54@01 (Set_unionone (Set_singleton x@46@01) y@47@01)))
(pop) ; 3
(declare-fun inv@55@01 ($Ref) $Ref)
(declare-fun img@56@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@54@01 $Ref) (r2@54@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@54@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
      (Set_in r2@54@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
      (= r1@54@01 r2@54@01))
    (= r1@54@01 r2@54@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@54@01 $Ref)) (!
  (=>
    (Set_in r@54@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
    (and (= (inv@55@01 r@54@01) r@54@01) (img@56@01 r@54@01)))
  :pattern ((Set_in r@54@01 (Set_unionone (Set_singleton x@46@01) y@47@01)))
  :pattern ((inv@55@01 r@54@01))
  :pattern ((img@56@01 r@54@01))
  :qid |quant-u-17723|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@56@01 r)
      (Set_in (inv@55@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01)))
    (= (inv@55@01 r) r))
  :pattern ((inv@55@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(declare-const sm@57@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@57@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@48@01))
  ($SortWrappers.$SnapToInt ($Snap.second $t@53@01))))
(pop) ; 2
(push) ; 2
(declare-const r@58@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y))
; [eval] Set(x, y)
(assert (Set_in r@58@01 (Set_unionone (Set_singleton x@46@01) y@47@01)))
(pop) ; 3
(declare-fun inv@59@01 ($Ref) $Ref)
(declare-fun img@60@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@58@01 $Ref) (r2@58@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@58@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
      (Set_in r2@58@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
      (= r1@58@01 r2@58@01))
    (= r1@58@01 r2@58@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@58@01 $Ref)) (!
  (=>
    (Set_in r@58@01 (Set_unionone (Set_singleton x@46@01) y@47@01))
    (and (= (inv@59@01 r@58@01) r@58@01) (img@60@01 r@58@01)))
  :pattern ((Set_in r@58@01 (Set_unionone (Set_singleton x@46@01) y@47@01)))
  :pattern ((inv@59@01 r@58@01))
  :pattern ((img@60@01 r@58@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@60@01 r)
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01)))
    (= (inv@59@01 r) r))
  :pattern ((inv@59@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@61@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    ($Perm.min (ite (= r x@46@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@62@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    ($Perm.min
      (ite (= r y@47@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@61@01 r)))
    $Perm.No))
(define-fun pTaken@63@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    ($Perm.min
      (ite (= r z@48@01) $Perm.Write $Perm.No)
      (- (- $Perm.Write (pTaken@61@01 r)) (pTaken@62@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@61@01 x@46@01)) $Perm.No)))
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
    (and
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    (= (- $Perm.Write (pTaken@61@01 r)) $Perm.No))
  
  :qid |quant-u-17727|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@62@01 y@47@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@62@01 r) $Perm.No)
  
  :qid |quant-u-17729|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@59@01 r) (Set_unionone (Set_singleton x@46@01) y@47@01))
      (img@60@01 r)
      (= r (inv@59@01 r)))
    (= (- (- $Perm.Write (pTaken@61@01 r)) (pTaken@62@01 r)) $Perm.No))
  
  :qid |quant-u-17730|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((r $Ref)) $Perm
  (ite
    (= r z@48@01)
    ($Perm.min (ite (= r z@48@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@65@01 ((r $Ref)) $Perm
  (ite
    (= r z@48@01)
    ($Perm.min
      (ite (= r y@47@01) (- $Perm.Write (pTaken@62@01 r)) $Perm.No)
      (- $Perm.Write (pTaken@64@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@64@01 z@48@01)) $Perm.No)))
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
  (=> (= r z@48@01) (= (- $Perm.Write (pTaken@64@01 r)) $Perm.No))
  
  :qid |quant-u-17733|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m4 ----------
(declare-const x@66@01 $Ref)
(declare-const y@67@01 $Ref)
(declare-const z@68@01 $Ref)
(declare-const x@69@01 $Ref)
(declare-const y@70@01 $Ref)
(declare-const z@71@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@72@01 $Snap)
(assert (= $t@72@01 ($Snap.combine ($Snap.first $t@72@01) ($Snap.second $t@72@01))))
(declare-const sm@73@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@73@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@69@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@72@01))))
(declare-const sm@74@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@74@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@70@01))
  ($SortWrappers.$SnapToInt ($Snap.second $t@72@01))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= y@70@01 x@69@01)))
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
(declare-const r@75@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@75@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
(pop) ; 3
(declare-const $t@76@01 $PSF<p2>)
(declare-fun inv@77@01 ($Ref) $Ref)
(declare-fun img@78@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@75@01 $Ref) (r2@75@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@75@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (Set_in r2@75@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (= r1@75@01 r2@75@01))
    (= r1@75@01 r2@75@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@75@01 $Ref)) (!
  (=>
    (Set_in r@75@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
    (and (= (inv@77@01 r@75@01) r@75@01) (img@78@01 r@75@01)))
  :pattern ((Set_in r@75@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
  :pattern ((inv@77@01 r@75@01))
  :pattern ((img@78@01 r@75@01))
  :qid |quant-u-17735|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@78@01 r)
      (Set_in (inv@77@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
    (= (inv@77@01 r) r))
  :pattern ((inv@77@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const r@79@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@79@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
(pop) ; 3
(declare-fun inv@80@01 ($Ref) $Ref)
(declare-fun img@81@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@79@01 $Ref) (r2@79@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@79@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (Set_in r2@79@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (= r1@79@01 r2@79@01))
    (= r1@79@01 r2@79@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@79@01 $Ref)) (!
  (=>
    (Set_in r@79@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
    (and (= (inv@80@01 r@79@01) r@79@01) (img@81@01 r@79@01)))
  :pattern ((Set_in r@79@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
  :pattern ((inv@80@01 r@79@01))
  :pattern ((img@81@01 r@79@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@81@01 r)
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
    (= (inv@80@01 r) r))
  :pattern ((inv@80@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@82@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@81@01 r)
      (= r (inv@80@01 r)))
    ($Perm.min (ite (= r x@69@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@83@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@81@01 r)
      (= r (inv@80@01 r)))
    ($Perm.min
      (ite (= r y@70@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@82@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@82@01 x@69@01)) $Perm.No)))
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
    (and
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@81@01 r)
      (= r (inv@80@01 r)))
    (= (- $Perm.Write (pTaken@82@01 r)) $Perm.No))
  
  :qid |quant-u-17739|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@83@01 y@70@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@83@01 r) $Perm.No)
  
  :qid |quant-u-17741|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@81@01 r)
      (= r (inv@80@01 r)))
    (= (- (- $Perm.Write (pTaken@82@01 r)) (pTaken@83@01 r)) $Perm.No))
  
  :qid |quant-u-17742|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@80@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@81@01 r)
      (= r (inv@80@01 r)))
    (= (- (- $Perm.Write (pTaken@82@01 r)) (pTaken@83@01 r)) $Perm.No))
  
  :qid |quant-u-17742|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= x@69@01 y@70@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($PSF.lookup_p2 (as sm@73@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@69@01))
    ($PSF.lookup_p2 (as sm@74@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@70@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($PSF.lookup_p2 (as sm@74@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@70@01))
    ($PSF.lookup_p2 (as sm@73@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap x@69@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const r@84@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@84@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
(pop) ; 3
(declare-fun inv@85@01 ($Ref) $Ref)
(declare-fun img@86@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@84@01 $Ref) (r2@84@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@84@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (Set_in r2@84@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (= r1@84@01 r2@84@01))
    (= r1@84@01 r2@84@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@84@01 $Ref)) (!
  (=>
    (Set_in r@84@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
    (and (= (inv@85@01 r@84@01) r@84@01) (img@86@01 r@84@01)))
  :pattern ((Set_in r@84@01 (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
  :pattern ((inv@85@01 r@84@01))
  :pattern ((img@86@01 r@84@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@86@01 r)
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01)))
    (= (inv@85@01 r) r))
  :pattern ((inv@85@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@87@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@86@01 r)
      (= r (inv@85@01 r)))
    ($Perm.min (ite (= r y@70@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@88@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@86@01 r)
      (= r (inv@85@01 r)))
    ($Perm.min
      (ite (= r x@69@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@87@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@87@01 y@70@01)) $Perm.No)))
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
    (and
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@86@01 r)
      (= r (inv@85@01 r)))
    (= (- $Perm.Write (pTaken@87@01 r)) $Perm.No))
  
  :qid |quant-u-17746|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@88@01 x@69@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@88@01 r) $Perm.No)
  
  :qid |quant-u-17748|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@86@01 r)
      (= r (inv@85@01 r)))
    (= (- (- $Perm.Write (pTaken@87@01 r)) (pTaken@88@01 r)) $Perm.No))
  
  :qid |quant-u-17749|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@85@01 r) (Set_unionone (Set_unionone (Set_singleton x@69@01) y@70@01) z@71@01))
      (img@86@01 r)
      (= r (inv@85@01 r)))
    (= (- (- $Perm.Write (pTaken@87@01 r)) (pTaken@88@01 r)) $Perm.No))
  
  :qid |quant-u-17749|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const x@89@01 $Ref)
(declare-const y@90@01 $Ref)
(declare-const z@91@01 $Ref)
(declare-const x@92@01 $Ref)
(declare-const y@93@01 $Ref)
(declare-const z@94@01 $Ref)
(push) ; 1
(declare-const $t@95@01 $Snap)
(assert (= $t@95@01 ($Snap.combine ($Snap.first $t@95@01) ($Snap.second $t@95@01))))
(declare-const sm@96@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@93@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@95@01))))
(declare-const sm@97@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@97@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@94@01))
  ($SortWrappers.$SnapToInt ($Snap.second $t@95@01))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= z@94@01 y@93@01)))
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
(declare-const r@98@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@98@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
(pop) ; 3
(declare-const $t@99@01 $PSF<p2>)
(declare-fun inv@100@01 ($Ref) $Ref)
(declare-fun img@101@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@98@01 $Ref) (r2@98@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@98@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (Set_in r2@98@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (= r1@98@01 r2@98@01))
    (= r1@98@01 r2@98@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@98@01 $Ref)) (!
  (=>
    (Set_in r@98@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
    (and (= (inv@100@01 r@98@01) r@98@01) (img@101@01 r@98@01)))
  :pattern ((Set_in r@98@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
  :pattern ((inv@100@01 r@98@01))
  :pattern ((img@101@01 r@98@01))
  :qid |quant-u-17751|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@101@01 r)
      (Set_in (inv@100@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
    (= (inv@100@01 r) r))
  :pattern ((inv@100@01 r))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
(pop) ; 2
(push) ; 2
(declare-const r@102@01 $Ref)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@102@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
(pop) ; 3
(declare-fun inv@103@01 ($Ref) $Ref)
(declare-fun img@104@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@102@01 $Ref) (r2@102@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@102@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (Set_in r2@102@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (= r1@102@01 r2@102@01))
    (= r1@102@01 r2@102@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@102@01 $Ref)) (!
  (=>
    (Set_in r@102@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
    (and (= (inv@103@01 r@102@01) r@102@01) (img@104@01 r@102@01)))
  :pattern ((Set_in r@102@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
  :pattern ((inv@103@01 r@102@01))
  :pattern ((img@104@01 r@102@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@104@01 r)
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
    (= (inv@103@01 r) r))
  :pattern ((inv@103@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@105@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@104@01 r)
      (= r (inv@103@01 r)))
    ($Perm.min (ite (= r y@93@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@106@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@104@01 r)
      (= r (inv@103@01 r)))
    ($Perm.min
      (ite (= r z@94@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@105@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@105@01 y@93@01)) $Perm.No)))
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
    (and
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@104@01 r)
      (= r (inv@103@01 r)))
    (= (- $Perm.Write (pTaken@105@01 r)) $Perm.No))
  
  :qid |quant-u-17755|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@106@01 z@94@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@106@01 r) $Perm.No)
  
  :qid |quant-u-17757|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@104@01 r)
      (= r (inv@103@01 r)))
    (= (- (- $Perm.Write (pTaken@105@01 r)) (pTaken@106@01 r)) $Perm.No))
  
  :qid |quant-u-17758|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@103@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@104@01 r)
      (= r (inv@103@01 r)))
    (= (- (- $Perm.Write (pTaken@105@01 r)) (pTaken@106@01 r)) $Perm.No))
  
  :qid |quant-u-17758|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (= y@93@01 z@94@01)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@93@01))
    ($PSF.lookup_p2 (as sm@97@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@94@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (not
  (=
    ($PSF.lookup_p2 (as sm@97@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap z@94@01))
    ($PSF.lookup_p2 (as sm@96@01  $PSF<p2>) ($SortWrappers.$RefTo$Snap y@93@01))))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const r@107@01 $Ref)
(set-option :timeout 0)
(push) ; 3
; [eval] (r in Set(x, y, z))
; [eval] Set(x, y, z)
(assert (Set_in r@107@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
(pop) ; 3
(declare-fun inv@108@01 ($Ref) $Ref)
(declare-fun img@109@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((r1@107@01 $Ref) (r2@107@01 $Ref)) (!
  (=>
    (and
      (Set_in r1@107@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (Set_in r2@107@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (= r1@107@01 r2@107@01))
    (= r1@107@01 r2@107@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((r@107@01 $Ref)) (!
  (=>
    (Set_in r@107@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
    (and (= (inv@108@01 r@107@01) r@107@01) (img@109@01 r@107@01)))
  :pattern ((Set_in r@107@01 (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
  :pattern ((inv@108@01 r@107@01))
  :pattern ((img@109@01 r@107@01))
  :qid |p2-invOfFct|)))
(assert (forall ((r $Ref)) (!
  (=>
    (and
      (img@109@01 r)
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01)))
    (= (inv@108@01 r) r))
  :pattern ((inv@108@01 r))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@110@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@109@01 r)
      (= r (inv@108@01 r)))
    ($Perm.min (ite (= r z@94@01) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
(define-fun pTaken@111@01 ((r $Ref)) $Perm
  (ite
    (and
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@109@01 r)
      (= r (inv@108@01 r)))
    ($Perm.min
      (ite (= r y@93@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@110@01 r)))
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
(assert (not (= (- $Perm.Write (pTaken@110@01 z@94@01)) $Perm.No)))
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
    (and
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@109@01 r)
      (= r (inv@108@01 r)))
    (= (- $Perm.Write (pTaken@110@01 r)) $Perm.No))
  
  :qid |quant-u-17762|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@111@01 y@93@01)) $Perm.No)))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 10)
(assert (not (forall ((r $Ref)) (!
  (= (pTaken@111@01 r) $Perm.No)
  
  :qid |quant-u-17764|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@109@01 r)
      (= r (inv@108@01 r)))
    (= (- (- $Perm.Write (pTaken@110@01 r)) (pTaken@111@01 r)) $Perm.No))
  
  :qid |quant-u-17765|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 3
(assert (not (forall ((r $Ref)) (!
  (=>
    (and
      (Set_in (inv@108@01 r) (Set_unionone (Set_unionone (Set_singleton x@92@01) y@93@01) z@94@01))
      (img@109@01 r)
      (= r (inv@108@01 r)))
    (= (- (- $Perm.Write (pTaken@110@01 r)) (pTaken@111@01 r)) $Perm.No))
  
  :qid |quant-u-17765|))))
(check-sat)
; unknown
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 2
(pop) ; 1
