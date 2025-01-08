(get-info :version)
; (:version "4.12.1")
; Started: 2025-01-08 21:19:48
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
(declare-sort Set<Int> 0)
(declare-sort Set<$Ref> 0)
(declare-sort Set<$Snap> 0)
(declare-sort $PSF<p2> 0)
(declare-sort $MWSF 0)
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
; Declaring additional sort wrappers
(declare-fun $SortWrappers.$MWSFTo$Snap ($MWSF) $Snap)
(declare-fun $SortWrappers.$SnapTo$MWSF ($Snap) $MWSF)
(assert (forall ((x $MWSF)) (!
    (= x ($SortWrappers.$SnapTo$MWSF($SortWrappers.$MWSFTo$Snap x)))
    :pattern (($SortWrappers.$MWSFTo$Snap x))
    :qid |$Snap.$SnapTo$MWSFTo$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$MWSFTo$Snap($SortWrappers.$SnapTo$MWSF x)))
    :pattern (($SortWrappers.$SnapTo$MWSF x))
    :qid |$Snap.$MWSFTo$SnapTo$MWSF|
    )))
; ////////// Symbols
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
; /predicate_snap_functions_declarations.smt2 [p2: Int]
(declare-fun $PSF.domain_p2 ($PSF<p2>) Set<$Snap>)
(declare-fun $PSF.lookup_p2 ($PSF<p2> $Snap) Int)
(declare-fun $PSF.after_p2 ($PSF<p2> $PSF<p2>) Bool)
(declare-fun $PSF.loc_p2 (Int $Snap) Bool)
(declare-fun $PSF.perm_p2 ($PPM $Snap) $Perm)
(declare-const $psfTOP_p2 $PSF<p2>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun p1%trigger ($Snap $Ref) Bool)
(declare-fun p2%trigger ($Snap $Ref Int) Bool)
; ////////// Uniqueness assumptions from domains
; ////////// Axioms
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
(declare-const r@0@01 $Ref)
(declare-const r@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; var c: Int
(declare-const c@2@01 Int)
; [exec]
; c := 2
; [exec]
; inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@3@01 Int)
(push) ; 3
; [eval] x > 0
(assert (> x@3@01 0))
(pop) ; 3
(declare-const $t@4@01 $PSF<p2>)
(declare-fun inv@5@01 ($Ref Int) Int)
(declare-fun img@6@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@3@01 Int) (x2@3@01 Int)) (!
  (=> (and (> x1@3@01 0) (> x2@3@01 0) (= x1@3@01 x2@3@01)) (= x1@3@01 x2@3@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@3@01 Int)) (!
  (=>
    (> x@3@01 0)
    (and (= (inv@5@01 r@1@01 x@3@01) x@3@01) (img@6@01 r@1@01 x@3@01)))
  :pattern ((inv@5@01 r@1@01 x@3@01))
  :pattern ((img@6@01 r@1@01 x@3@01))
  :qid |quant-u-17391|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@6@01 a b) (> (inv@5@01 a b) 0))
    (and (= r@1@01 a) (= (inv@5@01 a b) b)))
  :pattern ((inv@5@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert c == 2
; [eval] c == 2
; [exec]
; exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@7@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x > 0
(assert (> x@7@01 0))
(pop) ; 3
(declare-fun inv@8@01 ($Ref Int) Int)
(declare-fun img@9@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@7@01 Int) (x2@7@01 Int)) (!
  (=> (and (> x1@7@01 0) (> x2@7@01 0) (= x1@7@01 x2@7@01)) (= x1@7@01 x2@7@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@7@01 Int)) (!
  (=>
    (> x@7@01 0)
    (and (= (inv@8@01 r@1@01 x@7@01) x@7@01) (img@9@01 r@1@01 x@7@01)))
  :pattern ((inv@8@01 r@1@01 x@7@01))
  :pattern ((img@9@01 r@1@01 x@7@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@9@01 a b) (> (inv@8@01 a b) 0))
    (and (= r@1@01 a) (= (inv@8@01 a b) b)))
  :pattern ((inv@8@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@10@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@8@01 a b) 0)
      (img@9@01 a b)
      (and (= a r@1@01) (= b (inv@8@01 a b))))
    ($Perm.min
      (ite (and (img@6@01 a b) (> (inv@5@01 a b) 0)) $Perm.Write $Perm.No)
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite (and (img@6@01 a b) (> (inv@5@01 a b) 0)) $Perm.Write $Perm.No)
      (pTaken@10@01 a b))
    $Perm.No)
  
  :qid |quant-u-17394|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (> (inv@8@01 a b) 0)
      (img@9@01 a b)
      (and (= a r@1@01) (= b (inv@8@01 a b))))
    (= (- $Perm.Write (pTaken@10@01 a b)) $Perm.No))
  
  :qid |quant-u-17395|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert c == 2
; [eval] c == 2
(pop) ; 2
(pop) ; 1
; ---------- m2 ----------
(declare-const r@11@01 $Ref)
(declare-const r2@12@01 $Ref)
(declare-const i@13@01 Int)
(declare-const r@14@01 $Ref)
(declare-const r2@15@01 $Ref)
(declare-const i@16@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@17@01 $Snap)
(assert (= $t@17@01 ($Snap.combine ($Snap.first $t@17@01) ($Snap.second $t@17@01))))
(assert (= ($Snap.first $t@17@01) $Snap.unit))
; [eval] r != r2
(assert (not (= r@14@01 r2@15@01)))
(declare-const sm@18@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@18@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))
  ($SortWrappers.$SnapToInt ($Snap.second $t@17@01))))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@19@01 Int)
(declare-const sm@20@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@20@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))
  $t@19@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@21@01 Int)
(push) ; 3
; [eval] x > 0
(assert (> x@21@01 0))
(pop) ; 3
(declare-const $t@22@01 $PSF<p2>)
(declare-fun inv@23@01 ($Ref Int) Int)
(declare-fun img@24@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@21@01 Int) (x2@21@01 Int)) (!
  (=>
    (and (> x1@21@01 0) (> x2@21@01 0) (= x1@21@01 x2@21@01))
    (= x1@21@01 x2@21@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@21@01 Int)) (!
  (=>
    (> x@21@01 0)
    (and (= (inv@23@01 r@14@01 x@21@01) x@21@01) (img@24@01 r@14@01 x@21@01)))
  :pattern ((inv@23@01 r@14@01 x@21@01))
  :pattern ((img@24@01 r@14@01 x@21@01))
  :qid |quant-u-17397|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@24@01 a b) (> (inv@23@01 a b) 0))
    (and (= r@14@01 a) (= (inv@23@01 a b) b)))
  :pattern ((inv@23@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p2(r2, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@25@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r2@15@01) (= b i@16@01))
    ($Perm.min
      (ite (and (= a r2@15@01) (= b i@16@01)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@26@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r2@15@01) (= b i@16@01))
    ($Perm.min
      (ite (and (img@24@01 a b) (> (inv@23@01 a b) 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@25@01 a b)))
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
(assert (not (= (- $Perm.Write (pTaken@25@01 r2@15@01 i@16@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r2@15@01) (= b i@16@01))
    (= (- $Perm.Write (pTaken@25@01 a b)) $Perm.No))
  
  :qid |quant-u-17400|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@27@01 $PSF<p2>)
(declare-const s@28@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap r2@15@01)
        ($SortWrappers.IntTo$Snap i@16@01))
      $Snap.unit))
  (=
    ($PSF.lookup_p2 (as sm@27@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r2@15@01)
      ($SortWrappers.IntTo$Snap i@16@01)))
    ($PSF.lookup_p2 (as sm@18@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r2@15@01)
      ($SortWrappers.IntTo$Snap i@16@01))))))
(assert (=>
  (and (img@24@01 r2@15@01 i@16@01) (> (inv@23@01 r2@15@01 i@16@01) 0))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r2@15@01)
          ($SortWrappers.IntTo$Snap i@16@01))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@27@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r2@15@01)
        ($SortWrappers.IntTo$Snap i@16@01)))
      ($PSF.lookup_p2 $t@22@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap r2@15@01)
        ($SortWrappers.IntTo$Snap i@16@01)))))))
(assert (not (= r2@15@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@27@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r2@15@01)
  ($SortWrappers.IntTo$Snap i@16@01)))) r2@15@01 i@16@01))
; [exec]
; fold acc(p2(r2, i), write)
(declare-const sm@29@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@29@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))
  ($PSF.lookup_p2 (as sm@27@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))))
; [exec]
; exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@30@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x > 0
(assert (> x@30@01 0))
(pop) ; 3
(declare-fun inv@31@01 ($Ref Int) Int)
(declare-fun img@32@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@30@01 Int) (x2@30@01 Int)) (!
  (=>
    (and (> x1@30@01 0) (> x2@30@01 0) (= x1@30@01 x2@30@01))
    (= x1@30@01 x2@30@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@30@01 Int)) (!
  (=>
    (> x@30@01 0)
    (and (= (inv@31@01 r@14@01 x@30@01) x@30@01) (img@32@01 r@14@01 x@30@01)))
  :pattern ((inv@31@01 r@14@01 x@30@01))
  :pattern ((img@32@01 r@14@01 x@30@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@32@01 a b) (> (inv@31@01 a b) 0))
    (and (= r@14@01 a) (= (inv@31@01 a b) b)))
  :pattern ((inv@31@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@33@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@31@01 a b) 0)
      (img@32@01 a b)
      (and (= a r@14@01) (= b (inv@31@01 a b))))
    ($Perm.min
      (ite (and (img@24@01 a b) (> (inv@23@01 a b) 0)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@34@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@31@01 a b) 0)
      (img@32@01 a b)
      (and (= a r@14@01) (= b (inv@31@01 a b))))
    ($Perm.min
      (ite (and (= a r2@15@01) (= b i@16@01)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@33@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite (and (img@24@01 a b) (> (inv@23@01 a b) 0)) $Perm.Write $Perm.No)
      (pTaken@33@01 a b))
    $Perm.No)
  
  :qid |quant-u-17403|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (> (inv@31@01 a b) 0)
      (img@32@01 a b)
      (and (= a r@14@01) (= b (inv@31@01 a b))))
    (= (- $Perm.Write (pTaken@33@01 a b)) $Perm.No))
  
  :qid |quant-u-17404|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; unfold acc(p2(r2, i), write)
; Precomputing data for removing quantified permissions
(define-fun pTaken@35@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r2@15@01) (= b i@16@01))
    ($Perm.min
      (ite (and (= a r2@15@01) (= b i@16@01)) $Perm.Write $Perm.No)
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
(assert (not (= (- $Perm.Write (pTaken@35@01 r2@15@01 i@16@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r2@15@01) (= b i@16@01))
    (= (- $Perm.Write (pTaken@35@01 a b)) $Perm.No))
  
  :qid |quant-u-17407|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@36@01 $PSF<p2>)
(declare-const s@37@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap r2@15@01)
        ($SortWrappers.IntTo$Snap i@16@01))
      $Snap.unit))
  (=
    ($PSF.lookup_p2 (as sm@36@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r2@15@01)
      ($SortWrappers.IntTo$Snap i@16@01)))
    ($PSF.lookup_p2 (as sm@29@01  $PSF<p2>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap r2@15@01)
      ($SortWrappers.IntTo$Snap i@16@01))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@36@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r2@15@01)
  ($SortWrappers.IntTo$Snap i@16@01)))) r2@15@01 i@16@01))
; [exec]
; fold acc(p2(r2, i), write)
(declare-const sm@38@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@38@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))
  ($PSF.lookup_p2 (as sm@36@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r2@15@01)
    ($SortWrappers.IntTo$Snap i@16@01)))))
; Precomputing data for removing quantified permissions
(define-fun pTaken@39@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r2@15@01) (= b i@16@01))
    ($Perm.min
      (ite (and (= a r2@15@01) (= b i@16@01)) $Perm.Write $Perm.No)
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
(assert (not (= (- $Perm.Write (pTaken@39@01 r2@15@01 i@16@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r2@15@01) (= b i@16@01))
    (= (- $Perm.Write (pTaken@39@01 a b)) $Perm.No))
  
  :qid |quant-u-17410|))))
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
(declare-const r@40@01 $Ref)
(declare-const r2@41@01 $Ref)
(declare-const i@42@01 Int)
(declare-const r@43@01 $Ref)
(declare-const r2@44@01 $Ref)
(declare-const i@45@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@46@01 $Snap)
(assert (= $t@46@01 ($Snap.combine ($Snap.first $t@46@01) ($Snap.second $t@46@01))))
(assert (= ($Snap.first $t@46@01) $Snap.unit))
; [eval] r != r2
(assert (not (= r@43@01 r2@44@01)))
; [eval] -1
(declare-const sm@47@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@47@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($SortWrappers.$SnapToInt ($Snap.second $t@46@01))))
(assert (<= $Perm.No (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
; [eval] -1
(declare-const $t@48@01 Int)
(declare-const sm@49@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@49@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  $t@48@01))
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@50@01 Int)
(push) ; 3
; [eval] x > 0
(assert (> x@50@01 0))
(pop) ; 3
(declare-const $t@51@01 $PSF<p2>)
(declare-fun inv@52@01 ($Ref Int) Int)
(declare-fun img@53@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@50@01 Int) (x2@50@01 Int)) (!
  (=>
    (and (> x1@50@01 0) (> x2@50@01 0) (= x1@50@01 x2@50@01))
    (= x1@50@01 x2@50@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@50@01 Int)) (!
  (=>
    (> x@50@01 0)
    (and (= (inv@52@01 r@43@01 x@50@01) x@50@01) (img@53@01 r@43@01 x@50@01)))
  :pattern ((inv@52@01 r@43@01 x@50@01))
  :pattern ((img@53@01 r@43@01 x@50@01))
  :qid |quant-u-17412|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@53@01 a b) (> (inv@52@01 a b) 0))
    (and (= r@43@01 a) (= (inv@52@01 a b) b)))
  :pattern ((inv@52@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p2(r, -1), write)
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@43@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@43@01) (= b (- 0 1))) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@55@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@43@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (img@53@01 a b) (> (inv@52@01 a b) 0)) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@54@01 a b)))
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@54@01 r@43@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@43@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@54@01 a b)) $Perm.No))
  
  :qid |quant-u-17415|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@56@01 $PSF<p2>)
(declare-const s@57@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= (- 0 1) (- 0 1))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@43@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@56@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 (as sm@47@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
(assert (=>
  (and (img@53@01 r@43@01 (- 0 1)) (> (inv@52@01 r@43@01 (- 0 1)) 0))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@43@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@56@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 $t@51@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
(assert (not (= r@43@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@56@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@43@01)
  ($SortWrappers.IntTo$Snap (- 0 1))))) r@43@01 (- 0 1)))
; [exec]
; fold acc(p2(r, -1), write)
; [eval] -1
(declare-const sm@58@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@58@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($PSF.lookup_p2 (as sm@56@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))))
; [exec]
; exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@59@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x > 0
(assert (> x@59@01 0))
(pop) ; 3
(declare-fun inv@60@01 ($Ref Int) Int)
(declare-fun img@61@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@59@01 Int) (x2@59@01 Int)) (!
  (=>
    (and (> x1@59@01 0) (> x2@59@01 0) (= x1@59@01 x2@59@01))
    (= x1@59@01 x2@59@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@59@01 Int)) (!
  (=>
    (> x@59@01 0)
    (and (= (inv@60@01 r@43@01 x@59@01) x@59@01) (img@61@01 r@43@01 x@59@01)))
  :pattern ((inv@60@01 r@43@01 x@59@01))
  :pattern ((img@61@01 r@43@01 x@59@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@61@01 a b) (> (inv@60@01 a b) 0))
    (and (= r@43@01 a) (= (inv@60@01 a b) b)))
  :pattern ((inv@60@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@62@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@60@01 a b) 0)
      (img@61@01 a b)
      (and (= a r@43@01) (= b (inv@60@01 a b))))
    ($Perm.min
      (ite (and (img@53@01 a b) (> (inv@52@01 a b) 0)) $Perm.Write $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@63@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@60@01 a b) 0)
      (img@61@01 a b)
      (and (= a r@43@01) (= b (inv@60@01 a b))))
    ($Perm.min
      (ite (and (= a r@43@01) (= b (- 0 1))) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@62@01 a b)))
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite (and (img@53@01 a b) (> (inv@52@01 a b) 0)) $Perm.Write $Perm.No)
      (pTaken@62@01 a b))
    $Perm.No)
  
  :qid |quant-u-17418|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (> (inv@60@01 a b) 0)
      (img@61@01 a b)
      (and (= a r@43@01) (= b (inv@60@01 a b))))
    (= (- $Perm.Write (pTaken@62@01 a b)) $Perm.No))
  
  :qid |quant-u-17419|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; unfold acc(p2(r, -1), write)
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@64@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@43@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@43@01) (= b (- 0 1))) $Perm.Write $Perm.No)
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@64@01 r@43@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@43@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@64@01 a b)) $Perm.No))
  
  :qid |quant-u-17422|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@65@01 $PSF<p2>)
(declare-const s@66@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (= (- 0 1) (- 0 1))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap r@43@01)
          ($SortWrappers.IntTo$Snap (- 0 1)))
        $Snap.unit))
    (=
      ($PSF.lookup_p2 (as sm@65@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))
      ($PSF.lookup_p2 (as sm@58@01  $PSF<p2>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap r@43@01)
        ($SortWrappers.IntTo$Snap (- 0 1))))))))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p2%trigger ($SortWrappers.IntTo$Snap ($PSF.lookup_p2 (as sm@65@01  $PSF<p2>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap r@43@01)
  ($SortWrappers.IntTo$Snap (- 0 1))))) r@43@01 (- 0 1)))
; [exec]
; fold acc(p2(r, -1), write)
; [eval] -1
(declare-const sm@67@01 $PSF<p2>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_p2 (as sm@67@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))
  ($PSF.lookup_p2 (as sm@65@01  $PSF<p2>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap r@43@01)
    ($SortWrappers.IntTo$Snap (- 0 1))))))
; [eval] -1
; Precomputing data for removing quantified permissions
(define-fun pTaken@68@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and (= a r@43@01) (= b (- 0 1)))
    ($Perm.min
      (ite (and (= a r@43@01) (= b (- 0 1))) $Perm.Write $Perm.No)
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
(assert (not (=
  (-
    (ite (= (- 0 1) (- 0 1)) $Perm.Write $Perm.No)
    (pTaken@68@01 r@43@01 (- 0 1)))
  $Perm.No)))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and (= a r@43@01) (= b (- 0 1)))
    (= (- $Perm.Write (pTaken@68@01 a b)) $Perm.No))
  
  :qid |quant-u-17425|))))
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
(declare-const r@69@01 $Ref)
(declare-const i@70@01 Int)
(declare-const r@71@01 $Ref)
(declare-const i@72@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@73@01 Int)
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(declare-const $t@74@01 Int)
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@75@01 Int)
(push) ; 3
; [eval] x > 0
(assert (> x@75@01 0))
(pop) ; 3
(declare-const $t@76@01 $PSF<p2>)
(declare-fun inv@77@01 ($Ref Int) Int)
(declare-fun img@78@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@75@01 Int) (x2@75@01 Int)) (!
  (=>
    (and (> x1@75@01 0) (> x2@75@01 0) (= x1@75@01 x2@75@01))
    (= x1@75@01 x2@75@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@75@01 Int)) (!
  (=>
    (> x@75@01 0)
    (and (= (inv@77@01 r@71@01 x@75@01) x@75@01) (img@78@01 r@71@01 x@75@01)))
  :pattern ((inv@77@01 r@71@01 x@75@01))
  :pattern ((img@78@01 r@71@01 x@75@01))
  :qid |quant-u-17427|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@78@01 a b) (> (inv@77@01 a b) 0))
    (and (= r@71@01 a) (= (inv@77@01 a b) b)))
  :pattern ((inv@77@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; unfold acc(p1(r), write)
(assert (not (= r@71@01 $Ref.null)))
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
(assert (p1%trigger ($SortWrappers.IntTo$Snap $t@73@01) r@71@01))
; [exec]
; fold acc(p1(r), write)
; [exec]
; exhale (forall x: Int ::x > 0 ==> acc(p2(r, x), write))
(declare-const x@79@01 Int)
(set-option :timeout 0)
(push) ; 3
; [eval] x > 0
(assert (> x@79@01 0))
(pop) ; 3
(declare-fun inv@80@01 ($Ref Int) Int)
(declare-fun img@81@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@79@01 Int) (x2@79@01 Int)) (!
  (=>
    (and (> x1@79@01 0) (> x2@79@01 0) (= x1@79@01 x2@79@01))
    (= x1@79@01 x2@79@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@79@01 Int)) (!
  (=>
    (> x@79@01 0)
    (and (= (inv@80@01 r@71@01 x@79@01) x@79@01) (img@81@01 r@71@01 x@79@01)))
  :pattern ((inv@80@01 r@71@01 x@79@01))
  :pattern ((img@81@01 r@71@01 x@79@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@81@01 a b) (> (inv@80@01 a b) 0))
    (and (= r@71@01 a) (= (inv@80@01 a b) b)))
  :pattern ((inv@80@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@82@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (> (inv@80@01 a b) 0)
      (img@81@01 a b)
      (and (= a r@71@01) (= b (inv@80@01 a b))))
    ($Perm.min
      (ite (and (img@78@01 a b) (> (inv@77@01 a b) 0)) $Perm.Write $Perm.No)
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
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite (and (img@78@01 a b) (> (inv@77@01 a b) 0)) $Perm.Write $Perm.No)
      (pTaken@82@01 a b))
    $Perm.No)
  
  :qid |quant-u-17430|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 3
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (> (inv@80@01 a b) 0)
      (img@81@01 a b)
      (and (= a r@71@01) (= b (inv@80@01 a b))))
    (= (- $Perm.Write (pTaken@82@01 a b)) $Perm.No))
  
  :qid |quant-u-17431|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; unfold acc(p1(r), write)
; State saturation: after unfold
(set-option :timeout 40)
(check-sat)
; unknown
; [exec]
; fold acc(p1(r), write)
(pop) ; 2
(pop) ; 1
; ---------- m5 ----------
(declare-const r@83@01 $Ref)
(declare-const r2@84@01 $Ref)
(declare-const i@85@01 Int)
(declare-const r@86@01 $Ref)
(declare-const r2@87@01 $Ref)
(declare-const i@88@01 Int)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@89@01 $Snap)
(assert (= $t@89@01 ($Snap.combine ($Snap.first $t@89@01) ($Snap.second $t@89@01))))
(assert (not (= r@86@01 $Ref.null)))
(assert (=
  ($Snap.second $t@89@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@89@01))
    ($Snap.second ($Snap.second $t@89@01)))))
(push) ; 2
(set-option :timeout 10)
(assert (not (= r@86@01 r2@87@01)))
(check-sat)
; unknown
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
(assert (not (= r2@87@01 $Ref.null)))
(assert (=
  ($Snap.second ($Snap.second $t@89@01))
  ($Snap.combine
    ($Snap.first ($Snap.second ($Snap.second $t@89@01)))
    ($Snap.second ($Snap.second ($Snap.second $t@89@01))))))
; [eval] r2 != null
; [eval] r != null
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; inhale (forall x: Int ::x != i ==> acc(p2(r, x), write))
(declare-const x@90@01 Int)
(push) ; 3
; [eval] x != i
(assert (not (= x@90@01 i@88@01)))
(pop) ; 3
(declare-const $t@91@01 $PSF<p2>)
(declare-fun inv@92@01 ($Ref Int) Int)
(declare-fun img@93@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 3
(assert (not (forall ((x1@90@01 Int) (x2@90@01 Int)) (!
  (=>
    (and
      (not (= x1@90@01 i@88@01))
      (not (= x2@90@01 i@88@01))
      (= x1@90@01 x2@90@01))
    (= x1@90@01 x2@90@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@90@01 Int)) (!
  (=>
    (not (= x@90@01 i@88@01))
    (and (= (inv@92@01 r@86@01 x@90@01) x@90@01) (img@93@01 r@86@01 x@90@01)))
  :pattern ((inv@92@01 r@86@01 x@90@01))
  :pattern ((img@93@01 r@86@01 x@90@01))
  :qid |quant-u-17433|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@93@01 a b) (not (= (inv@92@01 a b) i@88@01)))
    (and (= r@86@01 a) (= (inv@92@01 a b) b)))
  :pattern ((inv@92@01 a b))
  :qid |p2-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; apply acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i)
; [eval] r != null
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01)))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))))))
(assert (=
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01)))
  $Snap.unit))
; [eval] r != null
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01)))
  ($Snap.combine
    ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))))
    ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01)))))))
(assert (=
  ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))))
  $Snap.unit))
; [eval] r.g == i
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01)))))
  i@88@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert r.g == i
; [eval] r.g == i
; [exec]
; package acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i) {
; }
(set-option :timeout 0)
(push) ; 3
(declare-const $t@94@01 $Snap)
; [eval] r != null
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] r.g == i
; Create MagicWandSnapFunction for wand acc(r.f, write) --* r != null && (acc(r.g, write) && r.g == i)
(declare-const mwsf@95@01 $MWSF)
(assert (forall (($t@94@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@95@01 $t@94@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@95@01 $t@94@01))
  :qid |quant-u-17434|)))
; [eval] r != null
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@94@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@95@01 $t@94@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.second ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first $t@89@01))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@95@01 $t@94@01))
  :qid |quant-u-17435|)))
(assert true)
; [exec]
; exhale (forall x: Int ::x != i ==> acc(p2(r, x), write))
(declare-const x@96@01 Int)
(push) ; 4
; [eval] x != i
(assert (not (= x@96@01 i@88@01)))
(pop) ; 4
(declare-fun inv@97@01 ($Ref Int) Int)
(declare-fun img@98@01 ($Ref Int) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@96@01 Int) (x2@96@01 Int)) (!
  (=>
    (and
      (not (= x1@96@01 i@88@01))
      (not (= x2@96@01 i@88@01))
      (= x1@96@01 x2@96@01))
    (= x1@96@01 x2@96@01))
  
  :qid |p2-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@96@01 Int)) (!
  (=>
    (not (= x@96@01 i@88@01))
    (and (= (inv@97@01 r@86@01 x@96@01) x@96@01) (img@98@01 r@86@01 x@96@01)))
  :pattern ((inv@97@01 r@86@01 x@96@01))
  :pattern ((img@98@01 r@86@01 x@96@01))
  :qid |p2-invOfFct|)))
(assert (forall ((a $Ref) (b Int)) (!
  (=>
    (and (img@98@01 a b) (not (= (inv@97@01 a b) i@88@01)))
    (and (= r@86@01 a) (= (inv@97@01 a b) b)))
  :pattern ((inv@97@01 a b))
  :qid |p2-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@99@01 ((a $Ref) (b Int)) $Perm
  (ite
    (and
      (not (= (inv@97@01 a b) i@88@01))
      (img@98@01 a b)
      (and (= a r@86@01) (= b (inv@97@01 a b))))
    ($Perm.min
      (ite
        (and (img@93@01 a b) (not (= (inv@92@01 a b) i@88@01)))
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
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=
    (-
      (ite
        (and (img@93@01 a b) (not (= (inv@92@01 a b) i@88@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@99@01 a b))
    $Perm.No)
  
  :qid |quant-u-17438|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((a $Ref) (b Int)) (!
  (=>
    (and
      (not (= (inv@97@01 a b) i@88@01))
      (img@98@01 a b)
      (and (= a r@86@01) (= b (inv@97@01 a b))))
    (= (- $Perm.Write (pTaken@99@01 a b)) $Perm.No))
  
  :qid |quant-u-17439|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; apply acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i)
; [eval] r2 != null
(assert (=
  (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))
  ($Snap.combine
    ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01))))
    ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))))))
(assert (=
  ($Snap.first (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01))))
  $Snap.unit))
; [eval] r2 != null
(assert (=
  ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01))))
  ($Snap.combine
    ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))))
    ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01))))))))
(assert (=
  ($Snap.second ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))))
  $Snap.unit))
; [eval] r2.g == i
(assert (=
  ($SortWrappers.$SnapToInt ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01))))))
  i@88@01))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert r2.g == i
; [eval] r2.g == i
; [exec]
; package acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i) {
; }
(set-option :timeout 0)
(push) ; 4
(declare-const $t@100@01 $Snap)
; [eval] r2 != null
(push) ; 5
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(check-sat)
; unknown
(check-sat)
; unknown
(check-sat)
; unknown
; [eval] r2.g == i
; Create MagicWandSnapFunction for wand acc(r2.f, write) --* r2 != null && (acc(r2.g, write) && r2.g == i)
(declare-const mwsf@101@01 $MWSF)
(assert (forall (($t@100@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@101@01 $t@100@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@101@01 $t@100@01))
  :qid |quant-u-17440|)))
; [eval] r2 != null
(pop) ; 4
(set-option :timeout 0)
(push) ; 4
(assert (forall (($t@100@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@101@01 $t@100@01)
    ($Snap.combine
      $Snap.unit
      ($Snap.combine
        ($Snap.first ($Snap.second (MWSF_apply ($SortWrappers.$SnapTo$MWSF ($Snap.first ($Snap.second ($Snap.second $t@89@01)))) ($Snap.first ($Snap.second $t@89@01)))))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@101@01 $t@100@01))
  :qid |quant-u-17441|)))
(assert true)
(pop) ; 4
(pop) ; 3
(pop) ; 2
(pop) ; 1
