(get-info :version)
; (:version "4.12.1")
; Started: 2024-12-26 14:38:07
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
(declare-sort $PSF<Cell> 0)
(declare-sort $PSF<Pair> 0)
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
(declare-fun $SortWrappers.$PSF<Cell>To$Snap ($PSF<Cell>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Cell> ($Snap) $PSF<Cell>)
(assert (forall ((x $PSF<Cell>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Cell>($SortWrappers.$PSF<Cell>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Cell>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Cell>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Cell>To$Snap($SortWrappers.$SnapTo$PSF<Cell> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Cell> x))
    :qid |$Snap.$PSF<Cell>To$SnapTo$PSF<Cell>|
    )))
(declare-fun $SortWrappers.$PSF<Pair>To$Snap ($PSF<Pair>) $Snap)
(declare-fun $SortWrappers.$SnapTo$PSF<Pair> ($Snap) $PSF<Pair>)
(assert (forall ((x $PSF<Pair>)) (!
    (= x ($SortWrappers.$SnapTo$PSF<Pair>($SortWrappers.$PSF<Pair>To$Snap x)))
    :pattern (($SortWrappers.$PSF<Pair>To$Snap x))
    :qid |$Snap.$SnapTo$PSF<Pair>To$Snap|
    )))
(assert (forall ((x $Snap)) (!
    (= x ($SortWrappers.$PSF<Pair>To$Snap($SortWrappers.$SnapTo$PSF<Pair> x)))
    :pattern (($SortWrappers.$SnapTo$PSF<Pair> x))
    :qid |$Snap.$PSF<Pair>To$SnapTo$PSF<Pair>|
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
; /predicate_snap_functions_declarations.smt2 [Cell: Int]
(declare-fun $PSF.domain_Cell ($PSF<Cell>) Set<$Snap>)
(declare-fun $PSF.lookup_Cell ($PSF<Cell> $Snap) Int)
(declare-fun $PSF.after_Cell ($PSF<Cell> $PSF<Cell>) Bool)
(declare-fun $PSF.loc_Cell (Int $Snap) Bool)
(declare-fun $PSF.perm_Cell ($PPM $Snap) $Perm)
(declare-const $psfTOP_Cell $PSF<Cell>)
; /predicate_snap_functions_declarations.smt2 [Pair: Snap]
(declare-fun $PSF.domain_Pair ($PSF<Pair>) Set<$Snap>)
(declare-fun $PSF.lookup_Pair ($PSF<Pair> $Snap) $Snap)
(declare-fun $PSF.after_Pair ($PSF<Pair> $PSF<Pair>) Bool)
(declare-fun $PSF.loc_Pair ($Snap $Snap) Bool)
(declare-fun $PSF.perm_Pair ($PPM $Snap) $Perm)
(declare-const $psfTOP_Pair $PSF<Pair>)
(declare-fun MWSF_apply ($MWSF $Snap) $Snap)
; Declaring symbols related to program functions (from program analysis)
(declare-fun sum ($Snap $Ref $Ref) Int)
(declare-fun sum%limited ($Snap $Ref $Ref) Int)
(declare-fun sum%stateless ($Ref $Ref) Bool)
(declare-fun sum%precondition ($Snap $Ref $Ref) Bool)
(declare-fun get ($Snap $Ref) Int)
(declare-fun get%limited ($Snap $Ref) Int)
(declare-fun get%stateless ($Ref) Bool)
(declare-fun get%precondition ($Snap $Ref) Bool)
; Snapshot variable to be used during function verification
(declare-fun s@$ () $Snap)
; Declaring predicate trigger functions
(declare-fun Cell%trigger ($Snap $Ref) Bool)
(declare-fun Pair%trigger ($Snap $Ref $Ref) Bool)
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
; /predicate_snap_functions_axioms.smt2 [Cell: Int]
(assert (forall ((vs $PSF<Cell>) (ws $PSF<Cell>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Cell vs) ($PSF.domain_Cell ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Cell vs))
            (= ($PSF.lookup_Cell vs x) ($PSF.lookup_Cell ws x)))
          :pattern (($PSF.lookup_Cell vs x) ($PSF.lookup_Cell ws x))
          :qid |qp.$PSF<Cell>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Cell>To$Snap vs)
              ($SortWrappers.$PSF<Cell>To$Snap ws)
              )
    :qid |qp.$PSF<Cell>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Cell pm s))
    :pattern (($PSF.perm_Cell pm s)))))
(assert (forall ((s $Snap) (f Int)) (!
    (= ($PSF.loc_Cell f s) true)
    :pattern (($PSF.loc_Cell f s)))))
; /predicate_snap_functions_axioms.smt2 [Pair: Snap]
(assert (forall ((vs $PSF<Pair>) (ws $PSF<Pair>)) (!
    (=>
      (and
        (Set_equal ($PSF.domain_Pair vs) ($PSF.domain_Pair ws))
        (forall ((x $Snap)) (!
          (=>
            (Set_in x ($PSF.domain_Pair vs))
            (= ($PSF.lookup_Pair vs x) ($PSF.lookup_Pair ws x)))
          :pattern (($PSF.lookup_Pair vs x) ($PSF.lookup_Pair ws x))
          :qid |qp.$PSF<Pair>-eq-inner|
          )))
      (= vs ws))
    :pattern (($SortWrappers.$PSF<Pair>To$Snap vs)
              ($SortWrappers.$PSF<Pair>To$Snap ws)
              )
    :qid |qp.$PSF<Pair>-eq-outer|
    )))
(assert (forall ((s $Snap) (pm $PPM)) (!
    ($Perm.isValidVar ($PSF.perm_Pair pm s))
    :pattern (($PSF.perm_Pair pm s)))))
(assert (forall ((s $Snap) (f $Snap)) (!
    (= ($PSF.loc_Pair f s) true)
    :pattern (($PSF.loc_Pair f s)))))
; End preamble
; ------------------------------------------------------------
; State saturation: after preamble
(set-option :timeout 100)
(check-sat)
; unknown
; ------------------------------------------------------------
; Begin function- and predicate-related preamble
; Declaring symbols related to program functions (from verification)
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (= (sum%limited s@$ x@0@00 y@1@00) (sum s@$ x@0@00 y@1@00))
  :pattern ((sum s@$ x@0@00 y@1@00))
  :qid |quant-u-20630|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (sum%stateless x@0@00 y@1@00)
  :pattern ((sum%limited s@$ x@0@00 y@1@00))
  :qid |quant-u-20631|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  (=>
    (sum%precondition s@$ x@0@00 y@1@00)
    (=
      (sum s@$ x@0@00 y@1@00)
      (+
        ($SortWrappers.$SnapToInt ($Snap.first s@$))
        ($SortWrappers.$SnapToInt ($Snap.second s@$)))))
  :pattern ((sum s@$ x@0@00 y@1@00))
  :qid |quant-u-20634|)))
(assert (forall ((s@$ $Snap) (x@0@00 $Ref) (y@1@00 $Ref)) (!
  true
  :pattern ((sum s@$ x@0@00 y@1@00))
  :qid |quant-u-20635|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (= (get%limited s@$ x@3@00) (get s@$ x@3@00))
  :pattern ((get s@$ x@3@00))
  :qid |quant-u-20632|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (get%stateless x@3@00)
  :pattern ((get%limited s@$ x@3@00))
  :qid |quant-u-20633|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  (=>
    (get%precondition s@$ x@3@00)
    (= (get s@$ x@3@00) ($SortWrappers.$SnapToInt s@$)))
  :pattern ((get s@$ x@3@00))
  :qid |quant-u-20636|)))
(assert (forall ((s@$ $Snap) (x@3@00 $Ref)) (!
  true
  :pattern ((get s@$ x@3@00))
  :qid |quant-u-20637|)))
; End function- and predicate-related preamble
; ------------------------------------------------------------
; ---------- test0 ----------
(declare-const x@0@01 $Ref)
(declare-const x@1@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@2@01 $Snap)
(assert (= $t@2@01 ($Snap.combine ($Snap.first $t@2@01) ($Snap.second $t@2@01))))
(declare-const y@3@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@4@01 ($Ref) $Ref)
(declare-fun img@5@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@3@01 $Ref)) (!
  (and (= (inv@4@01 y@3@01) y@3@01) (img@5@01 y@3@01))
  :pattern ((inv@4@01 y@3@01))
  :pattern ((img@5@01 y@3@01))
  :qid |quant-u-20639|)))
(assert (forall ((x $Ref)) (!
  (=> (img@5@01 x) (= (inv@4@01 x) x))
  :pattern ((inv@4@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@2@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@1@01) (> (ite (img@5@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20640|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@6@01 $PSF<Cell>)
(declare-const s@7@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@5@01 x@1@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@6@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@2@01)) ($SortWrappers.$RefTo$Snap x@1@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@6@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@5@01 x@1@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@6@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@2@01)) ($SortWrappers.$RefTo$Snap x@1@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@6@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@6@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package true --* true {
;   assert acc(Cell(x), write) && get(x) == 0
; }
(push) ; 3
(declare-const $t@8@01 $Snap)
(assert (= $t@8@01 $Snap.unit))
; [exec]
; assert acc(Cell(x), write) && get(x) == 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@1@01) false)
  
  :qid |quant-u-20641|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@9@01 $PSF<Cell>)
(declare-const s@10@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@1@01) false)
  
  :qid |quant-u-20642|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@11@01 $PSF<Cell>)
(declare-const s@12@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@9@01  $PSF<Cell>) (as sm@11@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@13@01 ((x $Ref)) $Perm
  (ite
    (= x x@1@01)
    ($Perm.min (ite (img@5@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@5@01 x) $Perm.Write $Perm.No) (pTaken@13@01 x)) $Perm.No)
  
  :qid |quant-u-20644|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@13@01 x) $Perm.No)
  
  :qid |quant-u-20645|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@1@01) (= (- $Perm.Write (pTaken@13@01 x)) $Perm.No))
  
  :qid |quant-u-20646|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@14@01 $PSF<Cell>)
(declare-const s@15@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@5@01 x@1@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@14@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@2@01)) ($SortWrappers.$RefTo$Snap x@1@01))))))
(assert (= (as sm@9@01  $PSF<Cell>) (as sm@14@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@16@01 $PSF<Cell>)
(declare-const $t@17@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (= x x@1@01)
    (=
      ($PSF.lookup_Cell $t@17@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@14@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell $t@16@01 ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@14@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@17@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20648|)))
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@1@01) (> (ite (= x x@1@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20649|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@18@01 $PSF<Cell>)
(declare-const s@19@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
    ($PSF.lookup_Cell $t@17@01 ($SortWrappers.$RefTo$Snap x@1@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
    ($PSF.lookup_Cell $t@17@01 ($SortWrappers.$RefTo$Snap x@1@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@18@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))) x@1@01)
  0))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@20@01 $MWSF)
(assert (forall (($t@8@01 $Snap)) (!
  (= (MWSF_apply mwsf@20@01 $t@8@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@20@01 $t@8@01))
  :qid |quant-u-20650|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@8@01 $Snap)) (!
  (= (MWSF_apply mwsf@20@01 $t@8@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@20@01 $t@8@01))
  :qid |quant-u-20651|)))
(assert (and
  (= (as sm@9@01  $PSF<Cell>) (as sm@11@01  $PSF<Cell>))
  (=>
    (img@5@01 x@1@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@1@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@14@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@1@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@2@01)) ($SortWrappers.$RefTo$Snap x@1@01)))))
  (= (as sm@9@01  $PSF<Cell>) (as sm@14@01  $PSF<Cell>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), write))
(declare-const y@21@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@21@01 x@1@01)))
(pop) ; 4
(declare-fun inv@22@01 ($Ref) $Ref)
(declare-fun img@23@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@21@01 $Ref) (y2@21@01 $Ref)) (!
  (=>
    (and
      (not (= y1@21@01 x@1@01))
      (not (= y2@21@01 x@1@01))
      (= y1@21@01 y2@21@01))
    (= y1@21@01 y2@21@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@21@01 $Ref)) (!
  (=>
    (not (= y@21@01 x@1@01))
    (and (= (inv@22@01 y@21@01) y@21@01) (img@23@01 y@21@01)))
  :pattern ((inv@22@01 y@21@01))
  :pattern ((img@23@01 y@21@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@23@01 x) (not (= (inv@22@01 x) x@1@01))) (= (inv@22@01 x) x))
  :pattern ((inv@22@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@24@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@22@01 x) x@1@01)) (img@23@01 x) (= x (inv@22@01 x)))
    ($Perm.min
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
      (pTaken@24@01 x))
    $Perm.No)
  
  :qid |quant-u-20654|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@22@01 x) x@1@01)) (img@23@01 x) (= x (inv@22@01 x)))
    (= (- $Perm.Write (pTaken@24@01 x)) $Perm.No))
  
  :qid |quant-u-20655|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@25@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@26@01 ($Ref) $Ref)
(declare-fun img@27@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@25@01 $Ref)) (!
  (and (= (inv@26@01 y@25@01) y@25@01) (img@27@01 y@25@01))
  :pattern ((inv@26@01 y@25@01))
  :pattern ((img@27@01 y@25@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@27@01 x) (= (inv@26@01 x) x))
  :pattern ((inv@26@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@28@01 ((x $Ref)) $Perm
  (ite
    (and (img@27@01 x) (= x (inv@26@01 x)))
    ($Perm.min
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
      (pTaken@28@01 x))
    $Perm.No)
  
  :qid |quant-u-20658|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@27@01 x) (= x (inv@26@01 x)))
    (= (- $Perm.Write (pTaken@28@01 x)) $Perm.No))
  
  :qid |quant-u-20659|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@27@01 x) (= x (inv@26@01 x)))
    (= (- $Perm.Write (pTaken@28@01 x)) $Perm.No))
  
  :qid |quant-u-20659|))))
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
(declare-const y@29@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@30@01 ($Ref) $Ref)
(declare-fun img@31@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@29@01 $Ref)) (!
  (and (= (inv@30@01 y@29@01) y@29@01) (img@31@01 y@29@01))
  :pattern ((inv@30@01 y@29@01))
  :pattern ((img@31@01 y@29@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@31@01 x) (= (inv@30@01 x) x))
  :pattern ((inv@30@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@32@01 ((x $Ref)) $Perm
  (ite
    (and (img@31@01 x) (= x (inv@30@01 x)))
    ($Perm.min
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@5@01 x) (- $Perm.Write (pTaken@13@01 x)) $Perm.No)
      (pTaken@32@01 x))
    $Perm.No)
  
  :qid |quant-u-20662|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@31@01 x) (= x (inv@30@01 x)))
    (= (- $Perm.Write (pTaken@32@01 x)) $Perm.No))
  
  :qid |quant-u-20663|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@31@01 x) (= x (inv@30@01 x)))
    (= (- $Perm.Write (pTaken@32@01 x)) $Perm.No))
  
  :qid |quant-u-20663|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test1 ----------
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
; var y: Ref
(declare-const y@33@01 $Ref)
; [exec]
; y := new()
(declare-const y@34@01 $Ref)
(assert (not (= y@34@01 $Ref.null)))
(assert (not (= y@34@01 y@33@01)))
; [exec]
; package true --* true {
;   inhale (forall x: Ref ::true ==> acc(Cell(x), write))
;   assert (forall x: Ref ::true ==> acc(Cell(x), write))
;   exhale acc(Cell(y), write)
;   assert (forall x: Ref ::x != y ==> acc(Cell(x), write))
;   assert (forall x: Ref ::x != y ==> acc(Cell(x), write))
;   assert (forall x: Ref ::true ==> acc(Cell(x), write))
; }
(push) ; 3
(declare-const $t@35@01 $Snap)
(assert (= $t@35@01 $Snap.unit))
; [exec]
; inhale (forall x: Ref ::true ==> acc(Cell(x), write))
(declare-const x@36@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-const $t@37@01 $PSF<Cell>)
(declare-fun inv@38@01 ($Ref) $Ref)
(declare-fun img@39@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@36@01 $Ref)) (!
  (and (= (inv@38@01 x@36@01) x@36@01) (img@39@01 x@36@01))
  :pattern ((inv@38@01 x@36@01))
  :pattern ((img@39@01 x@36@01))
  :qid |quant-u-20665|)))
(assert (forall ((x $Ref)) (!
  (=> (img@39@01 x) (= (inv@38@01 x) x))
  :pattern ((inv@38@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::true ==> acc(Cell(x), write))
(declare-const x@40@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@41@01 ($Ref) $Ref)
(declare-fun img@42@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@40@01 $Ref)) (!
  (and (= (inv@41@01 x@40@01) x@40@01) (img@42@01 x@40@01))
  :pattern ((inv@41@01 x@40@01))
  :pattern ((img@42@01 x@40@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@42@01 x) (= (inv@41@01 x) x))
  :pattern ((inv@41@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20667|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@43@01 ((x $Ref)) $Perm
  (ite
    (and (img@42@01 x) (= x (inv@41@01 x)))
    ($Perm.min (ite (img@39@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@39@01 x) $Perm.Write $Perm.No) (pTaken@43@01 x)) $Perm.No)
  
  :qid |quant-u-20669|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@42@01 x) (= x (inv@41@01 x)))
    (= (- $Perm.Write (pTaken@43@01 x)) $Perm.No))
  
  :qid |quant-u-20670|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@44@01 $PSF<Cell>)
(declare-const s@45@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@45@01 $Snap)) (!
  (=>
    (img@39@01 ($SortWrappers.$SnapTo$Ref s@45@01))
    (and
      (not (= s@45@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@44@01  $PSF<Cell>) s@45@01)
        ($PSF.lookup_Cell $t@37@01 s@45@01))))
  :pattern (($PSF.lookup_Cell (as sm@44@01  $PSF<Cell>) s@45@01))
  :pattern (($PSF.lookup_Cell $t@37@01 s@45@01))
  :qid |qp.psmValDef3|)))
(declare-fun inv@46@01 ($Ref) $Ref)
(declare-fun img@47@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (img@47@01 x) (= (inv@46@01 x) x))
  :pattern ((inv@46@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@40@01 $Ref)) (!
  (and (= (inv@46@01 x@40@01) x@40@01) (img@47@01 x@40@01))
  :pattern ((inv@46@01 x@40@01))
  :pattern ((img@47@01 x@40@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; exhale acc(Cell(y), write)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@48@01 ((x $Ref)) $Perm
  (ite
    (= x y@34@01)
    ($Perm.min (ite (img@47@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@47@01 x) $Perm.Write $Perm.No) (pTaken@48@01 x)) $Perm.No)
  
  :qid |quant-u-20672|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@48@01 x) $Perm.No)
  
  :qid |quant-u-20673|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x y@34@01) (= (- $Perm.Write (pTaken@48@01 x)) $Perm.No))
  
  :qid |quant-u-20674|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@49@01 $PSF<Cell>)
(declare-const s@50@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@47@01 y@34@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap y@34@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@49@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap y@34@01))
      ($PSF.lookup_Cell (as sm@44@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap y@34@01))))))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::x != y ==> acc(Cell(x), write))
(declare-const x@51@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] x != y
(assert (not (= x@51@01 y@34@01)))
(pop) ; 4
(declare-fun inv@52@01 ($Ref) $Ref)
(declare-fun img@53@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@51@01 $Ref) (x2@51@01 $Ref)) (!
  (=>
    (and
      (not (= x1@51@01 y@34@01))
      (not (= x2@51@01 y@34@01))
      (= x1@51@01 x2@51@01))
    (= x1@51@01 x2@51@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@51@01 $Ref)) (!
  (=>
    (not (= x@51@01 y@34@01))
    (and (= (inv@52@01 x@51@01) x@51@01) (img@53@01 x@51@01)))
  :pattern ((inv@52@01 x@51@01))
  :pattern ((img@53@01 x@51@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@53@01 x) (not (= (inv@52@01 x) y@34@01))) (= (inv@52@01 x) x))
  :pattern ((inv@52@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20676|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@54@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@52@01 x) y@34@01)) (img@53@01 x) (= x (inv@52@01 x)))
    ($Perm.min
      (ite (img@47@01 x) (- $Perm.Write (pTaken@48@01 x)) $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@47@01 x) (- $Perm.Write (pTaken@48@01 x)) $Perm.No)
      (pTaken@54@01 x))
    $Perm.No)
  
  :qid |quant-u-20678|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@52@01 x) y@34@01)) (img@53@01 x) (= x (inv@52@01 x)))
    (= (- $Perm.Write (pTaken@54@01 x)) $Perm.No))
  
  :qid |quant-u-20679|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@55@01 $PSF<Cell>)
(declare-const s@56@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@56@01 $Snap)) (!
  (=>
    (ite
      (img@47@01 ($SortWrappers.$SnapTo$Ref s@56@01))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@48@01 ($SortWrappers.$SnapTo$Ref s@56@01))))
      false)
    (and
      (not (= s@56@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@56@01)
        ($PSF.lookup_Cell (as sm@44@01  $PSF<Cell>) s@56@01))))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@56@01))
  :pattern (($PSF.lookup_Cell (as sm@44@01  $PSF<Cell>) s@56@01))
  :qid |qp.psmValDef5|)))
(declare-fun inv@57@01 ($Ref) $Ref)
(declare-fun img@58@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01))) (= (inv@57@01 x) x))
  :pattern ((inv@57@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@51@01 $Ref)) (!
  (=>
    (not (= (inv@52@01 x@51@01) y@34@01))
    (and (= (inv@57@01 x@51@01) x@51@01) (img@58@01 x@51@01)))
  :pattern ((inv@57@01 x@51@01))
  :pattern ((img@58@01 x@51@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert (forall x: Ref ::x != y ==> acc(Cell(x), write))
(declare-const x@59@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] x != y
(assert (not (= x@59@01 y@34@01)))
(pop) ; 4
(declare-fun inv@60@01 ($Ref) $Ref)
(declare-fun img@61@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((x1@59@01 $Ref) (x2@59@01 $Ref)) (!
  (=>
    (and
      (not (= x1@59@01 y@34@01))
      (not (= x2@59@01 y@34@01))
      (= x1@59@01 x2@59@01))
    (= x1@59@01 x2@59@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((x@59@01 $Ref)) (!
  (=>
    (not (= x@59@01 y@34@01))
    (and (= (inv@60@01 x@59@01) x@59@01) (img@61@01 x@59@01)))
  :pattern ((inv@60@01 x@59@01))
  :pattern ((img@61@01 x@59@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@61@01 x) (not (= (inv@60@01 x) y@34@01))) (= (inv@60@01 x) x))
  :pattern ((inv@60@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20681|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@62@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@60@01 x) y@34@01)) (img@61@01 x) (= x (inv@60@01 x)))
    ($Perm.min
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@62@01 x))
    $Perm.No)
  
  :qid |quant-u-20683|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@62@01 x) $Perm.No)
  
  :qid |quant-u-20684|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@60@01 x) y@34@01)) (img@61@01 x) (= x (inv@60@01 x)))
    (= (- $Perm.Write (pTaken@62@01 x)) $Perm.No))
  
  :qid |quant-u-20685|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@63@01 $PSF<Cell>)
(declare-const s@64@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@64@01 $Snap)) (!
  (=>
    (and
      (img@58@01 ($SortWrappers.$SnapTo$Ref s@64@01))
      (not (= (inv@52@01 ($SortWrappers.$SnapTo$Ref s@64@01)) y@34@01)))
    (and
      (not (= s@64@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@64@01)
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@64@01))))
  :pattern (($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@64@01))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@64@01))
  :qid |qp.psmValDef6|)))
(declare-fun inv@65@01 ($Ref) $Ref)
(declare-fun img@66@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01))) (= (inv@65@01 x) x))
  :pattern ((inv@65@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@59@01 $Ref)) (!
  (=>
    (not (= (inv@60@01 x@59@01) y@34@01))
    (and (= (inv@65@01 x@59@01) x@59@01) (img@66@01 x@59@01)))
  :pattern ((inv@65@01 x@59@01))
  :pattern ((img@66@01 x@59@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@59@01 x@51@01)
    (=
      (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
      (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))))
  
  :qid |quant-u-20686|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert (forall x: Ref ::true ==> acc(Cell(x), write))
(declare-const x@67@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@68@01 ($Ref) $Ref)
(declare-fun img@69@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@67@01 $Ref)) (!
  (and (= (inv@68@01 x@67@01) x@67@01) (img@69@01 x@67@01))
  :pattern ((inv@68@01 x@67@01))
  :pattern ((img@69@01 x@67@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@69@01 x) (= (inv@68@01 x) x))
  :pattern ((inv@68@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20688|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@70@01 ((x $Ref)) $Perm
  (ite
    (and (img@69@01 x) (= x (inv@68@01 x)))
    ($Perm.min
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@71@01 ((x $Ref)) $Perm
  (ite
    (and (img@69@01 x) (= x (inv@68@01 x)))
    ($Perm.min
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@70@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (pTaken@70@01 x))
    $Perm.No)
  
  :qid |quant-u-20690|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- $Perm.Write (pTaken@70@01 x)) $Perm.No))
  
  :qid |quant-u-20691|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@71@01 x))
    $Perm.No)
  
  :qid |quant-u-20692|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@71@01 x) $Perm.No)
  
  :qid |quant-u-20693|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@70@01 x)) (pTaken@71@01 x)) $Perm.No))
  
  :qid |quant-u-20694|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@70@01 x)) (pTaken@71@01 x)) $Perm.No))
  
  :qid |quant-u-20694|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@72@01 $PSF<Cell>)
(declare-const s@73@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@73@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@58@01 ($SortWrappers.$SnapTo$Ref s@73@01))
        (not (= (inv@52@01 ($SortWrappers.$SnapTo$Ref s@73@01)) y@34@01)))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@62@01 ($SortWrappers.$SnapTo$Ref s@73@01))))
      false)
    (and
      (not (= s@73@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@72@01  $PSF<Cell>) s@73@01)
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@73@01))))
  :pattern (($PSF.lookup_Cell (as sm@72@01  $PSF<Cell>) s@73@01))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@73@01))
  :qid |qp.psmValDef7|)))
(assert (forall ((s@73@01 $Snap)) (!
  (=>
    (and
      (img@66@01 ($SortWrappers.$SnapTo$Ref s@73@01))
      (not (= (inv@60@01 ($SortWrappers.$SnapTo$Ref s@73@01)) y@34@01)))
    (and
      (not (= s@73@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@72@01  $PSF<Cell>) s@73@01)
        ($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@73@01))))
  :pattern (($PSF.lookup_Cell (as sm@72@01  $PSF<Cell>) s@73@01))
  :pattern (($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@73@01))
  :qid |qp.psmValDef8|)))
(declare-fun inv@74@01 ($Ref) $Ref)
(declare-fun img@75@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@75@01 x)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@70@01 x)) (pTaken@71@01 x)))))
    (= (inv@74@01 x) x))
  :pattern ((inv@74@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@67@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@70@01 x@67@01)) (pTaken@71@01 x@67@01))))
    (and (= (inv@74@01 x@67@01) x@67@01) (img@75@01 x@67@01)))
  :pattern ((inv@74@01 x@67@01))
  :pattern ((img@75@01 x@67@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@70@01 x)) (pTaken@71@01 x)) $Perm.No))
  
  :qid |quant-u-20695|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@76@01 $PSF<Cell>)
(declare-const s@77@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@78@01 ($Ref) $Ref)
(declare-fun img@79@01 ($Ref) Bool)
(assert (= (as sm@72@01  $PSF<Cell>) (as sm@76@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@70@01 x)) (pTaken@71@01 x)) $Perm.No))
  
  :qid |quant-u-20696|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@80@01 $PSF<Cell>)
(declare-const s@81@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@82@01 ($Ref) $Ref)
(declare-fun img@83@01 ($Ref) Bool)
(assert (= (as sm@72@01  $PSF<Cell>) (as sm@80@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@51@01 x@59@01)
    (=
      (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
      (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))))
  
  :qid |quant-u-20697|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20698|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@84@01 ((x $Ref)) $Perm
  (ite
    (and (img@69@01 x) (= x (inv@68@01 x)))
    ($Perm.min
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@85@01 ((x $Ref)) $Perm
  (ite
    (and (img@69@01 x) (= x (inv@68@01 x)))
    ($Perm.min
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (- $Perm.Write (pTaken@84@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@84@01 x))
    $Perm.No)
  
  :qid |quant-u-20700|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- $Perm.Write (pTaken@84@01 x)) $Perm.No))
  
  :qid |quant-u-20701|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (pTaken@85@01 x))
    $Perm.No)
  
  :qid |quant-u-20702|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@85@01 x) $Perm.No)
  
  :qid |quant-u-20703|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@84@01 x)) (pTaken@85@01 x)) $Perm.No))
  
  :qid |quant-u-20704|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@84@01 x)) (pTaken@85@01 x)) $Perm.No))
  
  :qid |quant-u-20704|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@86@01 $PSF<Cell>)
(declare-const s@87@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@87@01 $Snap)) (!
  (=>
    (and
      (img@66@01 ($SortWrappers.$SnapTo$Ref s@87@01))
      (not (= (inv@60@01 ($SortWrappers.$SnapTo$Ref s@87@01)) y@34@01)))
    (and
      (not (= s@87@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@86@01  $PSF<Cell>) s@87@01)
        ($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@87@01))))
  :pattern (($PSF.lookup_Cell (as sm@86@01  $PSF<Cell>) s@87@01))
  :pattern (($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@87@01))
  :qid |qp.psmValDef9|)))
(assert (forall ((s@87@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@58@01 ($SortWrappers.$SnapTo$Ref s@87@01))
        (not (= (inv@52@01 ($SortWrappers.$SnapTo$Ref s@87@01)) y@34@01)))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@62@01 ($SortWrappers.$SnapTo$Ref s@87@01))))
      false)
    (and
      (not (= s@87@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@86@01  $PSF<Cell>) s@87@01)
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@87@01))))
  :pattern (($PSF.lookup_Cell (as sm@86@01  $PSF<Cell>) s@87@01))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@87@01))
  :qid |qp.psmValDef10|)))
(declare-fun inv@88@01 ($Ref) $Ref)
(declare-fun img@89@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@89@01 x)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@84@01 x)) (pTaken@85@01 x)))))
    (= (inv@88@01 x) x))
  :pattern ((inv@88@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@67@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@84@01 x@67@01)) (pTaken@85@01 x@67@01))))
    (and (= (inv@88@01 x@67@01) x@67@01) (img@89@01 x@67@01)))
  :pattern ((inv@88@01 x@67@01))
  :pattern ((img@89@01 x@67@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@84@01 x)) (pTaken@85@01 x)) $Perm.No))
  
  :qid |quant-u-20705|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@90@01 $PSF<Cell>)
(declare-const s@91@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@92@01 ($Ref) $Ref)
(declare-fun img@93@01 ($Ref) Bool)
(assert (= (as sm@86@01  $PSF<Cell>) (as sm@90@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@69@01 x) (= x (inv@68@01 x)))
    (= (- (- $Perm.Write (pTaken@84@01 x)) (pTaken@85@01 x)) $Perm.No))
  
  :qid |quant-u-20706|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@94@01 $PSF<Cell>)
(declare-const s@95@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@96@01 ($Ref) $Ref)
(declare-fun img@97@01 ($Ref) Bool)
(assert (= (as sm@86@01  $PSF<Cell>) (as sm@94@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@51@01 x@59@01)
    (=
      (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
      (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))))
  
  :qid |quant-u-20707|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(declare-const x@98@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@99@01 ($Ref) $Ref)
(declare-fun img@100@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((x@98@01 $Ref)) (!
  (and (= (inv@99@01 x@98@01) x@98@01) (img@100@01 x@98@01))
  :pattern ((inv@99@01 x@98@01))
  :pattern ((img@100@01 x@98@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@100@01 x) (= (inv@99@01 x) x))
  :pattern ((inv@99@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20709|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@101@01 ((x $Ref)) $Perm
  (ite
    (and (img@100@01 x) (= x (inv@99@01 x)))
    ($Perm.min
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@102@01 ((x $Ref)) $Perm
  (ite
    (and (img@100@01 x) (= x (inv@99@01 x)))
    ($Perm.min
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (- $Perm.Write (pTaken@101@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@101@01 x))
    $Perm.No)
  
  :qid |quant-u-20711|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- $Perm.Write (pTaken@101@01 x)) $Perm.No))
  
  :qid |quant-u-20712|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (pTaken@102@01 x))
    $Perm.No)
  
  :qid |quant-u-20713|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@102@01 x) $Perm.No)
  
  :qid |quant-u-20714|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@101@01 x)) (pTaken@102@01 x)) $Perm.No))
  
  :qid |quant-u-20715|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@101@01 x)) (pTaken@102@01 x)) $Perm.No))
  
  :qid |quant-u-20715|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@103@01 $PSF<Cell>)
(declare-const s@104@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@104@01 $Snap)) (!
  (=>
    (and
      (img@66@01 ($SortWrappers.$SnapTo$Ref s@104@01))
      (not (= (inv@60@01 ($SortWrappers.$SnapTo$Ref s@104@01)) y@34@01)))
    (and
      (not (= s@104@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@103@01  $PSF<Cell>) s@104@01)
        ($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@104@01))))
  :pattern (($PSF.lookup_Cell (as sm@103@01  $PSF<Cell>) s@104@01))
  :pattern (($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@104@01))
  :qid |qp.psmValDef11|)))
(assert (forall ((s@104@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@58@01 ($SortWrappers.$SnapTo$Ref s@104@01))
        (not (= (inv@52@01 ($SortWrappers.$SnapTo$Ref s@104@01)) y@34@01)))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@62@01 ($SortWrappers.$SnapTo$Ref s@104@01))))
      false)
    (and
      (not (= s@104@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@103@01  $PSF<Cell>) s@104@01)
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@104@01))))
  :pattern (($PSF.lookup_Cell (as sm@103@01  $PSF<Cell>) s@104@01))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@104@01))
  :qid |qp.psmValDef12|)))
(declare-fun inv@105@01 ($Ref) $Ref)
(declare-fun img@106@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@106@01 x)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@101@01 x)) (pTaken@102@01 x)))))
    (= (inv@105@01 x) x))
  :pattern ((inv@105@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@98@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@101@01 x@98@01)) (pTaken@102@01 x@98@01))))
    (and (= (inv@105@01 x@98@01) x@98@01) (img@106@01 x@98@01)))
  :pattern ((inv@105@01 x@98@01))
  :pattern ((img@106@01 x@98@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@101@01 x)) (pTaken@102@01 x)) $Perm.No))
  
  :qid |quant-u-20716|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@107@01 $PSF<Cell>)
(declare-const s@108@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@109@01 ($Ref) $Ref)
(declare-fun img@110@01 ($Ref) Bool)
(assert (= (as sm@103@01  $PSF<Cell>) (as sm@107@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@101@01 x)) (pTaken@102@01 x)) $Perm.No))
  
  :qid |quant-u-20717|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@111@01 $PSF<Cell>)
(declare-const s@112@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@113@01 ($Ref) $Ref)
(declare-fun img@114@01 ($Ref) Bool)
(assert (= (as sm@103@01  $PSF<Cell>) (as sm@111@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; [state consolidation]
; State saturation: before repetition
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (and
    (= x@59@01 x@51@01)
    (=
      (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
      (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))))
  
  :qid |quant-u-20718|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20719|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
(define-fun pTaken@115@01 ((x $Ref)) $Perm
  (ite
    (and (img@100@01 x) (= x (inv@99@01 x)))
    ($Perm.min
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
(define-fun pTaken@116@01 ((x $Ref)) $Perm
  (ite
    (and (img@100@01 x) (= x (inv@99@01 x)))
    ($Perm.min
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (- $Perm.Write (pTaken@115@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@58@01 x) (not (= (inv@52@01 x) y@34@01)))
        (- $Perm.Write (pTaken@62@01 x))
        $Perm.No)
      (pTaken@115@01 x))
    $Perm.No)
  
  :qid |quant-u-20721|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- $Perm.Write (pTaken@115@01 x)) $Perm.No))
  
  :qid |quant-u-20722|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@66@01 x) (not (= (inv@60@01 x) y@34@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@116@01 x))
    $Perm.No)
  
  :qid |quant-u-20723|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@116@01 x) $Perm.No)
  
  :qid |quant-u-20724|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@115@01 x)) (pTaken@116@01 x)) $Perm.No))
  
  :qid |quant-u-20725|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@115@01 x)) (pTaken@116@01 x)) $Perm.No))
  
  :qid |quant-u-20725|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@117@01 $PSF<Cell>)
(declare-const s@118@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@118@01 $Snap)) (!
  (=>
    (ite
      (and
        (img@58@01 ($SortWrappers.$SnapTo$Ref s@118@01))
        (not (= (inv@52@01 ($SortWrappers.$SnapTo$Ref s@118@01)) y@34@01)))
      (<
        $Perm.No
        (- $Perm.Write (pTaken@62@01 ($SortWrappers.$SnapTo$Ref s@118@01))))
      false)
    (and
      (not (= s@118@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@117@01  $PSF<Cell>) s@118@01)
        ($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@118@01))))
  :pattern (($PSF.lookup_Cell (as sm@117@01  $PSF<Cell>) s@118@01))
  :pattern (($PSF.lookup_Cell (as sm@55@01  $PSF<Cell>) s@118@01))
  :qid |qp.psmValDef13|)))
(assert (forall ((s@118@01 $Snap)) (!
  (=>
    (and
      (img@66@01 ($SortWrappers.$SnapTo$Ref s@118@01))
      (not (= (inv@60@01 ($SortWrappers.$SnapTo$Ref s@118@01)) y@34@01)))
    (and
      (not (= s@118@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@117@01  $PSF<Cell>) s@118@01)
        ($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@118@01))))
  :pattern (($PSF.lookup_Cell (as sm@117@01  $PSF<Cell>) s@118@01))
  :pattern (($PSF.lookup_Cell (as sm@63@01  $PSF<Cell>) s@118@01))
  :qid |qp.psmValDef14|)))
(declare-fun inv@119@01 ($Ref) $Ref)
(declare-fun img@120@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and
      (img@120@01 x)
      (<
        $Perm.No
        (- $Perm.Write (- (- $Perm.Write (pTaken@115@01 x)) (pTaken@116@01 x)))))
    (= (inv@119@01 x) x))
  :pattern ((inv@119@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((x@98@01 $Ref)) (!
  (=>
    (<
      $Perm.No
      (-
        $Perm.Write
        (- (- $Perm.Write (pTaken@115@01 x@98@01)) (pTaken@116@01 x@98@01))))
    (and (= (inv@119@01 x@98@01) x@98@01) (img@120@01 x@98@01)))
  :pattern ((inv@119@01 x@98@01))
  :pattern ((img@120@01 x@98@01))
  :qid |Cell-invOfFct|)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@115@01 x)) (pTaken@116@01 x)) $Perm.No))
  
  :qid |quant-u-20726|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@121@01 $PSF<Cell>)
(declare-const s@122@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@123@01 ($Ref) $Ref)
(declare-fun img@124@01 ($Ref) Bool)
(assert (= (as sm@117@01  $PSF<Cell>) (as sm@121@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@100@01 x) (= x (inv@99@01 x)))
    (= (- (- $Perm.Write (pTaken@115@01 x)) (pTaken@116@01 x)) $Perm.No))
  
  :qid |quant-u-20727|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@125@01 $PSF<Cell>)
(declare-const s@126@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@127@01 ($Ref) $Ref)
(declare-fun img@128@01 ($Ref) Bool)
(assert (= (as sm@117@01  $PSF<Cell>) (as sm@125@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(pop) ; 3
(declare-const $t@129@01 $Snap)
(declare-const $t@130@01 $Snap)
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@131@01 $MWSF)
(assert (forall (($t@129@01 $Snap)) (!
  (= (MWSF_apply mwsf@131@01 $t@129@01) $t@130@01)
  :pattern ((MWSF_apply mwsf@131@01 $t@129@01))
  :qid |quant-u-20728|)))
(pop) ; 2
(pop) ; 1
; ---------- test2 ----------
(declare-const x@132@01 $Ref)
(declare-const x@133@01 $Ref)
(set-option :timeout 0)
(push) ; 1
(declare-const $t@134@01 $Snap)
(assert (= $t@134@01 ($Snap.combine ($Snap.first $t@134@01) ($Snap.second $t@134@01))))
(declare-const y@135@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@136@01 ($Ref) $Ref)
(declare-fun img@137@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@135@01 $Ref)) (!
  (and (= (inv@136@01 y@135@01) y@135@01) (img@137@01 y@135@01))
  :pattern ((inv@136@01 y@135@01))
  :pattern ((img@137@01 y@135@01))
  :qid |quant-u-20731|)))
(assert (forall ((x $Ref)) (!
  (=> (img@137@01 x) (= (inv@136@01 x) x))
  :pattern ((inv@136@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@134@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@133@01)
    (> (ite (img@137@01 x) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-20732|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@138@01 $PSF<Cell>)
(declare-const s@139@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@137@01 x@133@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@138@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@134@01)) ($SortWrappers.$RefTo$Snap x@133@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@138@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@137@01 x@133@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@138@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@134@01)) ($SortWrappers.$RefTo$Snap x@133@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@138@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@138@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --*
; acc(Cell(x), write) && get(x) == 0 {
; }
(push) ; 3
(declare-const $t@140@01 $Snap)
(declare-const y@141@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@142@01 ($Ref) $Ref)
(declare-fun img@143@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@141@01 $Ref)) (!
  (and (= (inv@142@01 y@141@01) y@141@01) (img@143@01 y@141@01))
  :pattern ((inv@142@01 y@141@01))
  :pattern ((img@143@01 y@141@01))
  :qid |quant-u-20734|)))
(assert (forall ((x $Ref)) (!
  (=> (img@143@01 x) (= (inv@142@01 x) x))
  :pattern ((inv@142@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@133@01) false)
  
  :qid |quant-u-20735|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@144@01 $PSF<Cell>)
(declare-const s@145@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@146@01 ((x $Ref)) $Perm
  (ite
    (= x x@133@01)
    ($Perm.min
      (ite (img@143@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@143@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@146@01 x))
    $Perm.No)
  
  :qid |quant-u-20737|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@146@01 x) $Perm.No)
  
  :qid |quant-u-20738|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@133@01) (= (- $Perm.Write (pTaken@146@01 x)) $Perm.No))
  
  :qid |quant-u-20739|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@133@01) (= (- $Perm.Write (pTaken@146@01 x)) $Perm.No))
  
  :qid |quant-u-20739|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@147@01 $PSF<Cell>)
(declare-const s@148@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@143@01 x@133@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@147@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@140@01) ($SortWrappers.$RefTo$Snap x@133@01))))))
(assert (= (as sm@144@01  $PSF<Cell>) (as sm@147@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@149@01 ((x $Ref)) $Perm
  (ite
    (= x x@133@01)
    ($Perm.min
      (ite (img@137@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@146@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@137@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@149@01 x))
    $Perm.No)
  
  :qid |quant-u-20741|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@149@01 x) $Perm.No)
  
  :qid |quant-u-20742|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@133@01)
    (= (- (- $Perm.Write (pTaken@146@01 x)) (pTaken@149@01 x)) $Perm.No))
  
  :qid |quant-u-20743|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@150@01 $PSF<Cell>)
(declare-const s@151@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@137@01 x@133@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@134@01)) ($SortWrappers.$RefTo$Snap x@133@01))))))
(assert (= (as sm@144@01  $PSF<Cell>) (as sm@150@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@152@01 $PSF<Cell>)
(declare-const $t@153@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (ite (= x x@133@01) (< $Perm.No (pTaken@146@01 x)) false)
    (=
      ($PSF.lookup_Cell $t@152@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@147@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell (as sm@144@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@147@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@152@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20744|)))
(assert (forall ((x $Ref)) (!
  (and
    (=>
      (ite (= x x@133@01) (< $Perm.No (pTaken@146@01 x)) false)
      (=
        ($PSF.lookup_Cell $t@153@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell $t@152@01 ($SortWrappers.$RefTo$Snap x))))
    (=>
      (ite (= x x@133@01) (< $Perm.No (- $Perm.Write (pTaken@146@01 x))) false)
      (=
        ($PSF.lookup_Cell $t@153@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))))
  :pattern (($PSF.lookup_Cell $t@152@01 ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@153@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20745|)))
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@133@01)
    (>
      (+
        (ite (= x x@133@01) $Perm.Write $Perm.No)
        (ite
          (img@143@01 x)
          (- (/ (to_real 1) (to_real 2)) (pTaken@146@01 x))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-20746|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@154@01 $PSF<Cell>)
(declare-const s@155@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (img@143@01 x@133@01)
    (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@146@01 x@133@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@140@01) ($SortWrappers.$RefTo$Snap x@133@01))))))
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
    ($PSF.lookup_Cell $t@153@01 ($SortWrappers.$RefTo$Snap x@133@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (ite
      (img@143@01 x@133@01)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@146@01 x@133@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@140@01) ($SortWrappers.$RefTo$Snap x@133@01)))))
  (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
    ($PSF.lookup_Cell $t@153@01 ($SortWrappers.$RefTo$Snap x@133@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@154@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))) x@133@01)
  0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --* acc(Cell(x), write) && get(x) == 0
(declare-const mwsf@156@01 $MWSF)
(assert (forall (($t@140@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@156@01 $t@140@01)
    ($Snap.combine
      ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01)))
      $Snap.unit))
  :pattern ((MWSF_apply mwsf@156@01 $t@140@01))
  :qid |quant-u-20747|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@140@01 $Snap)) (!
  (and
    (and
      (=>
        (img@143@01 x@133@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@147@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@140@01) ($SortWrappers.$RefTo$Snap x@133@01)))))
      (= (as sm@144@01  $PSF<Cell>) (as sm@147@01  $PSF<Cell>))
      (=>
        (img@137@01 x@133@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@133@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@134@01)) ($SortWrappers.$RefTo$Snap x@133@01)))))
      (= (as sm@144@01  $PSF<Cell>) (as sm@150@01  $PSF<Cell>)))
    (=
      (MWSF_apply mwsf@156@01 $t@140@01)
      ($Snap.combine
        ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@150@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@133@01)))
        $Snap.unit)))
  :pattern ((MWSF_apply mwsf@156@01 $t@140@01))
  :qid |quant-u-20748|)))
(assert (forall ((x $Ref)) (!
  (=> (img@143@01 x) (= (inv@142@01 x) x))
  :pattern ((inv@142@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@141@01 $Ref)) (!
  (and (= (inv@142@01 y@141@01) y@141@01) (img@143@01 y@141@01))
  :pattern ((inv@142@01 y@141@01))
  :pattern ((img@143@01 y@141@01))
  :qid |quant-u-20734|)))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2))
(declare-const y@157@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@157@01 x@133@01)))
(pop) ; 4
(declare-fun inv@158@01 ($Ref) $Ref)
(declare-fun img@159@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@157@01 $Ref) (y2@157@01 $Ref)) (!
  (=>
    (and
      (not (= y1@157@01 x@133@01))
      (not (= y2@157@01 x@133@01))
      (= y1@157@01 y2@157@01))
    (= y1@157@01 y2@157@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@157@01 $Ref)) (!
  (=>
    (not (= y@157@01 x@133@01))
    (and (= (inv@158@01 y@157@01) y@157@01) (img@159@01 y@157@01)))
  :pattern ((inv@158@01 y@157@01))
  :pattern ((img@159@01 y@157@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@159@01 x) (not (= (inv@158@01 x) x@133@01)))
    (= (inv@158@01 x) x))
  :pattern ((inv@158@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@160@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@158@01 x) x@133@01)) (img@159@01 x) (= x (inv@158@01 x)))
    ($Perm.min
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (pTaken@160@01 x))
    $Perm.No)
  
  :qid |quant-u-20751|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@158@01 x) x@133@01)) (img@159@01 x) (= x (inv@158@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@160@01 x)) $Perm.No))
  
  :qid |quant-u-20752|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), 1 / 2))
(declare-const y@161@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@162@01 ($Ref) $Ref)
(declare-fun img@163@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@161@01 $Ref)) (!
  (and (= (inv@162@01 y@161@01) y@161@01) (img@163@01 y@161@01))
  :pattern ((inv@162@01 y@161@01))
  :pattern ((img@163@01 y@161@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@163@01 x) (= (inv@162@01 x) x))
  :pattern ((inv@162@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@164@01 ((x $Ref)) $Perm
  (ite
    (and (img@163@01 x) (= x (inv@162@01 x)))
    ($Perm.min
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (pTaken@164@01 x))
    $Perm.No)
  
  :qid |quant-u-20755|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@163@01 x) (= x (inv@162@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@164@01 x)) $Perm.No))
  
  :qid |quant-u-20756|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@163@01 x) (= x (inv@162@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@164@01 x)) $Perm.No))
  
  :qid |quant-u-20756|))))
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
(declare-const y@165@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@166@01 ($Ref) $Ref)
(declare-fun img@167@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@165@01 $Ref)) (!
  (and (= (inv@166@01 y@165@01) y@165@01) (img@167@01 y@165@01))
  :pattern ((inv@166@01 y@165@01))
  :pattern ((img@167@01 y@165@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@167@01 x) (= (inv@166@01 x) x))
  :pattern ((inv@166@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@168@01 ((x $Ref)) $Perm
  (ite
    (and (img@167@01 x) (= x (inv@166@01 x)))
    ($Perm.min
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@137@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@149@01 x))
        $Perm.No)
      (pTaken@168@01 x))
    $Perm.No)
  
  :qid |quant-u-20759|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@167@01 x) (= x (inv@166@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@168@01 x)) $Perm.No))
  
  :qid |quant-u-20760|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@167@01 x) (= x (inv@166@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@168@01 x)) $Perm.No))
  
  :qid |quant-u-20760|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test3 ----------
(declare-const x@169@01 $Ref)
(declare-const x@170@01 $Ref)
(push) ; 1
(declare-const $t@171@01 $Snap)
(assert (= $t@171@01 ($Snap.combine ($Snap.first $t@171@01) ($Snap.second $t@171@01))))
(declare-const y@172@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@173@01 ($Ref) $Ref)
(declare-fun img@174@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@172@01 $Ref)) (!
  (and (= (inv@173@01 y@172@01) y@172@01) (img@174@01 y@172@01))
  :pattern ((inv@173@01 y@172@01))
  :pattern ((img@174@01 y@172@01))
  :qid |quant-u-20762|)))
(assert (forall ((x $Ref)) (!
  (=> (img@174@01 x) (= (inv@173@01 x) x))
  :pattern ((inv@173@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@171@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@170@01)
    (> (ite (img@174@01 x) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-20763|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@175@01 $PSF<Cell>)
(declare-const s@176@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@174@01 x@170@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@170@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@175@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) ($SortWrappers.$RefTo$Snap x@170@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@175@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@174@01 x@170@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@170@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@175@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) ($SortWrappers.$RefTo$Snap x@170@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@175@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@175@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --* true {
;   assert (forall y: Ref ::true ==> acc(Cell(y), write))
;   assert get(x) == 0
; }
(push) ; 3
(declare-const $t@177@01 $Snap)
(declare-const y@178@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@179@01 ($Ref) $Ref)
(declare-fun img@180@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@178@01 $Ref)) (!
  (and (= (inv@179@01 y@178@01) y@178@01) (img@180@01 y@178@01))
  :pattern ((inv@179@01 y@178@01))
  :pattern ((img@180@01 y@178@01))
  :qid |quant-u-20765|)))
(assert (forall ((x $Ref)) (!
  (=> (img@180@01 x) (= (inv@179@01 x) x))
  :pattern ((inv@179@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@181@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@182@01 ($Ref) $Ref)
(declare-fun img@183@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@181@01 $Ref)) (!
  (and (= (inv@182@01 y@181@01) y@181@01) (img@183@01 y@181@01))
  :pattern ((inv@182@01 y@181@01))
  :pattern ((img@183@01 y@181@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@183@01 x) (= (inv@182@01 x) x))
  :pattern ((inv@182@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20767|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@183@01 x) (= x (inv@182@01 x))) false)
  
  :qid |quant-u-20768|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@184@01 $PSF<Cell>)
(declare-const s@185@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@186@01 ($Ref) $Ref)
(declare-fun img@187@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@188@01 ((x $Ref)) $Perm
  (ite
    (and (img@183@01 x) (= x (inv@182@01 x)))
    ($Perm.min
      (ite (img@180@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@180@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@188@01 x))
    $Perm.No)
  
  :qid |quant-u-20770|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@183@01 x) (= x (inv@182@01 x)))
    (= (- $Perm.Write (pTaken@188@01 x)) $Perm.No))
  
  :qid |quant-u-20771|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@183@01 x) (= x (inv@182@01 x)))
    (= (- $Perm.Write (pTaken@188@01 x)) $Perm.No))
  
  :qid |quant-u-20771|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@189@01 $PSF<Cell>)
(declare-const s@190@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@190@01 $Snap)) (!
  (=>
    (img@180@01 ($SortWrappers.$SnapTo$Ref s@190@01))
    (and
      (not (= s@190@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) s@190@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@177@01) s@190@01))))
  :pattern (($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) s@190@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@177@01) s@190@01))
  :qid |qp.psmValDef21|)))
(declare-fun inv@191@01 ($Ref) $Ref)
(declare-fun img@192@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@192@01 x) (< $Perm.No (pTaken@188@01 x))) (= (inv@191@01 x) x))
  :pattern ((inv@191@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@181@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@188@01 y@181@01))
    (and (= (inv@191@01 y@181@01) y@181@01) (img@192@01 y@181@01)))
  :pattern ((inv@191@01 y@181@01))
  :pattern ((img@192@01 y@181@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@184@01  $PSF<Cell>) (as sm@189@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@193@01 ((x $Ref)) $Perm
  (ite
    (and (img@183@01 x) (= x (inv@182@01 x)))
    ($Perm.min
      (ite (img@174@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@188@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@174@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@193@01 x))
    $Perm.No)
  
  :qid |quant-u-20773|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@183@01 x) (= x (inv@182@01 x)))
    (= (- (- $Perm.Write (pTaken@188@01 x)) (pTaken@193@01 x)) $Perm.No))
  
  :qid |quant-u-20774|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@194@01 $PSF<Cell>)
(declare-const s@195@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@195@01 $Snap)) (!
  (=>
    (img@174@01 ($SortWrappers.$SnapTo$Ref s@195@01))
    (and
      (not (= s@195@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) s@195@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) s@195@01))))
  :pattern (($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) s@195@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) s@195@01))
  :qid |qp.psmValDef22|)))
(declare-fun inv@196@01 ($Ref) $Ref)
(declare-fun img@197@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@197@01 x) (< $Perm.No (- $Perm.Write (pTaken@188@01 x))))
    (= (inv@196@01 x) x))
  :pattern ((inv@196@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@181@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@188@01 y@181@01)))
    (and (= (inv@196@01 y@181@01) y@181@01) (img@197@01 y@181@01)))
  :pattern ((inv@196@01 y@181@01))
  :pattern ((img@197@01 y@181@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@184@01  $PSF<Cell>) (as sm@194@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@192@01 x) (img@187@01 x))
  
  :qid |quant-u-20775|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@197@01 x) (img@192@01 x))
  
  :qid |quant-u-20776|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (forall ((x $Ref)) (!
  (= (img@197@01 x) (img@192@01 x))
  
  :qid |quant-u-20776|)))
(declare-const $t@198@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (and
    (=>
      (ite (img@192@01 x) (< $Perm.No (pTaken@188@01 x)) false)
      (=
        ($PSF.lookup_Cell $t@198@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
    (=>
      (ite (img@197@01 x) (< $Perm.No (- $Perm.Write (pTaken@188@01 x))) false)
      (=
        ($PSF.lookup_Cell $t@198@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))))
  :pattern (($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@198@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20777|)))
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@187@01 x) (img@197@01 x))
  
  :qid |quant-u-20778|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@170@01) (> (ite (img@197@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20779|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@199@01 $PSF<Cell>)
(declare-const s@200@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@197@01 x@170@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@170@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))
      ($PSF.lookup_Cell $t@198@01 ($SortWrappers.$RefTo$Snap x@170@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (img@197@01 x@170@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@170@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))
        ($PSF.lookup_Cell $t@198@01 ($SortWrappers.$RefTo$Snap x@170@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@199@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@170@01))) x@170@01)
  0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --* true
(declare-const mwsf@201@01 $MWSF)
(assert (forall (($t@177@01 $Snap)) (!
  (= (MWSF_apply mwsf@201@01 $t@177@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@201@01 $t@177@01))
  :qid |quant-u-20780|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@177@01 $Snap)) (!
  (and
    (forall ((s@190@01 $Snap)) (!
      (=>
        (img@180@01 ($SortWrappers.$SnapTo$Ref s@190@01))
        (and
          (not (= s@190@01 $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) s@190@01)
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@177@01) s@190@01))))
      :pattern (($PSF.lookup_Cell (as sm@189@01  $PSF<Cell>) s@190@01))
      :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@177@01) s@190@01))
      :qid |qp.psmValDef21|))
    (= (MWSF_apply mwsf@201@01 $t@177@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@201@01 $t@177@01))
  :qid |quant-u-20781|)))
(assert (forall ((x $Ref)) (!
  (=> (img@180@01 x) (= (inv@179@01 x) x))
  :pattern ((inv@179@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@178@01 $Ref)) (!
  (and (= (inv@179@01 y@178@01) y@178@01) (img@180@01 y@178@01))
  :pattern ((inv@179@01 y@178@01))
  :pattern ((img@180@01 y@178@01))
  :qid |quant-u-20765|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@192@01 x) (< $Perm.No (pTaken@188@01 x))) (= (inv@191@01 x) x))
  :pattern ((inv@191@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@181@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@188@01 y@181@01))
    (and (= (inv@191@01 y@181@01) y@181@01) (img@192@01 y@181@01)))
  :pattern ((inv@191@01 y@181@01))
  :pattern ((img@192@01 y@181@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((s@195@01 $Snap)) (!
  (=>
    (img@174@01 ($SortWrappers.$SnapTo$Ref s@195@01))
    (and
      (not (= s@195@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) s@195@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) s@195@01))))
  :pattern (($PSF.lookup_Cell (as sm@194@01  $PSF<Cell>) s@195@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@171@01)) s@195@01))
  :qid |qp.psmValDef22|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@197@01 x) (< $Perm.No (- $Perm.Write (pTaken@188@01 x))))
    (= (inv@196@01 x) x))
  :pattern ((inv@196@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@181@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@188@01 y@181@01)))
    (and (= (inv@196@01 y@181@01) y@181@01) (img@197@01 y@181@01)))
  :pattern ((inv@196@01 y@181@01))
  :pattern ((img@197@01 y@181@01))
  :qid |Cell-invOfFct|)))
(assert (and
  (= (as sm@184@01  $PSF<Cell>) (as sm@189@01  $PSF<Cell>))
  (= (as sm@184@01  $PSF<Cell>) (as sm@194@01  $PSF<Cell>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2))
(declare-const y@202@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@202@01 x@170@01)))
(pop) ; 4
(declare-fun inv@203@01 ($Ref) $Ref)
(declare-fun img@204@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@202@01 $Ref) (y2@202@01 $Ref)) (!
  (=>
    (and
      (not (= y1@202@01 x@170@01))
      (not (= y2@202@01 x@170@01))
      (= y1@202@01 y2@202@01))
    (= y1@202@01 y2@202@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@202@01 $Ref)) (!
  (=>
    (not (= y@202@01 x@170@01))
    (and (= (inv@203@01 y@202@01) y@202@01) (img@204@01 y@202@01)))
  :pattern ((inv@203@01 y@202@01))
  :pattern ((img@204@01 y@202@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@204@01 x) (not (= (inv@203@01 x) x@170@01)))
    (= (inv@203@01 x) x))
  :pattern ((inv@203@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@203@01 x) x@170@01)) (img@204@01 x) (= x (inv@203@01 x)))
    false)
  
  :qid |quant-u-20783|))))
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
(declare-const y@205@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y != x
(assert (not (= y@205@01 x@170@01)))
(pop) ; 4
(declare-fun inv@206@01 ($Ref) $Ref)
(declare-fun img@207@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@205@01 $Ref) (y2@205@01 $Ref)) (!
  (=>
    (and
      (not (= y1@205@01 x@170@01))
      (not (= y2@205@01 x@170@01))
      (= y1@205@01 y2@205@01))
    (= y1@205@01 y2@205@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@205@01 $Ref)) (!
  (=>
    (not (= y@205@01 x@170@01))
    (and (= (inv@206@01 y@205@01) y@205@01) (img@207@01 y@205@01)))
  :pattern ((inv@206@01 y@205@01))
  :pattern ((img@207@01 y@205@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@207@01 x) (not (= (inv@206@01 x) x@170@01)))
    (= (inv@206@01 x) x))
  :pattern ((inv@206@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@206@01 x) x@170@01)) (img@207@01 x) (= x (inv@206@01 x)))
    false)
  
  :qid |quant-u-20785|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test4 ----------
(declare-const x@208@01 $Ref)
(declare-const x@209@01 $Ref)
(push) ; 1
(declare-const $t@210@01 $Snap)
(assert (= $t@210@01 ($Snap.combine ($Snap.first $t@210@01) ($Snap.second $t@210@01))))
(declare-const y@211@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@212@01 ($Ref) $Ref)
(declare-fun img@213@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@211@01 $Ref)) (!
  (and (= (inv@212@01 y@211@01) y@211@01) (img@213@01 y@211@01))
  :pattern ((inv@212@01 y@211@01))
  :pattern ((img@213@01 y@211@01))
  :qid |quant-u-20787|)))
(assert (forall ((x $Ref)) (!
  (=> (img@213@01 x) (= (inv@212@01 x) x))
  :pattern ((inv@212@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@210@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@209@01) (> (ite (img@213@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20788|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@214@01 $PSF<Cell>)
(declare-const s@215@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@213@01 x@209@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@214@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) ($SortWrappers.$RefTo$Snap x@209@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@214@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@213@01 x@209@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@214@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) ($SortWrappers.$RefTo$Snap x@209@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@214@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@214@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::y != x ==> acc(Cell(y), write)) --* true {
;   assert (forall y: Ref ::true ==> acc(Cell(y), write))
;   assert get(x) == 0
; }
(push) ; 3
(declare-const $t@216@01 $Snap)
(declare-const y@217@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@217@01 x@209@01)))
(pop) ; 4
(declare-fun inv@218@01 ($Ref) $Ref)
(declare-fun img@219@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@217@01 $Ref) (y2@217@01 $Ref)) (!
  (=>
    (and
      (not (= y1@217@01 x@209@01))
      (not (= y2@217@01 x@209@01))
      (= y1@217@01 y2@217@01))
    (= y1@217@01 y2@217@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@217@01 $Ref)) (!
  (=>
    (not (= y@217@01 x@209@01))
    (and (= (inv@218@01 y@217@01) y@217@01) (img@219@01 y@217@01)))
  :pattern ((inv@218@01 y@217@01))
  :pattern ((img@219@01 y@217@01))
  :qid |quant-u-20790|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@219@01 x) (not (= (inv@218@01 x) x@209@01)))
    (= (inv@218@01 x) x))
  :pattern ((inv@218@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@220@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@221@01 ($Ref) $Ref)
(declare-fun img@222@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@220@01 $Ref)) (!
  (and (= (inv@221@01 y@220@01) y@220@01) (img@222@01 y@220@01))
  :pattern ((inv@221@01 y@220@01))
  :pattern ((img@222@01 y@220@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@222@01 x) (= (inv@221@01 x) x))
  :pattern ((inv@221@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20792|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@222@01 x) (= x (inv@221@01 x))) false)
  
  :qid |quant-u-20793|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@223@01 $PSF<Cell>)
(declare-const s@224@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@225@01 ($Ref) $Ref)
(declare-fun img@226@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@227@01 ((x $Ref)) $Perm
  (ite
    (and (img@222@01 x) (= x (inv@221@01 x)))
    ($Perm.min
      (ite
        (and (img@219@01 x) (not (= (inv@218@01 x) x@209@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@219@01 x) (not (= (inv@218@01 x) x@209@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@227@01 x))
    $Perm.No)
  
  :qid |quant-u-20795|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@222@01 x) (= x (inv@221@01 x)))
    (= (- $Perm.Write (pTaken@227@01 x)) $Perm.No))
  
  :qid |quant-u-20796|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@222@01 x) (= x (inv@221@01 x)))
    (= (- $Perm.Write (pTaken@227@01 x)) $Perm.No))
  
  :qid |quant-u-20796|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@228@01 $PSF<Cell>)
(declare-const s@229@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@229@01 $Snap)) (!
  (=>
    (and
      (img@219@01 ($SortWrappers.$SnapTo$Ref s@229@01))
      (not (= (inv@218@01 ($SortWrappers.$SnapTo$Ref s@229@01)) x@209@01)))
    (and
      (not (= s@229@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) s@229@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@216@01) s@229@01))))
  :pattern (($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) s@229@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@216@01) s@229@01))
  :qid |qp.psmValDef26|)))
(declare-fun inv@230@01 ($Ref) $Ref)
(declare-fun img@231@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@231@01 x) (< $Perm.No (pTaken@227@01 x))) (= (inv@230@01 x) x))
  :pattern ((inv@230@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@220@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@227@01 y@220@01))
    (and (= (inv@230@01 y@220@01) y@220@01) (img@231@01 y@220@01)))
  :pattern ((inv@230@01 y@220@01))
  :pattern ((img@231@01 y@220@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@223@01  $PSF<Cell>) (as sm@228@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@232@01 ((x $Ref)) $Perm
  (ite
    (and (img@222@01 x) (= x (inv@221@01 x)))
    ($Perm.min
      (ite (img@213@01 x) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@227@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@213@01 x) $Perm.Write $Perm.No) (pTaken@232@01 x)) $Perm.No)
  
  :qid |quant-u-20798|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@232@01 x) $Perm.No)
  
  :qid |quant-u-20799|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@222@01 x) (= x (inv@221@01 x)))
    (= (- (- $Perm.Write (pTaken@227@01 x)) (pTaken@232@01 x)) $Perm.No))
  
  :qid |quant-u-20800|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@233@01 $PSF<Cell>)
(declare-const s@234@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@234@01 $Snap)) (!
  (=>
    (img@213@01 ($SortWrappers.$SnapTo$Ref s@234@01))
    (and
      (not (= s@234@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) s@234@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) s@234@01))))
  :pattern (($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) s@234@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) s@234@01))
  :qid |qp.psmValDef27|)))
(declare-fun inv@235@01 ($Ref) $Ref)
(declare-fun img@236@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@236@01 x) (< $Perm.No (- $Perm.Write (pTaken@227@01 x))))
    (= (inv@235@01 x) x))
  :pattern ((inv@235@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@220@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@227@01 y@220@01)))
    (and (= (inv@235@01 y@220@01) y@220@01) (img@236@01 y@220@01)))
  :pattern ((inv@235@01 y@220@01))
  :pattern ((img@236@01 y@220@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@223@01  $PSF<Cell>) (as sm@233@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@231@01 x) (img@226@01 x))
  
  :qid |quant-u-20801|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@236@01 x) (img@231@01 x))
  
  :qid |quant-u-20802|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@236@01 x) (img@226@01 x))
  
  :qid |quant-u-20803|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@231@01 x) (img@236@01 x))
  
  :qid |quant-u-20804|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@226@01 x) (img@231@01 x))
  
  :qid |quant-u-20805|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@226@01 x) (img@236@01 x))
  
  :qid |quant-u-20806|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@209@01)
    (>
      (+
        (ite (img@236@01 x) (- $Perm.Write (pTaken@227@01 x)) $Perm.No)
        (ite (img@231@01 x) (pTaken@227@01 x) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-20807|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@237@01 $PSF<Cell>)
(declare-const s@238@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (img@236@01 x@209@01)
    (< $Perm.No (- $Perm.Write (pTaken@227@01 x@209@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
      ($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))))))
(assert (=>
  (ite (img@231@01 x@209@01) (< $Perm.No (pTaken@227@01 x@209@01)) false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
      ($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (ite
      (img@236@01 x@209@01)
      (< $Perm.No (- $Perm.Write (pTaken@227@01 x@209@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
        ($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01)))))
  (=>
    (ite (img@231@01 x@209@01) (< $Perm.No (pTaken@227@01 x@209@01)) false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@209@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))
        ($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@237@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@209@01))) x@209@01)
  0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(Cell(y), write)) --* true
(declare-const mwsf@239@01 $MWSF)
(assert (forall (($t@216@01 $Snap)) (!
  (= (MWSF_apply mwsf@239@01 $t@216@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@239@01 $t@216@01))
  :qid |quant-u-20808|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@216@01 $Snap)) (!
  (and
    (forall ((s@229@01 $Snap)) (!
      (=>
        (and
          (img@219@01 ($SortWrappers.$SnapTo$Ref s@229@01))
          (not (= (inv@218@01 ($SortWrappers.$SnapTo$Ref s@229@01)) x@209@01)))
        (and
          (not (= s@229@01 $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) s@229@01)
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@216@01) s@229@01))))
      :pattern (($PSF.lookup_Cell (as sm@228@01  $PSF<Cell>) s@229@01))
      :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@216@01) s@229@01))
      :qid |qp.psmValDef26|))
    (= (MWSF_apply mwsf@239@01 $t@216@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@239@01 $t@216@01))
  :qid |quant-u-20809|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@219@01 x) (not (= (inv@218@01 x) x@209@01)))
    (= (inv@218@01 x) x))
  :pattern ((inv@218@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@217@01 $Ref)) (!
  (=>
    (not (= y@217@01 x@209@01))
    (and (= (inv@218@01 y@217@01) y@217@01) (img@219@01 y@217@01)))
  :pattern ((inv@218@01 y@217@01))
  :pattern ((img@219@01 y@217@01))
  :qid |quant-u-20790|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@231@01 x) (< $Perm.No (pTaken@227@01 x))) (= (inv@230@01 x) x))
  :pattern ((inv@230@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@220@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@227@01 y@220@01))
    (and (= (inv@230@01 y@220@01) y@220@01) (img@231@01 y@220@01)))
  :pattern ((inv@230@01 y@220@01))
  :pattern ((img@231@01 y@220@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((s@234@01 $Snap)) (!
  (=>
    (img@213@01 ($SortWrappers.$SnapTo$Ref s@234@01))
    (and
      (not (= s@234@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) s@234@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) s@234@01))))
  :pattern (($PSF.lookup_Cell (as sm@233@01  $PSF<Cell>) s@234@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@210@01)) s@234@01))
  :qid |qp.psmValDef27|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@236@01 x) (< $Perm.No (- $Perm.Write (pTaken@227@01 x))))
    (= (inv@235@01 x) x))
  :pattern ((inv@235@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@220@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@227@01 y@220@01)))
    (and (= (inv@235@01 y@220@01) y@220@01) (img@236@01 y@220@01)))
  :pattern ((inv@235@01 y@220@01))
  :pattern ((img@236@01 y@220@01))
  :qid |Cell-invOfFct|)))
(assert (and
  (= (as sm@223@01  $PSF<Cell>) (as sm@228@01  $PSF<Cell>))
  (= (as sm@223@01  $PSF<Cell>) (as sm@233@01  $PSF<Cell>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), write))
(declare-const y@240@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@240@01 x@209@01)))
(pop) ; 4
(declare-fun inv@241@01 ($Ref) $Ref)
(declare-fun img@242@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@240@01 $Ref) (y2@240@01 $Ref)) (!
  (=>
    (and
      (not (= y1@240@01 x@209@01))
      (not (= y2@240@01 x@209@01))
      (= y1@240@01 y2@240@01))
    (= y1@240@01 y2@240@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@240@01 $Ref)) (!
  (=>
    (not (= y@240@01 x@209@01))
    (and (= (inv@241@01 y@240@01) y@240@01) (img@242@01 y@240@01)))
  :pattern ((inv@241@01 y@240@01))
  :pattern ((img@242@01 y@240@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@242@01 x) (not (= (inv@241@01 x) x@209@01)))
    (= (inv@241@01 x) x))
  :pattern ((inv@241@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@243@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@241@01 x) x@209@01)) (img@242@01 x) (= x (inv@241@01 x)))
    ($Perm.min
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
      (pTaken@243@01 x))
    $Perm.No)
  
  :qid |quant-u-20812|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@243@01 x) $Perm.No)
  
  :qid |quant-u-20813|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@241@01 x) x@209@01)) (img@242@01 x) (= x (inv@241@01 x)))
    (= (- $Perm.Write (pTaken@243@01 x)) $Perm.No))
  
  :qid |quant-u-20814|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@244@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@245@01 ($Ref) $Ref)
(declare-fun img@246@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@244@01 $Ref)) (!
  (and (= (inv@245@01 y@244@01) y@244@01) (img@246@01 y@244@01))
  :pattern ((inv@245@01 y@244@01))
  :pattern ((img@246@01 y@244@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@246@01 x) (= (inv@245@01 x) x))
  :pattern ((inv@245@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@247@01 ((x $Ref)) $Perm
  (ite
    (and (img@246@01 x) (= x (inv@245@01 x)))
    ($Perm.min
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
      (pTaken@247@01 x))
    $Perm.No)
  
  :qid |quant-u-20817|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@246@01 x) (= x (inv@245@01 x)))
    (= (- $Perm.Write (pTaken@247@01 x)) $Perm.No))
  
  :qid |quant-u-20818|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@246@01 x) (= x (inv@245@01 x)))
    (= (- $Perm.Write (pTaken@247@01 x)) $Perm.No))
  
  :qid |quant-u-20818|))))
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
(declare-const y@248@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@249@01 ($Ref) $Ref)
(declare-fun img@250@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@248@01 $Ref)) (!
  (and (= (inv@249@01 y@248@01) y@248@01) (img@250@01 y@248@01))
  :pattern ((inv@249@01 y@248@01))
  :pattern ((img@250@01 y@248@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@250@01 x) (= (inv@249@01 x) x))
  :pattern ((inv@249@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@251@01 ((x $Ref)) $Perm
  (ite
    (and (img@250@01 x) (= x (inv@249@01 x)))
    ($Perm.min
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@213@01 x) (- $Perm.Write (pTaken@232@01 x)) $Perm.No)
      (pTaken@251@01 x))
    $Perm.No)
  
  :qid |quant-u-20821|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@250@01 x) (= x (inv@249@01 x)))
    (= (- $Perm.Write (pTaken@251@01 x)) $Perm.No))
  
  :qid |quant-u-20822|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@250@01 x) (= x (inv@249@01 x)))
    (= (- $Perm.Write (pTaken@251@01 x)) $Perm.No))
  
  :qid |quant-u-20822|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test5 ----------
(declare-const x@252@01 $Ref)
(declare-const x@253@01 $Ref)
(push) ; 1
(declare-const y@254@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@255@01 $PSF<Cell>)
(declare-fun inv@256@01 ($Ref) $Ref)
(declare-fun img@257@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@254@01 $Ref)) (!
  (and (= (inv@256@01 y@254@01) y@254@01) (img@257@01 y@254@01))
  :pattern ((inv@256@01 y@254@01))
  :pattern ((img@257@01 y@254@01))
  :qid |quant-u-20824|)))
(assert (forall ((x $Ref)) (!
  (=> (img@257@01 x) (= (inv@256@01 x) x))
  :pattern ((inv@256@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2)) --*
; (forall y: Ref ::true ==> acc(Cell(y), write)) {
; }
(push) ; 3
(declare-const $t@258@01 $Snap)
(declare-const y@259@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@259@01 x@253@01)))
(pop) ; 4
(declare-fun inv@260@01 ($Ref) $Ref)
(declare-fun img@261@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@259@01 $Ref) (y2@259@01 $Ref)) (!
  (=>
    (and
      (not (= y1@259@01 x@253@01))
      (not (= y2@259@01 x@253@01))
      (= y1@259@01 y2@259@01))
    (= y1@259@01 y2@259@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@259@01 $Ref)) (!
  (=>
    (not (= y@259@01 x@253@01))
    (and (= (inv@260@01 y@259@01) y@259@01) (img@261@01 y@259@01)))
  :pattern ((inv@260@01 y@259@01))
  :pattern ((img@261@01 y@259@01))
  :qid |quant-u-20826|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@261@01 x) (not (= (inv@260@01 x) x@253@01)))
    (= (inv@260@01 x) x))
  :pattern ((inv@260@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(declare-const y@262@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@263@01 ($Ref) $Ref)
(declare-fun img@264@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@262@01 $Ref)) (!
  (and (= (inv@263@01 y@262@01) y@262@01) (img@264@01 y@262@01))
  :pattern ((inv@263@01 y@262@01))
  :pattern ((img@264@01 y@262@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@264@01 x) (= (inv@263@01 x) x))
  :pattern ((inv@263@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20828|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@264@01 x) (= x (inv@263@01 x))) false)
  
  :qid |quant-u-20829|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@265@01 $PSF<Cell>)
(declare-const s@266@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@267@01 ($Ref) $Ref)
(declare-fun img@268@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@269@01 ((x $Ref)) $Perm
  (ite
    (and (img@264@01 x) (= x (inv@263@01 x)))
    ($Perm.min
      (ite
        (and (img@261@01 x) (not (= (inv@260@01 x) x@253@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@261@01 x) (not (= (inv@260@01 x) x@253@01)))
        (/ (to_real 1) (to_real 2))
        $Perm.No)
      (pTaken@269@01 x))
    $Perm.No)
  
  :qid |quant-u-20831|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@264@01 x) (= x (inv@263@01 x)))
    (= (- $Perm.Write (pTaken@269@01 x)) $Perm.No))
  
  :qid |quant-u-20832|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@264@01 x) (= x (inv@263@01 x)))
    (= (- $Perm.Write (pTaken@269@01 x)) $Perm.No))
  
  :qid |quant-u-20832|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@270@01 $PSF<Cell>)
(declare-const s@271@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@271@01 $Snap)) (!
  (=>
    (and
      (img@261@01 ($SortWrappers.$SnapTo$Ref s@271@01))
      (not (= (inv@260@01 ($SortWrappers.$SnapTo$Ref s@271@01)) x@253@01)))
    (and
      (not (= s@271@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@270@01  $PSF<Cell>) s@271@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@258@01) s@271@01))))
  :pattern (($PSF.lookup_Cell (as sm@270@01  $PSF<Cell>) s@271@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@258@01) s@271@01))
  :qid |qp.psmValDef31|)))
(declare-fun inv@272@01 ($Ref) $Ref)
(declare-fun img@273@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@273@01 x) (< $Perm.No (pTaken@269@01 x))) (= (inv@272@01 x) x))
  :pattern ((inv@272@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@262@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@269@01 y@262@01))
    (and (= (inv@272@01 y@262@01) y@262@01) (img@273@01 y@262@01)))
  :pattern ((inv@272@01 y@262@01))
  :pattern ((img@273@01 y@262@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@265@01  $PSF<Cell>) (as sm@270@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@274@01 ((x $Ref)) $Perm
  (ite
    (and (img@264@01 x) (= x (inv@263@01 x)))
    ($Perm.min
      (ite (img@257@01 x) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@269@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@257@01 x) $Perm.Write $Perm.No) (pTaken@274@01 x)) $Perm.No)
  
  :qid |quant-u-20834|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@274@01 x) $Perm.No)
  
  :qid |quant-u-20835|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@264@01 x) (= x (inv@263@01 x)))
    (= (- (- $Perm.Write (pTaken@269@01 x)) (pTaken@274@01 x)) $Perm.No))
  
  :qid |quant-u-20836|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@275@01 $PSF<Cell>)
(declare-const s@276@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@276@01 $Snap)) (!
  (=>
    (img@257@01 ($SortWrappers.$SnapTo$Ref s@276@01))
    (and
      (not (= s@276@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@275@01  $PSF<Cell>) s@276@01)
        ($PSF.lookup_Cell $t@255@01 s@276@01))))
  :pattern (($PSF.lookup_Cell (as sm@275@01  $PSF<Cell>) s@276@01))
  :pattern (($PSF.lookup_Cell $t@255@01 s@276@01))
  :qid |qp.psmValDef32|)))
(declare-fun inv@277@01 ($Ref) $Ref)
(declare-fun img@278@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@278@01 x) (< $Perm.No (- $Perm.Write (pTaken@269@01 x))))
    (= (inv@277@01 x) x))
  :pattern ((inv@277@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@262@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@269@01 y@262@01)))
    (and (= (inv@277@01 y@262@01) y@262@01) (img@278@01 y@262@01)))
  :pattern ((inv@277@01 y@262@01))
  :pattern ((img@278@01 y@262@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@265@01  $PSF<Cell>) (as sm@275@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@273@01 x) (img@268@01 x))
  
  :qid |quant-u-20837|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@278@01 x) (img@273@01 x))
  
  :qid |quant-u-20838|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@278@01 x) (img@268@01 x))
  
  :qid |quant-u-20839|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2)) --* (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const mwsf@279@01 $MWSF)
(assert (forall (($t@258@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@279@01 $t@258@01)
    ($SortWrappers.$PSF<Cell>To$Snap (as sm@275@01  $PSF<Cell>)))
  :pattern ((MWSF_apply mwsf@279@01 $t@258@01))
  :qid |quant-u-20840|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@258@01 $Snap)) (!
  (and
    (forall ((s@271@01 $Snap)) (!
      (=>
        (and
          (img@261@01 ($SortWrappers.$SnapTo$Ref s@271@01))
          (not (= (inv@260@01 ($SortWrappers.$SnapTo$Ref s@271@01)) x@253@01)))
        (and
          (not (= s@271@01 $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@270@01  $PSF<Cell>) s@271@01)
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@258@01) s@271@01))))
      :pattern (($PSF.lookup_Cell (as sm@270@01  $PSF<Cell>) s@271@01))
      :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@258@01) s@271@01))
      :qid |qp.psmValDef31|))
    (=
      (MWSF_apply mwsf@279@01 $t@258@01)
      ($SortWrappers.$PSF<Cell>To$Snap (as sm@275@01  $PSF<Cell>))))
  :pattern ((MWSF_apply mwsf@279@01 $t@258@01))
  :qid |quant-u-20841|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@261@01 x) (not (= (inv@260@01 x) x@253@01)))
    (= (inv@260@01 x) x))
  :pattern ((inv@260@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@259@01 $Ref)) (!
  (=>
    (not (= y@259@01 x@253@01))
    (and (= (inv@260@01 y@259@01) y@259@01) (img@261@01 y@259@01)))
  :pattern ((inv@260@01 y@259@01))
  :pattern ((img@261@01 y@259@01))
  :qid |quant-u-20826|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@273@01 x) (< $Perm.No (pTaken@269@01 x))) (= (inv@272@01 x) x))
  :pattern ((inv@272@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@262@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@269@01 y@262@01))
    (and (= (inv@272@01 y@262@01) y@262@01) (img@273@01 y@262@01)))
  :pattern ((inv@272@01 y@262@01))
  :pattern ((img@273@01 y@262@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((s@276@01 $Snap)) (!
  (=>
    (img@257@01 ($SortWrappers.$SnapTo$Ref s@276@01))
    (and
      (not (= s@276@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@275@01  $PSF<Cell>) s@276@01)
        ($PSF.lookup_Cell $t@255@01 s@276@01))))
  :pattern (($PSF.lookup_Cell (as sm@275@01  $PSF<Cell>) s@276@01))
  :pattern (($PSF.lookup_Cell $t@255@01 s@276@01))
  :qid |qp.psmValDef32|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@278@01 x) (< $Perm.No (- $Perm.Write (pTaken@269@01 x))))
    (= (inv@277@01 x) x))
  :pattern ((inv@277@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@262@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@269@01 y@262@01)))
    (and (= (inv@277@01 y@262@01) y@262@01) (img@278@01 y@262@01)))
  :pattern ((inv@277@01 y@262@01))
  :pattern ((img@278@01 y@262@01))
  :qid |Cell-invOfFct|)))
(assert (and
  (= (as sm@265@01  $PSF<Cell>) (as sm@270@01  $PSF<Cell>))
  (= (as sm@265@01  $PSF<Cell>) (as sm@275@01  $PSF<Cell>))))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2))
(declare-const y@280@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@280@01 x@253@01)))
(pop) ; 4
(declare-fun inv@281@01 ($Ref) $Ref)
(declare-fun img@282@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@280@01 $Ref) (y2@280@01 $Ref)) (!
  (=>
    (and
      (not (= y1@280@01 x@253@01))
      (not (= y2@280@01 x@253@01))
      (= y1@280@01 y2@280@01))
    (= y1@280@01 y2@280@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@280@01 $Ref)) (!
  (=>
    (not (= y@280@01 x@253@01))
    (and (= (inv@281@01 y@280@01) y@280@01) (img@282@01 y@280@01)))
  :pattern ((inv@281@01 y@280@01))
  :pattern ((img@282@01 y@280@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@282@01 x) (not (= (inv@281@01 x) x@253@01)))
    (= (inv@281@01 x) x))
  :pattern ((inv@281@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@283@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@281@01 x) x@253@01)) (img@282@01 x) (= x (inv@281@01 x)))
    ($Perm.min
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (pTaken@283@01 x))
    $Perm.No)
  
  :qid |quant-u-20844|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@283@01 x) $Perm.No)
  
  :qid |quant-u-20845|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@281@01 x) x@253@01)) (img@282@01 x) (= x (inv@281@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@283@01 x)) $Perm.No))
  
  :qid |quant-u-20846|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), 1 / 2))
(declare-const y@284@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@285@01 ($Ref) $Ref)
(declare-fun img@286@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@284@01 $Ref)) (!
  (and (= (inv@285@01 y@284@01) y@284@01) (img@286@01 y@284@01))
  :pattern ((inv@285@01 y@284@01))
  :pattern ((img@286@01 y@284@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@286@01 x) (= (inv@285@01 x) x))
  :pattern ((inv@285@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@287@01 ((x $Ref)) $Perm
  (ite
    (and (img@286@01 x) (= x (inv@285@01 x)))
    ($Perm.min
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (pTaken@287@01 x))
    $Perm.No)
  
  :qid |quant-u-20849|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@287@01 x) $Perm.No)
  
  :qid |quant-u-20850|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@286@01 x) (= x (inv@285@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@287@01 x)) $Perm.No))
  
  :qid |quant-u-20851|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@286@01 x) (= x (inv@285@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@287@01 x)) $Perm.No))
  
  :qid |quant-u-20851|))))
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
(declare-const y@288@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@289@01 ($Ref) $Ref)
(declare-fun img@290@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@288@01 $Ref)) (!
  (and (= (inv@289@01 y@288@01) y@288@01) (img@290@01 y@288@01))
  :pattern ((inv@289@01 y@288@01))
  :pattern ((img@290@01 y@288@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@290@01 x) (= (inv@289@01 x) x))
  :pattern ((inv@289@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@291@01 ((x $Ref)) $Perm
  (ite
    (and (img@290@01 x) (= x (inv@289@01 x)))
    ($Perm.min
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@257@01 x) (- $Perm.Write (pTaken@274@01 x)) $Perm.No)
      (pTaken@291@01 x))
    $Perm.No)
  
  :qid |quant-u-20854|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@291@01 x) $Perm.No)
  
  :qid |quant-u-20855|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@290@01 x) (= x (inv@289@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@291@01 x)) $Perm.No))
  
  :qid |quant-u-20856|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@290@01 x) (= x (inv@289@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@291@01 x)) $Perm.No))
  
  :qid |quant-u-20856|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test6 ----------
(declare-const x@292@01 $Ref)
(declare-const x@293@01 $Ref)
(push) ; 1
(declare-const $t@294@01 $Snap)
(assert (= $t@294@01 ($Snap.combine ($Snap.first $t@294@01) ($Snap.second $t@294@01))))
(declare-const y@295@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@296@01 ($Ref) $Ref)
(declare-fun img@297@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@295@01 $Ref)) (!
  (and (= (inv@296@01 y@295@01) y@295@01) (img@297@01 y@295@01))
  :pattern ((inv@296@01 y@295@01))
  :pattern ((img@297@01 y@295@01))
  :qid |quant-u-20858|)))
(assert (forall ((x $Ref)) (!
  (=> (img@297@01 x) (= (inv@296@01 x) x))
  :pattern ((inv@296@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@294@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@293@01)
    (> (ite (img@297@01 x) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-20859|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@298@01 $PSF<Cell>)
(declare-const s@299@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@297@01 x@293@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@298@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@294@01)) ($SortWrappers.$RefTo$Snap x@293@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@298@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@297@01 x@293@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@298@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@294@01)) ($SortWrappers.$RefTo$Snap x@293@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@298@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@298@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --* true {
;   assert acc(Cell(x), write) && get(x) == 0
; }
(push) ; 3
(declare-const $t@300@01 $Snap)
(declare-const y@301@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@302@01 ($Ref) $Ref)
(declare-fun img@303@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@301@01 $Ref)) (!
  (and (= (inv@302@01 y@301@01) y@301@01) (img@303@01 y@301@01))
  :pattern ((inv@302@01 y@301@01))
  :pattern ((img@303@01 y@301@01))
  :qid |quant-u-20861|)))
(assert (forall ((x $Ref)) (!
  (=> (img@303@01 x) (= (inv@302@01 x) x))
  :pattern ((inv@302@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [exec]
; assert acc(Cell(x), write) && get(x) == 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@293@01) false)
  
  :qid |quant-u-20862|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@304@01 $PSF<Cell>)
(declare-const s@305@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@306@01 ((x $Ref)) $Perm
  (ite
    (= x x@293@01)
    ($Perm.min
      (ite (img@303@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@303@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@306@01 x))
    $Perm.No)
  
  :qid |quant-u-20864|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@306@01 x) $Perm.No)
  
  :qid |quant-u-20865|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@293@01) (= (- $Perm.Write (pTaken@306@01 x)) $Perm.No))
  
  :qid |quant-u-20866|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@293@01) (= (- $Perm.Write (pTaken@306@01 x)) $Perm.No))
  
  :qid |quant-u-20866|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@307@01 $PSF<Cell>)
(declare-const s@308@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@303@01 x@293@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@307@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@300@01) ($SortWrappers.$RefTo$Snap x@293@01))))))
(assert (= (as sm@304@01  $PSF<Cell>) (as sm@307@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@309@01 ((x $Ref)) $Perm
  (ite
    (= x x@293@01)
    ($Perm.min
      (ite (img@297@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@306@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@297@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@309@01 x))
    $Perm.No)
  
  :qid |quant-u-20868|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@309@01 x) $Perm.No)
  
  :qid |quant-u-20869|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@293@01)
    (= (- (- $Perm.Write (pTaken@306@01 x)) (pTaken@309@01 x)) $Perm.No))
  
  :qid |quant-u-20870|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@310@01 $PSF<Cell>)
(declare-const s@311@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@297@01 x@293@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@310@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@294@01)) ($SortWrappers.$RefTo$Snap x@293@01))))))
(assert (= (as sm@304@01  $PSF<Cell>) (as sm@310@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@312@01 $PSF<Cell>)
(declare-const $t@313@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (ite (= x x@293@01) (< $Perm.No (pTaken@306@01 x)) false)
    (=
      ($PSF.lookup_Cell $t@312@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@307@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell (as sm@304@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@307@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@312@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20871|)))
(assert (forall ((x $Ref)) (!
  (and
    (=>
      (ite (= x x@293@01) (< $Perm.No (pTaken@306@01 x)) false)
      (=
        ($PSF.lookup_Cell $t@313@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell $t@312@01 ($SortWrappers.$RefTo$Snap x))))
    (=>
      (ite (= x x@293@01) (< $Perm.No (- $Perm.Write (pTaken@306@01 x))) false)
      (=
        ($PSF.lookup_Cell $t@313@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell (as sm@310@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))))
  :pattern (($PSF.lookup_Cell $t@312@01 ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@310@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@313@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20872|)))
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@293@01)
    (>
      (+
        (ite (= x x@293@01) $Perm.Write $Perm.No)
        (ite
          (img@303@01 x)
          (- (/ (to_real 1) (to_real 2)) (pTaken@306@01 x))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-20873|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@314@01 $PSF<Cell>)
(declare-const s@315@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (img@303@01 x@293@01)
    (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@306@01 x@293@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@300@01) ($SortWrappers.$RefTo$Snap x@293@01))))))
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
    ($PSF.lookup_Cell $t@313@01 ($SortWrappers.$RefTo$Snap x@293@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (ite
      (img@303@01 x@293@01)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@306@01 x@293@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@300@01) ($SortWrappers.$RefTo$Snap x@293@01)))))
  (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
    ($PSF.lookup_Cell $t@313@01 ($SortWrappers.$RefTo$Snap x@293@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@314@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))) x@293@01)
  0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) --* true
(declare-const mwsf@316@01 $MWSF)
(assert (forall (($t@300@01 $Snap)) (!
  (= (MWSF_apply mwsf@316@01 $t@300@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@316@01 $t@300@01))
  :qid |quant-u-20874|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@300@01 $Snap)) (!
  (and
    (and
      (=>
        (img@303@01 x@293@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@307@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@300@01) ($SortWrappers.$RefTo$Snap x@293@01)))))
      (= (as sm@304@01  $PSF<Cell>) (as sm@307@01  $PSF<Cell>))
      (=>
        (img@297@01 x@293@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@293@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@310@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@293@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@294@01)) ($SortWrappers.$RefTo$Snap x@293@01)))))
      (= (as sm@304@01  $PSF<Cell>) (as sm@310@01  $PSF<Cell>)))
    (= (MWSF_apply mwsf@316@01 $t@300@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@316@01 $t@300@01))
  :qid |quant-u-20875|)))
(assert (forall ((x $Ref)) (!
  (=> (img@303@01 x) (= (inv@302@01 x) x))
  :pattern ((inv@302@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@301@01 $Ref)) (!
  (and (= (inv@302@01 y@301@01) y@301@01) (img@303@01 y@301@01))
  :pattern ((inv@302@01 y@301@01))
  :pattern ((img@303@01 y@301@01))
  :qid |quant-u-20861|)))
; [exec]
; assert (forall y: Ref ::y != x ==> acc(Cell(y), 1 / 2))
(declare-const y@317@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@317@01 x@293@01)))
(pop) ; 4
(declare-fun inv@318@01 ($Ref) $Ref)
(declare-fun img@319@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@317@01 $Ref) (y2@317@01 $Ref)) (!
  (=>
    (and
      (not (= y1@317@01 x@293@01))
      (not (= y2@317@01 x@293@01))
      (= y1@317@01 y2@317@01))
    (= y1@317@01 y2@317@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@317@01 $Ref)) (!
  (=>
    (not (= y@317@01 x@293@01))
    (and (= (inv@318@01 y@317@01) y@317@01) (img@319@01 y@317@01)))
  :pattern ((inv@318@01 y@317@01))
  :pattern ((img@319@01 y@317@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@319@01 x) (not (= (inv@318@01 x) x@293@01)))
    (= (inv@318@01 x) x))
  :pattern ((inv@318@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@320@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@318@01 x) x@293@01)) (img@319@01 x) (= x (inv@318@01 x)))
    ($Perm.min
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (pTaken@320@01 x))
    $Perm.No)
  
  :qid |quant-u-20878|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@318@01 x) x@293@01)) (img@319@01 x) (= x (inv@318@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@320@01 x)) $Perm.No))
  
  :qid |quant-u-20879|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y: Ref ::true ==> acc(Cell(y), 1 / 2))
(declare-const y@321@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@322@01 ($Ref) $Ref)
(declare-fun img@323@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@321@01 $Ref)) (!
  (and (= (inv@322@01 y@321@01) y@321@01) (img@323@01 y@321@01))
  :pattern ((inv@322@01 y@321@01))
  :pattern ((img@323@01 y@321@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@323@01 x) (= (inv@322@01 x) x))
  :pattern ((inv@322@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@324@01 ((x $Ref)) $Perm
  (ite
    (and (img@323@01 x) (= x (inv@322@01 x)))
    ($Perm.min
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (pTaken@324@01 x))
    $Perm.No)
  
  :qid |quant-u-20882|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@323@01 x) (= x (inv@322@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@324@01 x)) $Perm.No))
  
  :qid |quant-u-20883|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@323@01 x) (= x (inv@322@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@324@01 x)) $Perm.No))
  
  :qid |quant-u-20883|))))
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
(declare-const y@325@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@326@01 ($Ref) $Ref)
(declare-fun img@327@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@325@01 $Ref)) (!
  (and (= (inv@326@01 y@325@01) y@325@01) (img@327@01 y@325@01))
  :pattern ((inv@326@01 y@325@01))
  :pattern ((img@327@01 y@325@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@327@01 x) (= (inv@326@01 x) x))
  :pattern ((inv@326@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@328@01 ((x $Ref)) $Perm
  (ite
    (and (img@327@01 x) (= x (inv@326@01 x)))
    ($Perm.min
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (/ (to_real 1) (to_real 2)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (img@297@01 x)
        (- (/ (to_real 1) (to_real 2)) (pTaken@309@01 x))
        $Perm.No)
      (pTaken@328@01 x))
    $Perm.No)
  
  :qid |quant-u-20886|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@327@01 x) (= x (inv@326@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@328@01 x)) $Perm.No))
  
  :qid |quant-u-20887|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@327@01 x) (= x (inv@326@01 x)))
    (= (- (/ (to_real 1) (to_real 2)) (pTaken@328@01 x)) $Perm.No))
  
  :qid |quant-u-20887|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test7 ----------
(declare-const x@329@01 $Ref)
(declare-const x@330@01 $Ref)
(push) ; 1
(declare-const $t@331@01 $Snap)
(assert (= $t@331@01 ($Snap.combine ($Snap.first $t@331@01) ($Snap.second $t@331@01))))
(declare-const y@332@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@333@01 ($Ref) $Ref)
(declare-fun img@334@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@332@01 $Ref)) (!
  (and (= (inv@333@01 y@332@01) y@332@01) (img@334@01 y@332@01))
  :pattern ((inv@333@01 y@332@01))
  :pattern ((img@334@01 y@332@01))
  :qid |quant-u-20889|)))
(assert (forall ((x $Ref)) (!
  (=> (img@334@01 x) (= (inv@333@01 x) x))
  :pattern ((inv@333@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@331@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@330@01) (> (ite (img@334@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20890|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@335@01 $PSF<Cell>)
(declare-const s@336@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@334@01 x@330@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@330@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@331@01)) ($SortWrappers.$RefTo$Snap x@330@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@334@01 x@330@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@330@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@331@01)) ($SortWrappers.$RefTo$Snap x@330@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), write)) --*
; (forall y: Ref ::true ==> acc(Cell(y), write)) {
; }
(push) ; 3
(declare-const $t@337@01 $Snap)
(declare-const y@338@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@339@01 ($Ref) $Ref)
(declare-fun img@340@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@338@01 $Ref)) (!
  (and (= (inv@339@01 y@338@01) y@338@01) (img@340@01 y@338@01))
  :pattern ((inv@339@01 y@338@01))
  :pattern ((img@340@01 y@338@01))
  :qid |quant-u-20892|)))
(assert (forall ((x $Ref)) (!
  (=> (img@340@01 x) (= (inv@339@01 x) x))
  :pattern ((inv@339@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(declare-const y@341@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@342@01 ($Ref) $Ref)
(declare-fun img@343@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@341@01 $Ref)) (!
  (and (= (inv@342@01 y@341@01) y@341@01) (img@343@01 y@341@01))
  :pattern ((inv@342@01 y@341@01))
  :pattern ((img@343@01 y@341@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@343@01 x) (= (inv@342@01 x) x))
  :pattern ((inv@342@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20894|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@343@01 x) (= x (inv@342@01 x))) false)
  
  :qid |quant-u-20895|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@344@01 $PSF<Cell>)
(declare-const s@345@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@346@01 ($Ref) $Ref)
(declare-fun img@347@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@348@01 ((x $Ref)) $Perm
  (ite
    (and (img@343@01 x) (= x (inv@342@01 x)))
    ($Perm.min (ite (img@340@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@340@01 x) $Perm.Write $Perm.No) (pTaken@348@01 x)) $Perm.No)
  
  :qid |quant-u-20897|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@343@01 x) (= x (inv@342@01 x)))
    (= (- $Perm.Write (pTaken@348@01 x)) $Perm.No))
  
  :qid |quant-u-20898|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@349@01 $PSF<Cell>)
(declare-const s@350@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@350@01 $Snap)) (!
  (=>
    (img@340@01 ($SortWrappers.$SnapTo$Ref s@350@01))
    (and
      (not (= s@350@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@349@01  $PSF<Cell>) s@350@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@337@01) s@350@01))))
  :pattern (($PSF.lookup_Cell (as sm@349@01  $PSF<Cell>) s@350@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@337@01) s@350@01))
  :qid |qp.psmValDef39|)))
(declare-fun inv@351@01 ($Ref) $Ref)
(declare-fun img@352@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (img@352@01 x) (= (inv@351@01 x) x))
  :pattern ((inv@351@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@341@01 $Ref)) (!
  (and (= (inv@351@01 y@341@01) y@341@01) (img@352@01 y@341@01))
  :pattern ((inv@351@01 y@341@01))
  :pattern ((img@352@01 y@341@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@344@01  $PSF<Cell>) (as sm@349@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@352@01 x) (img@347@01 x))
  
  :qid |quant-u-20899|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), write)) --* (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const mwsf@353@01 $MWSF)
(assert (forall (($t@337@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@353@01 $t@337@01)
    ($SortWrappers.$PSF<Cell>To$Snap (as sm@349@01  $PSF<Cell>)))
  :pattern ((MWSF_apply mwsf@353@01 $t@337@01))
  :qid |quant-u-20900|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@337@01 $Snap)) (!
  (and
    (forall ((s@350@01 $Snap)) (!
      (=>
        (img@340@01 ($SortWrappers.$SnapTo$Ref s@350@01))
        (and
          (not (= s@350@01 $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@349@01  $PSF<Cell>) s@350@01)
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@337@01) s@350@01))))
      :pattern (($PSF.lookup_Cell (as sm@349@01  $PSF<Cell>) s@350@01))
      :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@337@01) s@350@01))
      :qid |qp.psmValDef39|))
    (=
      (MWSF_apply mwsf@353@01 $t@337@01)
      ($SortWrappers.$PSF<Cell>To$Snap (as sm@349@01  $PSF<Cell>))))
  :pattern ((MWSF_apply mwsf@353@01 $t@337@01))
  :qid |quant-u-20901|)))
(assert (forall ((x $Ref)) (!
  (=> (img@340@01 x) (= (inv@339@01 x) x))
  :pattern ((inv@339@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@338@01 $Ref)) (!
  (and (= (inv@339@01 y@338@01) y@338@01) (img@340@01 y@338@01))
  :pattern ((inv@339@01 y@338@01))
  :pattern ((img@340@01 y@338@01))
  :qid |quant-u-20892|)))
(assert (forall ((x $Ref)) (!
  (=> (img@352@01 x) (= (inv@351@01 x) x))
  :pattern ((inv@351@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@341@01 $Ref)) (!
  (and (= (inv@351@01 y@341@01) y@341@01) (img@352@01 y@341@01))
  :pattern ((inv@351@01 y@341@01))
  :pattern ((img@352@01 y@341@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@344@01  $PSF<Cell>) (as sm@349@01  $PSF<Cell>)))
; [exec]
; apply (forall y: Ref ::true ==> acc(Cell(y), write)) --*
;   (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@354@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@355@01 ($Ref) $Ref)
(declare-fun img@356@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@354@01 $Ref)) (!
  (and (= (inv@355@01 y@354@01) y@354@01) (img@356@01 y@354@01))
  :pattern ((inv@355@01 y@354@01))
  :pattern ((img@356@01 y@354@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@356@01 x) (= (inv@355@01 x) x))
  :pattern ((inv@355@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@357@01 ((x $Ref)) $Perm
  (ite
    (and (img@356@01 x) (= x (inv@355@01 x)))
    ($Perm.min (ite (img@334@01 x) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@334@01 x) $Perm.Write $Perm.No) (pTaken@357@01 x)) $Perm.No)
  
  :qid |quant-u-20904|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@356@01 x) (= x (inv@355@01 x)))
    (= (- $Perm.Write (pTaken@357@01 x)) $Perm.No))
  
  :qid |quant-u-20905|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values
(assert (forall ((s@336@01 $Snap)) (!
  (=>
    (img@334@01 ($SortWrappers.$SnapTo$Ref s@336@01))
    (and
      (not (= s@336@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) s@336@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@331@01)) s@336@01))))
  :pattern (($PSF.lookup_Cell (as sm@335@01  $PSF<Cell>) s@336@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@331@01)) s@336@01))
  :qid |qp.psmValDef38|)))
(declare-const y@358@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@359@01 ($Ref) $Ref)
(declare-fun img@360@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@358@01 $Ref)) (!
  (and (= (inv@359@01 y@358@01) y@358@01) (img@360@01 y@358@01))
  :pattern ((inv@359@01 y@358@01))
  :pattern ((img@360@01 y@358@01))
  :qid |quant-u-20907|)))
(assert (forall ((x $Ref)) (!
  (=> (img@360@01 x) (= (inv@359@01 x) x))
  :pattern ((inv@359@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@330@01) (> (ite (img@360@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20908|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@361@01 $PSF<Cell>)
(declare-const s@362@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@360@01 x@330@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@330@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@353@01 ($SortWrappers.$PSF<Cell>To$Snap (as sm@335@01  $PSF<Cell>)))) ($SortWrappers.$RefTo$Snap x@330@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (img@360@01 x@330@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@330@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@353@01 ($SortWrappers.$PSF<Cell>To$Snap (as sm@335@01  $PSF<Cell>)))) ($SortWrappers.$RefTo$Snap x@330@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@361@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@330@01))) x@330@01)
  0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test8 ----------
(declare-const x@363@01 $Ref)
(declare-const x@364@01 $Ref)
(push) ; 1
(declare-const $t@365@01 $Snap)
(assert (= $t@365@01 ($Snap.combine ($Snap.first $t@365@01) ($Snap.second $t@365@01))))
(declare-const y@366@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@367@01 ($Ref) $Ref)
(declare-fun img@368@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@366@01 $Ref)) (!
  (and (= (inv@367@01 y@366@01) y@366@01) (img@368@01 y@366@01))
  :pattern ((inv@367@01 y@366@01))
  :pattern ((img@368@01 y@366@01))
  :qid |quant-u-20910|)))
(assert (forall ((x $Ref)) (!
  (=> (img@368@01 x) (= (inv@367@01 x) x))
  :pattern ((inv@367@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@365@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@364@01) (> (ite (img@368@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20911|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@369@01 $PSF<Cell>)
(declare-const s@370@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@368@01 x@364@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@364@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@369@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) ($SortWrappers.$RefTo$Snap x@364@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@369@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@368@01 x@364@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@364@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@369@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) ($SortWrappers.$RefTo$Snap x@364@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@369@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@369@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package true --* (forall y: Ref ::true ==> acc(Cell(y), write)) {
; }
(push) ; 3
(declare-const $t@371@01 $Snap)
(assert (= $t@371@01 $Snap.unit))
(declare-const y@372@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@373@01 ($Ref) $Ref)
(declare-fun img@374@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@372@01 $Ref)) (!
  (and (= (inv@373@01 y@372@01) y@372@01) (img@374@01 y@372@01))
  :pattern ((inv@373@01 y@372@01))
  :pattern ((img@374@01 y@372@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@374@01 x) (= (inv@373@01 x) x))
  :pattern ((inv@373@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20913|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@374@01 x) (= x (inv@373@01 x))) false)
  
  :qid |quant-u-20914|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@375@01 $PSF<Cell>)
(declare-const s@376@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@377@01 ($Ref) $Ref)
(declare-fun img@378@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@374@01 x) (= x (inv@373@01 x))) false)
  
  :qid |quant-u-20915|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@379@01 $PSF<Cell>)
(declare-const s@380@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@381@01 ($Ref) $Ref)
(declare-fun img@382@01 ($Ref) Bool)
(assert (= (as sm@375@01  $PSF<Cell>) (as sm@379@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@383@01 ((x $Ref)) $Perm
  (ite
    (and (img@374@01 x) (= x (inv@373@01 x)))
    ($Perm.min (ite (img@368@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@368@01 x) $Perm.Write $Perm.No) (pTaken@383@01 x)) $Perm.No)
  
  :qid |quant-u-20917|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@374@01 x) (= x (inv@373@01 x)))
    (= (- $Perm.Write (pTaken@383@01 x)) $Perm.No))
  
  :qid |quant-u-20918|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@384@01 $PSF<Cell>)
(declare-const s@385@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@385@01 $Snap)) (!
  (=>
    (img@368@01 ($SortWrappers.$SnapTo$Ref s@385@01))
    (and
      (not (= s@385@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@384@01  $PSF<Cell>) s@385@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) s@385@01))))
  :pattern (($PSF.lookup_Cell (as sm@384@01  $PSF<Cell>) s@385@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) s@385@01))
  :qid |qp.psmValDef42|)))
(declare-fun inv@386@01 ($Ref) $Ref)
(declare-fun img@387@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (img@387@01 x) (= (inv@386@01 x) x))
  :pattern ((inv@386@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@372@01 $Ref)) (!
  (and (= (inv@386@01 y@372@01) y@372@01) (img@387@01 y@372@01))
  :pattern ((inv@386@01 y@372@01))
  :pattern ((img@387@01 y@372@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@375@01  $PSF<Cell>) (as sm@384@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@382@01 x) (img@378@01 x))
  
  :qid |quant-u-20919|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@387@01 x) (img@382@01 x))
  
  :qid |quant-u-20920|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@387@01 x) (img@378@01 x))
  
  :qid |quant-u-20921|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand true --* (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const mwsf@388@01 $MWSF)
(assert (forall (($t@371@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@388@01 $t@371@01)
    ($SortWrappers.$PSF<Cell>To$Snap (as sm@384@01  $PSF<Cell>)))
  :pattern ((MWSF_apply mwsf@388@01 $t@371@01))
  :qid |quant-u-20922|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@371@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@388@01 $t@371@01)
    ($SortWrappers.$PSF<Cell>To$Snap (as sm@384@01  $PSF<Cell>)))
  :pattern ((MWSF_apply mwsf@388@01 $t@371@01))
  :qid |quant-u-20923|)))
(assert (forall ((s@385@01 $Snap)) (!
  (=>
    (img@368@01 ($SortWrappers.$SnapTo$Ref s@385@01))
    (and
      (not (= s@385@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@384@01  $PSF<Cell>) s@385@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) s@385@01))))
  :pattern (($PSF.lookup_Cell (as sm@384@01  $PSF<Cell>) s@385@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@365@01)) s@385@01))
  :qid |qp.psmValDef42|)))
(assert (forall ((x $Ref)) (!
  (=> (img@387@01 x) (= (inv@386@01 x) x))
  :pattern ((inv@386@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@372@01 $Ref)) (!
  (and (= (inv@386@01 y@372@01) y@372@01) (img@387@01 y@372@01))
  :pattern ((inv@386@01 y@372@01))
  :pattern ((img@387@01 y@372@01))
  :qid |Cell-invOfFct|)))
(assert (and
  (= (as sm@375@01  $PSF<Cell>) (as sm@379@01  $PSF<Cell>))
  (= (as sm@375@01  $PSF<Cell>) (as sm@384@01  $PSF<Cell>))))
; [exec]
; apply true --* (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@389@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@390@01 ($Ref) $Ref)
(declare-fun img@391@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@389@01 $Ref)) (!
  (and (= (inv@390@01 y@389@01) y@389@01) (img@391@01 y@389@01))
  :pattern ((inv@390@01 y@389@01))
  :pattern ((img@391@01 y@389@01))
  :qid |quant-u-20925|)))
(assert (forall ((x $Ref)) (!
  (=> (img@391@01 x) (= (inv@390@01 x) x))
  :pattern ((inv@390@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@364@01) (> (ite (img@391@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20926|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@392@01 $PSF<Cell>)
(declare-const s@393@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@391@01 x@364@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@364@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@388@01 $Snap.unit)) ($SortWrappers.$RefTo$Snap x@364@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (img@391@01 x@364@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@364@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@388@01 $Snap.unit)) ($SortWrappers.$RefTo$Snap x@364@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@392@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@364@01))) x@364@01)
  0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test9 ----------
(declare-const x@394@01 $Ref)
(declare-const x@395@01 $Ref)
(push) ; 1
(declare-const $t@396@01 $Snap)
(assert (= $t@396@01 ($Snap.combine ($Snap.first $t@396@01) ($Snap.second $t@396@01))))
(declare-const y@397@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@398@01 ($Ref) $Ref)
(declare-fun img@399@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@397@01 $Ref)) (!
  (and (= (inv@398@01 y@397@01) y@397@01) (img@399@01 y@397@01))
  :pattern ((inv@398@01 y@397@01))
  :pattern ((img@399@01 y@397@01))
  :qid |quant-u-20928|)))
(assert (forall ((x $Ref)) (!
  (=> (img@399@01 x) (= (inv@398@01 x) x))
  :pattern ((inv@398@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@396@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@395@01) (> (ite (img@399@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20929|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@400@01 $PSF<Cell>)
(declare-const s@401@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@399@01 x@395@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@396@01)) ($SortWrappers.$RefTo$Snap x@395@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@399@01 x@395@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@396@01)) ($SortWrappers.$RefTo$Snap x@395@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), write)) --*
; acc(Cell(x), write) {
; }
(push) ; 3
(declare-const $t@402@01 $Snap)
(declare-const y@403@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@404@01 ($Ref) $Ref)
(declare-fun img@405@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@403@01 $Ref)) (!
  (and (= (inv@404@01 y@403@01) y@403@01) (img@405@01 y@403@01))
  :pattern ((inv@404@01 y@403@01))
  :pattern ((img@405@01 y@403@01))
  :qid |quant-u-20931|)))
(assert (forall ((x $Ref)) (!
  (=> (img@405@01 x) (= (inv@404@01 x) x))
  :pattern ((inv@404@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@395@01) false)
  
  :qid |quant-u-20932|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@406@01 $PSF<Cell>)
(declare-const s@407@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@408@01 ((x $Ref)) $Perm
  (ite
    (= x x@395@01)
    ($Perm.min (ite (img@405@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@405@01 x) $Perm.Write $Perm.No) (pTaken@408@01 x)) $Perm.No)
  
  :qid |quant-u-20934|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@408@01 x) $Perm.No)
  
  :qid |quant-u-20935|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@395@01) (= (- $Perm.Write (pTaken@408@01 x)) $Perm.No))
  
  :qid |quant-u-20936|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@409@01 $PSF<Cell>)
(declare-const s@410@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@405@01 x@395@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@402@01) ($SortWrappers.$RefTo$Snap x@395@01))))))
(assert (= (as sm@406@01  $PSF<Cell>) (as sm@409@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@411@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (= x x@395@01)
    (=
      ($PSF.lookup_Cell $t@411@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell (as sm@406@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@411@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20937|)))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), write)) --* acc(Cell(x), write)
(declare-const mwsf@412@01 $MWSF)
(assert (forall (($t@402@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@412@01 $t@402@01)
    ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))))
  :pattern ((MWSF_apply mwsf@412@01 $t@402@01))
  :qid |quant-u-20938|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@402@01 $Snap)) (!
  (and
    (and
      (=>
        (img@405@01 x@395@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@402@01) ($SortWrappers.$RefTo$Snap x@395@01)))))
      (= (as sm@406@01  $PSF<Cell>) (as sm@409@01  $PSF<Cell>)))
    (=
      (MWSF_apply mwsf@412@01 $t@402@01)
      ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@409@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01)))))
  :pattern ((MWSF_apply mwsf@412@01 $t@402@01))
  :qid |quant-u-20939|)))
(assert (forall ((x $Ref)) (!
  (=> (img@405@01 x) (= (inv@404@01 x) x))
  :pattern ((inv@404@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@403@01 $Ref)) (!
  (and (= (inv@404@01 y@403@01) y@403@01) (img@405@01 y@403@01))
  :pattern ((inv@404@01 y@403@01))
  :pattern ((img@405@01 y@403@01))
  :qid |quant-u-20931|)))
; [exec]
; apply (forall y: Ref ::true ==> acc(Cell(y), write)) --*
;   acc(Cell(x), write)
(declare-const y@413@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@414@01 ($Ref) $Ref)
(declare-fun img@415@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@413@01 $Ref)) (!
  (and (= (inv@414@01 y@413@01) y@413@01) (img@415@01 y@413@01))
  :pattern ((inv@414@01 y@413@01))
  :pattern ((img@415@01 y@413@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@415@01 x) (= (inv@414@01 x) x))
  :pattern ((inv@414@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@416@01 ((x $Ref)) $Perm
  (ite
    (and (img@415@01 x) (= x (inv@414@01 x)))
    ($Perm.min (ite (img@399@01 x) $Perm.Write $Perm.No) $Perm.Write)
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
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@399@01 x) $Perm.Write $Perm.No) (pTaken@416@01 x)) $Perm.No)
  
  :qid |quant-u-20942|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@415@01 x) (= x (inv@414@01 x)))
    (= (- $Perm.Write (pTaken@416@01 x)) $Perm.No))
  
  :qid |quant-u-20943|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; Definitional axioms for snapshot map values
(assert (forall ((s@401@01 $Snap)) (!
  (=>
    (img@399@01 ($SortWrappers.$SnapTo$Ref s@401@01))
    (and
      (not (= s@401@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) s@401@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@396@01)) s@401@01))))
  :pattern (($PSF.lookup_Cell (as sm@400@01  $PSF<Cell>) s@401@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@396@01)) s@401@01))
  :qid |qp.psmValDef44|)))
(declare-const sm@417@01 $PSF<Cell>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_Cell (as sm@417@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
  ($SortWrappers.$SnapToInt (MWSF_apply mwsf@412@01 ($SortWrappers.$PSF<Cell>To$Snap (as sm@400@01  $PSF<Cell>))))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@395@01) (> (ite (= x x@395@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20944|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@418@01 $PSF<Cell>)
(declare-const s@419@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
    ($PSF.lookup_Cell (as sm@417@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@395@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))
    ($PSF.lookup_Cell (as sm@417@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@418@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@395@01))) x@395@01)
  0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test10 ----------
(declare-const x@420@01 $Ref)
(declare-const x@421@01 $Ref)
(push) ; 1
(declare-const $t@422@01 $Snap)
(assert (= $t@422@01 ($Snap.combine ($Snap.first $t@422@01) ($Snap.second $t@422@01))))
(declare-const y@423@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-fun inv@424@01 ($Ref) $Ref)
(declare-fun img@425@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@423@01 $Ref)) (!
  (and (= (inv@424@01 y@423@01) y@423@01) (img@425@01 y@423@01))
  :pattern ((inv@424@01 y@423@01))
  :pattern ((img@425@01 y@423@01))
  :qid |quant-u-20946|)))
(assert (forall ((x $Ref)) (!
  (=> (img@425@01 x) (= (inv@424@01 x) x))
  :pattern ((inv@424@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@422@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@421@01) (> (ite (img@425@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20947|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@426@01 $PSF<Cell>)
(declare-const s@427@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@425@01 x@421@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@426@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@426@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (img@425@01 x@421@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@426@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@426@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@426@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package true --* acc(Cell(x), write) {
; }
(push) ; 3
(declare-const $t@428@01 $Snap)
(assert (= $t@428@01 $Snap.unit))
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@421@01) false)
  
  :qid |quant-u-20948|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@429@01 $PSF<Cell>)
(declare-const s@430@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@421@01) false)
  
  :qid |quant-u-20949|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@431@01 $PSF<Cell>)
(declare-const s@432@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@429@01  $PSF<Cell>) (as sm@431@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@433@01 ((x $Ref)) $Perm
  (ite
    (= x x@421@01)
    ($Perm.min (ite (img@425@01 x) $Perm.Write $Perm.No) $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (= (- (ite (img@425@01 x) $Perm.Write $Perm.No) (pTaken@433@01 x)) $Perm.No)
  
  :qid |quant-u-20951|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@433@01 x) $Perm.No)
  
  :qid |quant-u-20952|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@421@01) (= (- $Perm.Write (pTaken@433@01 x)) $Perm.No))
  
  :qid |quant-u-20953|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@434@01 $PSF<Cell>)
(declare-const s@435@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@425@01 x@421@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01))))))
(assert (= (as sm@429@01  $PSF<Cell>) (as sm@434@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@436@01 $PSF<Cell>)
(declare-const $t@437@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (= x x@421@01)
    (=
      ($PSF.lookup_Cell $t@437@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell $t@436@01 ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@437@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20955|)))
; Create MagicWandSnapFunction for wand true --* acc(Cell(x), write)
(declare-const mwsf@438@01 $MWSF)
(assert (forall (($t@428@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@438@01 $t@428@01)
    ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))))
  :pattern ((MWSF_apply mwsf@438@01 $t@428@01))
  :qid |quant-u-20956|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@428@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@438@01 $t@428@01)
    ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))))
  :pattern ((MWSF_apply mwsf@438@01 $t@428@01))
  :qid |quant-u-20957|)))
(assert (and
  (= (as sm@429@01  $PSF<Cell>) (as sm@431@01  $PSF<Cell>))
  (=>
    (img@425@01 x@421@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@434@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01)))))
  (= (as sm@429@01  $PSF<Cell>) (as sm@434@01  $PSF<Cell>))))
; [exec]
; apply true --* acc(Cell(x), write)
(declare-const sm@439@01 $PSF<Cell>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_Cell (as sm@439@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
  ($SortWrappers.$SnapToInt (MWSF_apply mwsf@438@01 $Snap.unit))))
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@421@01)
    (>
      (+
        (ite (= x x@421@01) $Perm.Write $Perm.No)
        (ite (img@425@01 x) (- $Perm.Write (pTaken@433@01 x)) $Perm.No))
      $Perm.No))
  
  :qid |quant-u-20958|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@440@01 $PSF<Cell>)
(declare-const s@441@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
    ($PSF.lookup_Cell (as sm@439@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01)))))
(assert (=>
  (ite
    (img@425@01 x@421@01)
    (< $Perm.No (- $Perm.Write (pTaken@433@01 x@421@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
    ($PSF.lookup_Cell (as sm@439@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01)))
  (=>
    (ite
      (img@425@01 x@421@01)
      (< $Perm.No (- $Perm.Write (pTaken@433@01 x@421@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@421@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@422@01)) ($SortWrappers.$RefTo$Snap x@421@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@440@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@421@01))) x@421@01)
  0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test11 ----------
(declare-const x@442@01 $Ref)
(declare-const x@443@01 $Ref)
(push) ; 1
(declare-const $t@444@01 $Snap)
(assert (= $t@444@01 ($Snap.combine ($Snap.first $t@444@01) ($Snap.second $t@444@01))))
(declare-const sm@445@01 $PSF<Cell>)
; Definitional axioms for singleton-SM's value
(assert (=
  ($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))
  ($SortWrappers.$SnapToInt ($Snap.first $t@444@01))))
(assert (= ($Snap.second $t@444@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@443@01) (> (ite (= x x@443@01) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20959|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@446@01 $PSF<Cell>)
(declare-const s@447@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@443@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@446@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))
    ($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@446@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@443@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@446@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))
    ($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@446@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@446@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::y != x ==> acc(Cell(y), write)) --*
; (forall y: Ref ::true ==> acc(Cell(y), write)) {
; }
(push) ; 3
(declare-const $t@448@01 $Snap)
(declare-const y@449@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@449@01 x@443@01)))
(pop) ; 4
(declare-fun inv@450@01 ($Ref) $Ref)
(declare-fun img@451@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@449@01 $Ref) (y2@449@01 $Ref)) (!
  (=>
    (and
      (not (= y1@449@01 x@443@01))
      (not (= y2@449@01 x@443@01))
      (= y1@449@01 y2@449@01))
    (= y1@449@01 y2@449@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@449@01 $Ref)) (!
  (=>
    (not (= y@449@01 x@443@01))
    (and (= (inv@450@01 y@449@01) y@449@01) (img@451@01 y@449@01)))
  :pattern ((inv@450@01 y@449@01))
  :pattern ((img@451@01 y@449@01))
  :qid |quant-u-20961|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@451@01 x) (not (= (inv@450@01 x) x@443@01)))
    (= (inv@450@01 x) x))
  :pattern ((inv@450@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(declare-const y@452@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@453@01 ($Ref) $Ref)
(declare-fun img@454@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@452@01 $Ref)) (!
  (and (= (inv@453@01 y@452@01) y@452@01) (img@454@01 y@452@01))
  :pattern ((inv@453@01 y@452@01))
  :pattern ((img@454@01 y@452@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=> (img@454@01 x) (= (inv@453@01 x) x))
  :pattern ((inv@453@01 x))
  :qid |Cell-fctOfInv|)))
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  false
  
  :qid |quant-u-20963|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (and (img@454@01 x) (= x (inv@453@01 x))) false)
  
  :qid |quant-u-20964|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@455@01 $PSF<Cell>)
(declare-const s@456@01 $Snap)
; Definitional axioms for snapshot map values
(declare-fun inv@457@01 ($Ref) $Ref)
(declare-fun img@458@01 ($Ref) Bool)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@459@01 ((x $Ref)) $Perm
  (ite
    (and (img@454@01 x) (= x (inv@453@01 x)))
    ($Perm.min
      (ite
        (and (img@451@01 x) (not (= (inv@450@01 x) x@443@01)))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@451@01 x) (not (= (inv@450@01 x) x@443@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@459@01 x))
    $Perm.No)
  
  :qid |quant-u-20966|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@454@01 x) (= x (inv@453@01 x)))
    (= (- $Perm.Write (pTaken@459@01 x)) $Perm.No))
  
  :qid |quant-u-20967|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@454@01 x) (= x (inv@453@01 x)))
    (= (- $Perm.Write (pTaken@459@01 x)) $Perm.No))
  
  :qid |quant-u-20967|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@460@01 $PSF<Cell>)
(declare-const s@461@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@461@01 $Snap)) (!
  (=>
    (and
      (img@451@01 ($SortWrappers.$SnapTo$Ref s@461@01))
      (not (= (inv@450@01 ($SortWrappers.$SnapTo$Ref s@461@01)) x@443@01)))
    (and
      (not (= s@461@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@460@01  $PSF<Cell>) s@461@01)
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@448@01) s@461@01))))
  :pattern (($PSF.lookup_Cell (as sm@460@01  $PSF<Cell>) s@461@01))
  :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@448@01) s@461@01))
  :qid |qp.psmValDef52|)))
(declare-fun inv@462@01 ($Ref) $Ref)
(declare-fun img@463@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=> (and (img@463@01 x) (< $Perm.No (pTaken@459@01 x))) (= (inv@462@01 x) x))
  :pattern ((inv@462@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@452@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@459@01 y@452@01))
    (and (= (inv@462@01 y@452@01) y@452@01) (img@463@01 y@452@01)))
  :pattern ((inv@462@01 y@452@01))
  :pattern ((img@463@01 y@452@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@455@01  $PSF<Cell>) (as sm@460@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@464@01 ((x $Ref)) $Perm
  (ite
    (and (img@454@01 x) (= x (inv@453@01 x)))
    ($Perm.min
      (ite (= x x@443@01) $Perm.Write $Perm.No)
      (- $Perm.Write (pTaken@459@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (= (- $Perm.Write (pTaken@464@01 x@443@01)) $Perm.No)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (img@454@01 x) (= x (inv@453@01 x)))
    (= (- (- $Perm.Write (pTaken@459@01 x)) (pTaken@464@01 x)) $Perm.No))
  
  :qid |quant-u-20970|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@465@01 $PSF<Cell>)
(declare-const s@466@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@466@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@466@01) x@443@01)
    (and
      (not (= s@466@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@465@01  $PSF<Cell>) s@466@01)
        ($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) s@466@01))))
  :pattern (($PSF.lookup_Cell (as sm@465@01  $PSF<Cell>) s@466@01))
  :pattern (($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) s@466@01))
  :qid |qp.psmValDef53|)))
(declare-fun inv@467@01 ($Ref) $Ref)
(declare-fun img@468@01 ($Ref) Bool)
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@468@01 x) (< $Perm.No (- $Perm.Write (pTaken@459@01 x))))
    (= (inv@467@01 x) x))
  :pattern ((inv@467@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@452@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@459@01 y@452@01)))
    (and (= (inv@467@01 y@452@01) y@452@01) (img@468@01 y@452@01)))
  :pattern ((inv@467@01 y@452@01))
  :pattern ((img@468@01 y@452@01))
  :qid |Cell-invOfFct|)))
(assert (= (as sm@455@01  $PSF<Cell>) (as sm@465@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@463@01 x) (img@458@01 x))
  
  :qid |quant-u-20971|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@468@01 x) (img@463@01 x))
  
  :qid |quant-u-20972|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (img@468@01 x) (img@458@01 x))
  
  :qid |quant-u-20973|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Create MagicWandSnapFunction for wand (forall y: Ref ::y != x ==> acc(Cell(y), write)) --* (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const mwsf@469@01 $MWSF)
(assert (forall (($t@448@01 $Snap)) (!
  (=
    (MWSF_apply mwsf@469@01 $t@448@01)
    ($SortWrappers.$PSF<Cell>To$Snap (as sm@465@01  $PSF<Cell>)))
  :pattern ((MWSF_apply mwsf@469@01 $t@448@01))
  :qid |quant-u-20974|)))
(pop) ; 3
(set-option :timeout 0)
(push) ; 3
(assert (forall (($t@448@01 $Snap)) (!
  (and
    (forall ((s@461@01 $Snap)) (!
      (=>
        (and
          (img@451@01 ($SortWrappers.$SnapTo$Ref s@461@01))
          (not (= (inv@450@01 ($SortWrappers.$SnapTo$Ref s@461@01)) x@443@01)))
        (and
          (not (= s@461@01 $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@460@01  $PSF<Cell>) s@461@01)
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@448@01) s@461@01))))
      :pattern (($PSF.lookup_Cell (as sm@460@01  $PSF<Cell>) s@461@01))
      :pattern (($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> $t@448@01) s@461@01))
      :qid |qp.psmValDef52|))
    (=
      (MWSF_apply mwsf@469@01 $t@448@01)
      ($SortWrappers.$PSF<Cell>To$Snap (as sm@465@01  $PSF<Cell>))))
  :pattern ((MWSF_apply mwsf@469@01 $t@448@01))
  :qid |quant-u-20975|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@451@01 x) (not (= (inv@450@01 x) x@443@01)))
    (= (inv@450@01 x) x))
  :pattern ((inv@450@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@449@01 $Ref)) (!
  (=>
    (not (= y@449@01 x@443@01))
    (and (= (inv@450@01 y@449@01) y@449@01) (img@451@01 y@449@01)))
  :pattern ((inv@450@01 y@449@01))
  :pattern ((img@451@01 y@449@01))
  :qid |quant-u-20961|)))
(assert (forall ((x $Ref)) (!
  (=> (and (img@463@01 x) (< $Perm.No (pTaken@459@01 x))) (= (inv@462@01 x) x))
  :pattern ((inv@462@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@452@01 $Ref)) (!
  (=>
    (< $Perm.No (pTaken@459@01 y@452@01))
    (and (= (inv@462@01 y@452@01) y@452@01) (img@463@01 y@452@01)))
  :pattern ((inv@462@01 y@452@01))
  :pattern ((img@463@01 y@452@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((s@466@01 $Snap)) (!
  (=>
    (= ($SortWrappers.$SnapTo$Ref s@466@01) x@443@01)
    (and
      (not (= s@466@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@465@01  $PSF<Cell>) s@466@01)
        ($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) s@466@01))))
  :pattern (($PSF.lookup_Cell (as sm@465@01  $PSF<Cell>) s@466@01))
  :pattern (($PSF.lookup_Cell (as sm@445@01  $PSF<Cell>) s@466@01))
  :qid |qp.psmValDef53|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@468@01 x) (< $Perm.No (- $Perm.Write (pTaken@459@01 x))))
    (= (inv@467@01 x) x))
  :pattern ((inv@467@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@452@01 $Ref)) (!
  (=>
    (< $Perm.No (- $Perm.Write (pTaken@459@01 y@452@01)))
    (and (= (inv@467@01 y@452@01) y@452@01) (img@468@01 y@452@01)))
  :pattern ((inv@467@01 y@452@01))
  :pattern ((img@468@01 y@452@01))
  :qid |Cell-invOfFct|)))
(assert (and
  (= (as sm@455@01  $PSF<Cell>) (as sm@460@01  $PSF<Cell>))
  (= (as sm@455@01  $PSF<Cell>) (as sm@465@01  $PSF<Cell>))))
; [exec]
; inhale (forall y: Ref ::y != x ==> acc(Cell(y), write))
(declare-const y@470@01 $Ref)
(push) ; 4
; [eval] y != x
(assert (not (= y@470@01 x@443@01)))
(pop) ; 4
(declare-const $t@471@01 $PSF<Cell>)
(declare-fun inv@472@01 ($Ref) $Ref)
(declare-fun img@473@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@470@01 $Ref) (y2@470@01 $Ref)) (!
  (=>
    (and
      (not (= y1@470@01 x@443@01))
      (not (= y2@470@01 x@443@01))
      (= y1@470@01 y2@470@01))
    (= y1@470@01 y2@470@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@470@01 $Ref)) (!
  (=>
    (not (= y@470@01 x@443@01))
    (and (= (inv@472@01 y@470@01) y@470@01) (img@473@01 y@470@01)))
  :pattern ((inv@472@01 y@470@01))
  :pattern ((img@473@01 y@470@01))
  :qid |quant-u-20977|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@473@01 x) (not (= (inv@472@01 x) x@443@01)))
    (= (inv@472@01 x) x))
  :pattern ((inv@472@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; State saturation: after inhale
(set-option :timeout 20)
(check-sat)
; unknown
; [exec]
; apply (forall y: Ref ::y != x ==> acc(Cell(y), write)) --*
;   (forall y: Ref ::true ==> acc(Cell(y), write))
(declare-const y@474@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y != x
(assert (not (= y@474@01 x@443@01)))
(pop) ; 4
(declare-fun inv@475@01 ($Ref) $Ref)
(declare-fun img@476@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y1@474@01 $Ref) (y2@474@01 $Ref)) (!
  (=>
    (and
      (not (= y1@474@01 x@443@01))
      (not (= y2@474@01 x@443@01))
      (= y1@474@01 y2@474@01))
    (= y1@474@01 y2@474@01))
  
  :qid |Cell-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y@474@01 $Ref)) (!
  (=>
    (not (= y@474@01 x@443@01))
    (and (= (inv@475@01 y@474@01) y@474@01) (img@476@01 y@474@01)))
  :pattern ((inv@475@01 y@474@01))
  :pattern ((img@476@01 y@474@01))
  :qid |Cell-invOfFct|)))
(assert (forall ((x $Ref)) (!
  (=>
    (and (img@476@01 x) (not (= (inv@475@01 x) x@443@01)))
    (= (inv@475@01 x) x))
  :pattern ((inv@475@01 x))
  :qid |Cell-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@477@01 ((x $Ref)) $Perm
  (ite
    (and (not (= (inv@475@01 x) x@443@01)) (img@476@01 x) (= x (inv@475@01 x)))
    ($Perm.min
      (ite
        (and (img@473@01 x) (not (= (inv@472@01 x) x@443@01)))
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
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite
        (and (img@473@01 x) (not (= (inv@472@01 x) x@443@01)))
        $Perm.Write
        $Perm.No)
      (pTaken@477@01 x))
    $Perm.No)
  
  :qid |quant-u-20980|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (and (not (= (inv@475@01 x) x@443@01)) (img@476@01 x) (= x (inv@475@01 x)))
    (= (- $Perm.Write (pTaken@477@01 x)) $Perm.No))
  
  :qid |quant-u-20981|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@478@01 $PSF<Cell>)
(declare-const s@479@01 $Snap)
; Definitional axioms for snapshot map values
(assert (forall ((s@479@01 $Snap)) (!
  (=>
    (and
      (img@473@01 ($SortWrappers.$SnapTo$Ref s@479@01))
      (not (= (inv@472@01 ($SortWrappers.$SnapTo$Ref s@479@01)) x@443@01)))
    (and
      (not (= s@479@01 $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@478@01  $PSF<Cell>) s@479@01)
        ($PSF.lookup_Cell $t@471@01 s@479@01))))
  :pattern (($PSF.lookup_Cell (as sm@478@01  $PSF<Cell>) s@479@01))
  :pattern (($PSF.lookup_Cell $t@471@01 s@479@01))
  :qid |qp.psmValDef54|)))
(declare-const y@480@01 $Ref)
(set-option :timeout 0)
(push) ; 4
(pop) ; 4
(declare-fun inv@481@01 ($Ref) $Ref)
(declare-fun img@482@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@480@01 $Ref)) (!
  (and (= (inv@481@01 y@480@01) y@480@01) (img@482@01 y@480@01))
  :pattern ((inv@481@01 y@480@01))
  :pattern ((img@482@01 y@480@01))
  :qid |quant-u-20983|)))
(assert (forall ((x $Ref)) (!
  (=> (img@482@01 x) (= (inv@481@01 x) x))
  :pattern ((inv@481@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; [state consolidation]
; State saturation: before repetition
(set-option :timeout 10)
(check-sat)
; unknown
; [exec]
; assert get(x) == 0
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@443@01) (> (ite (img@482@01 x) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-20984|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@483@01 $PSF<Cell>)
(declare-const s@484@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@482@01 x@443@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@443@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@469@01 ($SortWrappers.$PSF<Cell>To$Snap (as sm@478@01  $PSF<Cell>)))) ($SortWrappers.$RefTo$Snap x@443@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (img@482@01 x@443@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@443@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> (MWSF_apply mwsf@469@01 ($SortWrappers.$PSF<Cell>To$Snap (as sm@478@01  $PSF<Cell>)))) ($SortWrappers.$RefTo$Snap x@443@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@483@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@443@01))) x@443@01)
  0))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test12 ----------
(declare-const x@485@01 $Ref)
(declare-const x@486@01 $Ref)
(push) ; 1
(declare-const y@487@01 $Ref)
(push) ; 2
(pop) ; 2
(declare-const $t@488@01 $PSF<Cell>)
(declare-fun inv@489@01 ($Ref) $Ref)
(declare-fun img@490@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@487@01 $Ref)) (!
  (and (= (inv@489@01 y@487@01) y@487@01) (img@490@01 y@487@01))
  :pattern ((inv@489@01 y@487@01))
  :pattern ((img@490@01 y@487@01))
  :qid |quant-u-20986|)))
(assert (forall ((x $Ref)) (!
  (=> (img@490@01 x) (= (inv@489@01 x) x))
  :pattern ((inv@489@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) && get(x) == 0 --*
; true {
;   assert acc(Cell(x), write) && get(x) == 0
; }
(push) ; 3
(declare-const $t@491@01 $Snap)
(assert (= $t@491@01 ($Snap.combine ($Snap.first $t@491@01) ($Snap.second $t@491@01))))
(declare-const y@492@01 $Ref)
(push) ; 4
(pop) ; 4
(declare-fun inv@493@01 ($Ref) $Ref)
(declare-fun img@494@01 ($Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
; Definitional axioms for inverse functions
(assert (forall ((y@492@01 $Ref)) (!
  (and (= (inv@493@01 y@492@01) y@492@01) (img@494@01 y@492@01))
  :pattern ((inv@493@01 y@492@01))
  :pattern ((img@494@01 y@492@01))
  :qid |quant-u-20988|)))
(assert (forall ((x $Ref)) (!
  (=> (img@494@01 x) (= (inv@493@01 x) x))
  :pattern ((inv@493@01 x))
  :qid |Cell-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second $t@491@01) $Snap.unit))
; [eval] get(x) == 0
; [eval] get(x)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@486@01)
    (> (ite (img@494@01 x) (/ (to_real 1) (to_real 2)) $Perm.No) $Perm.No))
  
  :qid |quant-u-20989|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@495@01 $PSF<Cell>)
(declare-const s@496@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@494@01 x@486@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@495@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01))))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@495@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (img@494@01 x@486@01)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@495@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01)))))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@495@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01)))
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@495@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01)
  0))
; [exec]
; assert acc(Cell(x), write) && get(x) == 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@486@01) false)
  
  :qid |quant-u-20990|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@497@01 $PSF<Cell>)
(declare-const s@498@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@499@01 ((x $Ref)) $Perm
  (ite
    (= x x@486@01)
    ($Perm.min
      (ite (img@494@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@494@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@499@01 x))
    $Perm.No)
  
  :qid |quant-u-20992|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@499@01 x) $Perm.No)
  
  :qid |quant-u-20993|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@486@01) (= (- $Perm.Write (pTaken@499@01 x)) $Perm.No))
  
  :qid |quant-u-20994|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref)) (!
  (=> (= x x@486@01) (= (- $Perm.Write (pTaken@499@01 x)) $Perm.No))
  
  :qid |quant-u-20994|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@500@01 $PSF<Cell>)
(declare-const s@501@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@494@01 x@486@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@500@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01))))))
(assert (= (as sm@497@01  $PSF<Cell>) (as sm@500@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@502@01 ((x $Ref)) $Perm
  (ite
    (= x x@486@01)
    ($Perm.min
      (ite (img@490@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (- $Perm.Write (pTaken@499@01 x)))
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=
    (-
      (ite (img@490@01 x) (/ (to_real 1) (to_real 2)) $Perm.No)
      (pTaken@502@01 x))
    $Perm.No)
  
  :qid |quant-u-20996|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref)) (!
  (= (pTaken@502@01 x) $Perm.No)
  
  :qid |quant-u-20997|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@486@01)
    (= (- (- $Perm.Write (pTaken@499@01 x)) (pTaken@502@01 x)) $Perm.No))
  
  :qid |quant-u-20998|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@503@01 $PSF<Cell>)
(declare-const s@504@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (img@490@01 x@486@01)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@503@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
      ($PSF.lookup_Cell $t@488@01 ($SortWrappers.$RefTo$Snap x@486@01))))))
(assert (= (as sm@497@01  $PSF<Cell>) (as sm@503@01  $PSF<Cell>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@505@01 $PSF<Cell>)
(declare-const $t@506@01 $PSF<Cell>)
(assert (forall ((x $Ref)) (!
  (=>
    (ite (= x x@486@01) (< $Perm.No (pTaken@499@01 x)) false)
    (=
      ($PSF.lookup_Cell $t@505@01 ($SortWrappers.$RefTo$Snap x))
      ($PSF.lookup_Cell (as sm@500@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x))))
  :pattern (($PSF.lookup_Cell (as sm@497@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@500@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@505@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-20999|)))
(assert (forall ((x $Ref)) (!
  (and
    (=>
      (ite (= x x@486@01) (< $Perm.No (pTaken@499@01 x)) false)
      (=
        ($PSF.lookup_Cell $t@506@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell $t@505@01 ($SortWrappers.$RefTo$Snap x))))
    (=>
      (ite (= x x@486@01) (< $Perm.No (- $Perm.Write (pTaken@499@01 x))) false)
      (=
        ($PSF.lookup_Cell $t@506@01 ($SortWrappers.$RefTo$Snap x))
        ($PSF.lookup_Cell (as sm@503@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))))
  :pattern (($PSF.lookup_Cell $t@505@01 ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell (as sm@503@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x)))
  :pattern (($PSF.lookup_Cell $t@506@01 ($SortWrappers.$RefTo$Snap x)))
  :qid |quant-u-21000|)))
; [eval] get(x) == 0
; [eval] get(x)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref)) (!
  (=>
    (= x x@486@01)
    (>
      (+
        (ite (= x x@486@01) $Perm.Write $Perm.No)
        (ite
          (img@494@01 x)
          (- (/ (to_real 1) (to_real 2)) (pTaken@499@01 x))
          $Perm.No))
      $Perm.No))
  
  :qid |quant-u-21001|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@507@01 $PSF<Cell>)
(declare-const s@508@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (ite
    (img@494@01 x@486@01)
    (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@499@01 x@486@01)))
    false)
  (and
    (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
    (=
      ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
      ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01))))))
(assert (and
  (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
    ($PSF.lookup_Cell $t@506@01 ($SortWrappers.$RefTo$Snap x@486@01)))))
(assert (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (=>
    (ite
      (img@494@01 x@486@01)
      (< $Perm.No (- (/ (to_real 1) (to_real 2)) (pTaken@499@01 x@486@01)))
      false)
    (and
      (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
      (=
        ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
        ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01)))))
  (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
  (=
    ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
    ($PSF.lookup_Cell $t@506@01 ($SortWrappers.$RefTo$Snap x@486@01)))
  (get%precondition ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01)))
(push) ; 4
(assert (not (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (get ($SortWrappers.IntTo$Snap ($PSF.lookup_Cell (as sm@507@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))) x@486@01)
  0))
; Create MagicWandSnapFunction for wand (forall y: Ref ::true ==> acc(Cell(y), 1 / 2)) && get(x) == 0 --* true
(declare-const mwsf@509@01 $MWSF)
(assert (forall (($t@491@01 $Snap)) (!
  (= (MWSF_apply mwsf@509@01 $t@491@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@509@01 $t@491@01))
  :qid |quant-u-21002|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@491@01 $Snap)) (!
  (and
    (and
      (=>
        (img@494@01 x@486@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@500@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
            ($PSF.lookup_Cell ($SortWrappers.$SnapTo$PSF<Cell> ($Snap.first $t@491@01)) ($SortWrappers.$RefTo$Snap x@486@01)))))
      (= (as sm@497@01  $PSF<Cell>) (as sm@500@01  $PSF<Cell>))
      (=>
        (img@490@01 x@486@01)
        (and
          (not (= ($SortWrappers.$RefTo$Snap x@486@01) $Snap.unit))
          (=
            ($PSF.lookup_Cell (as sm@503@01  $PSF<Cell>) ($SortWrappers.$RefTo$Snap x@486@01))
            ($PSF.lookup_Cell $t@488@01 ($SortWrappers.$RefTo$Snap x@486@01)))))
      (= (as sm@497@01  $PSF<Cell>) (as sm@503@01  $PSF<Cell>)))
    (= (MWSF_apply mwsf@509@01 $t@491@01) $Snap.unit))
  :pattern ((MWSF_apply mwsf@509@01 $t@491@01))
  :qid |quant-u-21003|)))
(assert (forall ((x $Ref)) (!
  (=> (img@494@01 x) (= (inv@493@01 x) x))
  :pattern ((inv@493@01 x))
  :qid |Cell-fctOfInv|)))
(assert (forall ((y@492@01 $Ref)) (!
  (and (= (inv@493@01 y@492@01) y@492@01) (img@494@01 y@492@01))
  :pattern ((inv@493@01 y@492@01))
  :pattern ((img@494@01 y@492@01))
  :qid |quant-u-20988|)))
(pop) ; 3
(pop) ; 2
(pop) ; 1
; ---------- test13 ----------
(declare-const x0@510@01 $Ref)
(declare-const x1@511@01 $Ref)
(declare-const x0@512@01 $Ref)
(declare-const x1@513@01 $Ref)
(push) ; 1
(declare-const $t@514@01 $Snap)
(assert (= $t@514@01 ($Snap.combine ($Snap.first $t@514@01) ($Snap.second $t@514@01))))
(assert (= ($Snap.first $t@514@01) $Snap.unit))
; [eval] x0 != x1
(assert (not (= x0@512@01 x1@513@01)))
(assert (=
  ($Snap.second $t@514@01)
  ($Snap.combine
    ($Snap.first ($Snap.second $t@514@01))
    ($Snap.second ($Snap.second $t@514@01)))))
(declare-const y0@515@01 $Ref)
(declare-const y1@516@01 $Ref)
(push) ; 2
; [eval] y0 != y1
(assert (not (= y0@515@01 y1@516@01)))
(pop) ; 2
(declare-fun inv@517@01 ($Ref $Ref) $Ref)
(declare-fun img@518@01 ($Ref $Ref) Bool)
(declare-fun inv@519@01 ($Ref $Ref) $Ref)
(declare-fun img@520@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 2
(assert (not (forall ((y01@515@01 $Ref) (y11@516@01 $Ref) (y02@515@01 $Ref) (y12@516@01 $Ref)) (!
  (=>
    (and
      (not (= y01@515@01 y11@516@01))
      (not (= y02@515@01 y12@516@01))
      (and (= y01@515@01 y02@515@01) (= y11@516@01 y12@516@01)))
    (and (= y01@515@01 y02@515@01) (= y11@516@01 y12@516@01)))
  
  :qid |Pair-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 2
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y0@515@01 $Ref) (y1@516@01 $Ref)) (!
  (=>
    (not (= y0@515@01 y1@516@01))
    (and
      (and
        (= (inv@517@01 y0@515@01 y1@516@01) y0@515@01)
        (= (inv@519@01 y0@515@01 y1@516@01) y1@516@01))
      (and (img@518@01 y0@515@01 y1@516@01) (img@520@01 y0@515@01 y1@516@01))))
  :pattern ((inv@517@01 y0@515@01 y1@516@01))
  :pattern ((inv@519@01 y0@515@01 y1@516@01))
  :pattern ((img@518@01 y0@515@01 y1@516@01))
  :pattern ((img@520@01 y0@515@01 y1@516@01))
  :qid |quant-u-21005|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@518@01 x y) (img@520@01 x y))
      (not (= (inv@517@01 x y) (inv@519@01 x y))))
    (and (= (inv@517@01 x y) x) (= (inv@519@01 x y) y)))
  :pattern ((inv@517@01 x y))
  :pattern ((inv@519@01 x y))
  :qid |Pair-fctOfInv|)))
; Permissions are non-negative
(assert (= ($Snap.second ($Snap.second $t@514@01)) $Snap.unit))
; [eval] sum(x0, x1) == 0
; [eval] sum(x0, x1)
(push) ; 2
(push) ; 3
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and (= x x0@512@01) (= y x1@513@01))
    (>
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        $Perm.Write
        $Perm.No)
      $Perm.No))
  
  :qid |quant-u-21006|))))
(check-sat)
; unsat
(pop) ; 3
; 0.00s
; (get-info :all-statistics)
(declare-const sm@521@01 $PSF<Pair>)
(declare-const s@522@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (and (img@518@01 x0@512@01 x1@513@01) (img@520@01 x0@512@01 x1@513@01))
    (not (= (inv@517@01 x0@512@01 x1@513@01) (inv@519@01 x0@512@01 x1@513@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01))
        $Snap.unit))
    (=
      ($PSF.lookup_Pair (as sm@521@01  $PSF<Pair>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01)))
      ($PSF.lookup_Pair ($SortWrappers.$SnapTo$PSF<Pair> ($Snap.first ($Snap.second $t@514@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01)))))))
(assert (sum%precondition ($PSF.lookup_Pair (as sm@521@01  $PSF<Pair>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x0@512@01)
  ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01))
(pop) ; 2
; Joined path conditions
(assert (and
  (=>
    (and
      (and (img@518@01 x0@512@01 x1@513@01) (img@520@01 x0@512@01 x1@513@01))
      (not (= (inv@517@01 x0@512@01 x1@513@01) (inv@519@01 x0@512@01 x1@513@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x0@512@01)
            ($SortWrappers.$RefTo$Snap x1@513@01))
          $Snap.unit))
      (=
        ($PSF.lookup_Pair (as sm@521@01  $PSF<Pair>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01)))
        ($PSF.lookup_Pair ($SortWrappers.$SnapTo$PSF<Pair> ($Snap.first ($Snap.second $t@514@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01))))))
  (sum%precondition ($PSF.lookup_Pair (as sm@521@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x0@512@01)
    ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01)))
(assert (=
  (sum ($PSF.lookup_Pair (as sm@521@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x0@512@01)
    ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01)
  0))
; State saturation: after contract
(set-option :timeout 50)
(check-sat)
; unknown
(set-option :timeout 0)
(push) ; 2
(pop) ; 2
(push) ; 2
; [exec]
; package true --* true {
;   assert acc(Pair(x0, x1), write) && sum(x0, x1) == 0
; }
(push) ; 3
(declare-const $t@523@01 $Snap)
(assert (= $t@523@01 $Snap.unit))
; [exec]
; assert acc(Pair(x0, x1), write) && sum(x0, x1) == 0
(push) ; 4
(set-option :timeout 10)
(assert (not false))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=> (and (= x x0@512@01) (= y x1@513@01)) false)
  
  :qid |quant-u-21007|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@524@01 $PSF<Pair>)
(declare-const s@525@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=> (and (= x x0@512@01) (= y x1@513@01)) false)
  
  :qid |quant-u-21008|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(declare-const sm@526@01 $PSF<Pair>)
(declare-const s@527@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (= (as sm@524@01  $PSF<Pair>) (as sm@526@01  $PSF<Pair>)))
(set-option :timeout 10)
(check-sat)
; unknown
; Precomputing data for removing quantified permissions
(define-fun pTaken@528@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and (= x x0@512@01) (= y x1@513@01))
    ($Perm.min
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        $Perm.Write
        $Perm.No)
      $Perm.Write)
    $Perm.No))
; Done precomputing, updating quantified chunks
; State saturation: before repetition
(check-sat)
; unknown
; Chunk depleted?
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        $Perm.Write
        $Perm.No)
      (pTaken@528@01 x y))
    $Perm.No)
  
  :qid |quant-u-21010|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (= (pTaken@528@01 x y) $Perm.No)
  
  :qid |quant-u-21011|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and (= x x0@512@01) (= y x1@513@01))
    (= (- $Perm.Write (pTaken@528@01 x y)) $Perm.No))
  
  :qid |quant-u-21012|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
(declare-const sm@529@01 $PSF<Pair>)
(declare-const s@530@01 $Snap)
; Definitional axioms for snapshot map values (instantiated)
(assert (=>
  (and
    (and (img@518@01 x0@512@01 x1@513@01) (img@520@01 x0@512@01 x1@513@01))
    (not (= (inv@517@01 x0@512@01 x1@513@01) (inv@519@01 x0@512@01 x1@513@01))))
  (and
    (not
      (=
        ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01))
        $Snap.unit))
    (=
      ($PSF.lookup_Pair (as sm@529@01  $PSF<Pair>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01)))
      ($PSF.lookup_Pair ($SortWrappers.$SnapTo$PSF<Pair> ($Snap.first ($Snap.second $t@514@01))) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01)))))))
(assert (= (as sm@524@01  $PSF<Pair>) (as sm@529@01  $PSF<Pair>)))
(set-option :timeout 10)
(check-sat)
; unknown
(declare-const $t@531@01 $PSF<Pair>)
(declare-const $t@532@01 $PSF<Pair>)
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and (= x x0@512@01) (= y x1@513@01))
    (=
      ($PSF.lookup_Pair $t@532@01 ($Snap.combine
        ($SortWrappers.$RefTo$Snap x)
        ($SortWrappers.$RefTo$Snap y)))
      ($PSF.lookup_Pair (as sm@529@01  $PSF<Pair>) ($Snap.combine
        ($SortWrappers.$RefTo$Snap x)
        ($SortWrappers.$RefTo$Snap y)))))
  :pattern (($PSF.lookup_Pair $t@531@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap x)
    ($SortWrappers.$RefTo$Snap y))))
  :pattern (($PSF.lookup_Pair (as sm@529@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x)
    ($SortWrappers.$RefTo$Snap y))))
  :pattern (($PSF.lookup_Pair $t@532@01 ($Snap.combine
    ($SortWrappers.$RefTo$Snap x)
    ($SortWrappers.$RefTo$Snap y))))
  :qid |quant-u-21014|)))
; [eval] sum(x0, x1) == 0
; [eval] sum(x0, x1)
(set-option :timeout 0)
(push) ; 4
(push) ; 5
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and (= x x0@512@01) (= y x1@513@01))
    (> (ite (and (= x x0@512@01) (= y x1@513@01)) $Perm.Write $Perm.No) $Perm.No))
  
  :qid |quant-u-21015|))))
(check-sat)
; unsat
(pop) ; 5
; 0.00s
; (get-info :all-statistics)
(declare-const sm@533@01 $PSF<Pair>)
(declare-const s@534@01 $Snap)
; Definitional axioms for snapshot map domain (instantiated)
; Definitional axioms for snapshot map values (instantiated)
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01))
      $Snap.unit))
  (=
    ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x0@512@01)
      ($SortWrappers.$RefTo$Snap x1@513@01)))
    ($PSF.lookup_Pair $t@532@01 ($Snap.combine
      ($SortWrappers.$RefTo$Snap x0@512@01)
      ($SortWrappers.$RefTo$Snap x1@513@01))))))
(assert (sum%precondition ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
  ($SortWrappers.$RefTo$Snap x0@512@01)
  ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01))
(pop) ; 4
; Joined path conditions
(assert (and
  (not
    (=
      ($Snap.combine
        ($SortWrappers.$RefTo$Snap x0@512@01)
        ($SortWrappers.$RefTo$Snap x1@513@01))
      $Snap.unit))
  (=
    ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
      ($SortWrappers.$RefTo$Snap x0@512@01)
      ($SortWrappers.$RefTo$Snap x1@513@01)))
    ($PSF.lookup_Pair $t@532@01 ($Snap.combine
      ($SortWrappers.$RefTo$Snap x0@512@01)
      ($SortWrappers.$RefTo$Snap x1@513@01))))
  (sum%precondition ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x0@512@01)
    ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01)))
(push) ; 4
(assert (not (=
  (sum ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x0@512@01)
    ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01)
  0)))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(assert (=
  (sum ($PSF.lookup_Pair (as sm@533@01  $PSF<Pair>) ($Snap.combine
    ($SortWrappers.$RefTo$Snap x0@512@01)
    ($SortWrappers.$RefTo$Snap x1@513@01))) x0@512@01 x1@513@01)
  0))
; Create MagicWandSnapFunction for wand true --* true
(declare-const mwsf@535@01 $MWSF)
(assert (forall (($t@523@01 $Snap)) (!
  (= (MWSF_apply mwsf@535@01 $t@523@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@535@01 $t@523@01))
  :qid |quant-u-21016|)))
(pop) ; 3
(push) ; 3
(assert (forall (($t@523@01 $Snap)) (!
  (= (MWSF_apply mwsf@535@01 $t@523@01) $Snap.unit)
  :pattern ((MWSF_apply mwsf@535@01 $t@523@01))
  :qid |quant-u-21017|)))
(assert (and
  (= (as sm@524@01  $PSF<Pair>) (as sm@526@01  $PSF<Pair>))
  (=>
    (and
      (and (img@518@01 x0@512@01 x1@513@01) (img@520@01 x0@512@01 x1@513@01))
      (not (= (inv@517@01 x0@512@01 x1@513@01) (inv@519@01 x0@512@01 x1@513@01))))
    (and
      (not
        (=
          ($Snap.combine
            ($SortWrappers.$RefTo$Snap x0@512@01)
            ($SortWrappers.$RefTo$Snap x1@513@01))
          $Snap.unit))
      (=
        ($PSF.lookup_Pair (as sm@529@01  $PSF<Pair>) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01)))
        ($PSF.lookup_Pair ($SortWrappers.$SnapTo$PSF<Pair> ($Snap.first ($Snap.second $t@514@01))) ($Snap.combine
          ($SortWrappers.$RefTo$Snap x0@512@01)
          ($SortWrappers.$RefTo$Snap x1@513@01))))))
  (= (as sm@524@01  $PSF<Pair>) (as sm@529@01  $PSF<Pair>))))
; [exec]
; assert (forall y0: Ref, y1: Ref ::!((y0 in Set(x0, x1))) &&
;     (!((y1 in Set(x0, x1))) && y0 != y1) ==>
;     acc(Pair(y0, y1), write))
(declare-const y0@536@01 $Ref)
(declare-const y1@537@01 $Ref)
(push) ; 4
; [eval] !((y0 in Set(x0, x1))) && (!((y1 in Set(x0, x1))) && y0 != y1)
; [eval] !((y0 in Set(x0, x1)))
; [eval] (y0 in Set(x0, x1))
; [eval] Set(x0, x1)
(push) ; 5
; [then-branch: 0 | y0@536@01 in {x0@512@01} + x1@513@01 | live]
; [else-branch: 0 | !(y0@536@01 in {x0@512@01} + x1@513@01) | live]
(push) ; 6
; [then-branch: 0 | y0@536@01 in {x0@512@01} + x1@513@01]
(assert (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
(pop) ; 6
(push) ; 6
; [else-branch: 0 | !(y0@536@01 in {x0@512@01} + x1@513@01)]
(assert (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01))))
; [eval] !((y1 in Set(x0, x1)))
; [eval] (y1 in Set(x0, x1))
; [eval] Set(x0, x1)
(push) ; 7
; [then-branch: 1 | y1@537@01 in {x0@512@01} + x1@513@01 | live]
; [else-branch: 1 | !(y1@537@01 in {x0@512@01} + x1@513@01) | live]
(push) ; 8
; [then-branch: 1 | y1@537@01 in {x0@512@01} + x1@513@01]
(assert (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
(pop) ; 8
(push) ; 8
; [else-branch: 1 | !(y1@537@01 in {x0@512@01} + x1@513@01)]
(assert (not (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01))))
; [eval] y0 != y1
(pop) ; 8
(pop) ; 7
; Joined path conditions
; Joined path conditions
(assert (or
  (not (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01))))
(pop) ; 6
(pop) ; 5
; Joined path conditions
; Joined path conditions
(assert (=>
  (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  (and
    (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
    (or
      (not (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
      (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01))))))
(assert (or
  (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01))))
(assert (and
  (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  (and
    (not (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
    (not (= y0@536@01 y1@537@01)))))
(pop) ; 4
(declare-fun inv@538@01 ($Ref $Ref) $Ref)
(declare-fun img@539@01 ($Ref $Ref) Bool)
(declare-fun inv@540@01 ($Ref $Ref) $Ref)
(declare-fun img@541@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
(assert (forall ((y0@536@01 $Ref) (y1@537@01 $Ref)) (!
  (=>
    (and
      (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
      (and
        (not
          (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (not (= y0@536@01 y1@537@01))))
    (and
      (=>
        (not
          (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (or
            (not
              (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
            (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))))
      (or
        (not
          (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@538@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@540@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@539@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@541@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@538@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@540@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@539@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@541@01 y0@536@01 y1@537@01))
  :pattern ((inv@538@01 y0@536@01 y1@537@01))
  :pattern ((inv@540@01 y0@536@01 y1@537@01))
  :pattern ((img@539@01 y0@536@01 y1@537@01))
  :pattern ((img@541@01 y0@536@01 y1@537@01))
  :qid |Pair-aux|)))
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y01@536@01 $Ref) (y11@537@01 $Ref) (y02@536@01 $Ref) (y12@537@01 $Ref)) (!
  (=>
    (and
      (and
        (not
          (Set_in y01@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in y11@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (not (= y01@536@01 y11@537@01))))
      (and
        (not
          (Set_in y02@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in y12@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (not (= y02@536@01 y12@537@01))))
      (and (= y01@536@01 y02@536@01) (= y11@537@01 y12@537@01)))
    (and (= y01@536@01 y02@536@01) (= y11@537@01 y12@537@01)))
  
  :qid |Pair-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y0@536@01 $Ref) (y1@537@01 $Ref)) (!
  (=>
    (and
      (not (Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
      (and
        (not
          (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (not (= y0@536@01 y1@537@01))))
    (and
      (and
        (= (inv@538@01 y0@536@01 y1@537@01) y0@536@01)
        (= (inv@540@01 y0@536@01 y1@537@01) y1@537@01))
      (and (img@539@01 y0@536@01 y1@537@01) (img@541@01 y0@536@01 y1@537@01))))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@538@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@540@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@539@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y0@536@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@541@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@538@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (inv@540@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@539@01 y0@536@01 y1@537@01))
  :pattern ((Set_in y1@537@01 (Set_unionone (Set_singleton x0@512@01) x1@513@01)) (img@541@01 y0@536@01 y1@537@01))
  :pattern ((inv@538@01 y0@536@01 y1@537@01))
  :pattern ((inv@540@01 y0@536@01 y1@537@01))
  :pattern ((img@539@01 y0@536@01 y1@537@01))
  :pattern ((img@541@01 y0@536@01 y1@537@01))
  :qid |Pair-invOfFct|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@539@01 x y) (img@541@01 x y))
      (and
        (not
          (Set_in (inv@538@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in (inv@540@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (not (= (inv@538@01 x y) (inv@540@01 x y))))))
    (and (= (inv@538@01 x y) x) (= (inv@540@01 x y) y)))
  :pattern ((inv@538@01 x y))
  :pattern ((inv@540@01 x y))
  :qid |Pair-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@542@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (and
        (not
          (Set_in (inv@538@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in (inv@540@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (not (= (inv@538@01 x y) (inv@540@01 x y)))))
      (and (img@539@01 x y) (img@541@01 x y))
      (and (= x (inv@538@01 x y)) (= y (inv@540@01 x y))))
    ($Perm.min
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
        $Perm.No)
      (pTaken@542@01 x y))
    $Perm.No)
  
  :qid |quant-u-21020|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 10)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (= (pTaken@542@01 x y) $Perm.No)
  
  :qid |quant-u-21021|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and
        (not
          (Set_in (inv@538@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
        (and
          (not
            (Set_in (inv@540@01 x y) (Set_unionone (Set_singleton x0@512@01) x1@513@01)))
          (not (= (inv@538@01 x y) (inv@540@01 x y)))))
      (and (img@539@01 x y) (img@541@01 x y))
      (and (= x (inv@538@01 x y)) (= y (inv@540@01 x y))))
    (= (- $Perm.Write (pTaken@542@01 x y)) $Perm.No))
  
  :qid |quant-u-21022|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
; Done removing quantified permissions
; [exec]
; assert (forall y0: Ref, y1: Ref ::y0 != y1 ==> acc(Pair(y0, y1), write))
(declare-const y0@543@01 $Ref)
(declare-const y1@544@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y0 != y1
(assert (not (= y0@543@01 y1@544@01)))
(pop) ; 4
(declare-fun inv@545@01 ($Ref $Ref) $Ref)
(declare-fun img@546@01 ($Ref $Ref) Bool)
(declare-fun inv@547@01 ($Ref $Ref) $Ref)
(declare-fun img@548@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y01@543@01 $Ref) (y11@544@01 $Ref) (y02@543@01 $Ref) (y12@544@01 $Ref)) (!
  (=>
    (and
      (not (= y01@543@01 y11@544@01))
      (not (= y02@543@01 y12@544@01))
      (and (= y01@543@01 y02@543@01) (= y11@544@01 y12@544@01)))
    (and (= y01@543@01 y02@543@01) (= y11@544@01 y12@544@01)))
  
  :qid |Pair-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y0@543@01 $Ref) (y1@544@01 $Ref)) (!
  (=>
    (not (= y0@543@01 y1@544@01))
    (and
      (and
        (= (inv@545@01 y0@543@01 y1@544@01) y0@543@01)
        (= (inv@547@01 y0@543@01 y1@544@01) y1@544@01))
      (and (img@546@01 y0@543@01 y1@544@01) (img@548@01 y0@543@01 y1@544@01))))
  :pattern ((inv@545@01 y0@543@01 y1@544@01))
  :pattern ((inv@547@01 y0@543@01 y1@544@01))
  :pattern ((img@546@01 y0@543@01 y1@544@01))
  :pattern ((img@548@01 y0@543@01 y1@544@01))
  :qid |Pair-invOfFct|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@546@01 x y) (img@548@01 x y))
      (not (= (inv@545@01 x y) (inv@547@01 x y))))
    (and (= (inv@545@01 x y) x) (= (inv@547@01 x y) y)))
  :pattern ((inv@545@01 x y))
  :pattern ((inv@547@01 x y))
  :qid |Pair-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@549@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (not (= (inv@545@01 x y) (inv@547@01 x y)))
      (and (img@546@01 x y) (img@548@01 x y))
      (and (= x (inv@545@01 x y)) (= y (inv@547@01 x y))))
    ($Perm.min
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
        $Perm.No)
      (pTaken@549@01 x y))
    $Perm.No)
  
  :qid |quant-u-21025|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (not (= (inv@545@01 x y) (inv@547@01 x y)))
      (and (img@546@01 x y) (img@548@01 x y))
      (and (= x (inv@545@01 x y)) (= y (inv@547@01 x y))))
    (= (- $Perm.Write (pTaken@549@01 x y)) $Perm.No))
  
  :qid |quant-u-21026|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (not (= (inv@545@01 x y) (inv@547@01 x y)))
      (and (img@546@01 x y) (img@548@01 x y))
      (and (= x (inv@545@01 x y)) (= y (inv@547@01 x y))))
    (= (- $Perm.Write (pTaken@549@01 x y)) $Perm.No))
  
  :qid |quant-u-21026|))))
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
(declare-const y0@550@01 $Ref)
(declare-const y1@551@01 $Ref)
(set-option :timeout 0)
(push) ; 4
; [eval] y0 != y1
(assert (not (= y0@550@01 y1@551@01)))
(pop) ; 4
(declare-fun inv@552@01 ($Ref $Ref) $Ref)
(declare-fun img@553@01 ($Ref $Ref) Bool)
(declare-fun inv@554@01 ($Ref $Ref) $Ref)
(declare-fun img@555@01 ($Ref $Ref) Bool)
; Nested auxiliary terms: globals
; Nested auxiliary terms: non-globals
; Check receiver injectivity
(push) ; 4
(assert (not (forall ((y01@550@01 $Ref) (y11@551@01 $Ref) (y02@550@01 $Ref) (y12@551@01 $Ref)) (!
  (=>
    (and
      (not (= y01@550@01 y11@551@01))
      (not (= y02@550@01 y12@551@01))
      (and (= y01@550@01 y02@550@01) (= y11@551@01 y12@551@01)))
    (and (= y01@550@01 y02@550@01) (= y11@551@01 y12@551@01)))
  
  :qid |Pair-rcvrInj|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Definitional axioms for inverse functions
(assert (forall ((y0@550@01 $Ref) (y1@551@01 $Ref)) (!
  (=>
    (not (= y0@550@01 y1@551@01))
    (and
      (and
        (= (inv@552@01 y0@550@01 y1@551@01) y0@550@01)
        (= (inv@554@01 y0@550@01 y1@551@01) y1@551@01))
      (and (img@553@01 y0@550@01 y1@551@01) (img@555@01 y0@550@01 y1@551@01))))
  :pattern ((inv@552@01 y0@550@01 y1@551@01))
  :pattern ((inv@554@01 y0@550@01 y1@551@01))
  :pattern ((img@553@01 y0@550@01 y1@551@01))
  :pattern ((img@555@01 y0@550@01 y1@551@01))
  :qid |Pair-invOfFct|)))
(assert (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (and (img@553@01 x y) (img@555@01 x y))
      (not (= (inv@552@01 x y) (inv@554@01 x y))))
    (and (= (inv@552@01 x y) x) (= (inv@554@01 x y) y)))
  :pattern ((inv@552@01 x y))
  :pattern ((inv@554@01 x y))
  :qid |Pair-fctOfInv|)))
; Precomputing data for removing quantified permissions
(define-fun pTaken@556@01 ((x $Ref) (y $Ref)) $Perm
  (ite
    (and
      (not (= (inv@552@01 x y) (inv@554@01 x y)))
      (and (img@553@01 x y) (img@555@01 x y))
      (and (= x (inv@552@01 x y)) (= y (inv@554@01 x y))))
    ($Perm.min
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
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
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=
    (-
      (ite
        (and
          (and (img@518@01 x y) (img@520@01 x y))
          (not (= (inv@517@01 x y) (inv@519@01 x y))))
        (- $Perm.Write (pTaken@528@01 x y))
        $Perm.No)
      (pTaken@556@01 x y))
    $Perm.No)
  
  :qid |quant-u-21029|))))
(check-sat)
; unsat
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Intermediate check if already taken enough permissions
(set-option :timeout 0)
(push) ; 4
(set-option :timeout 500)
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (not (= (inv@552@01 x y) (inv@554@01 x y)))
      (and (img@553@01 x y) (img@555@01 x y))
      (and (= x (inv@552@01 x y)) (= y (inv@554@01 x y))))
    (= (- $Perm.Write (pTaken@556@01 x y)) $Perm.No))
  
  :qid |quant-u-21030|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Final check if taken enough permissions
(set-option :timeout 0)
(push) ; 4
(assert (not (forall ((x $Ref) (y $Ref)) (!
  (=>
    (and
      (not (= (inv@552@01 x y) (inv@554@01 x y)))
      (and (img@553@01 x y) (img@555@01 x y))
      (and (= x (inv@552@01 x y)) (= y (inv@554@01 x y))))
    (= (- $Perm.Write (pTaken@556@01 x y)) $Perm.No))
  
  :qid |quant-u-21030|))))
(check-sat)
; unknown
(pop) ; 4
; 0.00s
; (get-info :all-statistics)
; Done removing quantified permissions
(pop) ; 3
(pop) ; 2
(pop) ; 1
